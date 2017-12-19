LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity sample_clk_gen is
	generic(
			divider : integer := 512
	);
	port(
			clk			: in std_logic;
			reset		: in std_logic;
			a_clk 		: out std_logic;
			a_clk_main	: out std_logic
		);
end sample_clk_gen_entity;

architecture sample_clk_gen_arch of sample_clk_gen is
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
end architecture;