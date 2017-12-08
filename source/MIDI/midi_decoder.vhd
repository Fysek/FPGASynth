library IEEE;                 
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.numeric_std.all; 


entity midi_decoder is 
	port( 
			clk            		: in  std_logic;
			reset            		: in  std_logic;
			midi_in					: in  std_logic_vector(23 downto 0);
			note_on  				: out  std_logic_vector(7 downto 0);					--note on which note is on
			note_off  				: out  std_logic_vector(7 downto 0);					--note off 	
			velocity         		: out  std_logic_vector(7 downto 0)
	    );
end entity;

architecture midi_decoder_arch of midi_decoder is

begin
	process (clk,reset)
		begin
			if reset = '0' then
				note_on <= (others=>'0');
				note_off <= (others=>'0');
				velocity <= (others=>'0');
			elsif (clk'event and clk='1') then
				velocity <= midi_in(7 downto 0);
				if (midi_in(23 downto 20) = "1001") then
					note_on <= midi_in(15 downto 8);
				elsif(midi_in(23 downto 20) = "1000") then
					note_off <= midi_in(15 downto 8);
				end if;
			end if;
		end process;
end architecture;
