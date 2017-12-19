
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity av_hdmi is
	generic(
		FREQ	: integer := 27000000;		-- pixel clock frequency
		FS		: integer := 48000;			-- audio sample rate - should be 32000, 41000 or 48000
		CTS		: integer := 27000;			-- CTS = Freq(pixclk) * N / (128 * Fs)
		N		: integer := 6144			-- N = 128 * Fs /1000,  128 * Fs /1500 <= N <= 128 * Fs /300
	);
	port (
		-- clocks
		clk_pixel_x10	: in std_logic;
		clk_pixel		: in std_logic;
		-- components
		i_r				: in std_logic_vector(7 downto 0);
		i_g				: in std_logic_vector(7 downto 0);
		i_b				: in std_logic_vector(7 downto 0);	
		i_blank			: in std_logic;
		i_hsync			: in std_logic;
		i_vsync			: in std_logic;
		-- PCM audio 
		i_audio_pcm_l 	: in std_logic_vector(15 downto 0);
		i_audio_pcm_r	: in std_logic_vector(15 downto 0);
		-- TMDS output
		o_tmds_d0		: out std_logic;
		o_tmds_d1		: out std_logic;
		o_tmds_d2		: out std_logic;
		o_tmds_clk		: out std_logic
	);
end entity;

architecture av_hdmi_arch of av_hdmi is

component hdmidataencoder
	generic(
		FREQ: integer := 27000000;
		FS: integer := 48000;
		CTS: integer := 27000;
		N: integer := 6144
	);
	port (
		i_pixclk	: in std_logic;
		i_hSync		: in std_logic;
		i_vSync		: in std_logic;
		i_blank		: in std_logic;
		i_audioL		: in std_logic_vector(15 downto 0);
		i_audioR		: in std_logic_vector(15 downto 0);
		
		o_d0		: out std_logic_vector(3 downto 0);
		o_d1		: out std_logic_vector(3 downto 0);
		o_d2		: out std_logic_vector(3 downto 0);
		o_data	: out std_logic
	);
end component;


	signal red	: std_logic_vector(9 downto 0);
	signal green	: std_logic_vector(9 downto 0);
	signal blue	: std_logic_vector(9 downto 0);		

	signal enc0out	: std_logic_vector(9 downto 0);
	signal enc1out	: std_logic_vector(9 downto 0);
	signal enc2out	: std_logic_vector(9 downto 0);		
	
	signal tmds_d0	: std_logic;
	signal tmds_d1	: std_logic;
	signal tmds_d2	: std_logic;

	signal data     : std_logic;
	signal dataPacket0		: std_logic_vector(3 downto 0);	
	signal dataPacket1		: std_logic_vector(3 downto 0);	
	signal dataPacket2		: std_logic_vector(3 downto 0);	

	signal delayLineIn: std_logic_vector(39 downto 0);
	signal delayLineOut: std_logic_vector(39 downto 0);
	
	signal ROut: std_logic_vector(7 downto 0);
	signal GOut: std_logic_vector(7 downto 0);
	signal BOut: std_logic_vector(7 downto 0);
	
	signal hSyncOut: std_logic;
	signal vSyncOut: std_logic;
	signal vdeOut: std_logic;
	signal dataOut: std_logic;
	signal vhSyncOut: std_logic_vector(1 downto 0);
	
	signal prevBlank: std_logic;
	signal prevData: std_logic;

	signal dataPacket0Out		: std_logic_vector(3 downto 0);	
	signal dataPacket1Out		: std_logic_vector(3 downto 0);	
	signal dataPacket2Out		: std_logic_vector(3 downto 0);	
	
	signal ctl0: std_logic;
	signal ctl1: std_logic;
	signal ctl2: std_logic;
	signal ctl3: std_logic;
	
	signal ctl_10: std_logic_vector(1 downto 0);
	signal ctl_32: std_logic_vector(1 downto 0);
	
	-- states
	type count_state is (
			videoData, 
			videoDataPreamble,
			videoDataGuardBand,
			dataIslandPreamble,
			dataIslandPreGuard,
			dataIslandPostGuard,
			dataIsland,
			controlData
	);
	
	signal state: count_state; 

	signal clockCounter: integer range 0 to 2047;
	
	
begin

-- data should be delayed for 11 clocks to allow preamble and guard band generation
-- delay line inputs
delayLineIn(39 downto 32) <= i_r;
delayLineIn(31 downto 24) <= i_g;
delayLineIn(23 downto 16) <= i_b;
delayLineIn(15) <= i_hsync;
delayLineIn(14) <= i_vsync;
delayLineIn(13) <= not i_blank;
delayLineIn(12) <= data;
delayLineIn(11 downto 8) <= dataPacket0;
delayLineIn(7 downto 4) <= dataPacket1;
delayLineIn(3 downto 0) <= dataPacket2;

-- delay line outputs
ROut <= delayLineOut(39 downto 32);
GOut <= delayLineOut(31 downto 24);
BOut <= delayLineOut(23 downto 16);
hSyncOut <= delayLineOut(15);
vSyncOut <= delayLineOut(14);
vdeOut <= delayLineOut(13);
dataOut <= delayLineOut(12);
dataPacket0Out <= delayLineOut(11 downto 8);
dataPacket1Out <= delayLineOut(7 downto 4);
dataPacket2Out <= delayLineOut(3 downto 0);

vhSyncOut <= vSyncOut & hSyncOut;

ctl_10 <= ctl1&ctl0;
ctl_32 <= ctl3&ctl2;

process(clk_pixel) is 
begin 
	if(rising_edge(clk_pixel)) then
		if(prevBlank = '0' and i_blank = '1') then
			state <= controlData;
			clockCounter <= 0;
		else
			case state is
				when controlData => 
					if prevData = '0' and data = '1' then 		 -- ok - data stared - needs data preamble
						state <= dataIslandPreamble;
						ctl0 <= '1';
						ctl1 <= '0';
						ctl2 <= '1';
						ctl3 <= '0';
						clockCounter <= 0;
					elsif prevBlank = '1' and i_blank = '0' then -- ok blank os out - start generation video preamble
						state <= videoDataPreamble;
						ctl0 <= '1';
						ctl1 <= '0';
						ctl2 <= '0';
						ctl3 <= '0';
						clockCounter <= 0;
					end if;
				when dataIslandPreamble =>							 -- data island preable needed for 8 clocks
					if clockCounter = 8  then
						state <= dataIslandPreGuard;					
						ctl0 <= '0';
						ctl1 <= '0';
						ctl2 <= '0';
						ctl3 <= '0';
						clockCounter <= 0;
					else
						clockCounter <= clockCounter + 1;
					end if;
				when dataIslandPreGuard => 						 -- data island preguard needed for 2 clocks
					if clockCounter = 1 then
						state <= dataIsland;					
						clockCounter <= 0;
					else
						clockCounter <= clockCounter + 1;
					end if;
				when dataIsland => 
					if clockCounter = 11 then						 -- ok we at the end of data island - post guard is needed
						state <= dataIslandPostGuard;					
						clockCounter <= 0;					
					elsif prevBlank = '1' and i_blank = '0' then -- something fails - no data were detected but blank os out
						state <= videoDataPreamble;
						ctl0 <= '1';
						ctl1 <= '0';
						ctl2 <= '0';
						ctl3 <= '0';
						clockCounter <= 0;
					elsif data = '0' then								 -- start count and count only when data is over
						clockCounter <= clockCounter + 1;					
					end if;
					
				when dataIslandPostGuard => 						 -- data island postguard needed for 2 clocks
					if clockCounter = 1  then
						state <= controlData;					
						clockCounter <= 0;
					else
						clockCounter <= clockCounter + 1;
					end if;
				when videoDataPreamble => 							 -- video data preable needed for 8 clocks
					if clockCounter = 8  then
						state <= videoDataGuardBand;					
						ctl0 <= '0';
						ctl1 <= '0';
						ctl2 <= '0';
						ctl3 <= '0';
						clockCounter <= 0;
					else
						clockCounter <= clockCounter + 1;
					end if;
				when videoDataGuardBand =>						    -- video data guard needed for 2 clocks
					if clockCounter = 1  then
						state <= videoData;					
						clockCounter <= 0;
					else
						clockCounter <= clockCounter + 1;
					end if;
				when videoData => 					
					if clockCounter = 11  then						 -- ok we at the end of video data - just switch to control
						state <= controlData;					
						clockCounter <= 0;	
					elsif i_blank = '1' then								 -- start count and count only when video is over
						clockCounter <= clockCounter + 1;					
					end if;
			end case;
		end if;
		prevBlank <= i_blank;
		prevData <= data;
	end if;
end process; 


blueout: blue <= 
	"1010001110" when (state = dataIslandPreGuard or state = dataIslandPostGuard) and vhSyncOut = "00" else
	"1001110001" when (state = dataIslandPreGuard or state = dataIslandPostGuard) and vhSyncOut = "01" else
	"0101100011" when (state = dataIslandPreGuard or state = dataIslandPostGuard) and vhSyncOut = "10" else
	"1011000011" when (state = dataIslandPreGuard or state = dataIslandPostGuard) and vhSyncOut = "11" else
	"1011001100" when state = videoDataGuardBand else
	enc0out;

greenout: green <= 
	"0100110011" when state = videoDataGuardBand else
	"0100110011" when state = dataIslandPreGuard or state = dataIslandPostGuard else
	enc1out;

redout: red <= 
	"1011001100" when state = videoDataGuardBand else
	"0100110011" when state = dataIslandPreGuard or state = dataIslandPostGuard else
	enc2out;

	
DELAY_LINE_INST: entity work.hdmi_delay
	port map (
		i_clk => clk_pixel,
		i_d => delayLineIn,
		o_q => delayLineOut
	);

DATA_ENCODER_INST: hdmidataencoder
	generic map (
		FREQ => FREQ,
		FS => FS,
		CTS => CTS,
		N => N
	)
	port map(
		i_pixclk		=> clk_pixel,
		i_blank 		=> i_blank,
		i_hSync			=> i_hsync,
		i_vSync			=> i_vsync,
		i_audioL		=> i_audio_pcm_l,
		i_audioR		=> i_audio_pcm_r,
		o_d0 			=> dataPacket0,
		o_d1 			=> dataPacket1,
		o_d2 			=> dataPacket2,
		o_data			=> data
	);

ENCODER_INST_0: entity work.encoder
	port map(
		CLK		=> clk_pixel,
		DATA	=> BOut,
		C		=> vhSyncOut,
		VDE		=> vdeOut,
		ADE		=> dataOut,
		AUX		=> dataPacket0Out,
		ENCODED	=> enc0out
	);

ENCODER_INST_1: entity work.encoder
	port map(
		CLK		=> clk_pixel,
		DATA	=> GOut,
		C		=> ctl_10,
		VDE		=> vdeOut,
		ADE		=> dataOut,
		AUX		=> dataPacket1Out,
		ENCODED	=> enc1out
	);

ENCODER_INST_2: entity work.encoder
	port map(
		CLK		=> clk_pixel,
		DATA	=> ROut,
		C		=> ctl_32,
		VDE		=> vdeOut,
		ADE		=> dataOut,
		AUX		=> dataPacket2Out,
		ENCODED	=> enc2out
	);

SERIALIZER_INST_red: entity work.serializer
	port map(
		clk10x		=> clk_pixel_x10,
		din			=> red,
		dout		=> tmds_d0				
	);

SERIALIZER_INST_green: entity work.serializer
	port map(
		clk10x		=> clk_pixel_x10,
		din			=> green,
		dout		=> tmds_d1				
	);

SERIALIZER_INST_blue: entity work.serializer
	port map(
		clk10x		=> clk_pixel_x10,
		din			=> blue,
		dout		=> tmds_d2				
	);

	
--tx_in <= red(0) & red(1) & red(2) & red(3) & red(4) & red(5) & red(6) & red(7) & red(8) & red(9) &
--	 green(0) & green(1) & green(2) & green(3) & green(4) & green(5) & green(6) & green(7) & green(8) & green(9) &
--	 blue(0) & blue(1) & blue(2) & blue(3) & blue(4) & blue(5) & blue(6) & blue(7) & blue(8) & blue(9);

	 
	 
o_tmds_d0	<= tmds_d0	;
o_tmds_d1	<= tmds_d1	;
o_tmds_d2	<= tmds_d2	;
o_tmds_clk 	<= clk_pixel;

end architecture;