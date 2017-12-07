LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
ENTITY pulselut_entity IS
	generic(
			lut_bit_width : integer := 8;
			data_width: integer := 16
	);
	port(
		phase_in      : in unsigned(lut_bit_width-1 downto 0);
		a_clk      	: in std_logic;
		reset         : in std_logic;
		data          : out std_logic_vector(15 downto 0)
	);
end pulselut_entity;

architecture pulselut_entity_arch of pulselut_entity is 
--LUT
	type sine_lut is array (0 to 1) of integer;
	constant sinedata:sine_lut:= (-8000,8000);
	signal 	sdata    : std_logic_vector(15 downto 0);

begin
	process(a_clk,reset)
		variable lutindex : integer range 0 to (2**lut_bit_width)-1 := 0;
	begin
		if reset = '0' then
			data <= (others => '0');
			lutindex := 0;
		elsif rising_edge(a_clk) then
			lutindex := to_integer(phase_in);
			if lutindex < 128 then
				sdata <= std_logic_vector(to_signed(sinedata(0), data_width));
			else
				sdata <= std_logic_vector(to_signed(sinedata(1), data_width));
			end if; 
			data <= sdata; 
		end if;	
	end process;
end architecture;