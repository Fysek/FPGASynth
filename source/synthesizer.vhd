library IEEE;                 
use IEEE.STD_LOGIC_1164.all;
use ieee.std_logic_arith.all;
use IEEE.STD_LOGIC_UNSIGNED.all;
use IEEE.numeric_std.all; 

entity synthesizer is
	port( 
			-----------------------main-----------------------------------
			clk            		: in  std_logic								;
			clk_pixel_x10         : in  std_logic								;
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
			tmds_d0					: out std_logic;
			tmds_d1					: out std_logic;							
			tmds_d2					: out std_logic;
			tmds_clk					: out std_logic			
			--------------------------------------------------------------
	    );
end entity;

architecture synthesizer_arch of synthesizer is

----------------------------------------------------------------------

		signal s_a_clk_0        : std_logic						;
		signal s_a_clk_1        : std_logic						;
		
		signal s_note_on 		: std_logic_vector(7 downto 0)	;
		signal s_note_off 		: std_logic_vector(7 downto 0)	;
		signal s_note_osc_0		: std_logic_vector(7 downto 0)	;
		signal s_note_osc_1		: std_logic_vector(7 downto 0)	;
		signal s_enable_osc_0	: std_logic						;
		signal s_enable_osc_1	: std_logic						;
		
		signal s_si_data_osc_0  : std_logic_vector(15 downto 0) ;
		signal s_sq_data_osc_0	: std_logic_vector(15 downto 0) ;
		signal s_sa_data_osc_0 	: std_logic_vector(15 downto 0) ;
		signal s_tr_data_osc_0 	: std_logic_vector(15 downto 0) ;
								 								
		signal s_si_data_osc_1 	: std_logic_vector(15 downto 0) ;
		signal s_sq_data_osc_1	: std_logic_vector(15 downto 0) ;
		signal s_sa_data_osc_1 	: std_logic_vector(15 downto 0) ;
		signal s_tr_data_osc_1 	: std_logic_vector(15 downto 0) ;
		
		signal s_clk_pixel	    : std_logic						;
		                        
		signal s_i_r			: std_logic_vector(7 downto 0)	;
		signal s_i_g			: std_logic_vector(7 downto 0)	;
		signal s_i_b			: std_logic_vector(7 downto 0)	;
		signal s_i_blank		: std_logic						;
		signal s_i_hsync		: std_logic						;
		signal s_i_vsync		: std_logic						;
		
		signal s_velocity 	: std_logic_vector(7 downto 0)	;
		signal s_synth_mode 	: std_logic_vector(3 downto 0)	;
		signal dp   			: std_logic						;
		
		signal s_synth_hdmi 	: std_logic_vector(15 downto 0)	;
----------------------------------------------------------------------	
	begin
			
	MIDI_DECODER_INST : entity work.midi_decoder
		port map(
				clk    		=> clk 					,
				reset    	=> reset 				,
				midi_in		=> midi_in				,
				note_on  	=> s_note_on			,
				note_off	=> s_note_off			,
				velocity 	=> s_velocity				--maybe to mixer, use different amplitude
		);
			
	OSC_HANDLER_INST : entity work.osc_handler
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

	DDS_INST_OSC_0 : entity work.dds
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
		
	DDS_INST_OSC_1 : entity work.dds
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
		
	MIXER_INST : entity work.mixer	
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
			
	BUTTONS_INST : entity work.buttons
		port map(
				clk 			=> clk				,       	
				reset     	  	=> reset			, 
				button_l 	   	=> button_l			, 
				button_r 	   	=> button_r			, 
				out_function   	=> s_synth_mode
		);
				
	HEX2SEG_INST : entity work.hex2seg
		port map(
				num  			=> s_synth_mode		,   
				dp    			=> dp				,   
				disp_seg		=> disp_seg
		);
		
		
	AV_HDMI_INST : entity work.av_hdmi
		port map(
				clk_pixel_x10	=> clk_pixel_x10    ,
				clk_pixel		=> s_clk_pixel	   	,
				                                 
				i_r				=> s_i_r	     	,
				i_g				=> s_i_g	     	,
				i_b				=> s_i_b	     	,
				i_blank			=> s_i_blank     	,
				i_hsync			=> s_i_hsync     	,
				i_vsync			=> s_i_vsync     	,
													
				i_audio_pcm_l 	=> s_synth_hdmi  	,
				i_audio_pcm_r	=> s_synth_hdmi  	,
														
				o_tmds_d0		=> tmds_d0	     	,
				o_tmds_d1		=> tmds_d1	     	,
				o_tmds_d2		=> tmds_d2	     	,
				o_tmds_clk		=> tmds_clk
		);
		
end architecture;
