library IEEE;                 
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.numeric_std.all; 

entity synthesizer is
	port( 
			-----------------------main-----------------------------------
			clk            		: in  std_logic								;
			reset            		: in  std_logic								;--async reset button,negative active
			--------------------------------------------------------------
			-----------------------uart-----------------------------------
			uart_rx       			: in  std_logic								;
			midi_in 					: in std_logic_vector(23 downto 0)		;
			--------------------------------------------------------------
			-----------------------hex2seg--------------------------------
			disp_seg 				: out std_logic_vector(7 downto 0)		;
			--------------------------------------------------------------
			-----------------------buttons--------------------------------
			button_l					: in  std_logic								;
			button_r					: in  std_logic								;
			--------------------------------------------------------------
			-----------------------hdmi-----------------------------------
			datap   					: out  std_logic_vector(2 downto 0)		;
			datan   					: out  std_logic_vector(2 downto 0)		;
			clkp          			: out  std_logic								;
			clkn						: out  std_logic
			--------------------------------------------------------------
	    );
end entity;

architecture synthesizer_arch of synthesizer is

	component midi_decoder is
		port(
			clk            		: in  std_logic							;
			reset            		: in  std_logic						;
			midi_in					: in  std_logic_vector(23 downto 0) ;
			note_on  				: out  std_logic_vector(7 downto 0) ;					
			note_off  				: out  std_logic_vector(7 downto 0);
			velocity         		: out  std_logic_vector(7 downto 0)
		);
	end component;
	--osc handler ddsy mixer hdmi

	component osc_handler is
		port(
			clk				: in std_logic;
			reset			: in std_logic;
			note_on_osc 		: in std_logic_vector(7 downto 0); --Note ON/OFF 0x80(off), 0xFF(on)
			note_off_osc 		: in std_logic_vector(7 downto 0); --Note ON/OFF 0x80(off), 0xFF(on)
			note0				: out std_logic_vector(7 downto 0);
			note1				: out std_logic_vector(7 downto 0);
			enable0				: out std_logic;
			enable1 			: out std_logic
		);
	end component;
	
	component dds is
		generic(
				lut_bit_width : integer := 8;
				pa_bit_width : integer 	:= 32
		);
		port(
			clk   		: in std_logic;
			reset 		: in std_logic;
			enable		: in std_logic;	
			note_dds	: in std_logic_vector(7 downto 0); --Note ON/OFF 0x80(off), 0xFF(on);
			si_data 	: out std_logic_vector(15 downto 0);
			sq_data 	: out std_logic_vector(15 downto 0);
			sa_data 	: out std_logic_vector(15 downto 0);
			tr_data  	: out std_logic_vector(15 downto 0);
			a_clk		: out std_logic
		);
	end component;
	
	component mixer is
		generic(
				lut_bit_width : integer := 8;
				data_width: integer 	:= 16;
				max_amplitude : integer := 32767;
				min_amplitude : integer := -32767
		);
		port(	
			a_clk      	: in std_logic;
			reset         	: in std_logic;
			data_si_1		: in std_logic_vector(15 downto 0); 
			data_si_2	   	: in std_logic_vector(15 downto 0);
			data_sq_1 		: in std_logic_vector(15 downto 0);
			data_sq_2	   	: in std_logic_vector(15 downto 0);
			data_sa_1 		: in std_logic_vector(15 downto 0);
			data_sa_2	   	: in std_logic_vector(15 downto 0);
			data_tr_1 		: in std_logic_vector(15 downto 0);
			data_tr_2	   	: in std_logic_vector(15 downto 0);
			wave_select 	: in std_logic_vector(3 downto 0);	
			data_to_hdmi	: out std_logic_vector(15 downto 0)
		);
	end component;
	
	component buttons is
		port(
			clk       				: in  std_logic							;
			reset     				: in  std_logic							;
			button_l 				: in  std_logic							;
			button_r 				: in  std_logic							;
			out_function    	  	: out std_logic_vector(3 downto 0)
			);
	end component;
	
	component hex2seg is
		port(
			num      				: in  std_logic_vector(3 downto 0)		;	
			dp       				: in  std_logic							;
			disp_seg 				: out std_logic_vector(7 downto 0)
		);
	end component;
	
	

----------------------------------------------------------------------

			signal s_a_clk_0        : std_logic						;
			signal s_a_clk_1        : std_logic						;
			
			signal s_note_on 		: std_logic_vector(7 downto 0)	;
			signal s_note_off 		: std_logic_vector(7 downto 0)	;
			signal s_note_osc_0		: std_logic_vector(7 downto 0)	;
			signal s_note_osc_1		: std_logic_vector(7 downto 0)	;
			signal s_enable_osc_0	: std_logic						;
			signal s_enable_osc_1	: std_logic						;
			
			signal s_si_data_osc_0  :std_logic_vector(15 downto 0) 	;
			signal s_sq_data_osc_0	:std_logic_vector(15 downto 0) 	;
			signal s_sa_data_osc_0 	:std_logic_vector(15 downto 0) 	;
			signal s_tr_data_osc_0 	:std_logic_vector(15 downto 0) 	;
																	
			signal s_si_data_osc_1 	:std_logic_vector(15 downto 0) 	;
			signal s_sq_data_osc_1	:std_logic_vector(15 downto 0) 	;
			signal s_sa_data_osc_1 	:std_logic_vector(15 downto 0) 	;
			signal s_tr_data_osc_1 	:std_logic_vector(15 downto 0) 	;
			
			signal s_velocity 		: std_logic_vector(7 downto 0)	;
			signal s_synth_mode 	: std_logic_vector(3 downto 0)	;
			signal dp   			: std_logic						;
			
			signal s_synth_hdmi 	: std_logic_vector(15 downto 0)	;
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
				clk    		=> clk 					,
				reset    	=> reset 				,
				midi_in		=> midi_in				,
				note_on  	=> s_note_on			,
				note_off	=> s_note_off			,
				velocity 	=> s_velocity				--maybe to mixer, use different amplitude
		);
			
	OSC_HANDLER_INST : osc_handler
		port map(
				clk			 	=> clk 	  			,
		        reset		 	=> reset  			,
		        note_on_osc  	=> s_note_on       	,
		        note_off_osc 	=> s_note_off       ,
		        note0		 	=> s_note_osc_0     ,
		        note1		 	=> s_note_osc_1     ,
		        enable0			=> s_enable_osc_0   ,
		        enable1 	    => s_enable_osc_1
		);

	DDS_INST_OSC_0 : dds
		port map(
				clk   			=> clk 	    		,
				reset 	    	=> reset    		,
				enable	    	=> s_enable_osc_0   ,
				note_dds    	=> s_note_osc_0		,
				si_data     	=> s_si_data_osc_0  ,
				sq_data	    	=> s_sq_data_osc_0  ,
				sa_data     	=> s_sa_data_osc_0  ,
				tr_data     	=> s_tr_data_osc_0	,
				a_clk			=> s_a_clk_0
		);
		
		
		
	DDS_INST_OSC_1 : dds
		port map(	
				clk   			=> clk 	    		,
				reset 	    	=> reset    		,
				enable	    	=> s_enable_osc_1   ,
				note_dds    	=> s_note_osc_1     ,
				si_data     	=> s_si_data_osc_1  ,
				sq_data	    	=> s_sq_data_osc_1  ,
				sa_data     	=> s_sa_data_osc_1  ,
				tr_data     	=> s_tr_data_osc_1	,
				a_clk	    	=> s_a_clk_1
		);
		
	MIXER_INST : mixer	
		port map(                        
				a_clk      		=> s_a_clk_0        ,
				reset       	=> reset    		,
				data_si_1	    => s_si_data_osc_0  ,
				data_si_2	    => s_si_data_osc_1  ,
				data_sq_1 	    => s_sq_data_osc_0  ,
				data_sq_2	    => s_sq_data_osc_1  ,
				data_sa_1 	    => s_sa_data_osc_0  ,
				data_sa_2	    => s_sa_data_osc_1  ,
				data_tr_1 	    => s_tr_data_osc_0  ,
				data_tr_2	    => s_tr_data_osc_1  ,
				wave_select 	=> s_synth_mode    	,
				data_to_hdmi	=> s_synth_hdmi
		);
			
	BUTTONS_INST : buttons
		port map(
				clk 			=> clk				,       	
				reset     	  	=> reset			, 
				button_l 	   	=> button_l			, 
				button_r 	   	=> button_r			, 
				out_function   	=> s_synth_mode
		);
				
	HEX2SEG_INST : hex2seg
		port map(
				num  			=> s_synth_mode		,   
				dp    			=> dp				,   
				disp_seg		=> disp_seg
		);
			
end architecture;
