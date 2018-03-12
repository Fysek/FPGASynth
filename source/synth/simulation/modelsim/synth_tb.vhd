LIBRARY ieee  ; 
LIBRARY std  ; 
USE ieee.NUMERIC_STD.all  ; 
USE ieee.std_logic_1164.all  ; 
USE ieee.std_logic_arith.all  ; 
USE ieee.std_logic_textio.all  ; 
USE ieee.STD_LOGIC_UNSIGNED.all  ; 
USE ieee.std_logic_unsigned.all  ; 
USE std.textio.all  ; 
ENTITY synth_tb  IS 
END ; 
 
ARCHITECTURE synth_tb_arch OF synth_tb IS
	signal CLK  							: std_logic;
	signal RESET  							: std_logic;
	signal BUTTON_L  						: std_logic;
	signal BUTTON_R  						: std_logic;
	signal MIDI_IN 							: std_logic_vector(23 downto 0);
	signal AUDIO_DATA_OUT					: std_logic_vector(15 downto 0);
	signal HEX_DISPLAY						: std_logic_vector(6 downto 0);
	signal WAV_SELECT						: std_logic_vector(7 downto 0);	
	file file_RESULTS 						: text;
  
  
 
  	--Signal is used to stop clock signal generators
	signal END_SIM		: BOOLEAN:=FALSE;
  COMPONENT synth
		port 
		(
		CLK  			: IN std_logic;
		RESET  			: IN std_logic;
		BUTTON_L  		: IN std_logic;
		BUTTON_R  		: IN std_logic;
		MIDI_IN 		: in std_logic_vector(23 downto 0)		;
		AUDIO_DATA_OUT	: OUT std_logic_vector(15 downto 0)	;
		HEX_DISPLAY		: OUT std_logic_vector(6 downto 0);
		WAV_SELECT		: IN std_logic_vector(7 downto 0)  		
		);
  END COMPONENT ; 
BEGIN
  DUT  : synth  
		port map 
		(
			CLK  			=> CLK  			     ,
			RESET  			=> RESET  			     ,
			BUTTON_L  		=> BUTTON_L  		     ,
			BUTTON_R  		=> BUTTON_R  			 ,
			MIDI_IN 		=> MIDI_IN 			     ,
			AUDIO_DATA_OUT	=> AUDIO_DATA_OUT	     ,
			HEX_DISPLAY		=> HEX_DISPLAY				,
			WAV_SELECT		=> WAV_SELECT					
		);


-----testbench---------------
STIMULUS:  Process
	variable OLINE     				: line;
	variable CNT     					: integer;
	begin 
	file_open(file_RESULTS, "output_results.txt", write_mode);
	RESET	 <= '0'  ;
	wait for 100 ns ;
	RESET	 <= '1'  ;
	WAV_SELECT <=x"02";
	MIDI_IN  <= x"904540";
	wait for 102770 ns; 
		while (END_SIM = FALSE) loop
			hwrite(OLINE,AUDIO_DATA_OUT);
			writeline(file_RESULTS, OLINE);
			CNT := CNT+1;
			wait for 20480 ns;
		end loop;
		
		if(CNT = 44100) then
			END_SIM <= TRUE;
			file_close(file_RESULTS);
		end if;
		
	wait;
 End Process;

-----endtestbench---------------
 
CLOCK_CLK : process
begin
	if END_SIM = FALSE then
		CLK <= '0';
		wait for 50 ns; --0 fs
	else
		wait;
	end if;
	if END_SIM = FALSE then
		CLK <= '1';
		wait for 50 ns; --50 ns
	else
		wait;
	end if;
end process;


END;
