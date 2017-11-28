library IEEE;                 
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.numeric_std.all; 


entity synthesizer is 
	port( 
			-----------------------main-----------------------------------
			clk            		: in  std_logic							;
			reset            		: in  std_logic							;--async reset button
			--------------------------------------------------------------
			-----------------------uart-----------------------------------
			uart_rx       			: in  std_logic							;
			midi_in 					: in std_logic_vector(23 downto 0)	;
			--------------------------------------------------------------
			-----------------------hex2seg--------------------------------
			disp_seg 				: out std_logic_vector(7 downto 0)		;
			--------------------------------------------------------------
			-----------------------buttons--------------------------------
			button_l				: in  std_logic							;
			button_r				: in  std_logic							;
			--------------------------------------------------------------
			-----------------------hdmi-----------------------------------
			datap   				: out  std_logic_vector(2 downto 0)		;
			datan   				: out  std_logic_vector(2 downto 0)		;
			clkp          			: out  std_logic						;
			clkn					: out  std_logic
			--------------------------------------------------------------
	    );
end entity;

architecture synthesizer_arch of synthesizer is
	--component midi_buffer is
	--	port(
	--			clk            	: in  std_logic							;
	--			reset            	: in  std_logic							;
	--			data_in      		: in  std_logic							;
	--			midi_out   			: out  std_logic_vector(23 downto 0)
	--		);
	--end component;
	
	component midi_decoder is
		port(
			clk            		: in  std_logic							;
			reset            		: in  std_logic						;
			midi_in					: in  std_logic_vector(23 downto 0) ;
			note_on  				: out  std_logic_vector(1 downto 0) ;					
			note_id 				: out  std_logic_vector(7 downto 0) ;
			velocity         		: out  std_logic_vector(7 downto 0)
			);
	end component;
	
	component synth_lpcm	is
		port( 
			clk            		: in  std_logic;
			reset            		: in  std_logic;
			-----------------------button---------------------------------
			synth_function       	: in std_logic_vector(7 downto 0)	;
			-----------------------midi-----------------------------------
			note_on      			: in  std_logic_vector(1 downto 0)	;
			note_id                 : in  std_logic_vector(7 downto 0)	;
			velocity                : in  std_logic_vector(7 downto 0)	; 
			--------------------------------------------------------------
			audio_data_square		: out  integer						;
			audio_data_saw			: out  integer						;
			audio_data_triangle		: out  integer						;
			audio_data_sine			: out  integer
			);
	end entity
	
	component square is
		port(
			clk            			: in  std_logic						;
			reset            		: in  std_logic						;
			note_id          		: in  std_logic_vector(7 downto 0)	;
			out_data				: out integer
			);
	end component;
	
	component saw is
		port( 
			clk        	    		: in  std_logic						;
			reset            		: in  std_logic						;
			note_id          		: in  std_logic_vector(7 downto 0)	;
			out_data				: out integer
	    );
	end component;

	component triangle is 
		port( 
			clk         	   		: in  std_logic						;
			reset            		: in  std_logic						;
			note_id          		: in  std_logic_vector(7 downto 0)	;
			out_data				: out integer
			);
	end component;
	
	component buttons is
		port(
			clk       				: in  std_logic						;
			reset     				: in  std_logic						;
			button_l 				: in  std_logic						;
			button_r 				: in  std_logic						;
			out_function    	  	: out std_logic_vector(3 downto 0)
			);
	end component;
	
	component hex2seg is
		port(
			num      				: in  std_logic_vector(3 downto 0)	;	
			dp       				: in  std_logic						;
			disp_seg 				: out std_logic_vector(7 downto 0)
		);
	end component;
	
	

----------------------------------------------------------------------
			signal note_on 		: std_logic_vector(1 downto 0)		;
			signal note_id 		: std_logic_vector(7 downto 0)		;
			signal velocity 	: std_logic_vector(7 downto 0)		;
			signal out_function : std_logic_vector(3 downto 0)		;
			signal dp   		: std_logic							;
----------------------------------------------------------------------	
	begin
	
	--MIDI_BUFFER_INST : midi_buffer
	--		port map(	
	--			clk     	=> clk		,	
	--			reset   	=> reset 	,	
	--			data_in 	=> uart_rx	,	
	--			midi_out	=> midi_out		
	--		);
			
	MIDI_DECODER_INST : midi_decoder
		port map(
				clk    		=> clk 			,
				reset    	=> reset 		,
				midi_in		=> midi_in		,
				note_on  	=> note_on		,
				note_id		=> note_id		,
				velocity 	=> velocity	
				);
			
	SYNTH_LPCM_INST : synth_lpcm
		port map(
			
				);
			
	BUTTONS_INST : buttons
		port map(
				clk 			=> clk			,       	
				reset     	   	=> reset		, 
				button_l 	   	=> button_l		, 
				button_r 	   	=> button_r		, 
				out_function   	=> out_function
				);
				
	HEX2SEG_INST : hex2seg
		port map(
				num  			=> out_function	,   
				dp    			=> dp			,   
				disp_seg		=> disp_seg
				);
			
------------------waves-----------
	
end architecture;
