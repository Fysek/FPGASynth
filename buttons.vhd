library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

-- direction control
-- codes:
-- 00 - right
-- 01 - down
-- 10 - left
-- 11 - up

entity buttons is
	port(
		clk       			: in  std_logic;
		reset     			: in  std_logic;
		button_l 			: in  std_logic;
		button_r 			: in  std_logic;
		out_function       	: out std_logic_vector(7 downto 0)
	);
end entity;

architecture buttons_arch of buttons is

end architecture;