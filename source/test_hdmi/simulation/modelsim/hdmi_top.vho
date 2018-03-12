-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel MegaCore Function License Agreement, or other 
-- applicable license agreement, including, without limitation, 
-- that your use is for the sole purpose of programming logic 
-- devices manufactured by Intel and sold by Intel or its 
-- authorized distributors.  Please refer to the applicable 
-- agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.0.0 Build 595 04/25/2017 SJ Lite Edition"

-- DATE "02/22/2018 20:39:31"

-- 
-- Device: Altera 10M08DAF256C8GES Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_TMS~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TCK~	=>  Location: PIN_H3,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_G1,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_E8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_F7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_E7,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_TMS~~padout\ : std_logic;
SIGNAL \~ALTERA_TCK~~padout\ : std_logic;
SIGNAL \~ALTERA_TDI~~padout\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~padout\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~padout\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~padout\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~padout\ : std_logic;
SIGNAL \~ALTERA_TMS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TCK~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_TDI~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONFIG_SEL~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nCONFIG~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_nSTATUS~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_CONF_DONE~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hdmi_top IS
    PORT (
	clk_pixel : IN std_logic;
	reset : IN std_logic;
	enc0 : OUT std_logic_vector(9 DOWNTO 0);
	enc1 : OUT std_logic_vector(9 DOWNTO 0);
	enc2 : OUT std_logic_vector(9 DOWNTO 0)
	);
END hdmi_top;

-- Design Ports Information
-- enc0[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc0[1]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc0[2]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc0[3]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc0[4]	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc0[5]	=>  Location: PIN_T9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc0[6]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc0[7]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc0[8]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc0[9]	=>  Location: PIN_D1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc1[0]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc1[1]	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc1[2]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc1[3]	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc1[4]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc1[5]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc1[6]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc1[7]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc1[8]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc1[9]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc2[0]	=>  Location: PIN_F5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc2[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc2[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc2[3]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc2[4]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc2[5]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc2[6]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc2[7]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc2[8]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- enc2[9]	=>  Location: PIN_G6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk_pixel	=>  Location: PIN_J6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_K6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hdmi_top IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk_pixel : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_enc0 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_enc1 : std_logic_vector(9 DOWNTO 0);
SIGNAL ww_enc2 : std_logic_vector(9 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk_pixel~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \enc0[0]~output_o\ : std_logic;
SIGNAL \enc0[1]~output_o\ : std_logic;
SIGNAL \enc0[2]~output_o\ : std_logic;
SIGNAL \enc0[3]~output_o\ : std_logic;
SIGNAL \enc0[4]~output_o\ : std_logic;
SIGNAL \enc0[5]~output_o\ : std_logic;
SIGNAL \enc0[6]~output_o\ : std_logic;
SIGNAL \enc0[7]~output_o\ : std_logic;
SIGNAL \enc0[8]~output_o\ : std_logic;
SIGNAL \enc0[9]~output_o\ : std_logic;
SIGNAL \enc1[0]~output_o\ : std_logic;
SIGNAL \enc1[1]~output_o\ : std_logic;
SIGNAL \enc1[2]~output_o\ : std_logic;
SIGNAL \enc1[3]~output_o\ : std_logic;
SIGNAL \enc1[4]~output_o\ : std_logic;
SIGNAL \enc1[5]~output_o\ : std_logic;
SIGNAL \enc1[6]~output_o\ : std_logic;
SIGNAL \enc1[7]~output_o\ : std_logic;
SIGNAL \enc1[8]~output_o\ : std_logic;
SIGNAL \enc1[9]~output_o\ : std_logic;
SIGNAL \enc2[0]~output_o\ : std_logic;
SIGNAL \enc2[1]~output_o\ : std_logic;
SIGNAL \enc2[2]~output_o\ : std_logic;
SIGNAL \enc2[3]~output_o\ : std_logic;
SIGNAL \enc2[4]~output_o\ : std_logic;
SIGNAL \enc2[5]~output_o\ : std_logic;
SIGNAL \enc2[6]~output_o\ : std_logic;
SIGNAL \enc2[7]~output_o\ : std_logic;
SIGNAL \enc2[8]~output_o\ : std_logic;
SIGNAL \enc2[9]~output_o\ : std_logic;
SIGNAL \clk_pixel~input_o\ : std_logic;
SIGNAL \clk_pixel~inputclkctrl_outclk\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[0]~11_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[3]~18\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[4]~19_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[5]~24\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[6]~25_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[6]~26\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[7]~27_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[7]~28\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[8]~29_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[8]~30\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[9]~31_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[9]~32\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[10]~33_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Equal2~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Equal2~1_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Equal2~2_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~5\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~6_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~11\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~12_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|counterx~1_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~13\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~14_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~15\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~16_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|counterx~2_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~17\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~18_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|counterx~0_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~19\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~20_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~21\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~22_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Equal0~0_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|counterx~5_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~0_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Equal0~2_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~7\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~8_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|counterx~4_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~9\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~10_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Equal0~1_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~1\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~2_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|counterx~3_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~3\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add1~4_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|c_x[3]~feeder_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|c_x[6]~feeder_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|process_0~4_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|c_x[10]~feeder_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|c_x[9]~feeder_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|process_0~0_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Equal0~3_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~0_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|countery~9_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~1\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~2_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|countery~10_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~3\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~4_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|countery~11_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~5\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~6_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|countery~12_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Equal1~2_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~21\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~22_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|countery~5_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~7\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~8_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|countery~6_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~9\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~10_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|countery~0_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~11\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~12_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|countery~1_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~13\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~14_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|countery~2_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|countery[7]~feeder_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~15\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~16_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|countery~3_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Equal1~0_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Equal1~1_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|countery~7_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~17\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~18_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|countery~8_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~19\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|Add0~20_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|countery~4_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|process_0~2_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|c_x[0]~feeder_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|c_y[11]~feeder_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|process_0~1_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|c_y[0]~feeder_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|LessThan1~1_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|c_y[4]~feeder_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|c_y[2]~feeder_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|LessThan1~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|LessThan1~2_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|process_0~3_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|process_0~5_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|process_0~6_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|process_0~7_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector1~6_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector2~3_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector3~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|state.dataIslandPreamble~q\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector4~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector1~2_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Equal4~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Equal5~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Equal5~1_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Equal4~1_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector4~1_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector4~2_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector4~3_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector4~4_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector6~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|state.dataIsland~q\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector1~5_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[1]~21_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector1~7_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector1~8_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|state.videoDataPreamble~q\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector2~1_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector2~2_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|state.videoDataGuardBand~q\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Equal5~2_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector0~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector0~1_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|state.videoData~q\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector1~3_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|state~20_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector7~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|state.controlData~q\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[4]~20\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[5]~23_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector1~4_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[1]~22_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[0]~12\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[1]~13_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[1]~14\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[2]~15_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[2]~16\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|clockCounter[3]~17_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Equal3~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Equal3~1_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|Selector5~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|process_0~8_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|process_0~2_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|LessThan4~0_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|LessThan5~0_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|LessThan5~1_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|LessThan5~2_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|process_0~9_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|process_0~10_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|LessThan7~0_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|process_0~11_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|process_0~12_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|s_vde~q\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add14~1_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add18~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|process_1~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add16~1_cout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add16~2_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add18~11_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|dc_bias[0]~5_cout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|dc_bias[0]~6_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|vde~q\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add18~1\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add18~2_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add16~3\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add16~4_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add18~10_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|dc_bias[0]~7\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|dc_bias[1]~8_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add18~3\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add18~4_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add16~5\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add16~6_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add18~9_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|dc_bias[1]~9\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|dc_bias[2]~10_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Equal1~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add14~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add18~5\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add18~6_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add16~7\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add16~8_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|Add18~8_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|dc_bias[2]~11\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|dc_bias[3]~12_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|process_0~0_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|process_0~1_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|process_0~3_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|process_0~4_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|s_hsync~q\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|ENCODED~1_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc0[0]~4_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|process_0~5_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|process_0~6_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|process_0~7_combout\ : std_logic;
SIGNAL \VIDEO_CONTROLLER_INST|s_vsync~q\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc0[0]~6_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc0[0]~7_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|s_blue~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc0[1]~8_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|ENCODED~2_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc0[2]~9_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc0[2]~10_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc0[3]~11_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc0[4]~12_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc0[5]~20_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc0[6]~14_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc0[6]~15_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc0[5]~13_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc0[7]~16_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc0[8]~17_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|ENCODED~3_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc0[8]~18_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc0|ENCODED[9]~feeder_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc0[9]~19_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add16~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|ENCODED~5_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add16~2_cout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add16~3_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add18~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add16~14_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add14~2_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add14~3_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|dc_bias[0]~5_cout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|dc_bias[0]~6_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add14~1_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add18~1\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add18~2_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add16~4\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add16~5_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add16~13_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|dc_bias[0]~7\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|dc_bias[1]~8_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add16~6\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add16~7_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add18~3\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add18~4_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add16~12_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|dc_bias[1]~9\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|dc_bias[2]~10_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Equal1~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add14~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add18~5\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add18~6_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add16~8\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add16~9_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|Add16~11_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|dc_bias[2]~11\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|dc_bias[3]~12_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|ENCODED~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc1[0]~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|ENCODED~1_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc1[2]~1_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc1[3]~2_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc1[4]~3_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|ENCODED~2_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc1[7]~4_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|ENCODED~3_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc1[8]~5_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc1|ENCODED~4_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc1[9]~6_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|ctl32[0]~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|ctl32[0]~1_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc2|ENCODED~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc2[0]~0_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc2|ENCODED~1_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc2[2]~1_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc2[3]~2_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc2[4]~3_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc2|ENCODED~2_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc2[8]~4_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|enc2|ENCODED~3_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|tmds_enc2[9]~5_combout\ : std_logic;
SIGNAL \AV_CONTROLLER_INST|ctl32\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \VIDEO_CONTROLLER_INST|c_x\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \AV_CONTROLLER_INST|enc1|ENCODED\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \AV_CONTROLLER_INST|enc0|ENCODED\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \AV_CONTROLLER_INST|enc2|ENCODED\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \VIDEO_CONTROLLER_INST|c_y\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \AV_CONTROLLER_INST|enc1|dc_bias\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \AV_CONTROLLER_INST|enc0|dc_bias\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \VIDEO_CONTROLLER_INST|c_red\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \AV_CONTROLLER_INST|clockCounter\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \VIDEO_CONTROLLER_INST|counterx\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VIDEO_CONTROLLER_INST|countery\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \VIDEO_CONTROLLER_INST|ALT_INV_vde~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_clk_pixel <= clk_pixel;
ww_reset <= reset;
enc0 <= ww_enc0;
enc1 <= ww_enc1;
enc2 <= ww_enc2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);

\clk_pixel~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk_pixel~input_o\);
\VIDEO_CONTROLLER_INST|ALT_INV_vde~q\ <= NOT \VIDEO_CONTROLLER_INST|vde~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X11_Y12_N16
\~QUARTUS_CREATED_GND~I\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \~QUARTUS_CREATED_GND~I_combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~QUARTUS_CREATED_GND~I_combout\);

-- Location: IOOBUF_X10_Y15_N23
\enc0[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc0[0]~7_combout\,
	devoe => ww_devoe,
	o => \enc0[0]~output_o\);

-- Location: IOOBUF_X13_Y25_N2
\enc0[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc0[1]~8_combout\,
	devoe => ww_devoe,
	o => \enc0[1]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\enc0[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc0[2]~10_combout\,
	devoe => ww_devoe,
	o => \enc0[2]~output_o\);

-- Location: IOOBUF_X10_Y17_N2
\enc0[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc0[3]~11_combout\,
	devoe => ww_devoe,
	o => \enc0[3]~output_o\);

-- Location: IOOBUF_X10_Y15_N16
\enc0[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc0[4]~12_combout\,
	devoe => ww_devoe,
	o => \enc0[4]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\enc0[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc0[5]~20_combout\,
	devoe => ww_devoe,
	o => \enc0[5]~output_o\);

-- Location: IOOBUF_X6_Y10_N30
\enc0[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc0[6]~15_combout\,
	devoe => ww_devoe,
	o => \enc0[6]~output_o\);

-- Location: IOOBUF_X13_Y25_N23
\enc0[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc0[7]~16_combout\,
	devoe => ww_devoe,
	o => \enc0[7]~output_o\);

-- Location: IOOBUF_X15_Y25_N2
\enc0[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc0[8]~18_combout\,
	devoe => ww_devoe,
	o => \enc0[8]~output_o\);

-- Location: IOOBUF_X10_Y19_N23
\enc0[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc0[9]~19_combout\,
	devoe => ww_devoe,
	o => \enc0[9]~output_o\);

-- Location: IOOBUF_X10_Y21_N23
\enc1[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc1[0]~0_combout\,
	devoe => ww_devoe,
	o => \enc1[0]~output_o\);

-- Location: IOOBUF_X10_Y21_N9
\enc1[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc1[0]~0_combout\,
	devoe => ww_devoe,
	o => \enc1[1]~output_o\);

-- Location: IOOBUF_X10_Y19_N16
\enc1[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc1[2]~1_combout\,
	devoe => ww_devoe,
	o => \enc1[2]~output_o\);

-- Location: IOOBUF_X10_Y22_N23
\enc1[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc1[3]~2_combout\,
	devoe => ww_devoe,
	o => \enc1[3]~output_o\);

-- Location: IOOBUF_X10_Y21_N16
\enc1[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc1[4]~3_combout\,
	devoe => ww_devoe,
	o => \enc1[4]~output_o\);

-- Location: IOOBUF_X10_Y21_N2
\enc1[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc1[0]~0_combout\,
	devoe => ww_devoe,
	o => \enc1[5]~output_o\);

-- Location: IOOBUF_X10_Y19_N2
\enc1[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc1[2]~1_combout\,
	devoe => ww_devoe,
	o => \enc1[6]~output_o\);

-- Location: IOOBUF_X10_Y20_N9
\enc1[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc1[7]~4_combout\,
	devoe => ww_devoe,
	o => \enc1[7]~output_o\);

-- Location: IOOBUF_X17_Y0_N2
\enc1[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc1[8]~5_combout\,
	devoe => ww_devoe,
	o => \enc1[8]~output_o\);

-- Location: IOOBUF_X11_Y25_N23
\enc1[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc1[9]~6_combout\,
	devoe => ww_devoe,
	o => \enc1[9]~output_o\);

-- Location: IOOBUF_X10_Y22_N16
\enc2[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc2[0]~0_combout\,
	devoe => ww_devoe,
	o => \enc2[0]~output_o\);

-- Location: IOOBUF_X10_Y22_N2
\enc2[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc2[0]~0_combout\,
	devoe => ww_devoe,
	o => \enc2[1]~output_o\);

-- Location: IOOBUF_X10_Y20_N2
\enc2[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc2[2]~1_combout\,
	devoe => ww_devoe,
	o => \enc2[2]~output_o\);

-- Location: IOOBUF_X6_Y10_N16
\enc2[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc2[3]~2_combout\,
	devoe => ww_devoe,
	o => \enc2[3]~output_o\);

-- Location: IOOBUF_X10_Y19_N9
\enc2[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc2[4]~3_combout\,
	devoe => ww_devoe,
	o => \enc2[4]~output_o\);

-- Location: IOOBUF_X10_Y22_N9
\enc2[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc2[0]~0_combout\,
	devoe => ww_devoe,
	o => \enc2[5]~output_o\);

-- Location: IOOBUF_X10_Y20_N23
\enc2[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc2[2]~1_combout\,
	devoe => ww_devoe,
	o => \enc2[6]~output_o\);

-- Location: IOOBUF_X6_Y10_N2
\enc2[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc2[3]~2_combout\,
	devoe => ww_devoe,
	o => \enc2[7]~output_o\);

-- Location: IOOBUF_X6_Y10_N9
\enc2[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc2[8]~4_combout\,
	devoe => ww_devoe,
	o => \enc2[8]~output_o\);

-- Location: IOOBUF_X10_Y18_N23
\enc2[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \AV_CONTROLLER_INST|tmds_enc2[9]~5_combout\,
	devoe => ww_devoe,
	o => \enc2[9]~output_o\);

-- Location: IOIBUF_X0_Y6_N15
\clk_pixel~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk_pixel,
	o => \clk_pixel~input_o\);

-- Location: CLKCTRL_G3
\clk_pixel~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk_pixel~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk_pixel~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y14_N0
\AV_CONTROLLER_INST|clockCounter[0]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|clockCounter[0]~11_combout\ = \AV_CONTROLLER_INST|clockCounter\(0) $ (VCC)
-- \AV_CONTROLLER_INST|clockCounter[0]~12\ = CARRY(\AV_CONTROLLER_INST|clockCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|clockCounter\(0),
	datad => VCC,
	combout => \AV_CONTROLLER_INST|clockCounter[0]~11_combout\,
	cout => \AV_CONTROLLER_INST|clockCounter[0]~12\);

-- Location: IOIBUF_X0_Y6_N22
\reset~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: CLKCTRL_G4
\reset~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: LCCOMB_X19_Y14_N6
\AV_CONTROLLER_INST|clockCounter[3]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|clockCounter[3]~17_combout\ = (\AV_CONTROLLER_INST|clockCounter\(3) & (!\AV_CONTROLLER_INST|clockCounter[2]~16\)) # (!\AV_CONTROLLER_INST|clockCounter\(3) & ((\AV_CONTROLLER_INST|clockCounter[2]~16\) # (GND)))
-- \AV_CONTROLLER_INST|clockCounter[3]~18\ = CARRY((!\AV_CONTROLLER_INST|clockCounter[2]~16\) # (!\AV_CONTROLLER_INST|clockCounter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|clockCounter\(3),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|clockCounter[2]~16\,
	combout => \AV_CONTROLLER_INST|clockCounter[3]~17_combout\,
	cout => \AV_CONTROLLER_INST|clockCounter[3]~18\);

-- Location: LCCOMB_X19_Y14_N8
\AV_CONTROLLER_INST|clockCounter[4]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|clockCounter[4]~19_combout\ = (\AV_CONTROLLER_INST|clockCounter\(4) & (\AV_CONTROLLER_INST|clockCounter[3]~18\ $ (GND))) # (!\AV_CONTROLLER_INST|clockCounter\(4) & (!\AV_CONTROLLER_INST|clockCounter[3]~18\ & VCC))
-- \AV_CONTROLLER_INST|clockCounter[4]~20\ = CARRY((\AV_CONTROLLER_INST|clockCounter\(4) & !\AV_CONTROLLER_INST|clockCounter[3]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|clockCounter\(4),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|clockCounter[3]~18\,
	combout => \AV_CONTROLLER_INST|clockCounter[4]~19_combout\,
	cout => \AV_CONTROLLER_INST|clockCounter[4]~20\);

-- Location: LCCOMB_X19_Y14_N10
\AV_CONTROLLER_INST|clockCounter[5]~23\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|clockCounter[5]~23_combout\ = (\AV_CONTROLLER_INST|clockCounter\(5) & (!\AV_CONTROLLER_INST|clockCounter[4]~20\)) # (!\AV_CONTROLLER_INST|clockCounter\(5) & ((\AV_CONTROLLER_INST|clockCounter[4]~20\) # (GND)))
-- \AV_CONTROLLER_INST|clockCounter[5]~24\ = CARRY((!\AV_CONTROLLER_INST|clockCounter[4]~20\) # (!\AV_CONTROLLER_INST|clockCounter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|clockCounter\(5),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|clockCounter[4]~20\,
	combout => \AV_CONTROLLER_INST|clockCounter[5]~23_combout\,
	cout => \AV_CONTROLLER_INST|clockCounter[5]~24\);

-- Location: LCCOMB_X19_Y14_N12
\AV_CONTROLLER_INST|clockCounter[6]~25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|clockCounter[6]~25_combout\ = (\AV_CONTROLLER_INST|clockCounter\(6) & (\AV_CONTROLLER_INST|clockCounter[5]~24\ $ (GND))) # (!\AV_CONTROLLER_INST|clockCounter\(6) & (!\AV_CONTROLLER_INST|clockCounter[5]~24\ & VCC))
-- \AV_CONTROLLER_INST|clockCounter[6]~26\ = CARRY((\AV_CONTROLLER_INST|clockCounter\(6) & !\AV_CONTROLLER_INST|clockCounter[5]~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|clockCounter\(6),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|clockCounter[5]~24\,
	combout => \AV_CONTROLLER_INST|clockCounter[6]~25_combout\,
	cout => \AV_CONTROLLER_INST|clockCounter[6]~26\);

-- Location: FF_X19_Y14_N13
\AV_CONTROLLER_INST|clockCounter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|clockCounter[6]~25_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \AV_CONTROLLER_INST|clockCounter[1]~22_combout\,
	ena => \AV_CONTROLLER_INST|state.controlData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|clockCounter\(6));

-- Location: LCCOMB_X19_Y14_N14
\AV_CONTROLLER_INST|clockCounter[7]~27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|clockCounter[7]~27_combout\ = (\AV_CONTROLLER_INST|clockCounter\(7) & (!\AV_CONTROLLER_INST|clockCounter[6]~26\)) # (!\AV_CONTROLLER_INST|clockCounter\(7) & ((\AV_CONTROLLER_INST|clockCounter[6]~26\) # (GND)))
-- \AV_CONTROLLER_INST|clockCounter[7]~28\ = CARRY((!\AV_CONTROLLER_INST|clockCounter[6]~26\) # (!\AV_CONTROLLER_INST|clockCounter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|clockCounter\(7),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|clockCounter[6]~26\,
	combout => \AV_CONTROLLER_INST|clockCounter[7]~27_combout\,
	cout => \AV_CONTROLLER_INST|clockCounter[7]~28\);

-- Location: FF_X19_Y14_N15
\AV_CONTROLLER_INST|clockCounter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|clockCounter[7]~27_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \AV_CONTROLLER_INST|clockCounter[1]~22_combout\,
	ena => \AV_CONTROLLER_INST|state.controlData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|clockCounter\(7));

-- Location: LCCOMB_X19_Y14_N16
\AV_CONTROLLER_INST|clockCounter[8]~29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|clockCounter[8]~29_combout\ = (\AV_CONTROLLER_INST|clockCounter\(8) & (\AV_CONTROLLER_INST|clockCounter[7]~28\ $ (GND))) # (!\AV_CONTROLLER_INST|clockCounter\(8) & (!\AV_CONTROLLER_INST|clockCounter[7]~28\ & VCC))
-- \AV_CONTROLLER_INST|clockCounter[8]~30\ = CARRY((\AV_CONTROLLER_INST|clockCounter\(8) & !\AV_CONTROLLER_INST|clockCounter[7]~28\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|clockCounter\(8),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|clockCounter[7]~28\,
	combout => \AV_CONTROLLER_INST|clockCounter[8]~29_combout\,
	cout => \AV_CONTROLLER_INST|clockCounter[8]~30\);

-- Location: FF_X19_Y14_N17
\AV_CONTROLLER_INST|clockCounter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|clockCounter[8]~29_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \AV_CONTROLLER_INST|clockCounter[1]~22_combout\,
	ena => \AV_CONTROLLER_INST|state.controlData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|clockCounter\(8));

-- Location: LCCOMB_X19_Y14_N18
\AV_CONTROLLER_INST|clockCounter[9]~31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|clockCounter[9]~31_combout\ = (\AV_CONTROLLER_INST|clockCounter\(9) & (!\AV_CONTROLLER_INST|clockCounter[8]~30\)) # (!\AV_CONTROLLER_INST|clockCounter\(9) & ((\AV_CONTROLLER_INST|clockCounter[8]~30\) # (GND)))
-- \AV_CONTROLLER_INST|clockCounter[9]~32\ = CARRY((!\AV_CONTROLLER_INST|clockCounter[8]~30\) # (!\AV_CONTROLLER_INST|clockCounter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|clockCounter\(9),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|clockCounter[8]~30\,
	combout => \AV_CONTROLLER_INST|clockCounter[9]~31_combout\,
	cout => \AV_CONTROLLER_INST|clockCounter[9]~32\);

-- Location: FF_X19_Y14_N19
\AV_CONTROLLER_INST|clockCounter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|clockCounter[9]~31_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \AV_CONTROLLER_INST|clockCounter[1]~22_combout\,
	ena => \AV_CONTROLLER_INST|state.controlData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|clockCounter\(9));

-- Location: LCCOMB_X19_Y14_N20
\AV_CONTROLLER_INST|clockCounter[10]~33\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|clockCounter[10]~33_combout\ = \AV_CONTROLLER_INST|clockCounter[9]~32\ $ (!\AV_CONTROLLER_INST|clockCounter\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \AV_CONTROLLER_INST|clockCounter\(10),
	cin => \AV_CONTROLLER_INST|clockCounter[9]~32\,
	combout => \AV_CONTROLLER_INST|clockCounter[10]~33_combout\);

-- Location: FF_X19_Y14_N21
\AV_CONTROLLER_INST|clockCounter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|clockCounter[10]~33_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \AV_CONTROLLER_INST|clockCounter[1]~22_combout\,
	ena => \AV_CONTROLLER_INST|state.controlData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|clockCounter\(10));

-- Location: LCCOMB_X19_Y14_N30
\AV_CONTROLLER_INST|Equal2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Equal2~0_combout\ = (!\AV_CONTROLLER_INST|clockCounter\(5) & (!\AV_CONTROLLER_INST|clockCounter\(10) & (!\AV_CONTROLLER_INST|clockCounter\(4) & !\AV_CONTROLLER_INST|clockCounter\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|clockCounter\(5),
	datab => \AV_CONTROLLER_INST|clockCounter\(10),
	datac => \AV_CONTROLLER_INST|clockCounter\(4),
	datad => \AV_CONTROLLER_INST|clockCounter\(8),
	combout => \AV_CONTROLLER_INST|Equal2~0_combout\);

-- Location: LCCOMB_X19_Y14_N28
\AV_CONTROLLER_INST|Equal2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Equal2~1_combout\ = (!\AV_CONTROLLER_INST|clockCounter\(6) & (!\AV_CONTROLLER_INST|clockCounter\(1) & (!\AV_CONTROLLER_INST|clockCounter\(7) & !\AV_CONTROLLER_INST|clockCounter\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|clockCounter\(6),
	datab => \AV_CONTROLLER_INST|clockCounter\(1),
	datac => \AV_CONTROLLER_INST|clockCounter\(7),
	datad => \AV_CONTROLLER_INST|clockCounter\(9),
	combout => \AV_CONTROLLER_INST|Equal2~1_combout\);

-- Location: LCCOMB_X18_Y14_N8
\AV_CONTROLLER_INST|Equal2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Equal2~2_combout\ = (!\AV_CONTROLLER_INST|clockCounter\(2) & (\AV_CONTROLLER_INST|Equal2~0_combout\ & \AV_CONTROLLER_INST|Equal2~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|clockCounter\(2),
	datac => \AV_CONTROLLER_INST|Equal2~0_combout\,
	datad => \AV_CONTROLLER_INST|Equal2~1_combout\,
	combout => \AV_CONTROLLER_INST|Equal2~2_combout\);

-- Location: FF_X17_Y16_N7
\VIDEO_CONTROLLER_INST|counterx[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|Add1~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|counterx\(2));

-- Location: LCCOMB_X17_Y16_N6
\VIDEO_CONTROLLER_INST|Add1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add1~4_combout\ = (\VIDEO_CONTROLLER_INST|counterx\(2) & (\VIDEO_CONTROLLER_INST|Add1~3\ $ (GND))) # (!\VIDEO_CONTROLLER_INST|counterx\(2) & (!\VIDEO_CONTROLLER_INST|Add1~3\ & VCC))
-- \VIDEO_CONTROLLER_INST|Add1~5\ = CARRY((\VIDEO_CONTROLLER_INST|counterx\(2) & !\VIDEO_CONTROLLER_INST|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|counterx\(2),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add1~3\,
	combout => \VIDEO_CONTROLLER_INST|Add1~4_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add1~5\);

-- Location: LCCOMB_X17_Y16_N8
\VIDEO_CONTROLLER_INST|Add1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add1~6_combout\ = (\VIDEO_CONTROLLER_INST|counterx\(3) & (!\VIDEO_CONTROLLER_INST|Add1~5\)) # (!\VIDEO_CONTROLLER_INST|counterx\(3) & ((\VIDEO_CONTROLLER_INST|Add1~5\) # (GND)))
-- \VIDEO_CONTROLLER_INST|Add1~7\ = CARRY((!\VIDEO_CONTROLLER_INST|Add1~5\) # (!\VIDEO_CONTROLLER_INST|counterx\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|counterx\(3),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add1~5\,
	combout => \VIDEO_CONTROLLER_INST|Add1~6_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add1~7\);

-- Location: LCCOMB_X17_Y16_N12
\VIDEO_CONTROLLER_INST|Add1~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add1~10_combout\ = (\VIDEO_CONTROLLER_INST|counterx\(5) & (!\VIDEO_CONTROLLER_INST|Add1~9\)) # (!\VIDEO_CONTROLLER_INST|counterx\(5) & ((\VIDEO_CONTROLLER_INST|Add1~9\) # (GND)))
-- \VIDEO_CONTROLLER_INST|Add1~11\ = CARRY((!\VIDEO_CONTROLLER_INST|Add1~9\) # (!\VIDEO_CONTROLLER_INST|counterx\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|counterx\(5),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add1~9\,
	combout => \VIDEO_CONTROLLER_INST|Add1~10_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add1~11\);

-- Location: LCCOMB_X17_Y16_N14
\VIDEO_CONTROLLER_INST|Add1~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add1~12_combout\ = (\VIDEO_CONTROLLER_INST|counterx\(6) & (\VIDEO_CONTROLLER_INST|Add1~11\ $ (GND))) # (!\VIDEO_CONTROLLER_INST|counterx\(6) & (!\VIDEO_CONTROLLER_INST|Add1~11\ & VCC))
-- \VIDEO_CONTROLLER_INST|Add1~13\ = CARRY((\VIDEO_CONTROLLER_INST|counterx\(6) & !\VIDEO_CONTROLLER_INST|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|counterx\(6),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add1~11\,
	combout => \VIDEO_CONTROLLER_INST|Add1~12_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add1~13\);

-- Location: LCCOMB_X17_Y16_N30
\VIDEO_CONTROLLER_INST|counterx~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|counterx~1_combout\ = (\VIDEO_CONTROLLER_INST|Add1~12_combout\ & (((!\VIDEO_CONTROLLER_INST|Equal0~0_combout\) # (!\VIDEO_CONTROLLER_INST|Equal0~1_combout\)) # (!\VIDEO_CONTROLLER_INST|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Equal0~2_combout\,
	datab => \VIDEO_CONTROLLER_INST|Equal0~1_combout\,
	datac => \VIDEO_CONTROLLER_INST|Add1~12_combout\,
	datad => \VIDEO_CONTROLLER_INST|Equal0~0_combout\,
	combout => \VIDEO_CONTROLLER_INST|counterx~1_combout\);

-- Location: FF_X17_Y16_N31
\VIDEO_CONTROLLER_INST|counterx[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|counterx~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|counterx\(6));

-- Location: LCCOMB_X17_Y16_N16
\VIDEO_CONTROLLER_INST|Add1~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add1~14_combout\ = (\VIDEO_CONTROLLER_INST|counterx\(7) & (!\VIDEO_CONTROLLER_INST|Add1~13\)) # (!\VIDEO_CONTROLLER_INST|counterx\(7) & ((\VIDEO_CONTROLLER_INST|Add1~13\) # (GND)))
-- \VIDEO_CONTROLLER_INST|Add1~15\ = CARRY((!\VIDEO_CONTROLLER_INST|Add1~13\) # (!\VIDEO_CONTROLLER_INST|counterx\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|counterx\(7),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add1~13\,
	combout => \VIDEO_CONTROLLER_INST|Add1~14_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add1~15\);

-- Location: FF_X17_Y16_N29
\VIDEO_CONTROLLER_INST|counterx[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|Add1~14_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|counterx\(7));

-- Location: LCCOMB_X17_Y16_N18
\VIDEO_CONTROLLER_INST|Add1~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add1~16_combout\ = (\VIDEO_CONTROLLER_INST|counterx\(8) & (\VIDEO_CONTROLLER_INST|Add1~15\ $ (GND))) # (!\VIDEO_CONTROLLER_INST|counterx\(8) & (!\VIDEO_CONTROLLER_INST|Add1~15\ & VCC))
-- \VIDEO_CONTROLLER_INST|Add1~17\ = CARRY((\VIDEO_CONTROLLER_INST|counterx\(8) & !\VIDEO_CONTROLLER_INST|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|counterx\(8),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add1~15\,
	combout => \VIDEO_CONTROLLER_INST|Add1~16_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add1~17\);

-- Location: LCCOMB_X18_Y16_N4
\VIDEO_CONTROLLER_INST|counterx~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|counterx~2_combout\ = (\VIDEO_CONTROLLER_INST|Add1~16_combout\ & (((!\VIDEO_CONTROLLER_INST|Equal0~2_combout\) # (!\VIDEO_CONTROLLER_INST|Equal0~1_combout\)) # (!\VIDEO_CONTROLLER_INST|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Equal0~0_combout\,
	datab => \VIDEO_CONTROLLER_INST|Equal0~1_combout\,
	datac => \VIDEO_CONTROLLER_INST|Add1~16_combout\,
	datad => \VIDEO_CONTROLLER_INST|Equal0~2_combout\,
	combout => \VIDEO_CONTROLLER_INST|counterx~2_combout\);

-- Location: FF_X18_Y16_N5
\VIDEO_CONTROLLER_INST|counterx[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|counterx~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|counterx\(8));

-- Location: LCCOMB_X17_Y16_N20
\VIDEO_CONTROLLER_INST|Add1~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add1~18_combout\ = (\VIDEO_CONTROLLER_INST|counterx\(9) & (!\VIDEO_CONTROLLER_INST|Add1~17\)) # (!\VIDEO_CONTROLLER_INST|counterx\(9) & ((\VIDEO_CONTROLLER_INST|Add1~17\) # (GND)))
-- \VIDEO_CONTROLLER_INST|Add1~19\ = CARRY((!\VIDEO_CONTROLLER_INST|Add1~17\) # (!\VIDEO_CONTROLLER_INST|counterx\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|counterx\(9),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add1~17\,
	combout => \VIDEO_CONTROLLER_INST|Add1~18_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add1~19\);

-- Location: LCCOMB_X18_Y16_N28
\VIDEO_CONTROLLER_INST|counterx~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|counterx~0_combout\ = (\VIDEO_CONTROLLER_INST|Add1~18_combout\ & (((!\VIDEO_CONTROLLER_INST|Equal0~1_combout\) # (!\VIDEO_CONTROLLER_INST|Equal0~2_combout\)) # (!\VIDEO_CONTROLLER_INST|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Equal0~0_combout\,
	datab => \VIDEO_CONTROLLER_INST|Equal0~2_combout\,
	datac => \VIDEO_CONTROLLER_INST|Equal0~1_combout\,
	datad => \VIDEO_CONTROLLER_INST|Add1~18_combout\,
	combout => \VIDEO_CONTROLLER_INST|counterx~0_combout\);

-- Location: FF_X18_Y16_N23
\VIDEO_CONTROLLER_INST|counterx[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|counterx~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|counterx\(9));

-- Location: LCCOMB_X17_Y16_N22
\VIDEO_CONTROLLER_INST|Add1~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add1~20_combout\ = (\VIDEO_CONTROLLER_INST|counterx\(10) & (\VIDEO_CONTROLLER_INST|Add1~19\ $ (GND))) # (!\VIDEO_CONTROLLER_INST|counterx\(10) & (!\VIDEO_CONTROLLER_INST|Add1~19\ & VCC))
-- \VIDEO_CONTROLLER_INST|Add1~21\ = CARRY((\VIDEO_CONTROLLER_INST|counterx\(10) & !\VIDEO_CONTROLLER_INST|Add1~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|counterx\(10),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add1~19\,
	combout => \VIDEO_CONTROLLER_INST|Add1~20_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add1~21\);

-- Location: FF_X17_Y16_N23
\VIDEO_CONTROLLER_INST|counterx[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|Add1~20_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|counterx\(10));

-- Location: LCCOMB_X17_Y16_N24
\VIDEO_CONTROLLER_INST|Add1~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add1~22_combout\ = \VIDEO_CONTROLLER_INST|Add1~21\ $ (\VIDEO_CONTROLLER_INST|counterx\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VIDEO_CONTROLLER_INST|counterx\(11),
	cin => \VIDEO_CONTROLLER_INST|Add1~21\,
	combout => \VIDEO_CONTROLLER_INST|Add1~22_combout\);

-- Location: FF_X17_Y16_N25
\VIDEO_CONTROLLER_INST|counterx[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|Add1~22_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|counterx\(11));

-- Location: LCCOMB_X18_Y16_N18
\VIDEO_CONTROLLER_INST|Equal0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Equal0~0_combout\ = (\VIDEO_CONTROLLER_INST|counterx\(9) & (!\VIDEO_CONTROLLER_INST|counterx\(11) & (\VIDEO_CONTROLLER_INST|counterx\(8) & !\VIDEO_CONTROLLER_INST|counterx\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|counterx\(9),
	datab => \VIDEO_CONTROLLER_INST|counterx\(11),
	datac => \VIDEO_CONTROLLER_INST|counterx\(8),
	datad => \VIDEO_CONTROLLER_INST|counterx\(10),
	combout => \VIDEO_CONTROLLER_INST|Equal0~0_combout\);

-- Location: LCCOMB_X17_Y16_N26
\VIDEO_CONTROLLER_INST|counterx~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|counterx~5_combout\ = (\VIDEO_CONTROLLER_INST|Add1~6_combout\ & (((!\VIDEO_CONTROLLER_INST|Equal0~0_combout\) # (!\VIDEO_CONTROLLER_INST|Equal0~1_combout\)) # (!\VIDEO_CONTROLLER_INST|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Equal0~2_combout\,
	datab => \VIDEO_CONTROLLER_INST|Equal0~1_combout\,
	datac => \VIDEO_CONTROLLER_INST|Add1~6_combout\,
	datad => \VIDEO_CONTROLLER_INST|Equal0~0_combout\,
	combout => \VIDEO_CONTROLLER_INST|counterx~5_combout\);

-- Location: FF_X17_Y16_N27
\VIDEO_CONTROLLER_INST|counterx[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|counterx~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|counterx\(3));

-- Location: LCCOMB_X17_Y16_N2
\VIDEO_CONTROLLER_INST|Add1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add1~0_combout\ = \VIDEO_CONTROLLER_INST|counterx\(0) $ (VCC)
-- \VIDEO_CONTROLLER_INST|Add1~1\ = CARRY(\VIDEO_CONTROLLER_INST|counterx\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|counterx\(0),
	datad => VCC,
	combout => \VIDEO_CONTROLLER_INST|Add1~0_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add1~1\);

-- Location: FF_X17_Y16_N3
\VIDEO_CONTROLLER_INST|counterx[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|Add1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|counterx\(0));

-- Location: LCCOMB_X18_Y16_N2
\VIDEO_CONTROLLER_INST|Equal0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Equal0~2_combout\ = (!\VIDEO_CONTROLLER_INST|counterx\(1) & (!\VIDEO_CONTROLLER_INST|counterx\(2) & (\VIDEO_CONTROLLER_INST|counterx\(3) & \VIDEO_CONTROLLER_INST|counterx\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|counterx\(1),
	datab => \VIDEO_CONTROLLER_INST|counterx\(2),
	datac => \VIDEO_CONTROLLER_INST|counterx\(3),
	datad => \VIDEO_CONTROLLER_INST|counterx\(0),
	combout => \VIDEO_CONTROLLER_INST|Equal0~2_combout\);

-- Location: LCCOMB_X17_Y16_N10
\VIDEO_CONTROLLER_INST|Add1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add1~8_combout\ = (\VIDEO_CONTROLLER_INST|counterx\(4) & (\VIDEO_CONTROLLER_INST|Add1~7\ $ (GND))) # (!\VIDEO_CONTROLLER_INST|counterx\(4) & (!\VIDEO_CONTROLLER_INST|Add1~7\ & VCC))
-- \VIDEO_CONTROLLER_INST|Add1~9\ = CARRY((\VIDEO_CONTROLLER_INST|counterx\(4) & !\VIDEO_CONTROLLER_INST|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|counterx\(4),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add1~7\,
	combout => \VIDEO_CONTROLLER_INST|Add1~8_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add1~9\);

-- Location: LCCOMB_X17_Y16_N0
\VIDEO_CONTROLLER_INST|counterx~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|counterx~4_combout\ = (\VIDEO_CONTROLLER_INST|Add1~8_combout\ & (((!\VIDEO_CONTROLLER_INST|Equal0~1_combout\) # (!\VIDEO_CONTROLLER_INST|Equal0~0_combout\)) # (!\VIDEO_CONTROLLER_INST|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Equal0~2_combout\,
	datab => \VIDEO_CONTROLLER_INST|Equal0~0_combout\,
	datac => \VIDEO_CONTROLLER_INST|Equal0~1_combout\,
	datad => \VIDEO_CONTROLLER_INST|Add1~8_combout\,
	combout => \VIDEO_CONTROLLER_INST|counterx~4_combout\);

-- Location: FF_X17_Y16_N1
\VIDEO_CONTROLLER_INST|counterx[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|counterx~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|counterx\(4));

-- Location: FF_X17_Y16_N13
\VIDEO_CONTROLLER_INST|counterx[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|Add1~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|counterx\(5));

-- Location: LCCOMB_X18_Y16_N8
\VIDEO_CONTROLLER_INST|Equal0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Equal0~1_combout\ = (!\VIDEO_CONTROLLER_INST|counterx\(5) & (\VIDEO_CONTROLLER_INST|counterx\(6) & (\VIDEO_CONTROLLER_INST|counterx\(4) & !\VIDEO_CONTROLLER_INST|counterx\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|counterx\(5),
	datab => \VIDEO_CONTROLLER_INST|counterx\(6),
	datac => \VIDEO_CONTROLLER_INST|counterx\(4),
	datad => \VIDEO_CONTROLLER_INST|counterx\(7),
	combout => \VIDEO_CONTROLLER_INST|Equal0~1_combout\);

-- Location: LCCOMB_X17_Y16_N4
\VIDEO_CONTROLLER_INST|Add1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add1~2_combout\ = (\VIDEO_CONTROLLER_INST|counterx\(1) & (!\VIDEO_CONTROLLER_INST|Add1~1\)) # (!\VIDEO_CONTROLLER_INST|counterx\(1) & ((\VIDEO_CONTROLLER_INST|Add1~1\) # (GND)))
-- \VIDEO_CONTROLLER_INST|Add1~3\ = CARRY((!\VIDEO_CONTROLLER_INST|Add1~1\) # (!\VIDEO_CONTROLLER_INST|counterx\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|counterx\(1),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add1~1\,
	combout => \VIDEO_CONTROLLER_INST|Add1~2_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add1~3\);

-- Location: LCCOMB_X18_Y16_N12
\VIDEO_CONTROLLER_INST|counterx~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|counterx~3_combout\ = (\VIDEO_CONTROLLER_INST|Add1~2_combout\ & (((!\VIDEO_CONTROLLER_INST|Equal0~2_combout\) # (!\VIDEO_CONTROLLER_INST|Equal0~0_combout\)) # (!\VIDEO_CONTROLLER_INST|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Equal0~1_combout\,
	datab => \VIDEO_CONTROLLER_INST|Equal0~0_combout\,
	datac => \VIDEO_CONTROLLER_INST|Equal0~2_combout\,
	datad => \VIDEO_CONTROLLER_INST|Add1~2_combout\,
	combout => \VIDEO_CONTROLLER_INST|counterx~3_combout\);

-- Location: FF_X18_Y16_N13
\VIDEO_CONTROLLER_INST|counterx[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|counterx~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|counterx\(1));

-- Location: FF_X18_Y13_N3
\VIDEO_CONTROLLER_INST|c_x[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|Add1~4_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_x\(2));

-- Location: LCCOMB_X18_Y13_N22
\VIDEO_CONTROLLER_INST|c_x[3]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|c_x[3]~feeder_combout\ = \VIDEO_CONTROLLER_INST|counterx~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VIDEO_CONTROLLER_INST|counterx~5_combout\,
	combout => \VIDEO_CONTROLLER_INST|c_x[3]~feeder_combout\);

-- Location: FF_X18_Y13_N23
\VIDEO_CONTROLLER_INST|c_x[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|c_x[3]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_x\(3));

-- Location: FF_X18_Y13_N29
\VIDEO_CONTROLLER_INST|c_x[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|counterx~4_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_x\(4));

-- Location: FF_X18_Y13_N11
\VIDEO_CONTROLLER_INST|c_x[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|Add1~10_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_x\(5));

-- Location: LCCOMB_X18_Y13_N24
\VIDEO_CONTROLLER_INST|c_x[6]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|c_x[6]~feeder_combout\ = \VIDEO_CONTROLLER_INST|counterx~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VIDEO_CONTROLLER_INST|counterx~1_combout\,
	combout => \VIDEO_CONTROLLER_INST|c_x[6]~feeder_combout\);

-- Location: FF_X18_Y13_N25
\VIDEO_CONTROLLER_INST|c_x[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|c_x[6]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_x\(6));

-- Location: LCCOMB_X18_Y13_N8
\AV_CONTROLLER_INST|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|process_0~4_combout\ = (\VIDEO_CONTROLLER_INST|c_x\(3) & (\VIDEO_CONTROLLER_INST|c_x\(4) & (\VIDEO_CONTROLLER_INST|c_x\(5) & \VIDEO_CONTROLLER_INST|c_x\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|c_x\(3),
	datab => \VIDEO_CONTROLLER_INST|c_x\(4),
	datac => \VIDEO_CONTROLLER_INST|c_x\(5),
	datad => \VIDEO_CONTROLLER_INST|c_x\(6),
	combout => \AV_CONTROLLER_INST|process_0~4_combout\);

-- Location: LCCOMB_X16_Y16_N10
\VIDEO_CONTROLLER_INST|c_x[10]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|c_x[10]~feeder_combout\ = \VIDEO_CONTROLLER_INST|Add1~20_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VIDEO_CONTROLLER_INST|Add1~20_combout\,
	combout => \VIDEO_CONTROLLER_INST|c_x[10]~feeder_combout\);

-- Location: FF_X16_Y16_N11
\VIDEO_CONTROLLER_INST|c_x[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|c_x[10]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_x\(10));

-- Location: FF_X16_Y16_N19
\VIDEO_CONTROLLER_INST|c_x[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|counterx~2_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_x\(8));

-- Location: FF_X16_Y16_N29
\VIDEO_CONTROLLER_INST|c_x[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|Add1~22_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_x\(11));

-- Location: LCCOMB_X16_Y16_N12
\VIDEO_CONTROLLER_INST|c_x[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|c_x[9]~feeder_combout\ = \VIDEO_CONTROLLER_INST|counterx~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VIDEO_CONTROLLER_INST|counterx~0_combout\,
	combout => \VIDEO_CONTROLLER_INST|c_x[9]~feeder_combout\);

-- Location: FF_X16_Y16_N13
\VIDEO_CONTROLLER_INST|c_x[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|c_x[9]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_x\(9));

-- Location: LCCOMB_X16_Y16_N28
\AV_CONTROLLER_INST|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|process_0~0_combout\ = (!\VIDEO_CONTROLLER_INST|c_x\(10) & (!\VIDEO_CONTROLLER_INST|c_x\(8) & (!\VIDEO_CONTROLLER_INST|c_x\(11) & !\VIDEO_CONTROLLER_INST|c_x\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|c_x\(10),
	datab => \VIDEO_CONTROLLER_INST|c_x\(8),
	datac => \VIDEO_CONTROLLER_INST|c_x\(11),
	datad => \VIDEO_CONTROLLER_INST|c_x\(9),
	combout => \AV_CONTROLLER_INST|process_0~0_combout\);

-- Location: LCCOMB_X18_Y16_N30
\VIDEO_CONTROLLER_INST|Equal0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Equal0~3_combout\ = (\VIDEO_CONTROLLER_INST|Equal0~0_combout\ & (\VIDEO_CONTROLLER_INST|Equal0~1_combout\ & \VIDEO_CONTROLLER_INST|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|Equal0~0_combout\,
	datac => \VIDEO_CONTROLLER_INST|Equal0~1_combout\,
	datad => \VIDEO_CONTROLLER_INST|Equal0~2_combout\,
	combout => \VIDEO_CONTROLLER_INST|Equal0~3_combout\);

-- Location: FF_X19_Y13_N15
\VIDEO_CONTROLLER_INST|countery[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|countery~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|countery\(10));

-- Location: LCCOMB_X20_Y13_N4
\VIDEO_CONTROLLER_INST|Add0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add0~0_combout\ = \VIDEO_CONTROLLER_INST|countery\(0) $ (VCC)
-- \VIDEO_CONTROLLER_INST|Add0~1\ = CARRY(\VIDEO_CONTROLLER_INST|countery\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|countery\(0),
	datad => VCC,
	combout => \VIDEO_CONTROLLER_INST|Add0~0_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add0~1\);

-- Location: LCCOMB_X20_Y13_N2
\VIDEO_CONTROLLER_INST|countery~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|countery~9_combout\ = (\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & (\VIDEO_CONTROLLER_INST|Add0~0_combout\ & ((\VIDEO_CONTROLLER_INST|countery~7_combout\)))) # (!\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & 
-- ((\VIDEO_CONTROLLER_INST|countery\(0)) # ((\VIDEO_CONTROLLER_INST|Add0~0_combout\ & \VIDEO_CONTROLLER_INST|countery~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Equal0~3_combout\,
	datab => \VIDEO_CONTROLLER_INST|Add0~0_combout\,
	datac => \VIDEO_CONTROLLER_INST|countery\(0),
	datad => \VIDEO_CONTROLLER_INST|countery~7_combout\,
	combout => \VIDEO_CONTROLLER_INST|countery~9_combout\);

-- Location: FF_X20_Y13_N3
\VIDEO_CONTROLLER_INST|countery[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|countery~9_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|countery\(0));

-- Location: LCCOMB_X20_Y13_N6
\VIDEO_CONTROLLER_INST|Add0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add0~2_combout\ = (\VIDEO_CONTROLLER_INST|countery\(1) & (!\VIDEO_CONTROLLER_INST|Add0~1\)) # (!\VIDEO_CONTROLLER_INST|countery\(1) & ((\VIDEO_CONTROLLER_INST|Add0~1\) # (GND)))
-- \VIDEO_CONTROLLER_INST|Add0~3\ = CARRY((!\VIDEO_CONTROLLER_INST|Add0~1\) # (!\VIDEO_CONTROLLER_INST|countery\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|countery\(1),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add0~1\,
	combout => \VIDEO_CONTROLLER_INST|Add0~2_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add0~3\);

-- Location: LCCOMB_X20_Y13_N28
\VIDEO_CONTROLLER_INST|countery~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|countery~10_combout\ = (\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & (\VIDEO_CONTROLLER_INST|Add0~2_combout\)) # (!\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & ((\VIDEO_CONTROLLER_INST|countery\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Add0~2_combout\,
	datac => \VIDEO_CONTROLLER_INST|countery\(1),
	datad => \VIDEO_CONTROLLER_INST|Equal0~3_combout\,
	combout => \VIDEO_CONTROLLER_INST|countery~10_combout\);

-- Location: FF_X20_Y13_N29
\VIDEO_CONTROLLER_INST|countery[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|countery~10_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|countery\(1));

-- Location: LCCOMB_X20_Y13_N8
\VIDEO_CONTROLLER_INST|Add0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add0~4_combout\ = (\VIDEO_CONTROLLER_INST|countery\(2) & (\VIDEO_CONTROLLER_INST|Add0~3\ $ (GND))) # (!\VIDEO_CONTROLLER_INST|countery\(2) & (!\VIDEO_CONTROLLER_INST|Add0~3\ & VCC))
-- \VIDEO_CONTROLLER_INST|Add0~5\ = CARRY((\VIDEO_CONTROLLER_INST|countery\(2) & !\VIDEO_CONTROLLER_INST|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery\(2),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add0~3\,
	combout => \VIDEO_CONTROLLER_INST|Add0~4_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add0~5\);

-- Location: LCCOMB_X19_Y13_N12
\VIDEO_CONTROLLER_INST|countery~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|countery~11_combout\ = (\VIDEO_CONTROLLER_INST|countery\(2) & (((\VIDEO_CONTROLLER_INST|Add0~4_combout\ & \VIDEO_CONTROLLER_INST|countery~7_combout\)) # (!\VIDEO_CONTROLLER_INST|Equal0~3_combout\))) # 
-- (!\VIDEO_CONTROLLER_INST|countery\(2) & (((\VIDEO_CONTROLLER_INST|Add0~4_combout\ & \VIDEO_CONTROLLER_INST|countery~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery\(2),
	datab => \VIDEO_CONTROLLER_INST|Equal0~3_combout\,
	datac => \VIDEO_CONTROLLER_INST|Add0~4_combout\,
	datad => \VIDEO_CONTROLLER_INST|countery~7_combout\,
	combout => \VIDEO_CONTROLLER_INST|countery~11_combout\);

-- Location: FF_X20_Y13_N31
\VIDEO_CONTROLLER_INST|countery[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|countery~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|countery\(2));

-- Location: LCCOMB_X20_Y13_N10
\VIDEO_CONTROLLER_INST|Add0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add0~6_combout\ = (\VIDEO_CONTROLLER_INST|countery\(3) & (!\VIDEO_CONTROLLER_INST|Add0~5\)) # (!\VIDEO_CONTROLLER_INST|countery\(3) & ((\VIDEO_CONTROLLER_INST|Add0~5\) # (GND)))
-- \VIDEO_CONTROLLER_INST|Add0~7\ = CARRY((!\VIDEO_CONTROLLER_INST|Add0~5\) # (!\VIDEO_CONTROLLER_INST|countery\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|countery\(3),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add0~5\,
	combout => \VIDEO_CONTROLLER_INST|Add0~6_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add0~7\);

-- Location: LCCOMB_X19_Y13_N26
\VIDEO_CONTROLLER_INST|countery~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|countery~12_combout\ = (\VIDEO_CONTROLLER_INST|countery\(3) & (((\VIDEO_CONTROLLER_INST|Add0~6_combout\ & \VIDEO_CONTROLLER_INST|countery~7_combout\)) # (!\VIDEO_CONTROLLER_INST|Equal0~3_combout\))) # 
-- (!\VIDEO_CONTROLLER_INST|countery\(3) & (((\VIDEO_CONTROLLER_INST|Add0~6_combout\ & \VIDEO_CONTROLLER_INST|countery~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery\(3),
	datab => \VIDEO_CONTROLLER_INST|Equal0~3_combout\,
	datac => \VIDEO_CONTROLLER_INST|Add0~6_combout\,
	datad => \VIDEO_CONTROLLER_INST|countery~7_combout\,
	combout => \VIDEO_CONTROLLER_INST|countery~12_combout\);

-- Location: FF_X19_Y13_N7
\VIDEO_CONTROLLER_INST|countery[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|countery~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|countery\(3));

-- Location: LCCOMB_X19_Y13_N6
\VIDEO_CONTROLLER_INST|Equal1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Equal1~2_combout\ = (!\VIDEO_CONTROLLER_INST|countery\(1) & (!\VIDEO_CONTROLLER_INST|countery\(0) & (\VIDEO_CONTROLLER_INST|countery\(3) & \VIDEO_CONTROLLER_INST|countery\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery\(1),
	datab => \VIDEO_CONTROLLER_INST|countery\(0),
	datac => \VIDEO_CONTROLLER_INST|countery\(3),
	datad => \VIDEO_CONTROLLER_INST|countery\(2),
	combout => \VIDEO_CONTROLLER_INST|Equal1~2_combout\);

-- Location: LCCOMB_X20_Y13_N24
\VIDEO_CONTROLLER_INST|Add0~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add0~20_combout\ = (\VIDEO_CONTROLLER_INST|countery\(10) & (\VIDEO_CONTROLLER_INST|Add0~19\ $ (GND))) # (!\VIDEO_CONTROLLER_INST|countery\(10) & (!\VIDEO_CONTROLLER_INST|Add0~19\ & VCC))
-- \VIDEO_CONTROLLER_INST|Add0~21\ = CARRY((\VIDEO_CONTROLLER_INST|countery\(10) & !\VIDEO_CONTROLLER_INST|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery\(10),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add0~19\,
	combout => \VIDEO_CONTROLLER_INST|Add0~20_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add0~21\);

-- Location: LCCOMB_X20_Y13_N26
\VIDEO_CONTROLLER_INST|Add0~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add0~22_combout\ = \VIDEO_CONTROLLER_INST|Add0~21\ $ (\VIDEO_CONTROLLER_INST|countery\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \VIDEO_CONTROLLER_INST|countery\(11),
	cin => \VIDEO_CONTROLLER_INST|Add0~21\,
	combout => \VIDEO_CONTROLLER_INST|Add0~22_combout\);

-- Location: LCCOMB_X19_Y13_N2
\VIDEO_CONTROLLER_INST|countery~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|countery~5_combout\ = (\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & ((\VIDEO_CONTROLLER_INST|Add0~22_combout\))) # (!\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & (\VIDEO_CONTROLLER_INST|countery\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|Equal0~3_combout\,
	datac => \VIDEO_CONTROLLER_INST|countery\(11),
	datad => \VIDEO_CONTROLLER_INST|Add0~22_combout\,
	combout => \VIDEO_CONTROLLER_INST|countery~5_combout\);

-- Location: FF_X19_Y13_N3
\VIDEO_CONTROLLER_INST|countery[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|countery~5_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|countery\(11));

-- Location: LCCOMB_X20_Y13_N12
\VIDEO_CONTROLLER_INST|Add0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add0~8_combout\ = (\VIDEO_CONTROLLER_INST|countery\(4) & (\VIDEO_CONTROLLER_INST|Add0~7\ $ (GND))) # (!\VIDEO_CONTROLLER_INST|countery\(4) & (!\VIDEO_CONTROLLER_INST|Add0~7\ & VCC))
-- \VIDEO_CONTROLLER_INST|Add0~9\ = CARRY((\VIDEO_CONTROLLER_INST|countery\(4) & !\VIDEO_CONTROLLER_INST|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|countery\(4),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add0~7\,
	combout => \VIDEO_CONTROLLER_INST|Add0~8_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add0~9\);

-- Location: LCCOMB_X20_Y13_N30
\VIDEO_CONTROLLER_INST|countery~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|countery~6_combout\ = (\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & (\VIDEO_CONTROLLER_INST|Add0~8_combout\)) # (!\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & ((\VIDEO_CONTROLLER_INST|countery\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Add0~8_combout\,
	datab => \VIDEO_CONTROLLER_INST|countery\(4),
	datad => \VIDEO_CONTROLLER_INST|Equal0~3_combout\,
	combout => \VIDEO_CONTROLLER_INST|countery~6_combout\);

-- Location: FF_X20_Y13_N1
\VIDEO_CONTROLLER_INST|countery[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|countery~6_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|countery\(4));

-- Location: LCCOMB_X20_Y13_N14
\VIDEO_CONTROLLER_INST|Add0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add0~10_combout\ = (\VIDEO_CONTROLLER_INST|countery\(5) & (!\VIDEO_CONTROLLER_INST|Add0~9\)) # (!\VIDEO_CONTROLLER_INST|countery\(5) & ((\VIDEO_CONTROLLER_INST|Add0~9\) # (GND)))
-- \VIDEO_CONTROLLER_INST|Add0~11\ = CARRY((!\VIDEO_CONTROLLER_INST|Add0~9\) # (!\VIDEO_CONTROLLER_INST|countery\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|countery\(5),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add0~9\,
	combout => \VIDEO_CONTROLLER_INST|Add0~10_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add0~11\);

-- Location: LCCOMB_X19_Y16_N24
\VIDEO_CONTROLLER_INST|countery~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|countery~0_combout\ = (\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & ((\VIDEO_CONTROLLER_INST|Add0~10_combout\))) # (!\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & (\VIDEO_CONTROLLER_INST|countery\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery\(5),
	datab => \VIDEO_CONTROLLER_INST|Add0~10_combout\,
	datad => \VIDEO_CONTROLLER_INST|Equal0~3_combout\,
	combout => \VIDEO_CONTROLLER_INST|countery~0_combout\);

-- Location: FF_X19_Y16_N23
\VIDEO_CONTROLLER_INST|countery[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|countery~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|countery\(5));

-- Location: LCCOMB_X20_Y13_N16
\VIDEO_CONTROLLER_INST|Add0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add0~12_combout\ = (\VIDEO_CONTROLLER_INST|countery\(6) & (\VIDEO_CONTROLLER_INST|Add0~11\ $ (GND))) # (!\VIDEO_CONTROLLER_INST|countery\(6) & (!\VIDEO_CONTROLLER_INST|Add0~11\ & VCC))
-- \VIDEO_CONTROLLER_INST|Add0~13\ = CARRY((\VIDEO_CONTROLLER_INST|countery\(6) & !\VIDEO_CONTROLLER_INST|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery\(6),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add0~11\,
	combout => \VIDEO_CONTROLLER_INST|Add0~12_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add0~13\);

-- Location: LCCOMB_X20_Y13_N0
\VIDEO_CONTROLLER_INST|countery~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|countery~1_combout\ = (\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & ((\VIDEO_CONTROLLER_INST|Add0~12_combout\))) # (!\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & (\VIDEO_CONTROLLER_INST|countery\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery\(6),
	datab => \VIDEO_CONTROLLER_INST|Add0~12_combout\,
	datad => \VIDEO_CONTROLLER_INST|Equal0~3_combout\,
	combout => \VIDEO_CONTROLLER_INST|countery~1_combout\);

-- Location: FF_X20_Y13_N5
\VIDEO_CONTROLLER_INST|countery[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|countery~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|countery\(6));

-- Location: LCCOMB_X20_Y13_N18
\VIDEO_CONTROLLER_INST|Add0~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add0~14_combout\ = (\VIDEO_CONTROLLER_INST|countery\(7) & (!\VIDEO_CONTROLLER_INST|Add0~13\)) # (!\VIDEO_CONTROLLER_INST|countery\(7) & ((\VIDEO_CONTROLLER_INST|Add0~13\) # (GND)))
-- \VIDEO_CONTROLLER_INST|Add0~15\ = CARRY((!\VIDEO_CONTROLLER_INST|Add0~13\) # (!\VIDEO_CONTROLLER_INST|countery\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery\(7),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add0~13\,
	combout => \VIDEO_CONTROLLER_INST|Add0~14_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add0~15\);

-- Location: LCCOMB_X19_Y16_N8
\VIDEO_CONTROLLER_INST|countery~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|countery~2_combout\ = (\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & ((\VIDEO_CONTROLLER_INST|Add0~14_combout\))) # (!\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & (\VIDEO_CONTROLLER_INST|countery\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery\(7),
	datab => \VIDEO_CONTROLLER_INST|Equal0~3_combout\,
	datad => \VIDEO_CONTROLLER_INST|Add0~14_combout\,
	combout => \VIDEO_CONTROLLER_INST|countery~2_combout\);

-- Location: LCCOMB_X19_Y16_N16
\VIDEO_CONTROLLER_INST|countery[7]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|countery[7]~feeder_combout\ = \VIDEO_CONTROLLER_INST|countery~2_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VIDEO_CONTROLLER_INST|countery~2_combout\,
	combout => \VIDEO_CONTROLLER_INST|countery[7]~feeder_combout\);

-- Location: FF_X19_Y16_N17
\VIDEO_CONTROLLER_INST|countery[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|countery[7]~feeder_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|countery\(7));

-- Location: LCCOMB_X20_Y13_N20
\VIDEO_CONTROLLER_INST|Add0~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add0~16_combout\ = (\VIDEO_CONTROLLER_INST|countery\(8) & (\VIDEO_CONTROLLER_INST|Add0~15\ $ (GND))) # (!\VIDEO_CONTROLLER_INST|countery\(8) & (!\VIDEO_CONTROLLER_INST|Add0~15\ & VCC))
-- \VIDEO_CONTROLLER_INST|Add0~17\ = CARRY((\VIDEO_CONTROLLER_INST|countery\(8) & !\VIDEO_CONTROLLER_INST|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|countery\(8),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add0~15\,
	combout => \VIDEO_CONTROLLER_INST|Add0~16_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add0~17\);

-- Location: LCCOMB_X19_Y13_N22
\VIDEO_CONTROLLER_INST|countery~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|countery~3_combout\ = (\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & (\VIDEO_CONTROLLER_INST|Add0~16_combout\)) # (!\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & ((\VIDEO_CONTROLLER_INST|countery\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Add0~16_combout\,
	datab => \VIDEO_CONTROLLER_INST|countery\(8),
	datad => \VIDEO_CONTROLLER_INST|Equal0~3_combout\,
	combout => \VIDEO_CONTROLLER_INST|countery~3_combout\);

-- Location: FF_X19_Y13_N5
\VIDEO_CONTROLLER_INST|countery[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|countery~3_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|countery\(8));

-- Location: LCCOMB_X19_Y13_N16
\VIDEO_CONTROLLER_INST|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Equal1~0_combout\ = (!\VIDEO_CONTROLLER_INST|countery\(11) & (!\VIDEO_CONTROLLER_INST|countery\(8) & (\VIDEO_CONTROLLER_INST|countery\(9) & !\VIDEO_CONTROLLER_INST|countery\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery\(11),
	datab => \VIDEO_CONTROLLER_INST|countery\(8),
	datac => \VIDEO_CONTROLLER_INST|countery\(9),
	datad => \VIDEO_CONTROLLER_INST|countery\(10),
	combout => \VIDEO_CONTROLLER_INST|Equal1~0_combout\);

-- Location: LCCOMB_X19_Y16_N4
\VIDEO_CONTROLLER_INST|Equal1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Equal1~1_combout\ = (!\VIDEO_CONTROLLER_INST|countery\(5) & (!\VIDEO_CONTROLLER_INST|countery\(7) & (!\VIDEO_CONTROLLER_INST|countery\(4) & !\VIDEO_CONTROLLER_INST|countery\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery\(5),
	datab => \VIDEO_CONTROLLER_INST|countery\(7),
	datac => \VIDEO_CONTROLLER_INST|countery\(4),
	datad => \VIDEO_CONTROLLER_INST|countery\(6),
	combout => \VIDEO_CONTROLLER_INST|Equal1~1_combout\);

-- Location: LCCOMB_X19_Y13_N20
\VIDEO_CONTROLLER_INST|countery~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|countery~7_combout\ = (\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & (((!\VIDEO_CONTROLLER_INST|Equal1~1_combout\) # (!\VIDEO_CONTROLLER_INST|Equal1~0_combout\)) # (!\VIDEO_CONTROLLER_INST|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Equal1~2_combout\,
	datab => \VIDEO_CONTROLLER_INST|Equal1~0_combout\,
	datac => \VIDEO_CONTROLLER_INST|Equal1~1_combout\,
	datad => \VIDEO_CONTROLLER_INST|Equal0~3_combout\,
	combout => \VIDEO_CONTROLLER_INST|countery~7_combout\);

-- Location: LCCOMB_X20_Y13_N22
\VIDEO_CONTROLLER_INST|Add0~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|Add0~18_combout\ = (\VIDEO_CONTROLLER_INST|countery\(9) & (!\VIDEO_CONTROLLER_INST|Add0~17\)) # (!\VIDEO_CONTROLLER_INST|countery\(9) & ((\VIDEO_CONTROLLER_INST|Add0~17\) # (GND)))
-- \VIDEO_CONTROLLER_INST|Add0~19\ = CARRY((!\VIDEO_CONTROLLER_INST|Add0~17\) # (!\VIDEO_CONTROLLER_INST|countery\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery\(9),
	datad => VCC,
	cin => \VIDEO_CONTROLLER_INST|Add0~17\,
	combout => \VIDEO_CONTROLLER_INST|Add0~18_combout\,
	cout => \VIDEO_CONTROLLER_INST|Add0~19\);

-- Location: LCCOMB_X19_Y13_N10
\VIDEO_CONTROLLER_INST|countery~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|countery~8_combout\ = (\VIDEO_CONTROLLER_INST|countery\(9) & (((\VIDEO_CONTROLLER_INST|countery~7_combout\ & \VIDEO_CONTROLLER_INST|Add0~18_combout\)) # (!\VIDEO_CONTROLLER_INST|Equal0~3_combout\))) # 
-- (!\VIDEO_CONTROLLER_INST|countery\(9) & (((\VIDEO_CONTROLLER_INST|countery~7_combout\ & \VIDEO_CONTROLLER_INST|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery\(9),
	datab => \VIDEO_CONTROLLER_INST|Equal0~3_combout\,
	datac => \VIDEO_CONTROLLER_INST|countery~7_combout\,
	datad => \VIDEO_CONTROLLER_INST|Add0~18_combout\,
	combout => \VIDEO_CONTROLLER_INST|countery~8_combout\);

-- Location: FF_X19_Y13_N17
\VIDEO_CONTROLLER_INST|countery[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|countery~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|countery\(9));

-- Location: LCCOMB_X19_Y13_N14
\VIDEO_CONTROLLER_INST|countery~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|countery~4_combout\ = (\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & ((\VIDEO_CONTROLLER_INST|Add0~20_combout\))) # (!\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & (\VIDEO_CONTROLLER_INST|countery\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|Equal0~3_combout\,
	datac => \VIDEO_CONTROLLER_INST|countery\(10),
	datad => \VIDEO_CONTROLLER_INST|Add0~20_combout\,
	combout => \VIDEO_CONTROLLER_INST|countery~4_combout\);

-- Location: FF_X19_Y13_N23
\VIDEO_CONTROLLER_INST|c_y[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|countery~4_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_y\(10));

-- Location: FF_X19_Y13_N9
\VIDEO_CONTROLLER_INST|c_y[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|countery~8_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_y\(9));

-- Location: LCCOMB_X19_Y13_N8
\AV_CONTROLLER_INST|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|process_0~2_combout\ = (!\VIDEO_CONTROLLER_INST|c_y\(10) & !\VIDEO_CONTROLLER_INST|c_y\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|c_y\(10),
	datac => \VIDEO_CONTROLLER_INST|c_y\(9),
	combout => \AV_CONTROLLER_INST|process_0~2_combout\);

-- Location: FF_X18_Y13_N31
\VIDEO_CONTROLLER_INST|c_x[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|Add1~14_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_x\(7));

-- Location: LCCOMB_X18_Y13_N16
\VIDEO_CONTROLLER_INST|c_x[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|c_x[0]~feeder_combout\ = \VIDEO_CONTROLLER_INST|Add1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VIDEO_CONTROLLER_INST|Add1~0_combout\,
	combout => \VIDEO_CONTROLLER_INST|c_x[0]~feeder_combout\);

-- Location: FF_X18_Y13_N17
\VIDEO_CONTROLLER_INST|c_x[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|c_x[0]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_x\(0));

-- Location: FF_X18_Y13_N15
\VIDEO_CONTROLLER_INST|c_x[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|counterx~3_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_x\(1));

-- Location: LCCOMB_X19_Y13_N24
\VIDEO_CONTROLLER_INST|c_y[11]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|c_y[11]~feeder_combout\ = \VIDEO_CONTROLLER_INST|countery~5_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VIDEO_CONTROLLER_INST|countery~5_combout\,
	combout => \VIDEO_CONTROLLER_INST|c_y[11]~feeder_combout\);

-- Location: FF_X19_Y13_N25
\VIDEO_CONTROLLER_INST|c_y[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|c_y[11]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_y\(11));

-- Location: LCCOMB_X18_Y13_N14
\AV_CONTROLLER_INST|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|process_0~1_combout\ = (!\VIDEO_CONTROLLER_INST|c_x\(7) & (\VIDEO_CONTROLLER_INST|c_x\(0) & (\VIDEO_CONTROLLER_INST|c_x\(1) & !\VIDEO_CONTROLLER_INST|c_y\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|c_x\(7),
	datab => \VIDEO_CONTROLLER_INST|c_x\(0),
	datac => \VIDEO_CONTROLLER_INST|c_x\(1),
	datad => \VIDEO_CONTROLLER_INST|c_y\(11),
	combout => \AV_CONTROLLER_INST|process_0~1_combout\);

-- Location: FF_X19_Y16_N9
\VIDEO_CONTROLLER_INST|c_y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|countery~1_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_y\(6));

-- Location: LCCOMB_X19_Y16_N26
\VIDEO_CONTROLLER_INST|c_y[0]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|c_y[0]~feeder_combout\ = \VIDEO_CONTROLLER_INST|countery~9_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VIDEO_CONTROLLER_INST|countery~9_combout\,
	combout => \VIDEO_CONTROLLER_INST|c_y[0]~feeder_combout\);

-- Location: FF_X19_Y16_N27
\VIDEO_CONTROLLER_INST|c_y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|c_y[0]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_y\(0));

-- Location: FF_X19_Y16_N3
\VIDEO_CONTROLLER_INST|c_y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|countery~0_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_y\(5));

-- Location: FF_X19_Y16_N13
\VIDEO_CONTROLLER_INST|c_y[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|countery~3_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_y\(8));

-- Location: FF_X19_Y16_N25
\VIDEO_CONTROLLER_INST|c_y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|countery~10_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_y\(1));

-- Location: LCCOMB_X19_Y16_N12
\AV_CONTROLLER_INST|LessThan1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|LessThan1~1_combout\ = ((!\VIDEO_CONTROLLER_INST|c_y\(5) & ((!\VIDEO_CONTROLLER_INST|c_y\(1)) # (!\VIDEO_CONTROLLER_INST|c_y\(0))))) # (!\VIDEO_CONTROLLER_INST|c_y\(8))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|c_y\(0),
	datab => \VIDEO_CONTROLLER_INST|c_y\(5),
	datac => \VIDEO_CONTROLLER_INST|c_y\(8),
	datad => \VIDEO_CONTROLLER_INST|c_y\(1),
	combout => \AV_CONTROLLER_INST|LessThan1~1_combout\);

-- Location: FF_X19_Y16_N19
\VIDEO_CONTROLLER_INST|c_y[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|countery~2_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_y\(7));

-- Location: LCCOMB_X19_Y16_N30
\VIDEO_CONTROLLER_INST|c_y[4]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|c_y[4]~feeder_combout\ = \VIDEO_CONTROLLER_INST|countery~6_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VIDEO_CONTROLLER_INST|countery~6_combout\,
	combout => \VIDEO_CONTROLLER_INST|c_y[4]~feeder_combout\);

-- Location: FF_X19_Y16_N31
\VIDEO_CONTROLLER_INST|c_y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|c_y[4]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_y\(4));

-- Location: FF_X19_Y16_N29
\VIDEO_CONTROLLER_INST|c_y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|countery~12_combout\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_y\(3));

-- Location: LCCOMB_X19_Y13_N18
\VIDEO_CONTROLLER_INST|c_y[2]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|c_y[2]~feeder_combout\ = \VIDEO_CONTROLLER_INST|countery~11_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \VIDEO_CONTROLLER_INST|countery~11_combout\,
	combout => \VIDEO_CONTROLLER_INST|c_y[2]~feeder_combout\);

-- Location: FF_X19_Y13_N19
\VIDEO_CONTROLLER_INST|c_y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|c_y[2]~feeder_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_y\(2));

-- Location: LCCOMB_X19_Y16_N28
\AV_CONTROLLER_INST|LessThan1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|LessThan1~0_combout\ = (!\VIDEO_CONTROLLER_INST|c_y\(5) & (((!\VIDEO_CONTROLLER_INST|c_y\(2)) # (!\VIDEO_CONTROLLER_INST|c_y\(3))) # (!\VIDEO_CONTROLLER_INST|c_y\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|c_y\(4),
	datab => \VIDEO_CONTROLLER_INST|c_y\(5),
	datac => \VIDEO_CONTROLLER_INST|c_y\(3),
	datad => \VIDEO_CONTROLLER_INST|c_y\(2),
	combout => \AV_CONTROLLER_INST|LessThan1~0_combout\);

-- Location: LCCOMB_X19_Y16_N18
\AV_CONTROLLER_INST|LessThan1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|LessThan1~2_combout\ = ((\AV_CONTROLLER_INST|LessThan1~1_combout\) # ((\AV_CONTROLLER_INST|LessThan1~0_combout\) # (!\VIDEO_CONTROLLER_INST|c_y\(7)))) # (!\VIDEO_CONTROLLER_INST|c_y\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|c_y\(6),
	datab => \AV_CONTROLLER_INST|LessThan1~1_combout\,
	datac => \VIDEO_CONTROLLER_INST|c_y\(7),
	datad => \AV_CONTROLLER_INST|LessThan1~0_combout\,
	combout => \AV_CONTROLLER_INST|LessThan1~2_combout\);

-- Location: LCCOMB_X18_Y13_N20
\AV_CONTROLLER_INST|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|process_0~3_combout\ = (\AV_CONTROLLER_INST|process_0~0_combout\ & (\AV_CONTROLLER_INST|process_0~2_combout\ & (\AV_CONTROLLER_INST|process_0~1_combout\ & \AV_CONTROLLER_INST|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|process_0~0_combout\,
	datab => \AV_CONTROLLER_INST|process_0~2_combout\,
	datac => \AV_CONTROLLER_INST|process_0~1_combout\,
	datad => \AV_CONTROLLER_INST|LessThan1~2_combout\,
	combout => \AV_CONTROLLER_INST|process_0~3_combout\);

-- Location: LCCOMB_X18_Y13_N26
\AV_CONTROLLER_INST|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|process_0~5_combout\ = (\VIDEO_CONTROLLER_INST|c_x\(2) & (\AV_CONTROLLER_INST|process_0~4_combout\ & \AV_CONTROLLER_INST|process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|c_x\(2),
	datac => \AV_CONTROLLER_INST|process_0~4_combout\,
	datad => \AV_CONTROLLER_INST|process_0~3_combout\,
	combout => \AV_CONTROLLER_INST|process_0~5_combout\);

-- Location: LCCOMB_X18_Y13_N10
\AV_CONTROLLER_INST|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|process_0~6_combout\ = (!\VIDEO_CONTROLLER_INST|c_x\(3) & (!\VIDEO_CONTROLLER_INST|c_x\(4) & (!\VIDEO_CONTROLLER_INST|c_x\(5) & !\VIDEO_CONTROLLER_INST|c_x\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|c_x\(3),
	datab => \VIDEO_CONTROLLER_INST|c_x\(4),
	datac => \VIDEO_CONTROLLER_INST|c_x\(5),
	datad => \VIDEO_CONTROLLER_INST|c_x\(6),
	combout => \AV_CONTROLLER_INST|process_0~6_combout\);

-- Location: LCCOMB_X18_Y13_N2
\AV_CONTROLLER_INST|process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|process_0~7_combout\ = (\AV_CONTROLLER_INST|process_0~6_combout\ & (!\VIDEO_CONTROLLER_INST|c_x\(2) & \AV_CONTROLLER_INST|process_0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|process_0~6_combout\,
	datac => \VIDEO_CONTROLLER_INST|c_x\(2),
	datad => \AV_CONTROLLER_INST|process_0~3_combout\,
	combout => \AV_CONTROLLER_INST|process_0~7_combout\);

-- Location: LCCOMB_X18_Y14_N16
\AV_CONTROLLER_INST|Selector1~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector1~6_combout\ = (!\AV_CONTROLLER_INST|state.controlData~q\ & (\AV_CONTROLLER_INST|process_0~5_combout\ & !\AV_CONTROLLER_INST|process_0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|state.controlData~q\,
	datac => \AV_CONTROLLER_INST|process_0~5_combout\,
	datad => \AV_CONTROLLER_INST|process_0~7_combout\,
	combout => \AV_CONTROLLER_INST|Selector1~6_combout\);

-- Location: LCCOMB_X18_Y13_N18
\AV_CONTROLLER_INST|Selector2~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector2~3_combout\ = (\AV_CONTROLLER_INST|process_0~6_combout\ & (!\AV_CONTROLLER_INST|state.controlData~q\ & (!\VIDEO_CONTROLLER_INST|c_x\(2) & \AV_CONTROLLER_INST|process_0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|process_0~6_combout\,
	datab => \AV_CONTROLLER_INST|state.controlData~q\,
	datac => \VIDEO_CONTROLLER_INST|c_x\(2),
	datad => \AV_CONTROLLER_INST|process_0~3_combout\,
	combout => \AV_CONTROLLER_INST|Selector2~3_combout\);

-- Location: LCCOMB_X18_Y14_N12
\AV_CONTROLLER_INST|Selector3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector3~0_combout\ = (!\AV_CONTROLLER_INST|Selector1~4_combout\ & ((\AV_CONTROLLER_INST|Selector1~7_combout\ & ((\AV_CONTROLLER_INST|state.dataIslandPreamble~q\))) # (!\AV_CONTROLLER_INST|Selector1~7_combout\ & 
-- (\AV_CONTROLLER_INST|Selector2~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|Selector1~4_combout\,
	datab => \AV_CONTROLLER_INST|Selector2~3_combout\,
	datac => \AV_CONTROLLER_INST|state.dataIslandPreamble~q\,
	datad => \AV_CONTROLLER_INST|Selector1~7_combout\,
	combout => \AV_CONTROLLER_INST|Selector3~0_combout\);

-- Location: FF_X18_Y14_N13
\AV_CONTROLLER_INST|state.dataIslandPreamble\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|Selector3~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|state.dataIslandPreamble~q\);

-- Location: LCCOMB_X18_Y14_N10
\AV_CONTROLLER_INST|Selector4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector4~0_combout\ = (\AV_CONTROLLER_INST|state.dataIslandPreamble~q\ & (\AV_CONTROLLER_INST|Equal2~2_combout\ & (!\AV_CONTROLLER_INST|clockCounter\(0) & \AV_CONTROLLER_INST|clockCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPreamble~q\,
	datab => \AV_CONTROLLER_INST|Equal2~2_combout\,
	datac => \AV_CONTROLLER_INST|clockCounter\(0),
	datad => \AV_CONTROLLER_INST|clockCounter\(3),
	combout => \AV_CONTROLLER_INST|Selector4~0_combout\);

-- Location: LCCOMB_X18_Y14_N0
\AV_CONTROLLER_INST|Selector1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector1~2_combout\ = (!\AV_CONTROLLER_INST|clockCounter\(3) & (!\AV_CONTROLLER_INST|state.videoData~q\ & (\AV_CONTROLLER_INST|Equal2~2_combout\ & \AV_CONTROLLER_INST|clockCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|clockCounter\(3),
	datab => \AV_CONTROLLER_INST|state.videoData~q\,
	datac => \AV_CONTROLLER_INST|Equal2~2_combout\,
	datad => \AV_CONTROLLER_INST|clockCounter\(0),
	combout => \AV_CONTROLLER_INST|Selector1~2_combout\);

-- Location: LCCOMB_X18_Y14_N26
\AV_CONTROLLER_INST|Equal4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Equal4~0_combout\ = (!\AV_CONTROLLER_INST|clockCounter\(9) & (\AV_CONTROLLER_INST|clockCounter\(4) & (!\AV_CONTROLLER_INST|clockCounter\(6) & !\AV_CONTROLLER_INST|clockCounter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|clockCounter\(9),
	datab => \AV_CONTROLLER_INST|clockCounter\(4),
	datac => \AV_CONTROLLER_INST|clockCounter\(6),
	datad => \AV_CONTROLLER_INST|clockCounter\(7),
	combout => \AV_CONTROLLER_INST|Equal4~0_combout\);

-- Location: LCCOMB_X19_Y14_N22
\AV_CONTROLLER_INST|Equal5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Equal5~0_combout\ = (!\AV_CONTROLLER_INST|clockCounter\(8) & (\AV_CONTROLLER_INST|clockCounter\(0) & (\AV_CONTROLLER_INST|clockCounter\(1) & !\AV_CONTROLLER_INST|clockCounter\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|clockCounter\(8),
	datab => \AV_CONTROLLER_INST|clockCounter\(0),
	datac => \AV_CONTROLLER_INST|clockCounter\(1),
	datad => \AV_CONTROLLER_INST|clockCounter\(10),
	combout => \AV_CONTROLLER_INST|Equal5~0_combout\);

-- Location: LCCOMB_X18_Y14_N18
\AV_CONTROLLER_INST|Equal5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Equal5~1_combout\ = (\AV_CONTROLLER_INST|clockCounter\(2) & (\AV_CONTROLLER_INST|clockCounter\(3) & \AV_CONTROLLER_INST|Equal5~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|clockCounter\(2),
	datac => \AV_CONTROLLER_INST|clockCounter\(3),
	datad => \AV_CONTROLLER_INST|Equal5~0_combout\,
	combout => \AV_CONTROLLER_INST|Equal5~1_combout\);

-- Location: LCCOMB_X18_Y14_N24
\AV_CONTROLLER_INST|Equal4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Equal4~1_combout\ = (\AV_CONTROLLER_INST|clockCounter\(5) & (\AV_CONTROLLER_INST|Equal4~0_combout\ & \AV_CONTROLLER_INST|Equal5~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|clockCounter\(5),
	datac => \AV_CONTROLLER_INST|Equal4~0_combout\,
	datad => \AV_CONTROLLER_INST|Equal5~1_combout\,
	combout => \AV_CONTROLLER_INST|Equal4~1_combout\);

-- Location: LCCOMB_X18_Y14_N2
\AV_CONTROLLER_INST|Selector4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector4~1_combout\ = (\AV_CONTROLLER_INST|state.dataIsland~q\ & (((\AV_CONTROLLER_INST|Equal4~1_combout\)))) # (!\AV_CONTROLLER_INST|state.dataIsland~q\ & ((\AV_CONTROLLER_INST|Selector1~2_combout\) # 
-- ((\AV_CONTROLLER_INST|Selector1~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIsland~q\,
	datab => \AV_CONTROLLER_INST|Selector1~2_combout\,
	datac => \AV_CONTROLLER_INST|Selector1~3_combout\,
	datad => \AV_CONTROLLER_INST|Equal4~1_combout\,
	combout => \AV_CONTROLLER_INST|Selector4~1_combout\);

-- Location: LCCOMB_X18_Y14_N20
\AV_CONTROLLER_INST|Selector4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector4~2_combout\ = (\AV_CONTROLLER_INST|state.dataIslandPreamble~q\) # ((\AV_CONTROLLER_INST|state.videoDataPreamble~q\) # ((\AV_CONTROLLER_INST|state.controlData~q\ & !\AV_CONTROLLER_INST|Selector4~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPreamble~q\,
	datab => \AV_CONTROLLER_INST|state.controlData~q\,
	datac => \AV_CONTROLLER_INST|state.videoDataPreamble~q\,
	datad => \AV_CONTROLLER_INST|Selector4~1_combout\,
	combout => \AV_CONTROLLER_INST|Selector4~2_combout\);

-- Location: LCCOMB_X18_Y14_N22
\AV_CONTROLLER_INST|Selector4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector4~3_combout\ = (\AV_CONTROLLER_INST|state.controlData~q\ & (((\AV_CONTROLLER_INST|Selector4~2_combout\)))) # (!\AV_CONTROLLER_INST|state.controlData~q\ & (!\AV_CONTROLLER_INST|process_0~7_combout\ & 
-- ((\AV_CONTROLLER_INST|Selector4~2_combout\) # (!\AV_CONTROLLER_INST|process_0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.controlData~q\,
	datab => \AV_CONTROLLER_INST|process_0~7_combout\,
	datac => \AV_CONTROLLER_INST|process_0~5_combout\,
	datad => \AV_CONTROLLER_INST|Selector4~2_combout\,
	combout => \AV_CONTROLLER_INST|Selector4~3_combout\);

-- Location: LCCOMB_X15_Y14_N26
\AV_CONTROLLER_INST|Selector4~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector4~4_combout\ = (!\AV_CONTROLLER_INST|Selector2~1_combout\ & ((\AV_CONTROLLER_INST|Selector4~0_combout\) # ((\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\ & \AV_CONTROLLER_INST|Selector4~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|Selector4~0_combout\,
	datab => \AV_CONTROLLER_INST|Selector2~1_combout\,
	datac => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datad => \AV_CONTROLLER_INST|Selector4~3_combout\,
	combout => \AV_CONTROLLER_INST|Selector4~4_combout\);

-- Location: FF_X15_Y14_N27
\AV_CONTROLLER_INST|state.dataIslandPreGuard\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|Selector4~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\);

-- Location: LCCOMB_X17_Y14_N14
\AV_CONTROLLER_INST|Selector6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector6~0_combout\ = (\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\ & ((\AV_CONTROLLER_INST|Equal3~1_combout\) # ((!\AV_CONTROLLER_INST|Equal4~1_combout\ & \AV_CONTROLLER_INST|state.dataIsland~q\)))) # 
-- (!\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\ & (!\AV_CONTROLLER_INST|Equal4~1_combout\ & (\AV_CONTROLLER_INST|state.dataIsland~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datab => \AV_CONTROLLER_INST|Equal4~1_combout\,
	datac => \AV_CONTROLLER_INST|state.dataIsland~q\,
	datad => \AV_CONTROLLER_INST|Equal3~1_combout\,
	combout => \AV_CONTROLLER_INST|Selector6~0_combout\);

-- Location: FF_X17_Y14_N15
\AV_CONTROLLER_INST|state.dataIsland\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|Selector6~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|state.dataIsland~q\);

-- Location: LCCOMB_X14_Y14_N14
\AV_CONTROLLER_INST|tmds_enc0[1]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\ = (\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\) # ((\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\) # (\AV_CONTROLLER_INST|state.videoDataGuardBand~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datac => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datad => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\);

-- Location: LCCOMB_X18_Y14_N28
\AV_CONTROLLER_INST|Selector1~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector1~5_combout\ = (\AV_CONTROLLER_INST|Selector1~3_combout\) # ((\AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\ & \AV_CONTROLLER_INST|Selector1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\,
	datac => \AV_CONTROLLER_INST|Selector1~3_combout\,
	datad => \AV_CONTROLLER_INST|Selector1~2_combout\,
	combout => \AV_CONTROLLER_INST|Selector1~5_combout\);

-- Location: LCCOMB_X18_Y14_N14
\AV_CONTROLLER_INST|clockCounter[1]~21\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|clockCounter[1]~21_combout\ = (!\AV_CONTROLLER_INST|state.dataIsland~q\ & ((\AV_CONTROLLER_INST|Selector4~0_combout\) # ((\AV_CONTROLLER_INST|Selector2~1_combout\) # (\AV_CONTROLLER_INST|Selector1~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|Selector4~0_combout\,
	datab => \AV_CONTROLLER_INST|state.dataIsland~q\,
	datac => \AV_CONTROLLER_INST|Selector2~1_combout\,
	datad => \AV_CONTROLLER_INST|Selector1~5_combout\,
	combout => \AV_CONTROLLER_INST|clockCounter[1]~21_combout\);

-- Location: LCCOMB_X18_Y14_N6
\AV_CONTROLLER_INST|Selector1~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector1~7_combout\ = (\AV_CONTROLLER_INST|state.controlData~q\ & (((!\AV_CONTROLLER_INST|clockCounter[1]~21_combout\)))) # (!\AV_CONTROLLER_INST|state.controlData~q\ & (!\AV_CONTROLLER_INST|process_0~5_combout\ & 
-- ((!\AV_CONTROLLER_INST|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|process_0~5_combout\,
	datab => \AV_CONTROLLER_INST|state.controlData~q\,
	datac => \AV_CONTROLLER_INST|clockCounter[1]~21_combout\,
	datad => \AV_CONTROLLER_INST|process_0~7_combout\,
	combout => \AV_CONTROLLER_INST|Selector1~7_combout\);

-- Location: LCCOMB_X18_Y14_N30
\AV_CONTROLLER_INST|Selector1~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector1~8_combout\ = (!\AV_CONTROLLER_INST|Selector1~4_combout\ & ((\AV_CONTROLLER_INST|Selector1~7_combout\ & ((\AV_CONTROLLER_INST|state.videoDataPreamble~q\))) # (!\AV_CONTROLLER_INST|Selector1~7_combout\ & 
-- (\AV_CONTROLLER_INST|Selector1~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|Selector1~4_combout\,
	datab => \AV_CONTROLLER_INST|Selector1~6_combout\,
	datac => \AV_CONTROLLER_INST|state.videoDataPreamble~q\,
	datad => \AV_CONTROLLER_INST|Selector1~7_combout\,
	combout => \AV_CONTROLLER_INST|Selector1~8_combout\);

-- Location: FF_X18_Y14_N31
\AV_CONTROLLER_INST|state.videoDataPreamble\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|Selector1~8_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|state.videoDataPreamble~q\);

-- Location: LCCOMB_X17_Y14_N4
\AV_CONTROLLER_INST|Selector2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector2~1_combout\ = (!\AV_CONTROLLER_INST|clockCounter\(0) & (\AV_CONTROLLER_INST|clockCounter\(3) & (\AV_CONTROLLER_INST|Equal2~2_combout\ & \AV_CONTROLLER_INST|state.videoDataPreamble~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|clockCounter\(0),
	datab => \AV_CONTROLLER_INST|clockCounter\(3),
	datac => \AV_CONTROLLER_INST|Equal2~2_combout\,
	datad => \AV_CONTROLLER_INST|state.videoDataPreamble~q\,
	combout => \AV_CONTROLLER_INST|Selector2~1_combout\);

-- Location: LCCOMB_X17_Y14_N12
\AV_CONTROLLER_INST|Selector2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector2~2_combout\ = (\AV_CONTROLLER_INST|Selector2~1_combout\) # ((\AV_CONTROLLER_INST|state.videoDataGuardBand~q\ & !\AV_CONTROLLER_INST|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|Selector2~1_combout\,
	datac => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	datad => \AV_CONTROLLER_INST|Equal3~1_combout\,
	combout => \AV_CONTROLLER_INST|Selector2~2_combout\);

-- Location: FF_X17_Y14_N13
\AV_CONTROLLER_INST|state.videoDataGuardBand\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|Selector2~2_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\);

-- Location: LCCOMB_X19_Y14_N24
\AV_CONTROLLER_INST|Equal5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Equal5~2_combout\ = (!\AV_CONTROLLER_INST|clockCounter\(5) & (!\AV_CONTROLLER_INST|clockCounter\(4) & (\AV_CONTROLLER_INST|clockCounter\(7) & \AV_CONTROLLER_INST|clockCounter\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|clockCounter\(5),
	datab => \AV_CONTROLLER_INST|clockCounter\(4),
	datac => \AV_CONTROLLER_INST|clockCounter\(7),
	datad => \AV_CONTROLLER_INST|clockCounter\(6),
	combout => \AV_CONTROLLER_INST|Equal5~2_combout\);

-- Location: LCCOMB_X17_Y14_N8
\AV_CONTROLLER_INST|Selector0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector0~0_combout\ = (\AV_CONTROLLER_INST|state.videoData~q\ & (((!\AV_CONTROLLER_INST|Equal5~2_combout\) # (!\AV_CONTROLLER_INST|clockCounter\(9))) # (!\AV_CONTROLLER_INST|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|Equal5~1_combout\,
	datab => \AV_CONTROLLER_INST|state.videoData~q\,
	datac => \AV_CONTROLLER_INST|clockCounter\(9),
	datad => \AV_CONTROLLER_INST|Equal5~2_combout\,
	combout => \AV_CONTROLLER_INST|Selector0~0_combout\);

-- Location: LCCOMB_X17_Y14_N24
\AV_CONTROLLER_INST|Selector0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector0~1_combout\ = (\AV_CONTROLLER_INST|Selector0~0_combout\) # ((\AV_CONTROLLER_INST|state.videoDataGuardBand~q\ & \AV_CONTROLLER_INST|Equal3~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	datac => \AV_CONTROLLER_INST|Selector0~0_combout\,
	datad => \AV_CONTROLLER_INST|Equal3~1_combout\,
	combout => \AV_CONTROLLER_INST|Selector0~1_combout\);

-- Location: FF_X17_Y14_N25
\AV_CONTROLLER_INST|state.videoData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|Selector0~1_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|state.videoData~q\);

-- Location: LCCOMB_X18_Y14_N4
\AV_CONTROLLER_INST|Selector1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector1~3_combout\ = (\AV_CONTROLLER_INST|clockCounter\(9) & (\AV_CONTROLLER_INST|state.videoData~q\ & (\AV_CONTROLLER_INST|Equal5~2_combout\ & \AV_CONTROLLER_INST|Equal5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|clockCounter\(9),
	datab => \AV_CONTROLLER_INST|state.videoData~q\,
	datac => \AV_CONTROLLER_INST|Equal5~2_combout\,
	datad => \AV_CONTROLLER_INST|Equal5~1_combout\,
	combout => \AV_CONTROLLER_INST|Selector1~3_combout\);

-- Location: LCCOMB_X18_Y13_N12
\AV_CONTROLLER_INST|state~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|state~20_combout\ = (!\AV_CONTROLLER_INST|state.controlData~q\ & (!\AV_CONTROLLER_INST|process_0~5_combout\ & !\AV_CONTROLLER_INST|process_0~7_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|state.controlData~q\,
	datac => \AV_CONTROLLER_INST|process_0~5_combout\,
	datad => \AV_CONTROLLER_INST|process_0~7_combout\,
	combout => \AV_CONTROLLER_INST|state~20_combout\);

-- Location: LCCOMB_X18_Y13_N0
\AV_CONTROLLER_INST|Selector7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector7~0_combout\ = (!\AV_CONTROLLER_INST|Selector1~3_combout\ & (!\AV_CONTROLLER_INST|state~20_combout\ & ((!\AV_CONTROLLER_INST|Equal3~1_combout\) # (!\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datab => \AV_CONTROLLER_INST|Equal3~1_combout\,
	datac => \AV_CONTROLLER_INST|Selector1~3_combout\,
	datad => \AV_CONTROLLER_INST|state~20_combout\,
	combout => \AV_CONTROLLER_INST|Selector7~0_combout\);

-- Location: FF_X18_Y13_N1
\AV_CONTROLLER_INST|state.controlData\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|Selector7~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|state.controlData~q\);

-- Location: FF_X19_Y14_N9
\AV_CONTROLLER_INST|clockCounter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|clockCounter[4]~19_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \AV_CONTROLLER_INST|clockCounter[1]~22_combout\,
	ena => \AV_CONTROLLER_INST|state.controlData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|clockCounter\(4));

-- Location: FF_X19_Y14_N11
\AV_CONTROLLER_INST|clockCounter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|clockCounter[5]~23_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \AV_CONTROLLER_INST|clockCounter[1]~22_combout\,
	ena => \AV_CONTROLLER_INST|state.controlData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|clockCounter\(5));

-- Location: LCCOMB_X17_Y14_N28
\AV_CONTROLLER_INST|Selector1~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector1~4_combout\ = (\AV_CONTROLLER_INST|clockCounter\(5) & (\AV_CONTROLLER_INST|state.dataIsland~q\ & (\AV_CONTROLLER_INST|Equal5~1_combout\ & \AV_CONTROLLER_INST|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|clockCounter\(5),
	datab => \AV_CONTROLLER_INST|state.dataIsland~q\,
	datac => \AV_CONTROLLER_INST|Equal5~1_combout\,
	datad => \AV_CONTROLLER_INST|Equal4~0_combout\,
	combout => \AV_CONTROLLER_INST|Selector1~4_combout\);

-- Location: LCCOMB_X19_Y14_N26
\AV_CONTROLLER_INST|clockCounter[1]~22\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|clockCounter[1]~22_combout\ = (\AV_CONTROLLER_INST|Selector1~4_combout\) # (\AV_CONTROLLER_INST|clockCounter[1]~21_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AV_CONTROLLER_INST|Selector1~4_combout\,
	datad => \AV_CONTROLLER_INST|clockCounter[1]~21_combout\,
	combout => \AV_CONTROLLER_INST|clockCounter[1]~22_combout\);

-- Location: FF_X19_Y14_N1
\AV_CONTROLLER_INST|clockCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|clockCounter[0]~11_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \AV_CONTROLLER_INST|clockCounter[1]~22_combout\,
	ena => \AV_CONTROLLER_INST|state.controlData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|clockCounter\(0));

-- Location: LCCOMB_X19_Y14_N2
\AV_CONTROLLER_INST|clockCounter[1]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|clockCounter[1]~13_combout\ = (\AV_CONTROLLER_INST|clockCounter\(1) & (!\AV_CONTROLLER_INST|clockCounter[0]~12\)) # (!\AV_CONTROLLER_INST|clockCounter\(1) & ((\AV_CONTROLLER_INST|clockCounter[0]~12\) # (GND)))
-- \AV_CONTROLLER_INST|clockCounter[1]~14\ = CARRY((!\AV_CONTROLLER_INST|clockCounter[0]~12\) # (!\AV_CONTROLLER_INST|clockCounter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|clockCounter\(1),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|clockCounter[0]~12\,
	combout => \AV_CONTROLLER_INST|clockCounter[1]~13_combout\,
	cout => \AV_CONTROLLER_INST|clockCounter[1]~14\);

-- Location: FF_X19_Y14_N3
\AV_CONTROLLER_INST|clockCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|clockCounter[1]~13_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \AV_CONTROLLER_INST|clockCounter[1]~22_combout\,
	ena => \AV_CONTROLLER_INST|state.controlData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|clockCounter\(1));

-- Location: LCCOMB_X19_Y14_N4
\AV_CONTROLLER_INST|clockCounter[2]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|clockCounter[2]~15_combout\ = (\AV_CONTROLLER_INST|clockCounter\(2) & (\AV_CONTROLLER_INST|clockCounter[1]~14\ $ (GND))) # (!\AV_CONTROLLER_INST|clockCounter\(2) & (!\AV_CONTROLLER_INST|clockCounter[1]~14\ & VCC))
-- \AV_CONTROLLER_INST|clockCounter[2]~16\ = CARRY((\AV_CONTROLLER_INST|clockCounter\(2) & !\AV_CONTROLLER_INST|clockCounter[1]~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|clockCounter\(2),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|clockCounter[1]~14\,
	combout => \AV_CONTROLLER_INST|clockCounter[2]~15_combout\,
	cout => \AV_CONTROLLER_INST|clockCounter[2]~16\);

-- Location: FF_X19_Y14_N5
\AV_CONTROLLER_INST|clockCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|clockCounter[2]~15_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \AV_CONTROLLER_INST|clockCounter[1]~22_combout\,
	ena => \AV_CONTROLLER_INST|state.controlData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|clockCounter\(2));

-- Location: FF_X19_Y14_N7
\AV_CONTROLLER_INST|clockCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|clockCounter[3]~17_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	sclr => \AV_CONTROLLER_INST|clockCounter[1]~22_combout\,
	ena => \AV_CONTROLLER_INST|state.controlData~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|clockCounter\(3));

-- Location: LCCOMB_X20_Y14_N24
\AV_CONTROLLER_INST|Equal3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Equal3~0_combout\ = (!\AV_CONTROLLER_INST|clockCounter\(3) & \AV_CONTROLLER_INST|clockCounter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \AV_CONTROLLER_INST|clockCounter\(3),
	datad => \AV_CONTROLLER_INST|clockCounter\(0),
	combout => \AV_CONTROLLER_INST|Equal3~0_combout\);

-- Location: LCCOMB_X17_Y14_N10
\AV_CONTROLLER_INST|Equal3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Equal3~1_combout\ = (\AV_CONTROLLER_INST|Equal3~0_combout\ & (!\AV_CONTROLLER_INST|clockCounter\(2) & (\AV_CONTROLLER_INST|Equal2~1_combout\ & \AV_CONTROLLER_INST|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|Equal3~0_combout\,
	datab => \AV_CONTROLLER_INST|clockCounter\(2),
	datac => \AV_CONTROLLER_INST|Equal2~1_combout\,
	datad => \AV_CONTROLLER_INST|Equal2~0_combout\,
	combout => \AV_CONTROLLER_INST|Equal3~1_combout\);

-- Location: LCCOMB_X17_Y14_N18
\AV_CONTROLLER_INST|Selector5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|Selector5~0_combout\ = (\AV_CONTROLLER_INST|Selector1~4_combout\) # ((!\AV_CONTROLLER_INST|Equal3~1_combout\ & \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|Equal3~1_combout\,
	datac => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datad => \AV_CONTROLLER_INST|Selector1~4_combout\,
	combout => \AV_CONTROLLER_INST|Selector5~0_combout\);

-- Location: FF_X17_Y14_N19
\AV_CONTROLLER_INST|state.dataIslandPostGuard\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|Selector5~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\);

-- Location: LCCOMB_X18_Y16_N20
\VIDEO_CONTROLLER_INST|process_0~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|process_0~8_combout\ = (\VIDEO_CONTROLLER_INST|counterx~5_combout\ & ((\VIDEO_CONTROLLER_INST|counterx~3_combout\) # (\VIDEO_CONTROLLER_INST|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|counterx~3_combout\,
	datac => \VIDEO_CONTROLLER_INST|counterx~5_combout\,
	datad => \VIDEO_CONTROLLER_INST|Add1~4_combout\,
	combout => \VIDEO_CONTROLLER_INST|process_0~8_combout\);

-- Location: LCCOMB_X18_Y16_N14
\VIDEO_CONTROLLER_INST|process_0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|process_0~2_combout\ = (!\VIDEO_CONTROLLER_INST|Add1~10_combout\ & ((\VIDEO_CONTROLLER_INST|Equal0~3_combout\) # (!\VIDEO_CONTROLLER_INST|Add1~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Add1~8_combout\,
	datac => \VIDEO_CONTROLLER_INST|Equal0~3_combout\,
	datad => \VIDEO_CONTROLLER_INST|Add1~10_combout\,
	combout => \VIDEO_CONTROLLER_INST|process_0~2_combout\);

-- Location: LCCOMB_X18_Y16_N26
\VIDEO_CONTROLLER_INST|LessThan4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|LessThan4~0_combout\ = (!\VIDEO_CONTROLLER_INST|Add1~16_combout\ & (\VIDEO_CONTROLLER_INST|process_0~2_combout\ & (!\VIDEO_CONTROLLER_INST|Add1~12_combout\ & !\VIDEO_CONTROLLER_INST|Add1~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Add1~16_combout\,
	datab => \VIDEO_CONTROLLER_INST|process_0~2_combout\,
	datac => \VIDEO_CONTROLLER_INST|Add1~12_combout\,
	datad => \VIDEO_CONTROLLER_INST|Add1~18_combout\,
	combout => \VIDEO_CONTROLLER_INST|LessThan4~0_combout\);

-- Location: LCCOMB_X17_Y16_N28
\VIDEO_CONTROLLER_INST|LessThan5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|LessThan5~0_combout\ = (((!\VIDEO_CONTROLLER_INST|Add1~12_combout\ & !\VIDEO_CONTROLLER_INST|Add1~14_combout\)) # (!\VIDEO_CONTROLLER_INST|Add1~16_combout\)) # (!\VIDEO_CONTROLLER_INST|Add1~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Add1~12_combout\,
	datab => \VIDEO_CONTROLLER_INST|Add1~18_combout\,
	datac => \VIDEO_CONTROLLER_INST|Add1~14_combout\,
	datad => \VIDEO_CONTROLLER_INST|Add1~16_combout\,
	combout => \VIDEO_CONTROLLER_INST|LessThan5~0_combout\);

-- Location: LCCOMB_X18_Y16_N0
\VIDEO_CONTROLLER_INST|LessThan5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|LessThan5~1_combout\ = (((!\VIDEO_CONTROLLER_INST|Add1~4_combout\ & !\VIDEO_CONTROLLER_INST|counterx~3_combout\)) # (!\VIDEO_CONTROLLER_INST|counterx~4_combout\)) # (!\VIDEO_CONTROLLER_INST|counterx~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Add1~4_combout\,
	datab => \VIDEO_CONTROLLER_INST|counterx~3_combout\,
	datac => \VIDEO_CONTROLLER_INST|counterx~5_combout\,
	datad => \VIDEO_CONTROLLER_INST|counterx~4_combout\,
	combout => \VIDEO_CONTROLLER_INST|LessThan5~1_combout\);

-- Location: LCCOMB_X18_Y16_N10
\VIDEO_CONTROLLER_INST|LessThan5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|LessThan5~2_combout\ = (\VIDEO_CONTROLLER_INST|LessThan5~0_combout\) # ((!\VIDEO_CONTROLLER_INST|Add1~14_combout\ & (!\VIDEO_CONTROLLER_INST|Add1~10_combout\ & \VIDEO_CONTROLLER_INST|LessThan5~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Add1~14_combout\,
	datab => \VIDEO_CONTROLLER_INST|LessThan5~0_combout\,
	datac => \VIDEO_CONTROLLER_INST|Add1~10_combout\,
	datad => \VIDEO_CONTROLLER_INST|LessThan5~1_combout\,
	combout => \VIDEO_CONTROLLER_INST|LessThan5~2_combout\);

-- Location: LCCOMB_X18_Y16_N6
\VIDEO_CONTROLLER_INST|process_0~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|process_0~9_combout\ = (!\VIDEO_CONTROLLER_INST|Add1~20_combout\ & (\VIDEO_CONTROLLER_INST|LessThan5~2_combout\ & ((\VIDEO_CONTROLLER_INST|process_0~8_combout\) # (!\VIDEO_CONTROLLER_INST|LessThan4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Add1~20_combout\,
	datab => \VIDEO_CONTROLLER_INST|process_0~8_combout\,
	datac => \VIDEO_CONTROLLER_INST|LessThan4~0_combout\,
	datad => \VIDEO_CONTROLLER_INST|LessThan5~2_combout\,
	combout => \VIDEO_CONTROLLER_INST|process_0~9_combout\);

-- Location: LCCOMB_X19_Y16_N20
\VIDEO_CONTROLLER_INST|process_0~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|process_0~10_combout\ = (!\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & ((\VIDEO_CONTROLLER_INST|Add1~18_combout\) # ((\VIDEO_CONTROLLER_INST|Add1~16_combout\) # (\VIDEO_CONTROLLER_INST|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Equal0~3_combout\,
	datab => \VIDEO_CONTROLLER_INST|Add1~18_combout\,
	datac => \VIDEO_CONTROLLER_INST|Add1~16_combout\,
	datad => \VIDEO_CONTROLLER_INST|Add1~14_combout\,
	combout => \VIDEO_CONTROLLER_INST|process_0~10_combout\);

-- Location: LCCOMB_X19_Y16_N6
\VIDEO_CONTROLLER_INST|LessThan7~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|LessThan7~0_combout\ = (\VIDEO_CONTROLLER_INST|countery~0_combout\ & (\VIDEO_CONTROLLER_INST|countery~2_combout\ & (\VIDEO_CONTROLLER_INST|countery~1_combout\ & \VIDEO_CONTROLLER_INST|countery~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery~0_combout\,
	datab => \VIDEO_CONTROLLER_INST|countery~2_combout\,
	datac => \VIDEO_CONTROLLER_INST|countery~1_combout\,
	datad => \VIDEO_CONTROLLER_INST|countery~3_combout\,
	combout => \VIDEO_CONTROLLER_INST|LessThan7~0_combout\);

-- Location: LCCOMB_X19_Y16_N10
\VIDEO_CONTROLLER_INST|process_0~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|process_0~11_combout\ = (!\VIDEO_CONTROLLER_INST|Add1~22_combout\ & (\VIDEO_CONTROLLER_INST|process_0~10_combout\ & (!\VIDEO_CONTROLLER_INST|countery~8_combout\ & !\VIDEO_CONTROLLER_INST|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Add1~22_combout\,
	datab => \VIDEO_CONTROLLER_INST|process_0~10_combout\,
	datac => \VIDEO_CONTROLLER_INST|countery~8_combout\,
	datad => \VIDEO_CONTROLLER_INST|LessThan7~0_combout\,
	combout => \VIDEO_CONTROLLER_INST|process_0~11_combout\);

-- Location: LCCOMB_X19_Y16_N14
\VIDEO_CONTROLLER_INST|process_0~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|process_0~12_combout\ = (!\VIDEO_CONTROLLER_INST|countery~5_combout\ & (!\VIDEO_CONTROLLER_INST|countery~4_combout\ & (\VIDEO_CONTROLLER_INST|process_0~9_combout\ & \VIDEO_CONTROLLER_INST|process_0~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery~5_combout\,
	datab => \VIDEO_CONTROLLER_INST|countery~4_combout\,
	datac => \VIDEO_CONTROLLER_INST|process_0~9_combout\,
	datad => \VIDEO_CONTROLLER_INST|process_0~11_combout\,
	combout => \VIDEO_CONTROLLER_INST|process_0~12_combout\);

-- Location: FF_X19_Y16_N15
\VIDEO_CONTROLLER_INST|s_vde\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|process_0~12_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|s_vde~q\);

-- Location: FF_X15_Y14_N5
\VIDEO_CONTROLLER_INST|c_red[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|s_vde~q\,
	clrn => \reset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|c_red\(7));

-- Location: LCCOMB_X17_Y14_N6
\AV_CONTROLLER_INST|enc0|Add14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|Add14~1_combout\ = (\VIDEO_CONTROLLER_INST|c_red\(7) & \AV_CONTROLLER_INST|enc0|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => \AV_CONTROLLER_INST|enc0|Equal1~0_combout\,
	combout => \AV_CONTROLLER_INST|enc0|Add14~1_combout\);

-- Location: LCCOMB_X16_Y14_N10
\AV_CONTROLLER_INST|enc0|Add18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|Add18~0_combout\ = (\AV_CONTROLLER_INST|enc0|dc_bias\(0) & ((GND) # (!\VIDEO_CONTROLLER_INST|c_red\(7)))) # (!\AV_CONTROLLER_INST|enc0|dc_bias\(0) & (\VIDEO_CONTROLLER_INST|c_red\(7) $ (GND)))
-- \AV_CONTROLLER_INST|enc0|Add18~1\ = CARRY((\AV_CONTROLLER_INST|enc0|dc_bias\(0)) # (!\VIDEO_CONTROLLER_INST|c_red\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|dc_bias\(0),
	datab => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => VCC,
	combout => \AV_CONTROLLER_INST|enc0|Add18~0_combout\,
	cout => \AV_CONTROLLER_INST|enc0|Add18~1\);

-- Location: LCCOMB_X16_Y14_N8
\AV_CONTROLLER_INST|enc0|process_1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|process_1~0_combout\ = \AV_CONTROLLER_INST|enc0|dc_bias\(3) $ (\VIDEO_CONTROLLER_INST|c_red\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|dc_bias\(3),
	datac => \VIDEO_CONTROLLER_INST|c_red\(7),
	combout => \AV_CONTROLLER_INST|enc0|process_1~0_combout\);

-- Location: LCCOMB_X15_Y14_N16
\AV_CONTROLLER_INST|enc0|Add16~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|Add16~1_cout\ = CARRY(!\VIDEO_CONTROLLER_INST|c_red\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => VCC,
	cout => \AV_CONTROLLER_INST|enc0|Add16~1_cout\);

-- Location: LCCOMB_X15_Y14_N18
\AV_CONTROLLER_INST|enc0|Add16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|Add16~2_combout\ = (\AV_CONTROLLER_INST|enc0|dc_bias\(0) & (\AV_CONTROLLER_INST|enc0|Add16~1_cout\ & VCC)) # (!\AV_CONTROLLER_INST|enc0|dc_bias\(0) & (!\AV_CONTROLLER_INST|enc0|Add16~1_cout\))
-- \AV_CONTROLLER_INST|enc0|Add16~3\ = CARRY((!\AV_CONTROLLER_INST|enc0|dc_bias\(0) & !\AV_CONTROLLER_INST|enc0|Add16~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|enc0|dc_bias\(0),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|enc0|Add16~1_cout\,
	combout => \AV_CONTROLLER_INST|enc0|Add16~2_combout\,
	cout => \AV_CONTROLLER_INST|enc0|Add16~3\);

-- Location: LCCOMB_X16_Y14_N4
\AV_CONTROLLER_INST|enc0|Add18~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|Add18~11_combout\ = (!\AV_CONTROLLER_INST|enc0|Equal1~0_combout\ & ((\AV_CONTROLLER_INST|enc0|process_1~0_combout\ & ((\AV_CONTROLLER_INST|enc0|Add16~2_combout\))) # (!\AV_CONTROLLER_INST|enc0|process_1~0_combout\ & 
-- (\AV_CONTROLLER_INST|enc0|Add18~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|Add18~0_combout\,
	datab => \AV_CONTROLLER_INST|enc0|Equal1~0_combout\,
	datac => \AV_CONTROLLER_INST|enc0|process_1~0_combout\,
	datad => \AV_CONTROLLER_INST|enc0|Add16~2_combout\,
	combout => \AV_CONTROLLER_INST|enc0|Add18~11_combout\);

-- Location: LCCOMB_X16_Y14_N22
\AV_CONTROLLER_INST|enc0|dc_bias[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|dc_bias[0]~5_cout\ = CARRY(\AV_CONTROLLER_INST|enc0|Add14~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|Add14~1_combout\,
	datad => VCC,
	cout => \AV_CONTROLLER_INST|enc0|dc_bias[0]~5_cout\);

-- Location: LCCOMB_X16_Y14_N24
\AV_CONTROLLER_INST|enc0|dc_bias[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|dc_bias[0]~6_combout\ = (\AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\ & ((\AV_CONTROLLER_INST|enc0|Add18~11_combout\ & (\AV_CONTROLLER_INST|enc0|dc_bias[0]~5_cout\ & VCC)) # (!\AV_CONTROLLER_INST|enc0|Add18~11_combout\ & 
-- (!\AV_CONTROLLER_INST|enc0|dc_bias[0]~5_cout\)))) # (!\AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\ & ((\AV_CONTROLLER_INST|enc0|Add18~11_combout\ & (!\AV_CONTROLLER_INST|enc0|dc_bias[0]~5_cout\)) # (!\AV_CONTROLLER_INST|enc0|Add18~11_combout\ & 
-- ((\AV_CONTROLLER_INST|enc0|dc_bias[0]~5_cout\) # (GND)))))
-- \AV_CONTROLLER_INST|enc0|dc_bias[0]~7\ = CARRY((\AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\ & (!\AV_CONTROLLER_INST|enc0|Add18~11_combout\ & !\AV_CONTROLLER_INST|enc0|dc_bias[0]~5_cout\)) # (!\AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\ & 
-- ((!\AV_CONTROLLER_INST|enc0|dc_bias[0]~5_cout\) # (!\AV_CONTROLLER_INST|enc0|Add18~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\,
	datab => \AV_CONTROLLER_INST|enc0|Add18~11_combout\,
	datad => VCC,
	cin => \AV_CONTROLLER_INST|enc0|dc_bias[0]~5_cout\,
	combout => \AV_CONTROLLER_INST|enc0|dc_bias[0]~6_combout\,
	cout => \AV_CONTROLLER_INST|enc0|dc_bias[0]~7\);

-- Location: FF_X15_Y14_N17
\VIDEO_CONTROLLER_INST|vde\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	asdata => \VIDEO_CONTROLLER_INST|s_vde~q\,
	sload => VCC,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|vde~q\);

-- Location: FF_X16_Y14_N25
\AV_CONTROLLER_INST|enc0|dc_bias[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc0|dc_bias[0]~6_combout\,
	sclr => \VIDEO_CONTROLLER_INST|ALT_INV_vde~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc0|dc_bias\(0));

-- Location: LCCOMB_X16_Y14_N12
\AV_CONTROLLER_INST|enc0|Add18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|Add18~2_combout\ = (\AV_CONTROLLER_INST|enc0|dc_bias\(1) & (\AV_CONTROLLER_INST|enc0|Add18~1\ & VCC)) # (!\AV_CONTROLLER_INST|enc0|dc_bias\(1) & (!\AV_CONTROLLER_INST|enc0|Add18~1\))
-- \AV_CONTROLLER_INST|enc0|Add18~3\ = CARRY((!\AV_CONTROLLER_INST|enc0|dc_bias\(1) & !\AV_CONTROLLER_INST|enc0|Add18~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|dc_bias\(1),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|enc0|Add18~1\,
	combout => \AV_CONTROLLER_INST|enc0|Add18~2_combout\,
	cout => \AV_CONTROLLER_INST|enc0|Add18~3\);

-- Location: LCCOMB_X15_Y14_N20
\AV_CONTROLLER_INST|enc0|Add16~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|Add16~4_combout\ = (\AV_CONTROLLER_INST|enc0|dc_bias\(1) & ((GND) # (!\AV_CONTROLLER_INST|enc0|Add16~3\))) # (!\AV_CONTROLLER_INST|enc0|dc_bias\(1) & (\AV_CONTROLLER_INST|enc0|Add16~3\ $ (GND)))
-- \AV_CONTROLLER_INST|enc0|Add16~5\ = CARRY((\AV_CONTROLLER_INST|enc0|dc_bias\(1)) # (!\AV_CONTROLLER_INST|enc0|Add16~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|dc_bias\(1),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|enc0|Add16~3\,
	combout => \AV_CONTROLLER_INST|enc0|Add16~4_combout\,
	cout => \AV_CONTROLLER_INST|enc0|Add16~5\);

-- Location: LCCOMB_X16_Y14_N2
\AV_CONTROLLER_INST|enc0|Add18~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|Add18~10_combout\ = (!\AV_CONTROLLER_INST|enc0|Equal1~0_combout\ & ((\AV_CONTROLLER_INST|enc0|process_1~0_combout\ & ((\AV_CONTROLLER_INST|enc0|Add16~4_combout\))) # (!\AV_CONTROLLER_INST|enc0|process_1~0_combout\ & 
-- (\AV_CONTROLLER_INST|enc0|Add18~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|Add18~2_combout\,
	datab => \AV_CONTROLLER_INST|enc0|Equal1~0_combout\,
	datac => \AV_CONTROLLER_INST|enc0|process_1~0_combout\,
	datad => \AV_CONTROLLER_INST|enc0|Add16~4_combout\,
	combout => \AV_CONTROLLER_INST|enc0|Add18~10_combout\);

-- Location: LCCOMB_X16_Y14_N26
\AV_CONTROLLER_INST|enc0|dc_bias[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|dc_bias[1]~8_combout\ = ((\AV_CONTROLLER_INST|enc0|Add14~1_combout\ $ (\AV_CONTROLLER_INST|enc0|Add18~10_combout\ $ (!\AV_CONTROLLER_INST|enc0|dc_bias[0]~7\)))) # (GND)
-- \AV_CONTROLLER_INST|enc0|dc_bias[1]~9\ = CARRY((\AV_CONTROLLER_INST|enc0|Add14~1_combout\ & ((\AV_CONTROLLER_INST|enc0|Add18~10_combout\) # (!\AV_CONTROLLER_INST|enc0|dc_bias[0]~7\))) # (!\AV_CONTROLLER_INST|enc0|Add14~1_combout\ & 
-- (\AV_CONTROLLER_INST|enc0|Add18~10_combout\ & !\AV_CONTROLLER_INST|enc0|dc_bias[0]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|Add14~1_combout\,
	datab => \AV_CONTROLLER_INST|enc0|Add18~10_combout\,
	datad => VCC,
	cin => \AV_CONTROLLER_INST|enc0|dc_bias[0]~7\,
	combout => \AV_CONTROLLER_INST|enc0|dc_bias[1]~8_combout\,
	cout => \AV_CONTROLLER_INST|enc0|dc_bias[1]~9\);

-- Location: FF_X16_Y14_N27
\AV_CONTROLLER_INST|enc0|dc_bias[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc0|dc_bias[1]~8_combout\,
	sclr => \VIDEO_CONTROLLER_INST|ALT_INV_vde~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc0|dc_bias\(1));

-- Location: LCCOMB_X16_Y14_N14
\AV_CONTROLLER_INST|enc0|Add18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|Add18~4_combout\ = (\AV_CONTROLLER_INST|enc0|dc_bias\(2) & ((GND) # (!\AV_CONTROLLER_INST|enc0|Add18~3\))) # (!\AV_CONTROLLER_INST|enc0|dc_bias\(2) & (\AV_CONTROLLER_INST|enc0|Add18~3\ $ (GND)))
-- \AV_CONTROLLER_INST|enc0|Add18~5\ = CARRY((\AV_CONTROLLER_INST|enc0|dc_bias\(2)) # (!\AV_CONTROLLER_INST|enc0|Add18~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|enc0|dc_bias\(2),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|enc0|Add18~3\,
	combout => \AV_CONTROLLER_INST|enc0|Add18~4_combout\,
	cout => \AV_CONTROLLER_INST|enc0|Add18~5\);

-- Location: LCCOMB_X15_Y14_N22
\AV_CONTROLLER_INST|enc0|Add16~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|Add16~6_combout\ = (\AV_CONTROLLER_INST|enc0|dc_bias\(2) & (!\AV_CONTROLLER_INST|enc0|Add16~5\)) # (!\AV_CONTROLLER_INST|enc0|dc_bias\(2) & ((\AV_CONTROLLER_INST|enc0|Add16~5\) # (GND)))
-- \AV_CONTROLLER_INST|enc0|Add16~7\ = CARRY((!\AV_CONTROLLER_INST|enc0|Add16~5\) # (!\AV_CONTROLLER_INST|enc0|dc_bias\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|enc0|dc_bias\(2),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|enc0|Add16~5\,
	combout => \AV_CONTROLLER_INST|enc0|Add16~6_combout\,
	cout => \AV_CONTROLLER_INST|enc0|Add16~7\);

-- Location: LCCOMB_X16_Y14_N20
\AV_CONTROLLER_INST|enc0|Add18~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|Add18~9_combout\ = (!\AV_CONTROLLER_INST|enc0|Equal1~0_combout\ & ((\AV_CONTROLLER_INST|enc0|process_1~0_combout\ & ((\AV_CONTROLLER_INST|enc0|Add16~6_combout\))) # (!\AV_CONTROLLER_INST|enc0|process_1~0_combout\ & 
-- (\AV_CONTROLLER_INST|enc0|Add18~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|Equal1~0_combout\,
	datab => \AV_CONTROLLER_INST|enc0|process_1~0_combout\,
	datac => \AV_CONTROLLER_INST|enc0|Add18~4_combout\,
	datad => \AV_CONTROLLER_INST|enc0|Add16~6_combout\,
	combout => \AV_CONTROLLER_INST|enc0|Add18~9_combout\);

-- Location: LCCOMB_X16_Y14_N28
\AV_CONTROLLER_INST|enc0|dc_bias[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|dc_bias[2]~10_combout\ = (\AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\ & ((\AV_CONTROLLER_INST|enc0|Add18~9_combout\ & (!\AV_CONTROLLER_INST|enc0|dc_bias[1]~9\)) # (!\AV_CONTROLLER_INST|enc0|Add18~9_combout\ & 
-- ((\AV_CONTROLLER_INST|enc0|dc_bias[1]~9\) # (GND))))) # (!\AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\ & ((\AV_CONTROLLER_INST|enc0|Add18~9_combout\ & (\AV_CONTROLLER_INST|enc0|dc_bias[1]~9\ & VCC)) # (!\AV_CONTROLLER_INST|enc0|Add18~9_combout\ & 
-- (!\AV_CONTROLLER_INST|enc0|dc_bias[1]~9\))))
-- \AV_CONTROLLER_INST|enc0|dc_bias[2]~11\ = CARRY((\AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\ & ((!\AV_CONTROLLER_INST|enc0|dc_bias[1]~9\) # (!\AV_CONTROLLER_INST|enc0|Add18~9_combout\))) # (!\AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\ & 
-- (!\AV_CONTROLLER_INST|enc0|Add18~9_combout\ & !\AV_CONTROLLER_INST|enc0|dc_bias[1]~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\,
	datab => \AV_CONTROLLER_INST|enc0|Add18~9_combout\,
	datad => VCC,
	cin => \AV_CONTROLLER_INST|enc0|dc_bias[1]~9\,
	combout => \AV_CONTROLLER_INST|enc0|dc_bias[2]~10_combout\,
	cout => \AV_CONTROLLER_INST|enc0|dc_bias[2]~11\);

-- Location: FF_X16_Y14_N29
\AV_CONTROLLER_INST|enc0|dc_bias[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc0|dc_bias[2]~10_combout\,
	sclr => \VIDEO_CONTROLLER_INST|ALT_INV_vde~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc0|dc_bias\(2));

-- Location: LCCOMB_X16_Y14_N18
\AV_CONTROLLER_INST|enc0|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|Equal1~0_combout\ = (!\AV_CONTROLLER_INST|enc0|dc_bias\(1) & (!\AV_CONTROLLER_INST|enc0|dc_bias\(0) & (!\AV_CONTROLLER_INST|enc0|dc_bias\(3) & !\AV_CONTROLLER_INST|enc0|dc_bias\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|dc_bias\(1),
	datab => \AV_CONTROLLER_INST|enc0|dc_bias\(0),
	datac => \AV_CONTROLLER_INST|enc0|dc_bias\(3),
	datad => \AV_CONTROLLER_INST|enc0|dc_bias\(2),
	combout => \AV_CONTROLLER_INST|enc0|Equal1~0_combout\);

-- Location: LCCOMB_X17_Y14_N30
\AV_CONTROLLER_INST|enc0|ENCODED[9]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\ = (\AV_CONTROLLER_INST|enc0|Equal1~0_combout\ & (\VIDEO_CONTROLLER_INST|c_red\(7))) # (!\AV_CONTROLLER_INST|enc0|Equal1~0_combout\ & ((\AV_CONTROLLER_INST|enc0|process_1~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|enc0|Equal1~0_combout\,
	datac => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => \AV_CONTROLLER_INST|enc0|process_1~0_combout\,
	combout => \AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\);

-- Location: LCCOMB_X16_Y14_N6
\AV_CONTROLLER_INST|enc0|Add14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|Add14~0_combout\ = (\VIDEO_CONTROLLER_INST|c_red\(7) & (\AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\ & \AV_CONTROLLER_INST|enc0|Equal1~0_combout\)) # (!\VIDEO_CONTROLLER_INST|c_red\(7) & 
-- (!\AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|c_red\(7),
	datac => \AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\,
	datad => \AV_CONTROLLER_INST|enc0|Equal1~0_combout\,
	combout => \AV_CONTROLLER_INST|enc0|Add14~0_combout\);

-- Location: LCCOMB_X16_Y14_N16
\AV_CONTROLLER_INST|enc0|Add18~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|Add18~6_combout\ = \AV_CONTROLLER_INST|enc0|dc_bias\(3) $ (!\AV_CONTROLLER_INST|enc0|Add18~5\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|dc_bias\(3),
	cin => \AV_CONTROLLER_INST|enc0|Add18~5\,
	combout => \AV_CONTROLLER_INST|enc0|Add18~6_combout\);

-- Location: LCCOMB_X15_Y14_N24
\AV_CONTROLLER_INST|enc0|Add16~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|Add16~8_combout\ = \AV_CONTROLLER_INST|enc0|dc_bias\(3) $ (\VIDEO_CONTROLLER_INST|c_red\(7) $ (!\AV_CONTROLLER_INST|enc0|Add16~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|dc_bias\(3),
	datab => \VIDEO_CONTROLLER_INST|c_red\(7),
	cin => \AV_CONTROLLER_INST|enc0|Add16~7\,
	combout => \AV_CONTROLLER_INST|enc0|Add16~8_combout\);

-- Location: LCCOMB_X16_Y14_N0
\AV_CONTROLLER_INST|enc0|Add18~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|Add18~8_combout\ = (!\AV_CONTROLLER_INST|enc0|Equal1~0_combout\ & ((\AV_CONTROLLER_INST|enc0|process_1~0_combout\ & ((\AV_CONTROLLER_INST|enc0|Add16~8_combout\))) # (!\AV_CONTROLLER_INST|enc0|process_1~0_combout\ & 
-- (\AV_CONTROLLER_INST|enc0|Add18~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|Equal1~0_combout\,
	datab => \AV_CONTROLLER_INST|enc0|Add18~6_combout\,
	datac => \AV_CONTROLLER_INST|enc0|process_1~0_combout\,
	datad => \AV_CONTROLLER_INST|enc0|Add16~8_combout\,
	combout => \AV_CONTROLLER_INST|enc0|Add18~8_combout\);

-- Location: LCCOMB_X16_Y14_N30
\AV_CONTROLLER_INST|enc0|dc_bias[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|dc_bias[3]~12_combout\ = \AV_CONTROLLER_INST|enc0|Add14~0_combout\ $ (\AV_CONTROLLER_INST|enc0|dc_bias[2]~11\ $ (!\AV_CONTROLLER_INST|enc0|Add18~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|Add14~0_combout\,
	datad => \AV_CONTROLLER_INST|enc0|Add18~8_combout\,
	cin => \AV_CONTROLLER_INST|enc0|dc_bias[2]~11\,
	combout => \AV_CONTROLLER_INST|enc0|dc_bias[3]~12_combout\);

-- Location: FF_X16_Y14_N31
\AV_CONTROLLER_INST|enc0|dc_bias[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc0|dc_bias[3]~12_combout\,
	sclr => \VIDEO_CONTROLLER_INST|ALT_INV_vde~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc0|dc_bias\(3));

-- Location: LCCOMB_X18_Y16_N22
\VIDEO_CONTROLLER_INST|process_0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|process_0~0_combout\ = (\VIDEO_CONTROLLER_INST|Add1~14_combout\) # ((\VIDEO_CONTROLLER_INST|Add1~20_combout\) # (\VIDEO_CONTROLLER_INST|Add1~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Add1~14_combout\,
	datab => \VIDEO_CONTROLLER_INST|Add1~20_combout\,
	datad => \VIDEO_CONTROLLER_INST|Add1~22_combout\,
	combout => \VIDEO_CONTROLLER_INST|process_0~0_combout\);

-- Location: LCCOMB_X18_Y16_N16
\VIDEO_CONTROLLER_INST|process_0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|process_0~1_combout\ = (\VIDEO_CONTROLLER_INST|Add1~2_combout\ & (\VIDEO_CONTROLLER_INST|Add1~6_combout\ & (!\VIDEO_CONTROLLER_INST|Equal0~3_combout\ & \VIDEO_CONTROLLER_INST|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Add1~2_combout\,
	datab => \VIDEO_CONTROLLER_INST|Add1~6_combout\,
	datac => \VIDEO_CONTROLLER_INST|Equal0~3_combout\,
	datad => \VIDEO_CONTROLLER_INST|Add1~4_combout\,
	combout => \VIDEO_CONTROLLER_INST|process_0~1_combout\);

-- Location: LCCOMB_X18_Y16_N24
\VIDEO_CONTROLLER_INST|process_0~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|process_0~3_combout\ = (\VIDEO_CONTROLLER_INST|counterx~0_combout\) # ((\VIDEO_CONTROLLER_INST|process_0~2_combout\ & ((\VIDEO_CONTROLLER_INST|process_0~1_combout\) # (!\VIDEO_CONTROLLER_INST|counterx~1_combout\))) # 
-- (!\VIDEO_CONTROLLER_INST|process_0~2_combout\ & ((\VIDEO_CONTROLLER_INST|counterx~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|process_0~1_combout\,
	datab => \VIDEO_CONTROLLER_INST|counterx~0_combout\,
	datac => \VIDEO_CONTROLLER_INST|process_0~2_combout\,
	datad => \VIDEO_CONTROLLER_INST|counterx~1_combout\,
	combout => \VIDEO_CONTROLLER_INST|process_0~3_combout\);

-- Location: LCCOMB_X19_Y16_N0
\VIDEO_CONTROLLER_INST|process_0~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|process_0~4_combout\ = (!\VIDEO_CONTROLLER_INST|process_0~0_combout\ & (!\VIDEO_CONTROLLER_INST|process_0~3_combout\ & ((\VIDEO_CONTROLLER_INST|Equal0~3_combout\) # (!\VIDEO_CONTROLLER_INST|Add1~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|Equal0~3_combout\,
	datab => \VIDEO_CONTROLLER_INST|process_0~0_combout\,
	datac => \VIDEO_CONTROLLER_INST|Add1~16_combout\,
	datad => \VIDEO_CONTROLLER_INST|process_0~3_combout\,
	combout => \VIDEO_CONTROLLER_INST|process_0~4_combout\);

-- Location: FF_X19_Y16_N1
\VIDEO_CONTROLLER_INST|s_hsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|process_0~4_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|s_hsync~q\);

-- Location: LCCOMB_X15_Y14_N12
\AV_CONTROLLER_INST|enc0|ENCODED~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|ENCODED~1_combout\ = (\VIDEO_CONTROLLER_INST|vde~q\ & (\AV_CONTROLLER_INST|enc0|dc_bias\(3))) # (!\VIDEO_CONTROLLER_INST|vde~q\ & ((!\VIDEO_CONTROLLER_INST|s_hsync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|dc_bias\(3),
	datab => \VIDEO_CONTROLLER_INST|vde~q\,
	datad => \VIDEO_CONTROLLER_INST|s_hsync~q\,
	combout => \AV_CONTROLLER_INST|enc0|ENCODED~1_combout\);

-- Location: FF_X15_Y14_N13
\AV_CONTROLLER_INST|enc0|ENCODED[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc0|ENCODED~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc0|ENCODED\(0));

-- Location: LCCOMB_X14_Y14_N12
\AV_CONTROLLER_INST|tmds_enc0[0]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc0[0]~4_combout\ = (!\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\ & (!\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\ & (\AV_CONTROLLER_INST|enc0|ENCODED\(0) & !\AV_CONTROLLER_INST|state.videoDataGuardBand~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datab => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datac => \AV_CONTROLLER_INST|enc0|ENCODED\(0),
	datad => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc0[0]~4_combout\);

-- Location: LCCOMB_X19_Y13_N0
\VIDEO_CONTROLLER_INST|process_0~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|process_0~5_combout\ = ((\VIDEO_CONTROLLER_INST|countery~11_combout\ & (\VIDEO_CONTROLLER_INST|countery~10_combout\ & \VIDEO_CONTROLLER_INST|countery~9_combout\)) # (!\VIDEO_CONTROLLER_INST|countery~11_combout\ & 
-- (!\VIDEO_CONTROLLER_INST|countery~10_combout\ & !\VIDEO_CONTROLLER_INST|countery~9_combout\))) # (!\VIDEO_CONTROLLER_INST|countery~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery~11_combout\,
	datab => \VIDEO_CONTROLLER_INST|countery~10_combout\,
	datac => \VIDEO_CONTROLLER_INST|countery~12_combout\,
	datad => \VIDEO_CONTROLLER_INST|countery~9_combout\,
	combout => \VIDEO_CONTROLLER_INST|process_0~5_combout\);

-- Location: LCCOMB_X19_Y13_N30
\VIDEO_CONTROLLER_INST|process_0~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|process_0~6_combout\ = (\VIDEO_CONTROLLER_INST|countery~8_combout\) # ((\VIDEO_CONTROLLER_INST|countery~6_combout\) # (\VIDEO_CONTROLLER_INST|process_0~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery~8_combout\,
	datac => \VIDEO_CONTROLLER_INST|countery~6_combout\,
	datad => \VIDEO_CONTROLLER_INST|process_0~5_combout\,
	combout => \VIDEO_CONTROLLER_INST|process_0~6_combout\);

-- Location: LCCOMB_X19_Y13_N28
\VIDEO_CONTROLLER_INST|process_0~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \VIDEO_CONTROLLER_INST|process_0~7_combout\ = (!\VIDEO_CONTROLLER_INST|countery~4_combout\ & (!\VIDEO_CONTROLLER_INST|countery~5_combout\ & (!\VIDEO_CONTROLLER_INST|process_0~6_combout\ & \VIDEO_CONTROLLER_INST|LessThan7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|countery~4_combout\,
	datab => \VIDEO_CONTROLLER_INST|countery~5_combout\,
	datac => \VIDEO_CONTROLLER_INST|process_0~6_combout\,
	datad => \VIDEO_CONTROLLER_INST|LessThan7~0_combout\,
	combout => \VIDEO_CONTROLLER_INST|process_0~7_combout\);

-- Location: FF_X19_Y13_N29
\VIDEO_CONTROLLER_INST|s_vsync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \VIDEO_CONTROLLER_INST|process_0~7_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \VIDEO_CONTROLLER_INST|s_vsync~q\);

-- Location: LCCOMB_X14_Y14_N4
\AV_CONTROLLER_INST|tmds_enc0[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc0[0]~6_combout\ = (\VIDEO_CONTROLLER_INST|s_vsync~q\ & (!\VIDEO_CONTROLLER_INST|s_hsync~q\ & ((\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\) # (\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\)))) # 
-- (!\VIDEO_CONTROLLER_INST|s_vsync~q\ & ((\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\) # ((\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|s_vsync~q\,
	datab => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datac => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datad => \VIDEO_CONTROLLER_INST|s_hsync~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc0[0]~6_combout\);

-- Location: LCCOMB_X14_Y14_N30
\AV_CONTROLLER_INST|tmds_enc0[0]~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc0[0]~7_combout\ = (\AV_CONTROLLER_INST|tmds_enc0[0]~4_combout\) # ((\AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\ & \AV_CONTROLLER_INST|tmds_enc0[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|tmds_enc0[0]~4_combout\,
	datab => \AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\,
	datac => \AV_CONTROLLER_INST|tmds_enc0[0]~6_combout\,
	combout => \AV_CONTROLLER_INST|tmds_enc0[0]~7_combout\);

-- Location: LCCOMB_X14_Y14_N20
\AV_CONTROLLER_INST|s_blue~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|s_blue~0_combout\ = (!\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\ & !\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datac => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	combout => \AV_CONTROLLER_INST|s_blue~0_combout\);

-- Location: LCCOMB_X14_Y14_N22
\AV_CONTROLLER_INST|tmds_enc0[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc0[1]~8_combout\ = (\AV_CONTROLLER_INST|tmds_enc0[0]~4_combout\) # ((!\AV_CONTROLLER_INST|s_blue~0_combout\ & ((\VIDEO_CONTROLLER_INST|s_hsync~q\) # (!\VIDEO_CONTROLLER_INST|s_vsync~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|tmds_enc0[0]~4_combout\,
	datab => \VIDEO_CONTROLLER_INST|s_hsync~q\,
	datac => \VIDEO_CONTROLLER_INST|s_vsync~q\,
	datad => \AV_CONTROLLER_INST|s_blue~0_combout\,
	combout => \AV_CONTROLLER_INST|tmds_enc0[1]~8_combout\);

-- Location: LCCOMB_X15_Y14_N8
\AV_CONTROLLER_INST|enc0|ENCODED~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|ENCODED~2_combout\ = (\VIDEO_CONTROLLER_INST|vde~q\ & (\AV_CONTROLLER_INST|enc0|dc_bias\(3))) # (!\VIDEO_CONTROLLER_INST|vde~q\ & ((\VIDEO_CONTROLLER_INST|s_hsync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|dc_bias\(3),
	datab => \VIDEO_CONTROLLER_INST|s_hsync~q\,
	datad => \VIDEO_CONTROLLER_INST|vde~q\,
	combout => \AV_CONTROLLER_INST|enc0|ENCODED~2_combout\);

-- Location: FF_X15_Y14_N9
\AV_CONTROLLER_INST|enc0|ENCODED[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc0|ENCODED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc0|ENCODED\(2));

-- Location: LCCOMB_X15_Y14_N6
\AV_CONTROLLER_INST|tmds_enc0[2]~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc0[2]~9_combout\ = (!\AV_CONTROLLER_INST|state.videoDataGuardBand~q\ & (!\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\ & (\AV_CONTROLLER_INST|enc0|ENCODED\(2) & !\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	datab => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datac => \AV_CONTROLLER_INST|enc0|ENCODED\(2),
	datad => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc0[2]~9_combout\);

-- Location: LCCOMB_X14_Y14_N16
\AV_CONTROLLER_INST|tmds_enc0[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc0[2]~10_combout\ = (\AV_CONTROLLER_INST|tmds_enc0[2]~9_combout\) # ((\AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\ & !\AV_CONTROLLER_INST|tmds_enc0[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\,
	datac => \AV_CONTROLLER_INST|tmds_enc0[0]~6_combout\,
	datad => \AV_CONTROLLER_INST|tmds_enc0[2]~9_combout\,
	combout => \AV_CONTROLLER_INST|tmds_enc0[2]~10_combout\);

-- Location: LCCOMB_X14_Y14_N18
\AV_CONTROLLER_INST|tmds_enc0[3]~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc0[3]~11_combout\ = (\AV_CONTROLLER_INST|tmds_enc0[0]~4_combout\) # ((\AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\ & !\AV_CONTROLLER_INST|tmds_enc0[0]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|tmds_enc0[0]~4_combout\,
	datab => \AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\,
	datac => \AV_CONTROLLER_INST|tmds_enc0[0]~6_combout\,
	combout => \AV_CONTROLLER_INST|tmds_enc0[3]~11_combout\);

-- Location: LCCOMB_X14_Y14_N0
\AV_CONTROLLER_INST|tmds_enc0[4]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc0[4]~12_combout\ = (\AV_CONTROLLER_INST|tmds_enc0[2]~9_combout\) # ((!\AV_CONTROLLER_INST|s_blue~0_combout\ & (!\VIDEO_CONTROLLER_INST|s_hsync~q\ & \VIDEO_CONTROLLER_INST|s_vsync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|tmds_enc0[2]~9_combout\,
	datab => \AV_CONTROLLER_INST|s_blue~0_combout\,
	datac => \VIDEO_CONTROLLER_INST|s_hsync~q\,
	datad => \VIDEO_CONTROLLER_INST|s_vsync~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc0[4]~12_combout\);

-- Location: LCCOMB_X14_Y14_N28
\AV_CONTROLLER_INST|tmds_enc0[5]~20\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc0[5]~20_combout\ = (\AV_CONTROLLER_INST|tmds_enc0[0]~4_combout\) # ((!\AV_CONTROLLER_INST|s_blue~0_combout\ & (\VIDEO_CONTROLLER_INST|s_vsync~q\ $ (\VIDEO_CONTROLLER_INST|s_hsync~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|tmds_enc0[0]~4_combout\,
	datab => \VIDEO_CONTROLLER_INST|s_vsync~q\,
	datac => \VIDEO_CONTROLLER_INST|s_hsync~q\,
	datad => \AV_CONTROLLER_INST|s_blue~0_combout\,
	combout => \AV_CONTROLLER_INST|tmds_enc0[5]~20_combout\);

-- Location: LCCOMB_X14_Y14_N8
\AV_CONTROLLER_INST|tmds_enc0[6]~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc0[6]~14_combout\ = (((!\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\ & !\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\)) # (!\VIDEO_CONTROLLER_INST|s_hsync~q\)) # (!\VIDEO_CONTROLLER_INST|s_vsync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|s_vsync~q\,
	datab => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datac => \VIDEO_CONTROLLER_INST|s_hsync~q\,
	datad => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc0[6]~14_combout\);

-- Location: LCCOMB_X14_Y14_N26
\AV_CONTROLLER_INST|tmds_enc0[6]~15\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc0[6]~15_combout\ = (\AV_CONTROLLER_INST|tmds_enc0[2]~9_combout\) # ((\AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\ & \AV_CONTROLLER_INST|tmds_enc0[6]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\,
	datac => \AV_CONTROLLER_INST|tmds_enc0[6]~14_combout\,
	datad => \AV_CONTROLLER_INST|tmds_enc0[2]~9_combout\,
	combout => \AV_CONTROLLER_INST|tmds_enc0[6]~15_combout\);

-- Location: LCCOMB_X14_Y14_N6
\AV_CONTROLLER_INST|tmds_enc0[5]~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc0[5]~13_combout\ = \VIDEO_CONTROLLER_INST|s_vsync~q\ $ (!\VIDEO_CONTROLLER_INST|s_hsync~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|s_vsync~q\,
	datad => \VIDEO_CONTROLLER_INST|s_hsync~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc0[5]~13_combout\);

-- Location: LCCOMB_X14_Y14_N24
\AV_CONTROLLER_INST|tmds_enc0[7]~16\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc0[7]~16_combout\ = (\AV_CONTROLLER_INST|tmds_enc0[0]~4_combout\) # ((\AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\ & ((\AV_CONTROLLER_INST|s_blue~0_combout\) # (\AV_CONTROLLER_INST|tmds_enc0[5]~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|tmds_enc0[0]~4_combout\,
	datab => \AV_CONTROLLER_INST|s_blue~0_combout\,
	datac => \AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\,
	datad => \AV_CONTROLLER_INST|tmds_enc0[5]~13_combout\,
	combout => \AV_CONTROLLER_INST|tmds_enc0[7]~16_combout\);

-- Location: LCCOMB_X14_Y14_N10
\AV_CONTROLLER_INST|tmds_enc0[8]~17\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc0[8]~17_combout\ = (!\VIDEO_CONTROLLER_INST|s_vsync~q\ & (\VIDEO_CONTROLLER_INST|s_hsync~q\ & ((\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\) # (\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VIDEO_CONTROLLER_INST|s_vsync~q\,
	datab => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datac => \VIDEO_CONTROLLER_INST|s_hsync~q\,
	datad => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc0[8]~17_combout\);

-- Location: LCCOMB_X17_Y14_N20
\AV_CONTROLLER_INST|enc0|ENCODED~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|ENCODED~3_combout\ = (\VIDEO_CONTROLLER_INST|vde~q\ & (!\VIDEO_CONTROLLER_INST|c_red\(7))) # (!\VIDEO_CONTROLLER_INST|vde~q\ & ((\VIDEO_CONTROLLER_INST|s_hsync~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|vde~q\,
	datac => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => \VIDEO_CONTROLLER_INST|s_hsync~q\,
	combout => \AV_CONTROLLER_INST|enc0|ENCODED~3_combout\);

-- Location: FF_X17_Y14_N21
\AV_CONTROLLER_INST|enc0|ENCODED[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc0|ENCODED~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc0|ENCODED\(8));

-- Location: LCCOMB_X17_Y14_N22
\AV_CONTROLLER_INST|tmds_enc0[8]~18\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc0[8]~18_combout\ = (\AV_CONTROLLER_INST|tmds_enc0[8]~17_combout\) # ((!\AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\ & \AV_CONTROLLER_INST|enc0|ENCODED\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|tmds_enc0[8]~17_combout\,
	datac => \AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\,
	datad => \AV_CONTROLLER_INST|enc0|ENCODED\(8),
	combout => \AV_CONTROLLER_INST|tmds_enc0[8]~18_combout\);

-- Location: LCCOMB_X17_Y14_N16
\AV_CONTROLLER_INST|enc0|ENCODED[9]~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc0|ENCODED[9]~feeder_combout\ = \AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\,
	combout => \AV_CONTROLLER_INST|enc0|ENCODED[9]~feeder_combout\);

-- Location: FF_X17_Y14_N17
\AV_CONTROLLER_INST|enc0|ENCODED[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc0|ENCODED[9]~feeder_combout\,
	asdata => \AV_CONTROLLER_INST|tmds_enc0[5]~13_combout\,
	sload => \VIDEO_CONTROLLER_INST|ALT_INV_vde~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc0|ENCODED\(9));

-- Location: LCCOMB_X17_Y14_N0
\AV_CONTROLLER_INST|tmds_enc0[9]~19\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc0[9]~19_combout\ = (\AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\ & (!\AV_CONTROLLER_INST|tmds_enc0[8]~17_combout\)) # (!\AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\ & ((\AV_CONTROLLER_INST|enc0|ENCODED\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|tmds_enc0[8]~17_combout\,
	datac => \AV_CONTROLLER_INST|tmds_enc0[1]~5_combout\,
	datad => \AV_CONTROLLER_INST|enc0|ENCODED\(9),
	combout => \AV_CONTROLLER_INST|tmds_enc0[9]~19_combout\);

-- Location: LCCOMB_X14_Y16_N0
\AV_CONTROLLER_INST|enc1|Add16~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add16~0_combout\ = (!\AV_CONTROLLER_INST|enc1|Equal1~0_combout\ & (\AV_CONTROLLER_INST|enc1|dc_bias\(3) $ (!\VIDEO_CONTROLLER_INST|c_red\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|enc1|dc_bias\(3),
	datac => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => \AV_CONTROLLER_INST|enc1|Equal1~0_combout\,
	combout => \AV_CONTROLLER_INST|enc1|Add16~0_combout\);

-- Location: LCCOMB_X15_Y16_N2
\AV_CONTROLLER_INST|enc1|ENCODED~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|ENCODED~5_combout\ = (!\AV_CONTROLLER_INST|enc1|Equal1~0_combout\ & (\VIDEO_CONTROLLER_INST|c_red\(7) $ (\AV_CONTROLLER_INST|enc1|dc_bias\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|c_red\(7),
	datac => \AV_CONTROLLER_INST|enc1|Equal1~0_combout\,
	datad => \AV_CONTROLLER_INST|enc1|dc_bias\(3),
	combout => \AV_CONTROLLER_INST|enc1|ENCODED~5_combout\);

-- Location: LCCOMB_X15_Y16_N20
\AV_CONTROLLER_INST|enc1|Add16~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add16~2_cout\ = CARRY(!\VIDEO_CONTROLLER_INST|c_red\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => VCC,
	cout => \AV_CONTROLLER_INST|enc1|Add16~2_cout\);

-- Location: LCCOMB_X15_Y16_N22
\AV_CONTROLLER_INST|enc1|Add16~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add16~3_combout\ = (\AV_CONTROLLER_INST|enc1|dc_bias\(0) & ((\VIDEO_CONTROLLER_INST|c_red\(7) & (!\AV_CONTROLLER_INST|enc1|Add16~2_cout\)) # (!\VIDEO_CONTROLLER_INST|c_red\(7) & (\AV_CONTROLLER_INST|enc1|Add16~2_cout\ & VCC)))) # 
-- (!\AV_CONTROLLER_INST|enc1|dc_bias\(0) & ((\VIDEO_CONTROLLER_INST|c_red\(7) & ((\AV_CONTROLLER_INST|enc1|Add16~2_cout\) # (GND))) # (!\VIDEO_CONTROLLER_INST|c_red\(7) & (!\AV_CONTROLLER_INST|enc1|Add16~2_cout\))))
-- \AV_CONTROLLER_INST|enc1|Add16~4\ = CARRY((\AV_CONTROLLER_INST|enc1|dc_bias\(0) & (\VIDEO_CONTROLLER_INST|c_red\(7) & !\AV_CONTROLLER_INST|enc1|Add16~2_cout\)) # (!\AV_CONTROLLER_INST|enc1|dc_bias\(0) & ((\VIDEO_CONTROLLER_INST|c_red\(7)) # 
-- (!\AV_CONTROLLER_INST|enc1|Add16~2_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc1|dc_bias\(0),
	datab => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|enc1|Add16~2_cout\,
	combout => \AV_CONTROLLER_INST|enc1|Add16~3_combout\,
	cout => \AV_CONTROLLER_INST|enc1|Add16~4\);

-- Location: LCCOMB_X14_Y16_N10
\AV_CONTROLLER_INST|enc1|Add18~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add18~0_combout\ = (\AV_CONTROLLER_INST|enc1|dc_bias\(0) & ((GND) # (!\VIDEO_CONTROLLER_INST|c_red\(7)))) # (!\AV_CONTROLLER_INST|enc1|dc_bias\(0) & (\VIDEO_CONTROLLER_INST|c_red\(7) $ (GND)))
-- \AV_CONTROLLER_INST|enc1|Add18~1\ = CARRY((\AV_CONTROLLER_INST|enc1|dc_bias\(0)) # (!\VIDEO_CONTROLLER_INST|c_red\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc1|dc_bias\(0),
	datab => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => VCC,
	combout => \AV_CONTROLLER_INST|enc1|Add18~0_combout\,
	cout => \AV_CONTROLLER_INST|enc1|Add18~1\);

-- Location: LCCOMB_X15_Y16_N30
\AV_CONTROLLER_INST|enc1|Add16~14\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add16~14_combout\ = (\AV_CONTROLLER_INST|enc1|Add16~0_combout\ & ((\AV_CONTROLLER_INST|enc1|Add18~0_combout\) # ((\AV_CONTROLLER_INST|enc1|ENCODED~5_combout\ & \AV_CONTROLLER_INST|enc1|Add16~3_combout\)))) # 
-- (!\AV_CONTROLLER_INST|enc1|Add16~0_combout\ & (\AV_CONTROLLER_INST|enc1|ENCODED~5_combout\ & (\AV_CONTROLLER_INST|enc1|Add16~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc1|Add16~0_combout\,
	datab => \AV_CONTROLLER_INST|enc1|ENCODED~5_combout\,
	datac => \AV_CONTROLLER_INST|enc1|Add16~3_combout\,
	datad => \AV_CONTROLLER_INST|enc1|Add18~0_combout\,
	combout => \AV_CONTROLLER_INST|enc1|Add16~14_combout\);

-- Location: LCCOMB_X14_Y16_N6
\AV_CONTROLLER_INST|enc1|Add14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add14~2_combout\ = (!\AV_CONTROLLER_INST|enc1|Equal1~0_combout\ & ((\AV_CONTROLLER_INST|enc1|dc_bias\(3)) # (\VIDEO_CONTROLLER_INST|c_red\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|enc1|dc_bias\(3),
	datac => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => \AV_CONTROLLER_INST|enc1|Equal1~0_combout\,
	combout => \AV_CONTROLLER_INST|enc1|Add14~2_combout\);

-- Location: LCCOMB_X14_Y16_N4
\AV_CONTROLLER_INST|enc1|Add14~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add14~3_combout\ = (\VIDEO_CONTROLLER_INST|c_red\(7) & \AV_CONTROLLER_INST|enc1|Equal1~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => \AV_CONTROLLER_INST|enc1|Equal1~0_combout\,
	combout => \AV_CONTROLLER_INST|enc1|Add14~3_combout\);

-- Location: LCCOMB_X15_Y16_N10
\AV_CONTROLLER_INST|enc1|dc_bias[0]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|dc_bias[0]~5_cout\ = CARRY(\AV_CONTROLLER_INST|enc1|Add14~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|enc1|Add14~3_combout\,
	datad => VCC,
	cout => \AV_CONTROLLER_INST|enc1|dc_bias[0]~5_cout\);

-- Location: LCCOMB_X15_Y16_N12
\AV_CONTROLLER_INST|enc1|dc_bias[0]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|dc_bias[0]~6_combout\ = (\AV_CONTROLLER_INST|enc1|Add16~14_combout\ & ((\AV_CONTROLLER_INST|enc1|Add14~2_combout\ & (\AV_CONTROLLER_INST|enc1|dc_bias[0]~5_cout\ & VCC)) # (!\AV_CONTROLLER_INST|enc1|Add14~2_combout\ & 
-- (!\AV_CONTROLLER_INST|enc1|dc_bias[0]~5_cout\)))) # (!\AV_CONTROLLER_INST|enc1|Add16~14_combout\ & ((\AV_CONTROLLER_INST|enc1|Add14~2_combout\ & (!\AV_CONTROLLER_INST|enc1|dc_bias[0]~5_cout\)) # (!\AV_CONTROLLER_INST|enc1|Add14~2_combout\ & 
-- ((\AV_CONTROLLER_INST|enc1|dc_bias[0]~5_cout\) # (GND)))))
-- \AV_CONTROLLER_INST|enc1|dc_bias[0]~7\ = CARRY((\AV_CONTROLLER_INST|enc1|Add16~14_combout\ & (!\AV_CONTROLLER_INST|enc1|Add14~2_combout\ & !\AV_CONTROLLER_INST|enc1|dc_bias[0]~5_cout\)) # (!\AV_CONTROLLER_INST|enc1|Add16~14_combout\ & 
-- ((!\AV_CONTROLLER_INST|enc1|dc_bias[0]~5_cout\) # (!\AV_CONTROLLER_INST|enc1|Add14~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc1|Add16~14_combout\,
	datab => \AV_CONTROLLER_INST|enc1|Add14~2_combout\,
	datad => VCC,
	cin => \AV_CONTROLLER_INST|enc1|dc_bias[0]~5_cout\,
	combout => \AV_CONTROLLER_INST|enc1|dc_bias[0]~6_combout\,
	cout => \AV_CONTROLLER_INST|enc1|dc_bias[0]~7\);

-- Location: FF_X15_Y16_N13
\AV_CONTROLLER_INST|enc1|dc_bias[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc1|dc_bias[0]~6_combout\,
	sclr => \VIDEO_CONTROLLER_INST|ALT_INV_vde~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc1|dc_bias\(0));

-- Location: LCCOMB_X14_Y16_N8
\AV_CONTROLLER_INST|enc1|Add14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add14~1_combout\ = (\AV_CONTROLLER_INST|enc1|dc_bias\(3) & \VIDEO_CONTROLLER_INST|c_red\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|enc1|dc_bias\(3),
	datac => \VIDEO_CONTROLLER_INST|c_red\(7),
	combout => \AV_CONTROLLER_INST|enc1|Add14~1_combout\);

-- Location: LCCOMB_X14_Y16_N12
\AV_CONTROLLER_INST|enc1|Add18~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add18~2_combout\ = (\AV_CONTROLLER_INST|enc1|dc_bias\(1) & (\AV_CONTROLLER_INST|enc1|Add18~1\ & VCC)) # (!\AV_CONTROLLER_INST|enc1|dc_bias\(1) & (!\AV_CONTROLLER_INST|enc1|Add18~1\))
-- \AV_CONTROLLER_INST|enc1|Add18~3\ = CARRY((!\AV_CONTROLLER_INST|enc1|dc_bias\(1) & !\AV_CONTROLLER_INST|enc1|Add18~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|enc1|dc_bias\(1),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|enc1|Add18~1\,
	combout => \AV_CONTROLLER_INST|enc1|Add18~2_combout\,
	cout => \AV_CONTROLLER_INST|enc1|Add18~3\);

-- Location: LCCOMB_X15_Y16_N24
\AV_CONTROLLER_INST|enc1|Add16~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add16~5_combout\ = ((\AV_CONTROLLER_INST|enc1|dc_bias\(1) $ (\VIDEO_CONTROLLER_INST|c_red\(7) $ (\AV_CONTROLLER_INST|enc1|Add16~4\)))) # (GND)
-- \AV_CONTROLLER_INST|enc1|Add16~6\ = CARRY((\AV_CONTROLLER_INST|enc1|dc_bias\(1) & ((!\AV_CONTROLLER_INST|enc1|Add16~4\) # (!\VIDEO_CONTROLLER_INST|c_red\(7)))) # (!\AV_CONTROLLER_INST|enc1|dc_bias\(1) & (!\VIDEO_CONTROLLER_INST|c_red\(7) & 
-- !\AV_CONTROLLER_INST|enc1|Add16~4\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc1|dc_bias\(1),
	datab => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|enc1|Add16~4\,
	combout => \AV_CONTROLLER_INST|enc1|Add16~5_combout\,
	cout => \AV_CONTROLLER_INST|enc1|Add16~6\);

-- Location: LCCOMB_X15_Y16_N8
\AV_CONTROLLER_INST|enc1|Add16~13\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add16~13_combout\ = (\AV_CONTROLLER_INST|enc1|Add18~2_combout\ & ((\AV_CONTROLLER_INST|enc1|Add16~0_combout\) # ((\AV_CONTROLLER_INST|enc1|ENCODED~5_combout\ & \AV_CONTROLLER_INST|enc1|Add16~5_combout\)))) # 
-- (!\AV_CONTROLLER_INST|enc1|Add18~2_combout\ & (\AV_CONTROLLER_INST|enc1|ENCODED~5_combout\ & ((\AV_CONTROLLER_INST|enc1|Add16~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc1|Add18~2_combout\,
	datab => \AV_CONTROLLER_INST|enc1|ENCODED~5_combout\,
	datac => \AV_CONTROLLER_INST|enc1|Add16~0_combout\,
	datad => \AV_CONTROLLER_INST|enc1|Add16~5_combout\,
	combout => \AV_CONTROLLER_INST|enc1|Add16~13_combout\);

-- Location: LCCOMB_X15_Y16_N14
\AV_CONTROLLER_INST|enc1|dc_bias[1]~8\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|dc_bias[1]~8_combout\ = ((\AV_CONTROLLER_INST|enc1|Add14~1_combout\ $ (\AV_CONTROLLER_INST|enc1|Add16~13_combout\ $ (!\AV_CONTROLLER_INST|enc1|dc_bias[0]~7\)))) # (GND)
-- \AV_CONTROLLER_INST|enc1|dc_bias[1]~9\ = CARRY((\AV_CONTROLLER_INST|enc1|Add14~1_combout\ & ((\AV_CONTROLLER_INST|enc1|Add16~13_combout\) # (!\AV_CONTROLLER_INST|enc1|dc_bias[0]~7\))) # (!\AV_CONTROLLER_INST|enc1|Add14~1_combout\ & 
-- (\AV_CONTROLLER_INST|enc1|Add16~13_combout\ & !\AV_CONTROLLER_INST|enc1|dc_bias[0]~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc1|Add14~1_combout\,
	datab => \AV_CONTROLLER_INST|enc1|Add16~13_combout\,
	datad => VCC,
	cin => \AV_CONTROLLER_INST|enc1|dc_bias[0]~7\,
	combout => \AV_CONTROLLER_INST|enc1|dc_bias[1]~8_combout\,
	cout => \AV_CONTROLLER_INST|enc1|dc_bias[1]~9\);

-- Location: FF_X15_Y16_N15
\AV_CONTROLLER_INST|enc1|dc_bias[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc1|dc_bias[1]~8_combout\,
	sclr => \VIDEO_CONTROLLER_INST|ALT_INV_vde~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc1|dc_bias\(1));

-- Location: LCCOMB_X15_Y16_N26
\AV_CONTROLLER_INST|enc1|Add16~7\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add16~7_combout\ = (\AV_CONTROLLER_INST|enc1|dc_bias\(2) & ((\VIDEO_CONTROLLER_INST|c_red\(7) & (\AV_CONTROLLER_INST|enc1|Add16~6\ & VCC)) # (!\VIDEO_CONTROLLER_INST|c_red\(7) & (!\AV_CONTROLLER_INST|enc1|Add16~6\)))) # 
-- (!\AV_CONTROLLER_INST|enc1|dc_bias\(2) & ((\VIDEO_CONTROLLER_INST|c_red\(7) & (!\AV_CONTROLLER_INST|enc1|Add16~6\)) # (!\VIDEO_CONTROLLER_INST|c_red\(7) & ((\AV_CONTROLLER_INST|enc1|Add16~6\) # (GND)))))
-- \AV_CONTROLLER_INST|enc1|Add16~8\ = CARRY((\AV_CONTROLLER_INST|enc1|dc_bias\(2) & (!\VIDEO_CONTROLLER_INST|c_red\(7) & !\AV_CONTROLLER_INST|enc1|Add16~6\)) # (!\AV_CONTROLLER_INST|enc1|dc_bias\(2) & ((!\AV_CONTROLLER_INST|enc1|Add16~6\) # 
-- (!\VIDEO_CONTROLLER_INST|c_red\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc1|dc_bias\(2),
	datab => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|enc1|Add16~6\,
	combout => \AV_CONTROLLER_INST|enc1|Add16~7_combout\,
	cout => \AV_CONTROLLER_INST|enc1|Add16~8\);

-- Location: LCCOMB_X14_Y16_N14
\AV_CONTROLLER_INST|enc1|Add18~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add18~4_combout\ = (\AV_CONTROLLER_INST|enc1|dc_bias\(2) & ((GND) # (!\AV_CONTROLLER_INST|enc1|Add18~3\))) # (!\AV_CONTROLLER_INST|enc1|dc_bias\(2) & (\AV_CONTROLLER_INST|enc1|Add18~3\ $ (GND)))
-- \AV_CONTROLLER_INST|enc1|Add18~5\ = CARRY((\AV_CONTROLLER_INST|enc1|dc_bias\(2)) # (!\AV_CONTROLLER_INST|enc1|Add18~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|enc1|dc_bias\(2),
	datad => VCC,
	cin => \AV_CONTROLLER_INST|enc1|Add18~3\,
	combout => \AV_CONTROLLER_INST|enc1|Add18~4_combout\,
	cout => \AV_CONTROLLER_INST|enc1|Add18~5\);

-- Location: LCCOMB_X15_Y16_N6
\AV_CONTROLLER_INST|enc1|Add16~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add16~12_combout\ = (\AV_CONTROLLER_INST|enc1|Add16~0_combout\ & ((\AV_CONTROLLER_INST|enc1|Add18~4_combout\) # ((\AV_CONTROLLER_INST|enc1|ENCODED~5_combout\ & \AV_CONTROLLER_INST|enc1|Add16~7_combout\)))) # 
-- (!\AV_CONTROLLER_INST|enc1|Add16~0_combout\ & (\AV_CONTROLLER_INST|enc1|ENCODED~5_combout\ & (\AV_CONTROLLER_INST|enc1|Add16~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc1|Add16~0_combout\,
	datab => \AV_CONTROLLER_INST|enc1|ENCODED~5_combout\,
	datac => \AV_CONTROLLER_INST|enc1|Add16~7_combout\,
	datad => \AV_CONTROLLER_INST|enc1|Add18~4_combout\,
	combout => \AV_CONTROLLER_INST|enc1|Add16~12_combout\);

-- Location: LCCOMB_X15_Y16_N16
\AV_CONTROLLER_INST|enc1|dc_bias[2]~10\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|dc_bias[2]~10_combout\ = (\AV_CONTROLLER_INST|enc1|Add16~12_combout\ & ((\AV_CONTROLLER_INST|enc1|Add14~0_combout\ & (\AV_CONTROLLER_INST|enc1|dc_bias[1]~9\ & VCC)) # (!\AV_CONTROLLER_INST|enc1|Add14~0_combout\ & 
-- (!\AV_CONTROLLER_INST|enc1|dc_bias[1]~9\)))) # (!\AV_CONTROLLER_INST|enc1|Add16~12_combout\ & ((\AV_CONTROLLER_INST|enc1|Add14~0_combout\ & (!\AV_CONTROLLER_INST|enc1|dc_bias[1]~9\)) # (!\AV_CONTROLLER_INST|enc1|Add14~0_combout\ & 
-- ((\AV_CONTROLLER_INST|enc1|dc_bias[1]~9\) # (GND)))))
-- \AV_CONTROLLER_INST|enc1|dc_bias[2]~11\ = CARRY((\AV_CONTROLLER_INST|enc1|Add16~12_combout\ & (!\AV_CONTROLLER_INST|enc1|Add14~0_combout\ & !\AV_CONTROLLER_INST|enc1|dc_bias[1]~9\)) # (!\AV_CONTROLLER_INST|enc1|Add16~12_combout\ & 
-- ((!\AV_CONTROLLER_INST|enc1|dc_bias[1]~9\) # (!\AV_CONTROLLER_INST|enc1|Add14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc1|Add16~12_combout\,
	datab => \AV_CONTROLLER_INST|enc1|Add14~0_combout\,
	datad => VCC,
	cin => \AV_CONTROLLER_INST|enc1|dc_bias[1]~9\,
	combout => \AV_CONTROLLER_INST|enc1|dc_bias[2]~10_combout\,
	cout => \AV_CONTROLLER_INST|enc1|dc_bias[2]~11\);

-- Location: FF_X15_Y16_N17
\AV_CONTROLLER_INST|enc1|dc_bias[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc1|dc_bias[2]~10_combout\,
	sclr => \VIDEO_CONTROLLER_INST|ALT_INV_vde~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc1|dc_bias\(2));

-- Location: LCCOMB_X15_Y16_N4
\AV_CONTROLLER_INST|enc1|Equal1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Equal1~0_combout\ = (!\AV_CONTROLLER_INST|enc1|dc_bias\(0) & (!\AV_CONTROLLER_INST|enc1|dc_bias\(2) & (!\AV_CONTROLLER_INST|enc1|dc_bias\(1) & !\AV_CONTROLLER_INST|enc1|dc_bias\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc1|dc_bias\(0),
	datab => \AV_CONTROLLER_INST|enc1|dc_bias\(2),
	datac => \AV_CONTROLLER_INST|enc1|dc_bias\(1),
	datad => \AV_CONTROLLER_INST|enc1|dc_bias\(3),
	combout => \AV_CONTROLLER_INST|enc1|Equal1~0_combout\);

-- Location: LCCOMB_X14_Y16_N22
\AV_CONTROLLER_INST|enc1|Add14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add14~0_combout\ = (\VIDEO_CONTROLLER_INST|c_red\(7) & ((\AV_CONTROLLER_INST|enc1|Equal1~0_combout\))) # (!\VIDEO_CONTROLLER_INST|c_red\(7) & (!\AV_CONTROLLER_INST|enc1|dc_bias\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|enc1|dc_bias\(3),
	datac => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => \AV_CONTROLLER_INST|enc1|Equal1~0_combout\,
	combout => \AV_CONTROLLER_INST|enc1|Add14~0_combout\);

-- Location: LCCOMB_X14_Y16_N16
\AV_CONTROLLER_INST|enc1|Add18~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add18~6_combout\ = \AV_CONTROLLER_INST|enc1|Add18~5\ $ (!\AV_CONTROLLER_INST|enc1|dc_bias\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \AV_CONTROLLER_INST|enc1|dc_bias\(3),
	cin => \AV_CONTROLLER_INST|enc1|Add18~5\,
	combout => \AV_CONTROLLER_INST|enc1|Add18~6_combout\);

-- Location: LCCOMB_X15_Y16_N28
\AV_CONTROLLER_INST|enc1|Add16~9\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add16~9_combout\ = \VIDEO_CONTROLLER_INST|c_red\(7) $ (\AV_CONTROLLER_INST|enc1|Add16~8\ $ (!\AV_CONTROLLER_INST|enc1|dc_bias\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => \AV_CONTROLLER_INST|enc1|dc_bias\(3),
	cin => \AV_CONTROLLER_INST|enc1|Add16~8\,
	combout => \AV_CONTROLLER_INST|enc1|Add16~9_combout\);

-- Location: LCCOMB_X15_Y16_N0
\AV_CONTROLLER_INST|enc1|Add16~11\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|Add16~11_combout\ = (\AV_CONTROLLER_INST|enc1|Add16~0_combout\ & ((\AV_CONTROLLER_INST|enc1|Add18~6_combout\) # ((\AV_CONTROLLER_INST|enc1|ENCODED~5_combout\ & \AV_CONTROLLER_INST|enc1|Add16~9_combout\)))) # 
-- (!\AV_CONTROLLER_INST|enc1|Add16~0_combout\ & (\AV_CONTROLLER_INST|enc1|ENCODED~5_combout\ & ((\AV_CONTROLLER_INST|enc1|Add16~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc1|Add16~0_combout\,
	datab => \AV_CONTROLLER_INST|enc1|ENCODED~5_combout\,
	datac => \AV_CONTROLLER_INST|enc1|Add18~6_combout\,
	datad => \AV_CONTROLLER_INST|enc1|Add16~9_combout\,
	combout => \AV_CONTROLLER_INST|enc1|Add16~11_combout\);

-- Location: LCCOMB_X15_Y16_N18
\AV_CONTROLLER_INST|enc1|dc_bias[3]~12\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|dc_bias[3]~12_combout\ = \AV_CONTROLLER_INST|enc1|Add14~0_combout\ $ (\AV_CONTROLLER_INST|enc1|dc_bias[2]~11\ $ (!\AV_CONTROLLER_INST|enc1|Add16~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|enc1|Add14~0_combout\,
	datad => \AV_CONTROLLER_INST|enc1|Add16~11_combout\,
	cin => \AV_CONTROLLER_INST|enc1|dc_bias[2]~11\,
	combout => \AV_CONTROLLER_INST|enc1|dc_bias[3]~12_combout\);

-- Location: FF_X15_Y16_N19
\AV_CONTROLLER_INST|enc1|dc_bias[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc1|dc_bias[3]~12_combout\,
	sclr => \VIDEO_CONTROLLER_INST|ALT_INV_vde~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc1|dc_bias\(3));

-- Location: LCCOMB_X11_Y18_N0
\AV_CONTROLLER_INST|enc1|ENCODED~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|ENCODED~0_combout\ = (\AV_CONTROLLER_INST|enc1|dc_bias\(3)) # (!\VIDEO_CONTROLLER_INST|vde~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VIDEO_CONTROLLER_INST|vde~q\,
	datad => \AV_CONTROLLER_INST|enc1|dc_bias\(3),
	combout => \AV_CONTROLLER_INST|enc1|ENCODED~0_combout\);

-- Location: FF_X11_Y18_N1
\AV_CONTROLLER_INST|enc1|ENCODED[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc1|ENCODED~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc1|ENCODED\(0));

-- Location: LCCOMB_X11_Y18_N18
\AV_CONTROLLER_INST|tmds_enc1[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc1[0]~0_combout\ = (\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\) # ((\AV_CONTROLLER_INST|enc1|ENCODED\(0)) # ((\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\) # (\AV_CONTROLLER_INST|state.videoDataGuardBand~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datab => \AV_CONTROLLER_INST|enc1|ENCODED\(0),
	datac => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datad => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc1[0]~0_combout\);

-- Location: LCCOMB_X11_Y18_N28
\AV_CONTROLLER_INST|enc1|ENCODED~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|ENCODED~1_combout\ = (\VIDEO_CONTROLLER_INST|vde~q\ & \AV_CONTROLLER_INST|enc1|dc_bias\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VIDEO_CONTROLLER_INST|vde~q\,
	datad => \AV_CONTROLLER_INST|enc1|dc_bias\(3),
	combout => \AV_CONTROLLER_INST|enc1|ENCODED~1_combout\);

-- Location: FF_X11_Y18_N29
\AV_CONTROLLER_INST|enc1|ENCODED[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc1|ENCODED~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc1|ENCODED\(2));

-- Location: LCCOMB_X11_Y18_N2
\AV_CONTROLLER_INST|tmds_enc1[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc1[2]~1_combout\ = (!\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\ & (\AV_CONTROLLER_INST|enc1|ENCODED\(2) & (!\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\ & !\AV_CONTROLLER_INST|state.videoDataGuardBand~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datab => \AV_CONTROLLER_INST|enc1|ENCODED\(2),
	datac => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datad => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc1[2]~1_combout\);

-- Location: LCCOMB_X11_Y18_N12
\AV_CONTROLLER_INST|tmds_enc1[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc1[3]~2_combout\ = (!\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\ & (\AV_CONTROLLER_INST|enc1|ENCODED\(0) & (!\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\ & !\AV_CONTROLLER_INST|state.videoDataGuardBand~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datab => \AV_CONTROLLER_INST|enc1|ENCODED\(0),
	datac => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datad => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc1[3]~2_combout\);

-- Location: LCCOMB_X11_Y18_N26
\AV_CONTROLLER_INST|tmds_enc1[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc1[4]~3_combout\ = (\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\) # ((\AV_CONTROLLER_INST|enc1|ENCODED\(2)) # ((\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\) # (\AV_CONTROLLER_INST|state.videoDataGuardBand~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datab => \AV_CONTROLLER_INST|enc1|ENCODED\(2),
	datac => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datad => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc1[4]~3_combout\);

-- Location: LCCOMB_X11_Y18_N8
\AV_CONTROLLER_INST|enc1|ENCODED~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|ENCODED~2_combout\ = (\VIDEO_CONTROLLER_INST|c_red\(7) $ (((!\AV_CONTROLLER_INST|enc1|Equal1~0_combout\ & \AV_CONTROLLER_INST|enc1|dc_bias\(3))))) # (!\VIDEO_CONTROLLER_INST|vde~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc1|Equal1~0_combout\,
	datab => \VIDEO_CONTROLLER_INST|vde~q\,
	datac => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => \AV_CONTROLLER_INST|enc1|dc_bias\(3),
	combout => \AV_CONTROLLER_INST|enc1|ENCODED~2_combout\);

-- Location: FF_X11_Y18_N9
\AV_CONTROLLER_INST|enc1|ENCODED[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc1|ENCODED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc1|ENCODED\(7));

-- Location: LCCOMB_X11_Y18_N10
\AV_CONTROLLER_INST|tmds_enc1[7]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc1[7]~4_combout\ = (!\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\ & (\AV_CONTROLLER_INST|enc1|ENCODED\(7) & (!\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\ & !\AV_CONTROLLER_INST|state.videoDataGuardBand~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datab => \AV_CONTROLLER_INST|enc1|ENCODED\(7),
	datac => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datad => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc1[7]~4_combout\);

-- Location: LCCOMB_X15_Y14_N28
\AV_CONTROLLER_INST|enc1|ENCODED~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|ENCODED~3_combout\ = (!\VIDEO_CONTROLLER_INST|c_red\(7) & \VIDEO_CONTROLLER_INST|vde~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => \VIDEO_CONTROLLER_INST|vde~q\,
	combout => \AV_CONTROLLER_INST|enc1|ENCODED~3_combout\);

-- Location: FF_X15_Y14_N29
\AV_CONTROLLER_INST|enc1|ENCODED[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc1|ENCODED~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc1|ENCODED\(8));

-- Location: LCCOMB_X17_Y14_N26
\AV_CONTROLLER_INST|tmds_enc1[8]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc1[8]~5_combout\ = (\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\) # ((\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\) # ((\AV_CONTROLLER_INST|state.videoDataGuardBand~q\) # (\AV_CONTROLLER_INST|enc1|ENCODED\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datab => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datac => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	datad => \AV_CONTROLLER_INST|enc1|ENCODED\(8),
	combout => \AV_CONTROLLER_INST|tmds_enc1[8]~5_combout\);

-- Location: LCCOMB_X11_Y18_N4
\AV_CONTROLLER_INST|enc1|ENCODED~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc1|ENCODED~4_combout\ = (\VIDEO_CONTROLLER_INST|vde~q\ & (\VIDEO_CONTROLLER_INST|c_red\(7) $ (((!\AV_CONTROLLER_INST|enc1|Equal1~0_combout\ & \AV_CONTROLLER_INST|enc1|dc_bias\(3))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|enc1|Equal1~0_combout\,
	datab => \VIDEO_CONTROLLER_INST|vde~q\,
	datac => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => \AV_CONTROLLER_INST|enc1|dc_bias\(3),
	combout => \AV_CONTROLLER_INST|enc1|ENCODED~4_combout\);

-- Location: FF_X11_Y18_N5
\AV_CONTROLLER_INST|enc1|ENCODED[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc1|ENCODED~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc1|ENCODED\(9));

-- Location: LCCOMB_X11_Y18_N22
\AV_CONTROLLER_INST|tmds_enc1[9]~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc1[9]~6_combout\ = (!\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\ & (\AV_CONTROLLER_INST|enc1|ENCODED\(9) & (!\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\ & !\AV_CONTROLLER_INST|state.videoDataGuardBand~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datab => \AV_CONTROLLER_INST|enc1|ENCODED\(9),
	datac => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datad => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc1[9]~6_combout\);

-- Location: LCCOMB_X18_Y13_N6
\AV_CONTROLLER_INST|ctl32[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|ctl32[0]~0_combout\ = (\reset~input_o\ & (!\AV_CONTROLLER_INST|state.controlData~q\ & ((\AV_CONTROLLER_INST|process_0~5_combout\) # (\AV_CONTROLLER_INST|process_0~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \AV_CONTROLLER_INST|state.controlData~q\,
	datac => \AV_CONTROLLER_INST|process_0~5_combout\,
	datad => \AV_CONTROLLER_INST|process_0~7_combout\,
	combout => \AV_CONTROLLER_INST|ctl32[0]~0_combout\);

-- Location: LCCOMB_X18_Y13_N4
\AV_CONTROLLER_INST|ctl32[0]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|ctl32[0]~1_combout\ = (\AV_CONTROLLER_INST|ctl32[0]~0_combout\ & (\AV_CONTROLLER_INST|process_0~7_combout\)) # (!\AV_CONTROLLER_INST|ctl32[0]~0_combout\ & ((\AV_CONTROLLER_INST|ctl32\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \AV_CONTROLLER_INST|process_0~7_combout\,
	datac => \AV_CONTROLLER_INST|ctl32\(0),
	datad => \AV_CONTROLLER_INST|ctl32[0]~0_combout\,
	combout => \AV_CONTROLLER_INST|ctl32[0]~1_combout\);

-- Location: FF_X18_Y13_N5
\AV_CONTROLLER_INST|ctl32[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|ctl32[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|ctl32\(0));

-- Location: LCCOMB_X15_Y14_N2
\AV_CONTROLLER_INST|enc2|ENCODED~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc2|ENCODED~0_combout\ = (\VIDEO_CONTROLLER_INST|vde~q\ & (\AV_CONTROLLER_INST|enc0|dc_bias\(3))) # (!\VIDEO_CONTROLLER_INST|vde~q\ & ((\AV_CONTROLLER_INST|ctl32\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|vde~q\,
	datac => \AV_CONTROLLER_INST|enc0|dc_bias\(3),
	datad => \AV_CONTROLLER_INST|ctl32\(0),
	combout => \AV_CONTROLLER_INST|enc2|ENCODED~0_combout\);

-- Location: FF_X15_Y14_N3
\AV_CONTROLLER_INST|enc2|ENCODED[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc2|ENCODED~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc2|ENCODED\(0));

-- Location: LCCOMB_X11_Y18_N24
\AV_CONTROLLER_INST|tmds_enc2[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc2[0]~0_combout\ = (!\AV_CONTROLLER_INST|state.videoDataGuardBand~q\ & ((\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\) # ((\AV_CONTROLLER_INST|enc2|ENCODED\(0)) # (\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datab => \AV_CONTROLLER_INST|enc2|ENCODED\(0),
	datac => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datad => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc2[0]~0_combout\);

-- Location: LCCOMB_X15_Y14_N0
\AV_CONTROLLER_INST|enc2|ENCODED~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc2|ENCODED~1_combout\ = (\VIDEO_CONTROLLER_INST|vde~q\ & (\AV_CONTROLLER_INST|enc0|dc_bias\(3))) # (!\VIDEO_CONTROLLER_INST|vde~q\ & ((!\AV_CONTROLLER_INST|ctl32\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|vde~q\,
	datac => \AV_CONTROLLER_INST|enc0|dc_bias\(3),
	datad => \AV_CONTROLLER_INST|ctl32\(0),
	combout => \AV_CONTROLLER_INST|enc2|ENCODED~1_combout\);

-- Location: FF_X15_Y14_N1
\AV_CONTROLLER_INST|enc2|ENCODED[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc2|ENCODED~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc2|ENCODED\(2));

-- Location: LCCOMB_X11_Y18_N6
\AV_CONTROLLER_INST|tmds_enc2[2]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc2[2]~1_combout\ = (\AV_CONTROLLER_INST|state.videoDataGuardBand~q\) # ((!\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\ & (\AV_CONTROLLER_INST|enc2|ENCODED\(2) & !\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datab => \AV_CONTROLLER_INST|enc2|ENCODED\(2),
	datac => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datad => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc2[2]~1_combout\);

-- Location: LCCOMB_X11_Y18_N20
\AV_CONTROLLER_INST|tmds_enc2[3]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc2[3]~2_combout\ = (\AV_CONTROLLER_INST|state.videoDataGuardBand~q\) # ((!\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\ & (\AV_CONTROLLER_INST|enc2|ENCODED\(0) & !\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datab => \AV_CONTROLLER_INST|enc2|ENCODED\(0),
	datac => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datad => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc2[3]~2_combout\);

-- Location: LCCOMB_X11_Y18_N30
\AV_CONTROLLER_INST|tmds_enc2[4]~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc2[4]~3_combout\ = (!\AV_CONTROLLER_INST|state.videoDataGuardBand~q\ & ((\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\) # ((\AV_CONTROLLER_INST|enc2|ENCODED\(2)) # (\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datab => \AV_CONTROLLER_INST|enc2|ENCODED\(2),
	datac => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datad => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc2[4]~3_combout\);

-- Location: LCCOMB_X15_Y14_N14
\AV_CONTROLLER_INST|enc2|ENCODED~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc2|ENCODED~2_combout\ = (\VIDEO_CONTROLLER_INST|vde~q\ & (!\VIDEO_CONTROLLER_INST|c_red\(7))) # (!\VIDEO_CONTROLLER_INST|vde~q\ & ((!\AV_CONTROLLER_INST|ctl32\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|vde~q\,
	datac => \VIDEO_CONTROLLER_INST|c_red\(7),
	datad => \AV_CONTROLLER_INST|ctl32\(0),
	combout => \AV_CONTROLLER_INST|enc2|ENCODED~2_combout\);

-- Location: FF_X15_Y14_N15
\AV_CONTROLLER_INST|enc2|ENCODED[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc2|ENCODED~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc2|ENCODED\(8));

-- Location: LCCOMB_X12_Y14_N16
\AV_CONTROLLER_INST|tmds_enc2[8]~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc2[8]~4_combout\ = (!\AV_CONTROLLER_INST|state.videoDataGuardBand~q\ & ((\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\) # ((\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\) # (\AV_CONTROLLER_INST|enc2|ENCODED\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datab => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datac => \AV_CONTROLLER_INST|enc2|ENCODED\(8),
	datad => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc2[8]~4_combout\);

-- Location: LCCOMB_X15_Y14_N10
\AV_CONTROLLER_INST|enc2|ENCODED~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|enc2|ENCODED~3_combout\ = (\VIDEO_CONTROLLER_INST|vde~q\ & (\AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\)) # (!\VIDEO_CONTROLLER_INST|vde~q\ & ((!\AV_CONTROLLER_INST|ctl32\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VIDEO_CONTROLLER_INST|vde~q\,
	datac => \AV_CONTROLLER_INST|enc0|ENCODED[9]~0_combout\,
	datad => \AV_CONTROLLER_INST|ctl32\(0),
	combout => \AV_CONTROLLER_INST|enc2|ENCODED~3_combout\);

-- Location: FF_X15_Y14_N11
\AV_CONTROLLER_INST|enc2|ENCODED[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk_pixel~inputclkctrl_outclk\,
	d => \AV_CONTROLLER_INST|enc2|ENCODED~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \AV_CONTROLLER_INST|enc2|ENCODED\(9));

-- Location: LCCOMB_X11_Y18_N16
\AV_CONTROLLER_INST|tmds_enc2[9]~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \AV_CONTROLLER_INST|tmds_enc2[9]~5_combout\ = (\AV_CONTROLLER_INST|state.videoDataGuardBand~q\) # ((!\AV_CONTROLLER_INST|state.dataIslandPreGuard~q\ & (\AV_CONTROLLER_INST|enc2|ENCODED\(9) & !\AV_CONTROLLER_INST|state.dataIslandPostGuard~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \AV_CONTROLLER_INST|state.dataIslandPreGuard~q\,
	datab => \AV_CONTROLLER_INST|enc2|ENCODED\(9),
	datac => \AV_CONTROLLER_INST|state.dataIslandPostGuard~q\,
	datad => \AV_CONTROLLER_INST|state.videoDataGuardBand~q\,
	combout => \AV_CONTROLLER_INST|tmds_enc2[9]~5_combout\);

-- Location: UNVM_X0_Y11_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_offset => -1,
	is_compressed_image => "false",
	is_dual_boot => "false",
	is_eram_skip => "false",
	max_ufm_valid_addr => -1,
	max_valid_addr => -1,
	min_ufm_valid_addr => -1,
	min_valid_addr => -1,
	part_name => "quartus_created_unvm",
	reserve_block => "true")
-- pragma translate_on
PORT MAP (
	nosc_ena => \~QUARTUS_CREATED_GND~I_combout\,
	xe_ye => \~QUARTUS_CREATED_GND~I_combout\,
	se => \~QUARTUS_CREATED_GND~I_combout\,
	busy => \~QUARTUS_CREATED_UNVM~~busy\);

-- Location: ADCBLOCK_X10_Y24_N0
\~QUARTUS_CREATED_ADC1~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 1,
	prescalar => 0,
	pwd => 1,
	refsel => 0,
	reserve_block => "true",
	testbits => 66,
	tsclkdiv => 1,
	tsclksel => 0)
-- pragma translate_on
PORT MAP (
	soc => \~QUARTUS_CREATED_GND~I_combout\,
	usr_pwd => VCC,
	tsen => \~QUARTUS_CREATED_GND~I_combout\,
	chsel => \~QUARTUS_CREATED_ADC1~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC1~~eoc\);

ww_enc0(0) <= \enc0[0]~output_o\;

ww_enc0(1) <= \enc0[1]~output_o\;

ww_enc0(2) <= \enc0[2]~output_o\;

ww_enc0(3) <= \enc0[3]~output_o\;

ww_enc0(4) <= \enc0[4]~output_o\;

ww_enc0(5) <= \enc0[5]~output_o\;

ww_enc0(6) <= \enc0[6]~output_o\;

ww_enc0(7) <= \enc0[7]~output_o\;

ww_enc0(8) <= \enc0[8]~output_o\;

ww_enc0(9) <= \enc0[9]~output_o\;

ww_enc1(0) <= \enc1[0]~output_o\;

ww_enc1(1) <= \enc1[1]~output_o\;

ww_enc1(2) <= \enc1[2]~output_o\;

ww_enc1(3) <= \enc1[3]~output_o\;

ww_enc1(4) <= \enc1[4]~output_o\;

ww_enc1(5) <= \enc1[5]~output_o\;

ww_enc1(6) <= \enc1[6]~output_o\;

ww_enc1(7) <= \enc1[7]~output_o\;

ww_enc1(8) <= \enc1[8]~output_o\;

ww_enc1(9) <= \enc1[9]~output_o\;

ww_enc2(0) <= \enc2[0]~output_o\;

ww_enc2(1) <= \enc2[1]~output_o\;

ww_enc2(2) <= \enc2[2]~output_o\;

ww_enc2(3) <= \enc2[3]~output_o\;

ww_enc2(4) <= \enc2[4]~output_o\;

ww_enc2(5) <= \enc2[5]~output_o\;

ww_enc2(6) <= \enc2[6]~output_o\;

ww_enc2(7) <= \enc2[7]~output_o\;

ww_enc2(8) <= \enc2[8]~output_o\;

ww_enc2(9) <= \enc2[9]~output_o\;
END structure;


