-------------------------------------------------------------------------------
--
-- Title       : phaseaccumulator
-- Author      : Mateusz Dyrdół
--
-------------------------------------------------------------------------------

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity phaseaccum_entity is 
  GENERIC(max_length : integer := 2147483647;
			 lut_bit_width : integer := 8;
			 pa_bit_width : integer := 32
  );
  PORT  (a_clk			: IN std_logic;
         reset         : IN std_logic;
         PA_word  	  : IN unsigned(pa_bit_width-1 downto 0);
         phase_out     : OUT unsigned(lut_bit_width-1 downto 0)
  );
END phaseaccum_entity;


architecture behav of phaseaccum_entity is
	signal phase_reg : unsigned(pa_bit_width-1 downto 0) := (others => '0');
begin
	process(a_clk,reset)
	begin
		
		if reset = '0' then
			phase_reg <= (others => '0'); 
			phase_out <= (others => '0'); 
	
		elsif falling_edge(a_clk) then
		
			if PA_word = x"00000000" then
				phase_reg <= (others => '0'); 
				phase_out <= (others => '0');
			else 
				phase_reg <= phase_reg + PA_word;
				phase_out <= phase_reg(pa_bit_width-1 downto pa_bit_width-lut_bit_width); -- 24-31

			end if; 
			
		end if; 
	
	end process;
	


end behav; 