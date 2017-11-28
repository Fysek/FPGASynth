library IEEE;                 
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.numeric_std.all; 
use ieee.math_real.all;

entity saw is 
	port( 
			clk            		: in  std_logic;
			reset            		: in  std_logic;
			--------------------------------------------------------------
			note_id          		: in  std_logic_vector(7 downto 0);
			out_data				: out integer
			--------------------------------------------------------------
	    );
end entity;

architecture saw_arch of saw is
function note_to_freq(note_id : std_logic_vector) return integer is
variable x 		: integer := 0;
variable freq 	: real := 0.0; 	
begin
	x 		<=  to_integer(unsigned(note_id));
	freq 	:= (440 / 32) * (2 ^ ((x - 9) / 12));
return freq
end note_to_freq;

begin
 process (clk,reset)
  variable count:integer:=0;
  variable s:integer:=127;
  begin
    if (clk = '1' and clk'EVENT) then
      count := count + 1;
    end if;
    if(count>=freq/2 and count<freq) then
      s:= 0;
    elsif (count>=freq) then count:=0;
      s:=127;
    end if;
    out_data<=s;
  end process;


end architecture;
