library IEEE;                 
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.numeric_std.all; 

--SIPO--
entity midi_buffer is 
	port( 
			clk            		: in  std_logic;
			reset            		: in  std_logic;
			data_in      			: in  std_logic;
			midi_out   				: out  std_logic_vector(23 downto 0)
	    );
end entity;

architecture midi_buffer_arch of midi_buffer is

begin
 process (clk,reset)
 variable temp: std_logic_vector(23 downto 0);
	begin
		if reset = '1' then
			temp:= (others=>'0');
		elsif (clk'event and clk='1') then
			temp(23):= temp(22);
			temp(22):= temp(21);
			temp(21):= temp(20);
			temp(20):= temp(19);
			temp(19):= temp(18);
			temp(18):= temp(17);
			temp(17):= temp(16);
			temp(16):= temp(15);
			temp(15):= temp(14);
			temp(14):= temp(13);		
			temp(13):= temp(12);
			temp(12):= temp(11);
			temp(11):= temp(10);
			temp(10):= temp(9);
			temp(9)	:= temp(8);
			temp(8)	:= temp(7);
			temp(7)	:= temp(6);
			temp(6)	:= temp(5);
			temp(5)	:= temp(4);
			temp(4)	:= temp(3);
			temp(3)	:= temp(2);
			temp(2)	:= temp(1);
			temp(1)	:= temp(0);
			temp(0)	:= data_in;
		end if;
		
		midi_out<=temp;
	end process;

end architecture;
