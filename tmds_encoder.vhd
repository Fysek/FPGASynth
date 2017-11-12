library IEEE;                 
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.numeric_std.all; 


entity tmds_encoder is 
	port( 
			clk            			: in  std_logic;
			clk_p            		: out  std_logic;
			clk_n            		: out  std_logic;
			reset            		: in  std_logic;
			data_in      			: in  std_logic;
			midi_out   				: out  std_logic_vector(2 downto 0);
			d2_p					: out  std_logic_vector(2 downto 0);
			d2_n                    : out  std_logic_vector(2 downto 0);
			d1_p                    : out  std_logic_vector(2 downto 0);
			d1_n                    : out  std_logic_vector(2 downto 0);
			d0_p                    : out  std_logic_vector(2 downto 0);
			d0_n                    : out  std_logic_vector(2 downto 0)
	    );                          
end entity;

architecture tmds_encoder_arch of tmds_encoder is

begin
 process (clk,reset)
	begin				
		
	end process;

end architecture;
