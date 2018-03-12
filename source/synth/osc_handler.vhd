-------------------------------------------------------------------------------
--
-- Title       : osc_handler
-- Author      : Mateusz Dyrdół
--
-------------------------------------------------------------------------------
LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.ALL;
entity osc_handler is
	port(
		clk				: in std_logic;
		reset			: in std_logic;
		note_on_osc 		: in std_logic_vector(7 downto 0); --data
		note_off_osc 		: in std_logic_vector(7 downto 0); --data
		note0				: out std_logic_vector(7 downto 0);
		note1				: out std_logic_vector(7 downto 0);
		enable0				: out std_logic;
		enable1 			: out std_logic
		);
end osc_handler;

architecture osc_handler_arch of osc_handler is
	signal anote0, anote1	: std_logic_vector(7 downto 0);
	signal old_note 		: std_logic_vector(7 downto 0) := (others => '0'); --Note ON/OFF 0x80(off), 0xFF(on)
begin
	process(clk, reset)
		variable flag : std_logic := '0'; 
	begin
		if reset = '0' then
			note0 <= (others => '0');
			note1 <= (others => '0');
			anote0 <= (others => '0');
			anote1 <= (others => '0');
			enable0 <= '0';
			enable1 <= '0'; 	
		elsif rising_edge(clk) then
			old_note <= note_on_osc; 
			if note_on_osc /= old_note then
				flag := '1';
			else
				flag := '0';
			end if; 
			if flag = '1' then
				anote0 <= note_on_osc;
				anote1 <= note_on_osc;
			end if; 
				
			if note_off_osc = anote0 then
				enable0 <= '0';
			else
				note0 <= anote0;
				enable0 <= '1'; 
			end if;
			
			if note_off_osc = anote1 then
				enable1 <= '0';
			else
				note1 <= anote1;
				enable1 <= '1'; 
			end if;
		end if;
	end process;
end architecture; 