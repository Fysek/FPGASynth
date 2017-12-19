LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

entity dds is
	generic(
			lut_bit_width : integer := 8;
			pa_bit_width : integer := 32
	);
	port(
		clk   		: in std_logic;
		reset 		: in std_logic;
		enable		: in std_logic;
		note_dds	: in std_logic_vector(7 downto 0); --Note ON/OFF 0x80(off), 0xFF(on);
		si_data 	: out std_logic_vector(15 downto 0);
		sq_data		: out std_logic_vector(15 downto 0);
		sa_data 	: out std_logic_vector(15 downto 0);
		tr_data  	: out std_logic_vector(15 downto 0);
		a_clk		: out std_logic
	);		
	
end entity dds;


architecture dds_arch of dds is

----------------------------------------------------
	signal as_clk : std_logic;
	signal a_phase_out : unsigned(lut_bit_width-1 downto 0);
	signal pas_word : unsigned(pa_bit_width-1 downto 0);
----------------------------------------------------


begin
	SAMPLE_CLK_GEN_INST: entity work.sample_clk_gen 
		port map(
				clk=>clk, 
				reset=>reset, 
				a_clk=>as_clk, 
				a_clk_main=>a_clk
		);
		
	NOTE_TO_PA_INST: entity work.note_to_pa 
		port map(
				clk=>clk, 
				reset=>reset, 
				NOTE_ON=>note_dds, 
				ENABLE=>ENABLE, 
				pa_word=>pas_word
		);
		
	PHASEACCUM_INST: entity work.phaseaccum
		port map(
				a_clk=>as_clk, 
				reset=>reset, 
				pa_word=>pas_word, 
				phase_out=>a_phase_out
		);
		
	SINELUT_INST:  entity work.sinelut
		port map(
				phase_in=>a_phase_out, 
				a_clk=>as_clk, 
				reset=>reset, 
				data=>si_data
				);
				
	PHASELUT_INST:  entity work.pulselut	
		port map(
				phase_in=>a_phase_out, 
				a_clk=>as_clk, 
				reset=>reset, 
				data=>sq_data
		);
		
	SAWLUT_INST:  entity work.sawlut
		port map(
				phase_in=>a_phase_out, 
				a_clk=>as_clk, 
				reset=>reset, 
				data=>sa_data
		);
		
	TRILUT_INST:  entity work.trilut
		port map(
				phase_in=>a_phase_out, 
				a_clk=>as_clk, 
				reset=>reset, 
				data=>tr_data
		);

end architecture; 