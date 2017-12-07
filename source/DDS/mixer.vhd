LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
entity mixer is
	generic(
			lut_bit_width : integer := 8;
			data_width: integer := 16;
			max_amplitude : integer := 32767;
			min_amplitude : integer := -32767
	);
	port(
		a_clk      	: in std_logic;
		reset         	: in std_logic;
		data_si_1		: in std_logic_vector(15 downto 0); 
		data_si_2	   	: in std_logic_vector(15 downto 0);
		data_sq_1 		: in std_logic_vector(15 downto 0);
		data_sq_2	   	: in std_logic_vector(15 downto 0);
		data_sa_1, 		: in std_logic_vector(15 downto 0);
		data_sa_2	   	: in std_logic_vector(15 downto 0);
		data_tr_1, 		: in std_logic_vector(15 downto 0);
		data_tr_2	   	: in std_logic_vector(15 downto 0);
		wave_select 	: in std_logic_vector(3 downto 0);	
		data_to_hdmi	: out std_logic_vector(15 downto 0)
	);
end mixer;

architecture mixer_arch of mixer is
	signal osc1,osc2,output : integer := 0; 

begin
	process(a_clk, reset)
		variable	osc1,osc2 : integer := 0; 
	begin
		if reset = '0' then
			osc1 := 0;
			osc2 := 0;
			output <= 0;
			data_to_hdmi <= (others => '0');
		elsif falling_edge(a_clk) then
			case(WAV_SELECT) is
				when x"00" => -- SINE
					osc1 := to_integer(signed(data_si_1));
					osc2 := to_integer(signed(data_si_2));
				when x"01" => -- SQUARE
					osc1 := to_integer(signed(data_sq_1));
					osc2 := to_integer(signed(data_sq_2));
				when x"02" => -- SAW
					osc1 := to_integer(signed(data_sa_1));
					osc2 := to_integer(signed(data_sa_2));
				when x"03" => -- TRI
					osc1 := to_integer(signed(data_tr_1));
					osc2 := to_integer(signed(data_tr_2));
				when others => -- SINE
					osc1 := to_integer(signed(data_si_1));
					osc2 := to_integer(signed(data_si_2));
			end case; 

			osc1 := osc1/4;
			osc2 := osc2/4; 
			output <= osc1 + osc2; 
			data_to_hdmi <= std_logic_vector(to_signed(output, data_width));	
		end if; 
	end process; 
end architecture; 