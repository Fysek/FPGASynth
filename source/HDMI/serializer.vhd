---Serializer:------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.all;
--------------------------------------------------
entity serializer is
	port(
		clk10x	: in std_logic;
		din		: in std_logic_vector(9 downto 0);
		dout		: out std_logic
	);
end entity;
--------------------------------------------------
architecture serializer_arch of serializer is
	signal internal: std_logic_vector (9 downto 0);
begin
	process (clk10x)
		variable count: integer range 0 to 10;
	begin
		if (clk10x'event AND clk10x='1') then
			count := count + 1;
			if (count = 9) then
				internal <= din;
			elsif (count = 10) then
				count := 0;
			end if;
			dout <= internal(count);
		end if;
	end process;
end architecture;
--------------------------------------------------