
library ieee;
use ieee.numeric_std.all;
use ieee.std_logic_1164.all;


entity hdmi_top is
	port
	(
			clk_pixel      	: in  std_logic	;--10MHz clock for board, PLL gives pixclk(27MHz) and pixclk10x								;
			reset          	: in  std_logic	;--negative active		
			enc0			: out std_logic_vector(9 downto 0)	;
			enc1			: out std_logic_vector(9 downto 0)	;
			enc2			: out std_logic_vector(9 downto 0)	
	);
end entity;

architecture hdmi_top_arch of hdmi_top is

		signal s_vde		: std_logic								;	
		signal s_ade		: std_logic								;
				
		signal s_vhsync	: std_logic_vector(1 downto 0)	;							
		
		signal s_c 			: std_logic_vector(1 downto 0)	;
	
		signal s_red 		: std_logic_vector(7 downto 0)	;
		signal s_green		: std_logic_vector(7 downto 0)	;
		signal s_blue		: std_logic_vector(7 downto 0)	;
		signal s_cx			: std_logic_vector(11 downto 0)	;
		signal s_cy			: std_logic_vector(11 downto 0)	;

		signal s_aux		: std_logic_vector(3 downto 0)	;

begin

	VIDEO_CONTROLLER_INST : entity work.video_controller
		port map(		
				clk_pixel 	=> clk_pixel 	,
				reset 		=> reset			,
									
				c_red 		=> s_red 		,
				c_green 		=> s_green		,
				c_blue  		=> s_blue		,
											
				c_x  			=> s_cx     	,
				c_y  			=> s_cy     	,
				vde			=> s_vde    	,
				vhsync 		=> s_vhsync  	
		   		
		);		

	AV_CONTROLLER_INST : entity work.av_hdmi_controller	
		port map (
				clk_pixel	=> clk_pixel 			,
				reset			=> reset    	,
											
				red 	    	=> s_red 		,
				green       => s_green		,
				blue        => s_blue		,
											
				counterx  	=> s_cx     	,
				countery  	=> s_cy     	,
				vde		   => s_vde    	,
				vhsync	   => s_vhsync 	,  
				          
				tmds_enc0	=> enc0			,
				tmds_enc1	=> enc1			,
				tmds_enc2	=> enc2
	);
	
end architecture;