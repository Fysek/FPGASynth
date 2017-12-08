LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity phaseaccum is 
	generic(
			max_length 		: integer := 2147483647;
			lut_bit_width 	: integer := 8;
			pa_bit_width 	: integer := 32
	);
	port(
		a_clk			: in std_logic;
        reset         	: in std_logic;
        pa_word  	  	: in unsigned(pa_bit_width-1 downto 0);
        phase_out     	: out unsigned(lut_bit_width-1 downto 0)
	);
end phaseaccum;

architecture phaseaccum_arch of phaseaccum is
	signal phase_reg : unsigned(pa_bit_width-1 downto 0) := (others => '0');
begin
	process(a_clk,reset)
	begin
		if reset = '0' then
			phase_reg <= (others => '0'); 
			phase_out <= (others => '0'); 
		elsif falling_edge(a_clk) then
			if pa_word = x"00000000" then
				phase_reg <= (others => '0'); 
				phase_out <= (others => '0');
			else 
				phase_reg <= phase_reg + pa_word;
				phase_out <= phase_reg(pa_bit_width-1 downto pa_bit_width-lut_bit_width); -- 24-31
			end if; 	
		end if; 
	end process;
end architecture; 