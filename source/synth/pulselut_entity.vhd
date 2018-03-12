-------------------------------------------------------------------------------
--
-- Title       : pulselut
-- Author      : Mateusz Dyrdół
--
-------------------------------------------------------------------------------


LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
ENTITY pulselut_entity IS
  GENERIC(lut_bit_width : integer := 8;
			 DATA_width: integer := 16
  );
  PORT(
    phase_in      : in unsigned(lut_bit_width-1 downto 0);
    a_clk      : in std_logic;
    reset         : in std_logic;
    DATA          : OUT std_logic_vector(15 downto 0)
  );
END pulselut_entity;

architecture behav of pulselut_entity is 
--LUT
type sine_lut is array (0 to 1) of integer;
constant sinedata:sine_lut:= (-32000,32000);
signal 	sDATA    : std_logic_vector(15 downto 0);

begin


	process(a_clk,reset)
		variable lutindex : integer range 0 to (2**lut_bit_width)-1 := 0;
	begin
		
		if reset = '0' then
			DATA <= (others => '0');
			lutindex := 0;
		elsif rising_edge(a_clk) then
			lutindex := to_integer(phase_in);
			if lutindex < 128 then
				sDATA <= std_logic_vector(to_signed(sinedata(0), DATA_width));
			else
				sDATA <= std_logic_vector(to_signed(sinedata(1), DATA_width));
			end if; 
			
			DATA <= sDATA; 

		end if;	
	
	end process;

end behav;