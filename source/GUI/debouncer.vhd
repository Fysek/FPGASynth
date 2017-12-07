-------------------------------------------------------------------------------
--
-- Title       : Debouncer
-- Design      : Synthesizer
-- Author      : Mateusz Dyrdół
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- Description : Simple debounce circuit
--
-------------------------------------------------------------------------------

--{{ Section below this comment is automatically maintained
--   and may be overwritten
--{entity {Debouncer} architecture {Debouncer}}

library IEEE;
use IEEE.STD_LOGIC_1164.all;



entity debouncer is
	port(	  
		clk 		: in std_logic;	   -- clk 100...300Hz
		reset 		: in std_logic;	   -- clear	
		cei 		: in std_logic;	   -- clock enable input from prescaler	
		btn_in 	: in std_logic;	   -- pushbutton entry
		btn_out 	: out std_logic    -- debounced output	
	    );
end debouncer;

--}} End of automatically maintained section

architecture debouncer_arch of debouncer is

signal delay : std_logic_vector(2 downto 0);		-- debounce register

begin
	process(clk, reset)
	begin
		if reset = '0' then
			delay <= (others => '0');
		elsif clk'event and clk = '1' then
			if cei = '1' then
				delay <= delay(1 downto 0) & btn_in;	-- shift register
			end if;
		end if;
	end process;
	
btn_out <= '1' when delay = "011" and cei = '1' else '0';
	
end architecture;
