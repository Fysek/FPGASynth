LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_arith.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY hdmi_top_tb  IS 
END ; 
 
ARCHITECTURE hdmi_top_tb_arch OF hdmi_top_tb IS
  SIGNAL clk_pixel   	:  std_logic	;
  SIGNAL reset 	:  std_logic	;		
  SIGNAL enc0	:  std_logic_vector(9 downto 0)	;
  SIGNAL enc1	:  std_logic_vector(9 downto 0)	;
  SIGNAL enc2	:  std_logic_vector(9 downto 0)	;

  	--Signal is used to stop clock signal generators
	signal END_SIM		: BOOLEAN:=FALSE;
  COMPONENT hdmi_top 
    PORT ( 
      clk_pixel     	: in  std_logic	;
      reset   	: in  std_logic	;		
      enc0		: out std_logic_vector(9 downto 0)	;
      enc1		: out std_logic_vector(9 downto 0)	;
		enc2		: out std_logic_vector(9 downto 0)	
		); 
  END COMPONENT ; 
BEGIN
  DUT  : hdmi_top 
    PORT MAP ( 
      clk_pixel   => clk_pixel     		,
      reset   		=> reset   		,
      enc0			=> enc0		 	,
      enc1			=> enc1			,
      enc2			=> enc2			 
		) ; 


-----testbench---------------
-- "Clock Pattern" : dutyCycle = 50
-- Start Time = 0 ns, End Time = 1 us, Period = 100 ns
STIMULUS:  Process
	Begin 
	reset	 <= '0'  ;
	wait for 100 ns ;
	reset	 <= '1'  ;
	wait for 1000000 ns ;
	END_SIM <= TRUE;
	wait;
 End Process;

-----endtestbench---------------
 
 
 
 
CLOCK_CLK : process
begin
	--this process was generated based on formula: 0 0 ns, 1 50 ns -r 100 ns
	--wait for <time to next event>; -- <current time>
	if END_SIM = FALSE then
		clk_pixel <= '0';
		wait for 50 ns; --0 fs
	else
		wait;
	end if;
	if END_SIM = FALSE then
		clk_pixel <= '1';
		wait for 50 ns; --50 ns
	else
		wait;
	end if;
end process;

END;
