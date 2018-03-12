-------------------------------------------------------------------------------
--
-- Title       : mixer
-- Author      : Mateusz Dyrdół
--
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
ENTITY mixer_entity IS
  GENERIC(lut_bit_width : integer := 8;
			 DATA_width: integer := 16;
			 max_amplitude : integer := 32767;
			 min_amplitude : integer := -32767
  );
  PORT(
    a_clk      					: in std_logic;
    reset         				: in std_logic;
    DATA_SI_1, DATA_SI_2	   	: in std_logic_vector(15 downto 0);
	DATA_SQ_1, DATA_SQ_2	   	: in std_logic_vector(15 downto 0);
    DATA_SA_1, DATA_SA_2	   	: in std_logic_vector(15 downto 0);
    DATA_TR_1, DATA_TR_2	   	: in std_logic_vector(15 downto 0);
	WAV_SELECT 					: in std_logic_vector(7 downto 0);
	DATA_TO_AI					: OUT std_logic_vector(15 downto 0)
  );
END mixer_entity;

ARCHITECTURE behav of mixer_entity is
	SIGNAL osc1,osc2,output : integer := 0; 

BEGIN
	process(a_clk, reset)
		variable	osc1,osc2 : integer := 0; 
	begin
		if reset = '0' then
			osc1 := 0;
			osc2 := 0;
			output <= 0;
			DATA_TO_AI <= (others => '0');
		
		elsif falling_edge(a_clk) then
			case(WAV_SELECT) is
			WHEN x"00" => -- SINE
				osc1 := to_integer(signed(DATA_SI_1));
				osc2 := to_integer(signed(DATA_SI_2));
			WHEN x"01" => -- SQUARE
				osc1 := to_integer(signed(DATA_SQ_1));
				osc2 := to_integer(signed(DATA_SQ_2));
			WHEN x"02" => -- SAW
				osc1 := to_integer(signed(DATA_SA_1));
				osc2 := to_integer(signed(DATA_SA_2));
			WHEN x"03" => -- TRI
				osc1 := to_integer(signed(DATA_TR_1));
				osc2 := to_integer(signed(DATA_TR_2));
			WHEN others => -- SINE
				osc1 := to_integer(signed(DATA_SI_1));
				osc2 := to_integer(signed(DATA_SI_2));
			END CASE; 
	
			osc1 := osc1/4;
			osc2 := osc2/4; 
			output <= osc1 + osc2; 
		
			DATA_TO_AI <= std_logic_vector(to_signed(output, DATA_width));
		
		end if; 	
	end process; 
END ARCHITECTURE; 