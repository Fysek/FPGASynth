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

component note_to_pa is
	generic(
			lut_bit_width 	: integer := 8;
			pa_bit_width 	: integer := 32
	);
	port(  
		clk				: in std_logic;
		reset			: in std_logic;
		enable			: in std_logic;
        note_on			: in std_logic_vector(7 downto 0); --Note ON/OFF 0x80(off), 0xFF(on);
		pa_word 		: out unsigned(pa_bit_width-1 downto 0)
	);
end component;

component phaseaccum 
	generic(
			max_length 		: integer := 2147483647;
			lut_bit_width 	: integer := 8;
			pa_bit_width 	: integer := 32
	);
	port(
		a_clk			: in std_logic;
        reset         	: in std_logic;
        pa_word  	  	: in unsigned(pa_bit_width-1 downto 0);
        phase_out     	: out unsigned(lut_bit_width-1 downto 0)
	);
end component;


component sinelut is
	generic(
			lut_bit_width : integer := 8
	);
	port(
		phase_in      	: in unsigned(lut_bit_width-1 downto 0);
		a_clk      		: in std_logic;
		reset         	: in std_logic;
		data          	: out std_logic_vector(15 downto 0)
	);
end component;

component pulselut is
	generic(
			lut_bit_width : integer := 8
	);
	port(
		phase_in      	: in unsigned(lut_bit_width-1 downto 0);
		a_clk      		: in std_logic;
		reset         	: in std_logic;
		data          	: out std_logic_vector(15 downto 0)
	);
end component;

component sawlut is
	generic(
			lut_bit_width : integer := 8
	);
	port(
		phase_in      	: in unsigned(lut_bit_width-1 downto 0);
		a_clk      		: in std_logic;
		reset         	: in std_logic;
		data          	: out std_logic_vector(15 downto 0)
	);
end component;

component trilut is
	generic(
			lut_bit_width : integer := 8
	);
	port(
		phase_in      	: in unsigned(lut_bit_width-1 downto 0);
		a_clk      		: in std_logic;
		reset         	: in std_logic;
		data          	: out std_logic_vector(15 downto 0)
	);
end component;

component sample_clk_gen is
	generic(
			divider : integer := 512
	);
	port(
		clk				: in std_logic;
		reset			: in std_logic;
        a_clk 			: out std_logic;
		a_clk_main 		: out std_logic
	);
end component;


----------------------------------------------------
	signal as_clk : std_logic;
	signal a_phase_out : unsigned(lut_bit_width-1 downto 0);
	signal pas_word : unsigned(pa_bit_width-1 downto 0);
----------------------------------------------------


begin
	G1: sample_clk_gen 
		port map(
				clk=>clk, 
				reset=>reset, 
				a_clk=>as_clk, 
				a_clk_main=>a_clk
		);
		
	G2: note_to_pa 
		port map(
				clk=>clk, 
				reset=>reset, 
				NOTE_ON=>note_dds, 
				ENABLE=>ENABLE, 
				pa_word=>pas_word
		);
		
	G3: phaseaccum
		port map(
				a_clk=>as_clk, 
				reset=>reset, 
				pa_word=>pas_word, 
				phase_out=>a_phase_out
		);
		
	G4: sinelut
		port map(
				phase_in=>a_phase_out, 
				a_clk=>as_clk, 
				reset=>reset, 
				data=>si_data
				);
				
	G5: pulselut 
		port map(
				phase_in=>a_phase_out, 
				a_clk=>as_clk, 
				reset=>reset, 
				data=>sq_data
		);
		
	G6: sawlut
		port map(
				phase_in=>a_phase_out, 
				a_clk=>as_clk, 
				reset=>reset, 
				data=>sa_data
		);
		
	G7: trilut
		port map(
				phase_in=>a_phase_out, 
				a_clk=>as_clk, 
				reset=>reset, 
				data=>tr_data
		);

end architecture; 