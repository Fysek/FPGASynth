-------------------------------------------------------------------------------
--
-- Title       : dds
-- Design      : dds top
-- Author      : Mateusz Dyrdół
--
-------------------------------------------------------------------------------

LIBRARY IEEE;
USE IEEE.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY DDS IS
	GENERIC(lut_bit_width : integer := 8;
				pa_bit_width : integer := 32
				);
	PORT(
		clk   	: IN std_logic;
		reset 	: IN std_logic;
		ENABLE	: in std_logic;
		NOTE_ON_DDS: in std_logic_vector(7 downto 0);	
		SI_DATA, SQ_DATA, SA_DATA, TR_DATA  : OUT std_logic_vector(15 downto 0);
		a_clk			: OUT std_logic
	);		
END ENTITY DDS;


ARCHITECTURE behav of DDS is

component NOTE_2_PA IS
	GENERIC(lut_bit_width : integer := 8;
				pa_bit_width : integer := 32
	);
	PORT ( 
		CLK				: in std_logic;
		RESET			: in std_logic;
		ENABLE			: in std_logic;
        NOTE_ON 		: in std_logic_vector(7 downto 0); --Note ON/OFF 0x80(off), 0xFF(on);
		PA_word 		: OUT unsigned(pa_bit_width-1 downto 0)
	);
END component;

component phaseaccum_entity 
	GENERIC(
			max_length : integer := 2147483647;
			lut_bit_width : integer := 8;
			pa_bit_width : integer := 32
	);
	PORT(
		a_clk			: IN std_logic;
		reset         : IN std_logic;
		PA_word  	  : IN unsigned(pa_bit_width-1 downto 0);
		phase_out     : OUT unsigned(lut_bit_width-1 downto 0)
	);
END component;


component sinelut_entity IS
	GENERIC(lut_bit_width : integer := 8
	);
	PORT(
		phase_in      : in unsigned(lut_bit_width-1 downto 0);
		a_clk      : in std_logic;
		reset         : in std_logic;
		DATA          : OUT std_logic_vector(15 downto 0)
	);
END component;

component pulselut_entity IS
	GENERIC(lut_bit_width : integer := 8
	);
	PORT(
		phase_in      : in unsigned(lut_bit_width-1 downto 0);
		a_clk      : in std_logic;
		reset         : in std_logic;
		DATA          : OUT std_logic_vector(15 downto 0)
	);
END component;

component sawlut_entity IS
	GENERIC(lut_bit_width : integer := 8
	);
	PORT(
		phase_in      : in unsigned(lut_bit_width-1 downto 0);
		a_clk      : in std_logic;
		reset         : in std_logic;
		DATA          : OUT std_logic_vector(15 downto 0)
	);
END component;

component trilut_entity IS
	GENERIC(lut_bit_width : integer := 8
	);
	PORT(
		phase_in      : in unsigned(lut_bit_width-1 downto 0);
		a_clk      : in std_logic;
		reset         : in std_logic;
		DATA          : OUT std_logic_vector(15 downto 0)
	);
END component;

component sample_clk_gen_entity is
	GENERIC(divider : integer := 512
	);
	PORT  (clk			: IN std_logic;
			reset			: IN std_logic;
			a_clk			: OUT std_logic;
			a_clk_main : OUT std_logic
	);
END component;

	signal as_clk : std_logic;
	signal a_phase_out : unsigned(lut_bit_width-1 downto 0);
	signal PAs_word : unsigned(pa_bit_width-1 downto 0);

BEGIN
	
	SAMPLE_CLK_INST: sample_clk_gen_entity port map(clk=>clk, reset=>reset, a_clk=>as_clk, a_clk_main=>a_clk);
	NOTE_TO_PA_INST: NOTE_2_PA port map(CLK=>CLK, RESET=>RESET, NOTE_ON=>NOTE_ON_DDS, ENABLE=>ENABLE, PA_word=>PAs_word);
	PA_INST: phaseaccum_entity port map(a_clk=>as_clk, reset=>reset, PA_word=>PAs_word, phase_out=>a_phase_out);
	SINE_INST: sinelut_entity port map(phase_in=>a_phase_out, a_clk=>as_clk, reset=>reset, DATA=>SI_DATA);
	PULSE_INST: pulselut_entity port map(phase_in=>a_phase_out, a_clk=>as_clk, reset=>reset, DATA=>SQ_DATA);
	SAW_INST: sawlut_entity port map(phase_in=>a_phase_out, a_clk=>as_clk, reset=>reset, DATA=>SA_DATA);
	TRI_INST: trilut_entity port map(phase_in=>a_phase_out, a_clk=>as_clk, reset=>reset, DATA=>TR_DATA);

END BEHAV; 