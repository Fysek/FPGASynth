-------------------------------------------------------------------------------
--
-- Title       : Prescaler
-- Design      : Synthesizer
-- Author      : Mateusz Dyrdół
-- Company     : AGH
--
-------------------------------------------------------------------------------
--
-- Description : Synchronous prescaler circuit
--
-------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.STD_LOGIC_UNSIGNED.all;


entity prescaler is
	port(
		clk 	: in std_logic;
		reset	: in std_logic;
		ceo 	: out std_logic
		);	   
end prescaler;


architecture prescaler_arch of prescaler is

signal divider: std_logic_vector(31 downto 0);	-- internal divider register 
constant divide_factor: integer := 1000000;			-- divide factor user constant
												-- remember to adjust lenght of DIVIDER register when divide_factor is being changed

begin 
	process (clk, reset)
	begin
		if reset = '1' then
			divider	<= (others => '0');
		elsif clk'event and clk = '1' then
			if divider = (divide_factor-1) then
				divider <= (others => '0');
			else
				divider <= divider + 1;
			end if;
		end if;
	end process;

ceo <= '1' when divider = (divide_factor-1) else '0';
	
end architecture;





