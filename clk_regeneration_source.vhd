library IEEE;                 
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.numeric_std.all; 


entity clk_regeneration_source is 
	port( 
			tdms_clk   	  	: in  std_logic;
			n      			: in  std_logic;
			fs     			: in  std_logic;
			cts				: out std_logic;
			n_i				: out std_logic
	    );
end entity;

architecture clk_regeneration_source_arch of clk_regeneration_source is

begin


end architecture;
