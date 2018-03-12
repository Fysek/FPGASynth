-------------------------------------------------------------------------------
--
-- Title       : sample clock generator
-- Author      : Mateusz Dyrdół
--
-------------------------------------------------------------------------------


LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity sample_clk_gen_entity is
  GENERIC(divider : integer := 512
  );
  PORT  (clk			: IN std_logic;
			reset			: IN std_logic;
         a_clk,a_clk_main 	: OUT std_logic	
  );
END sample_clk_gen_entity;

architecture behav of sample_clk_gen_entity is
	signal local_clk : std_logic := '0'; 
begin

	process(clk, reset)
		variable count : integer := 0; 
	begin
		
		if reset = '0' then
			count := 0;
			local_clk <= '0';
		
		elsif falling_edge(clk) then
			if count = divider then 
				local_clk <= not local_clk;
				count := 0; 
			end if;
			
			count := count + 1; 
		end if; 
	
		a_clk <= local_clk;
		a_clk_main <= local_clk;
	end process;


end behav;