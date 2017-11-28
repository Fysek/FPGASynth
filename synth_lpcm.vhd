library IEEE;                 
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.numeric_std.all; 


entity synth_lpcm is 
	port( 
			clk            		: in  std_logic;
			reset            		: in  std_logic;
			-----------------------button---------------------------------
			out_function       		: in std_logic_vector(7 downto 0);
			-----------------------midi-----------------------------------
			note_on      			: in  std_logic_vector(1 downto 0);
			note_id                 : in  std_logic_vector(7 downto 0);
			velocity                : in  std_logic_vector(7 downto 0); 
			--------------------------------------------------------------
			synth_mode				: out  std_logic_vector(7 downto 0)
	    );
end entity;

architecture synth_lpcm_arch of synth_lpcm is


begin

----instances------




----processes------


 process (clk,reset)
	begin
		if reset = '1' then

        elsif (clk'event and clk='1') then
		
		end if;

	end process;

end architecture;
