library IEEE;                 
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.numeric_std.all; 

--SIPO--
entity synth_lpcm is 
	port( 
			clk            		: in  std_logic;
			reset            		: in  std_logic;
			-----------------------button---------------------------------
			button            		: in  std_logic;
			-----------------------midi-----------------------------------
			note_on      			: in  std_logic_vector(1 downto 0);
			note_id                 : in  std_logic_vector(7 downto 0);
			velocity                : in  std_logic_vector(7 downto 0); 
			--------------------------------------------------------------
			synth_mode				: out  std_logic_vector(7 downto 0);
			-----------------------hex2seg--------------------------------
			num      				: out  std_logic_vector(3 downto 0);
			dp       				: out  std_logic;
			--------------------------------------------------------------
	    );
end entity;

architecture synth_lpcm_arch of synth_lpcm is

begin
 process (clk,reset)
	begin






	end process;

end architecture;
