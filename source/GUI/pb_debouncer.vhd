LIBRARY ieee;
USE ieee.std_logic_1164.all;
USE ieee.std_logic_unsigned.all;

ENTITY pb_debouncer IS 
  PORT(
    clk     : IN  STD_LOGIC;
    button  : IN  STD_LOGIC;
    debounced_o  : OUT STD_LOGIC);
END pb_debouncer;

ARCHITECTURE logic OF pb_debouncer IS
signal DIVIDER: std_logic_vector(31 downto 0);
constant divide_factor: integer := 1500000;	
BEGIN
  
  PROCESS(clk)
  BEGIN
		IF(clk'EVENT and clk = '1') THEN
				if DIVIDER = (divide_factor-1) then
					DIVIDER <= (others => '0');
					debounced_o <= button;
				else
					DIVIDER <= DIVIDER + 1;
					debounced_o <= '0';
				end if;
      END IF;    
  END PROCESS;
END logic;
