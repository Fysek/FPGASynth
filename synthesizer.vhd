library IEEE;                 
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.numeric_std.all; 


entity synthesizer is 
	port( 
			clk            		: in  std_logic							;
			reset            		: in  std_logic							;
			uart_rx       			: in  std_logic							;
			datap   					: out  std_logic_vector(2 downto 0)	;
			datan   					: out  std_logic_vector(2 downto 0)	;
			clkp          			: out  std_logic							;
			clkn						: out  std_logic
	    );
end entity;

architecture synthesizer_arch of synthesizer is
	component midi_buffer is
		port(
				clk            	: in  std_logic							;
				reset            	: in  std_logic							;
				data_in      		: in  std_logic							;
				midi_out   			: out  std_logic_vector(23 downto 0)
			);
	end component;
	
	component midi_decoder is
		port(
			clk            		: in  std_logic							;
			reset            		: in  std_logic							;
			midi_in					: in  std_logic_vector(23 downto 0) ;
			note_on  				: out  std_logic_vector(1 downto 0) ;					
			frequency 				: out  std_logic_vector(7 downto 0) ;
			velocity         		: out  std_logic_vector(7 downto 0)
			);
	end component;
----------------------------------------------------------------------
			signal midi_out 		: std_logic_vector(23 downto 0)		;
			signal note_on 		: std_logic_vector(1 downto 0)		;
			signal frequency 		: std_logic_vector(7 downto 0)		;
			signal velocity 		: std_logic_vector(7 downto 0)		;
----------------------------------------------------------------------	
	begin
	
	MIDI_BUFFER_INST : midi_buffer
			port map(	
				clk     	=> clk		,	
				reset   	=> reset 	,	
				data_in 	=> uart_rx	,	
				midi_out	=> midi_out		
			);
			
	MIDI_DECODER_INST : midi_decoder
			port map(
				clk    		=> clk 			,
				reset    	=> reset 		,
				midi_in		=> midi_out		,
				note_on  	=> note_on		,
				frequency	=> frequency	,
				velocity 	=> velocity	
			
			);
	
end architecture;
