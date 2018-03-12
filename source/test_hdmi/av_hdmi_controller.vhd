---------------------------------------------------------------------------
-- (c) 2016 Alexey Spirkov
-- I am happy for anyone to use this for non-commercial use.
-- If my verilog/vhdl/c files are used commercially or otherwise sold,
-- please contact me for explicit permission at me _at_ alsp.net.
-- This applies for source and binary form and derived works.
---------------------------------------------------------------------------
-- Recommended params:
-- N=0x1800 CTS=0x6FD1 (28.625MHz pixel clock -> 48KHz audio clock)
-- N=0x1000 CTS=0x6FD1 (28.625MHz pixel clock -> 32KHz audio clock)
-- N=0x1000 CTS=0x6978 (27MHz pixel clock -> 32KHz audio clock)
-- N=0x1800 CTS=0x6978 (27MHz pixel clock -> 48KHz audio clock)
---------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity av_hdmi_controller is
generic
(
	constant FREQ		: integer := 27000000;	-- pixel clock frequency
	constant FS			: integer := 48000;		-- audio sample rate - should be 32000, 41000 or 48000
	constant CTS		: integer := 27000;		-- CTS = Freq(pixclk) * N / (128 * Fs)
	constant N			: integer := 6144		-- N = 128 * Fs /1000,  128 * Fs /1500 <= N <= 128 * Fs /300
												-- Check HDMI spec 7.2 for details																																															
);
port (
	clk_pixel		: in std_logic;
	reset			: in std_logic;
	
	red 	        : in std_logic_vector(7 downto 0)	;
	green           : in std_logic_vector(7 downto 0)	;
	blue            : in std_logic_vector(7 downto 0)	;
	                
	counterx  	    : in std_logic_vector(11 downto 0);
	countery  	    : in std_logic_vector(11 downto 0);
	vde		        : in std_logic;						
	vhsync	        : in std_logic_vector(1 downto 0);
	
	tmds_enc0		: out std_logic_vector(9 downto 0)	;
	tmds_enc1		: out std_logic_vector(9 downto 0)	;
	tmds_enc2		: out std_logic_vector(9 downto 0)	
	
	);
end entity;

architecture av_hdmi_controller_arch of av_hdmi_controller is


	signal s_red			: std_logic_vector(9 downto 0);
	signal s_green			: std_logic_vector(9 downto 0);
	signal s_blue			: std_logic_vector(9 downto 0);	

	signal s_enc0			: std_logic_vector(9 downto 0);
	signal s_enc1			: std_logic_vector(9 downto 0);
	signal s_enc2			: std_logic_vector(9 downto 0);
	
	signal ade				: std_logic;
	
	signal dataPacket0		: std_logic_vector(3 downto 0);	
	signal dataPacket1		: std_logic_vector(3 downto 0);	
	signal dataPacket2		: std_logic_vector(3 downto 0);	
				
	signal ctl10			: std_logic_vector(1 downto 0);
	signal ctl32			: std_logic_vector(1 downto 0);
	
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

STATES_PROC: process(clk_pixel) is 
begin
	if reset = '0' then
		state <= controlData;
		clockCounter <= 0;
		--guardFlag <='0';
	elsif(rising_edge(clk_pixel)) then
		case state is
			when controlData =>
------------------------controldata-----------------
				if counterx = 127 and 0 <= countery and countery < 479 then
					state <= videoDataPreamble;
					ctl10<= "01";
					ctl32<= "00";	
				end if;
---------------------------------------------------
				if counterx = 3 and 0 <= countery and countery < 479 then
					state <= dataIslandPreamble;
					ctl10<= "01";
					ctl32<= "01";	
				end if;
------------------------data island preamble 8 clocks			
			when dataIslandPreamble =>
				if clockCounter = 7  then
					state 	<= dataIslandPreGuard;
					--s_blue 	<="1011000011";
					--s_green	<="0100110011";
					--s_red  	<="0100110011";
					--guardFlag <='1';
					clockCounter <= 0;
				else
					clockCounter <= clockCounter + 1;
				end if;			
------------------------data island preguard 2 clocks
			when dataIslandPreGuard =>				
				if clockCounter = 1  then
					state <= dataIsland;
					--guardFlag <='0';
					clockCounter <= 0;
				else
					clockCounter <= clockCounter + 1;
				end if; 						
------------------------data island 2 packets
			when dataIsland => 				
				if clockCounter = 63  then
					state 	<= dataIslandPostGuard;
					---s_blue 	<="1011000011";
					---s_green	<="0100110011";
					---s_red  	<="0100110011";
					---guardFlag <='1';
					clockCounter <= 0;
				else
					clockCounter <= clockCounter + 1;
				end if;
------------------------data island postguard needed for 2 clocks	
			when dataIslandPostGuard => 						 
				if clockCounter = 1  then
					state <= controlData;
					--guardFlag <='0';
					clockCounter <= 0;
				else
					clockCounter <= clockCounter + 1;
				end if; 
------------------------video data preable needed for 8 clocks	
			when videoDataPreamble => 							 
				if clockCounter = 7  then
					state 	<= videoDataGuardBand;
					--s_blue 	<="1011001100";
					--s_green	<="0100110011";
					--s_red  	<="1011001100";
					--guardFlag <='1';
					clockCounter <= 0;
				else
					clockCounter <= clockCounter + 1;
				end if; 
-------------------------video data guard needed for 2 clocks			
			when videoDataGuardBand =>						    
				if clockCounter = 1  then
					state <= videoData;
					--guardFlag <='0';
					clockCounter <= 0;
				else
					clockCounter <= clockCounter + 1;
				end if; 
-------------------------video data 720 pixels				
			when videoData => 
				if clockCounter = 719  then
					state <= controlData;
					--guardFlag <='0';
					clockCounter <= 0;
				else
					clockCounter <= clockCounter + 1;
				end if; 			
		end case;
	end if;
end process; 
--daj to w maszyne stanow a na koncu w zaleznosci od flagi

OUTS_PROC: process(clk_pixel) is 
begin
	if (rising_edge(clk_pixel)) then 
	
		s_blue <= 	"1010001110" when (state = dataIslandPreGuard or state = dataIslandPostGuard) and vhsync = "00" else
						"1001110001" when (state = dataIslandPreGuard or state = dataIslandPostGuard) and vhsync = "01" else
						"0101100011" when (state = dataIslandPreGuard or state = dataIslandPostGuard) and vhsync = "10" else
						"1011000011" when (state = dataIslandPreGuard or state = dataIslandPostGuard) and vhsync = "11" else
						"1011001100" when state = videoDataGuardBand else s_enc0;
	
		s_green <= 	"0100110011" when state = videoDataGuardBand else
						"0100110011" when state = dataIslandPreGuard or state = dataIslandPostGuard else s_enc1;
					
		s_red <= 	"1011001100" when state = videoDataGuardBand else
						"0100110011" when state = dataIslandPreGuard or state = dataIslandPostGuard else s_enc2;			
	end if;
end process; 



enc0: entity work.encoder
port map (
	CLK		=> clk_pixel,
	DATA		=> blue,
	C			=> vhsync,
	VDE		=> vde,
	ADE		=> ade,
	AUX		=> dataPacket0,
	ENCODED	=> s_enc0
	);

enc1: entity work.encoder
port map (
	CLK		=> clk_pixel,
	DATA		=> green,
	C			=> ctl10,
	VDE		=> vde,
	ADE		=> ade,
	AUX		=> dataPacket1,
	ENCODED	=> s_enc1
	);

enc2: entity work.encoder
port map (
	CLK		=> clk_pixel,
	DATA		=> red,
	C			=> ctl32,
	VDE		=> vde,
	ADE		=> ade,
	AUX		=> dataPacket2,
	ENCODED	=> s_enc2
	);	


	
tmds_enc0<=s_blue	;
tmds_enc1<=s_green	;
tmds_enc2<=s_red	;

	
end architecture;