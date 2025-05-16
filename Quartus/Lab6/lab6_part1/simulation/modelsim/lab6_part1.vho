-- Copyright (C) 2023  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 22.1std.1 Build 917 02/14/2023 SC Lite Edition"

-- DATE "04/10/2025 02:24:33"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
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
-- ~ALTERA_TCK~	=>  Location: PIN_G2,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDI~	=>  Location: PIN_L4,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_TDO~	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_CONFIG_SEL~	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCONFIG~	=>  Location: PIN_H9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_nSTATUS~	=>  Location: PIN_G9,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default
-- ~ALTERA_CONF_DONE~	=>  Location: PIN_F8,	 I/O Standard: 2.5 V Schmitt Trigger,	 Current Strength: Default


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

ENTITY 	lab6_part1 IS
    PORT (
	D0 : OUT std_logic;
	Q0 : OUT std_logic;
	Reset_L : IN std_logic;
	CLK : IN std_logic;
	IROUT : OUT std_logic_vector(1 DOWNTO 0);
	IR_LD : IN std_logic;
	IR : IN std_logic_vector(1 DOWNTO 0);
	COUT : OUT std_logic;
	CIN : IN std_logic;
	INPUT : IN std_logic_vector(3 DOWNTO 0);
	MSA : OUT std_logic_vector(1 DOWNTO 0);
	MSB : OUT std_logic_vector(1 DOWNTO 0);
	MSC : OUT std_logic_vector(2 DOWNTO 0);
	A : OUT std_logic_vector(6 DOWNTO 0);
	B : OUT std_logic_vector(6 DOWNTO 0);
	C : OUT std_logic_vector(6 DOWNTO 0);
	MUXA : OUT std_logic_vector(3 DOWNTO 0);
	MUXB : OUT std_logic_vector(3 DOWNTO 0);
	OUTPUT : OUT std_logic_vector(3 DOWNTO 0);
	REGA : OUT std_logic_vector(3 DOWNTO 0);
	REGAandB : OUT std_logic_vector(3 DOWNTO 0);
	REGALeft : OUT std_logic_vector(3 DOWNTO 0);
	REGANOT : OUT std_logic_vector(3 DOWNTO 0);
	REGAorB : OUT std_logic_vector(3 DOWNTO 0);
	REGARight : OUT std_logic_vector(3 DOWNTO 0);
	REGAsumB : OUT std_logic_vector(3 DOWNTO 0);
	REGB : OUT std_logic_vector(3 DOWNTO 0)
	);
END lab6_part1;

-- Design Ports Information
-- D0	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[1]	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUT	=>  Location: PIN_L14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[0]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[1]	=>  Location: PIN_D21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[0]	=>  Location: PIN_C21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[2]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[1]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_M18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_M15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_G20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_K21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_J21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_K22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXA[3]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXA[2]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXA[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXA[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXB[3]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXB[2]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXB[1]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXB[0]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_G22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[3]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[1]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[0]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAandB[3]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAandB[2]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAandB[1]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAandB[0]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGALeft[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGALeft[2]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGALeft[1]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGALeft[0]	=>  Location: PIN_V18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGANOT[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGANOT[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGANOT[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGANOT[0]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAorB[3]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAorB[2]	=>  Location: PIN_L20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAorB[1]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAorB[0]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGARight[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGARight[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGARight[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGARight[0]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAsumB[3]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAsumB[2]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAsumB[1]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAsumB[0]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[3]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[2]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[1]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[0]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset_L	=>  Location: PIN_M9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR_LD	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IR[0]	=>  Location: PIN_M14,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab6_part1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_Reset_L : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_IROUT : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_IR_LD : std_logic;
SIGNAL ww_IR : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_COUT : std_logic;
SIGNAL ww_CIN : std_logic;
SIGNAL ww_INPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MSA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_MUXA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MUXB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGAandB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGALeft : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGANOT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGAorB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGARight : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGAsumB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGB : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \Reset_L~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \D0~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \IROUT[1]~output_o\ : std_logic;
SIGNAL \IROUT[0]~output_o\ : std_logic;
SIGNAL \COUT~output_o\ : std_logic;
SIGNAL \MSA[1]~output_o\ : std_logic;
SIGNAL \MSA[0]~output_o\ : std_logic;
SIGNAL \MSB[1]~output_o\ : std_logic;
SIGNAL \MSB[0]~output_o\ : std_logic;
SIGNAL \MSC[2]~output_o\ : std_logic;
SIGNAL \MSC[1]~output_o\ : std_logic;
SIGNAL \MSC[0]~output_o\ : std_logic;
SIGNAL \A[6]~output_o\ : std_logic;
SIGNAL \A[5]~output_o\ : std_logic;
SIGNAL \A[4]~output_o\ : std_logic;
SIGNAL \A[3]~output_o\ : std_logic;
SIGNAL \A[2]~output_o\ : std_logic;
SIGNAL \A[1]~output_o\ : std_logic;
SIGNAL \A[0]~output_o\ : std_logic;
SIGNAL \B[6]~output_o\ : std_logic;
SIGNAL \B[5]~output_o\ : std_logic;
SIGNAL \B[4]~output_o\ : std_logic;
SIGNAL \B[3]~output_o\ : std_logic;
SIGNAL \B[2]~output_o\ : std_logic;
SIGNAL \B[1]~output_o\ : std_logic;
SIGNAL \B[0]~output_o\ : std_logic;
SIGNAL \C[6]~output_o\ : std_logic;
SIGNAL \C[5]~output_o\ : std_logic;
SIGNAL \C[4]~output_o\ : std_logic;
SIGNAL \C[3]~output_o\ : std_logic;
SIGNAL \C[2]~output_o\ : std_logic;
SIGNAL \C[1]~output_o\ : std_logic;
SIGNAL \C[0]~output_o\ : std_logic;
SIGNAL \MUXA[3]~output_o\ : std_logic;
SIGNAL \MUXA[2]~output_o\ : std_logic;
SIGNAL \MUXA[1]~output_o\ : std_logic;
SIGNAL \MUXA[0]~output_o\ : std_logic;
SIGNAL \MUXB[3]~output_o\ : std_logic;
SIGNAL \MUXB[2]~output_o\ : std_logic;
SIGNAL \MUXB[1]~output_o\ : std_logic;
SIGNAL \MUXB[0]~output_o\ : std_logic;
SIGNAL \OUTPUT[3]~output_o\ : std_logic;
SIGNAL \OUTPUT[2]~output_o\ : std_logic;
SIGNAL \OUTPUT[1]~output_o\ : std_logic;
SIGNAL \OUTPUT[0]~output_o\ : std_logic;
SIGNAL \REGA[3]~output_o\ : std_logic;
SIGNAL \REGA[2]~output_o\ : std_logic;
SIGNAL \REGA[1]~output_o\ : std_logic;
SIGNAL \REGA[0]~output_o\ : std_logic;
SIGNAL \REGAandB[3]~output_o\ : std_logic;
SIGNAL \REGAandB[2]~output_o\ : std_logic;
SIGNAL \REGAandB[1]~output_o\ : std_logic;
SIGNAL \REGAandB[0]~output_o\ : std_logic;
SIGNAL \REGALeft[3]~output_o\ : std_logic;
SIGNAL \REGALeft[2]~output_o\ : std_logic;
SIGNAL \REGALeft[1]~output_o\ : std_logic;
SIGNAL \REGALeft[0]~output_o\ : std_logic;
SIGNAL \REGANOT[3]~output_o\ : std_logic;
SIGNAL \REGANOT[2]~output_o\ : std_logic;
SIGNAL \REGANOT[1]~output_o\ : std_logic;
SIGNAL \REGANOT[0]~output_o\ : std_logic;
SIGNAL \REGAorB[3]~output_o\ : std_logic;
SIGNAL \REGAorB[2]~output_o\ : std_logic;
SIGNAL \REGAorB[1]~output_o\ : std_logic;
SIGNAL \REGAorB[0]~output_o\ : std_logic;
SIGNAL \REGARight[3]~output_o\ : std_logic;
SIGNAL \REGARight[2]~output_o\ : std_logic;
SIGNAL \REGARight[1]~output_o\ : std_logic;
SIGNAL \REGARight[0]~output_o\ : std_logic;
SIGNAL \REGAsumB[3]~output_o\ : std_logic;
SIGNAL \REGAsumB[2]~output_o\ : std_logic;
SIGNAL \REGAsumB[1]~output_o\ : std_logic;
SIGNAL \REGAsumB[0]~output_o\ : std_logic;
SIGNAL \REGB[3]~output_o\ : std_logic;
SIGNAL \REGB[2]~output_o\ : std_logic;
SIGNAL \REGB[1]~output_o\ : std_logic;
SIGNAL \REGB[0]~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst6~0_combout\ : std_logic;
SIGNAL \Reset_L~input_o\ : std_logic;
SIGNAL \Reset_L~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst6~q\ : std_logic;
SIGNAL \IR[1]~input_o\ : std_logic;
SIGNAL \inst|inst3~feeder_combout\ : std_logic;
SIGNAL \IR_LD~input_o\ : std_logic;
SIGNAL \inst|inst3~q\ : std_logic;
SIGNAL \IR[0]~input_o\ : std_logic;
SIGNAL \inst|inst1~feeder_combout\ : std_logic;
SIGNAL \inst|inst1~q\ : std_logic;
SIGNAL \INPUT[3]~input_o\ : std_logic;
SIGNAL \inst10|inst8|10~0_combout\ : std_logic;
SIGNAL \INPUT[2]~input_o\ : std_logic;
SIGNAL \INPUT[1]~input_o\ : std_logic;
SIGNAL \inst10|inst9|10~0_combout\ : std_logic;
SIGNAL \inst10|inst16~q\ : std_logic;
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \inst10|inst33|sub|76~0_combout\ : std_logic;
SIGNAL \INPUT[0]~input_o\ : std_logic;
SIGNAL \inst10|inst|9~0_combout\ : std_logic;
SIGNAL \inst10|inst|9~1_combout\ : std_logic;
SIGNAL \inst10|inst11~q\ : std_logic;
SIGNAL \inst10|inst9|9~0_combout\ : std_logic;
SIGNAL \inst10|inst15~q\ : std_logic;
SIGNAL \inst10|inst33|sub|104~0_combout\ : std_logic;
SIGNAL \inst10|inst33|sub|78~combout\ : std_logic;
SIGNAL \inst10|inst|10~2_combout\ : std_logic;
SIGNAL \inst10|inst|10~3_combout\ : std_logic;
SIGNAL \inst10|inst12~q\ : std_logic;
SIGNAL \inst10|inst10|9~0_combout\ : std_logic;
SIGNAL \inst10|inst17~q\ : std_logic;
SIGNAL \inst10|inst33|sub|80~0_combout\ : std_logic;
SIGNAL \inst10|inst33|sub|80~combout\ : std_logic;
SIGNAL \inst10|inst8|9~2_combout\ : std_logic;
SIGNAL \inst10|inst8|9~3_combout\ : std_logic;
SIGNAL \inst10|inst13~q\ : std_logic;
SIGNAL \inst10|inst27~combout\ : std_logic;
SIGNAL \inst10|inst10|10~0_combout\ : std_logic;
SIGNAL \inst10|inst18~q\ : std_logic;
SIGNAL \inst10|inst31~combout\ : std_logic;
SIGNAL \inst10|inst33|sub|106~0_combout\ : std_logic;
SIGNAL \inst10|inst33|sub|82~combout\ : std_logic;
SIGNAL \inst10|inst8|10~1_combout\ : std_logic;
SIGNAL \inst10|inst14~q\ : std_logic;
SIGNAL \inst10|inst33|sub|107~0_combout\ : std_logic;
SIGNAL \inst5|MSC[1]~0_combout\ : std_logic;
SIGNAL \inst10|inst39|inst17~0_combout\ : std_logic;
SIGNAL \inst10|inst39|boom2~0_combout\ : std_logic;
SIGNAL \inst10|inst39|boom1~0_combout\ : std_logic;
SIGNAL \inst10|inst39|boom~0_combout\ : std_logic;
SIGNAL \inst10|inst39|boom3~0_combout\ : std_logic;
SIGNAL \inst10|inst39|inst50~0_combout\ : std_logic;
SIGNAL \inst10|inst39|BOOF~0_combout\ : std_logic;
SIGNAL \inst10|inst40|inst17~0_combout\ : std_logic;
SIGNAL \inst10|inst40|boom2~0_combout\ : std_logic;
SIGNAL \inst10|inst40|boom1~0_combout\ : std_logic;
SIGNAL \inst10|inst40|boom~0_combout\ : std_logic;
SIGNAL \inst10|inst40|boom3~0_combout\ : std_logic;
SIGNAL \inst10|inst40|inst50~0_combout\ : std_logic;
SIGNAL \inst10|inst40|BOOF~0_combout\ : std_logic;
SIGNAL \inst10|inst4|sub|81~0_combout\ : std_logic;
SIGNAL \inst10|inst4|sub|81~1_combout\ : std_logic;
SIGNAL \inst10|inst7|sub|81~0_combout\ : std_logic;
SIGNAL \inst10|inst7|sub|81~1_combout\ : std_logic;
SIGNAL \inst10|inst23|sub|81~0_combout\ : std_logic;
SIGNAL \inst10|inst24|sub|81~0_combout\ : std_logic;
SIGNAL \inst10|inst24|sub|81~1_combout\ : std_logic;
SIGNAL \inst10|inst41|inst17~0_combout\ : std_logic;
SIGNAL \inst10|inst41|boom2~0_combout\ : std_logic;
SIGNAL \inst10|inst41|boom1~0_combout\ : std_logic;
SIGNAL \inst10|inst41|boom~0_combout\ : std_logic;
SIGNAL \inst10|inst41|boom3~0_combout\ : std_logic;
SIGNAL \inst10|inst41|inst50~0_combout\ : std_logic;
SIGNAL \inst10|inst41|BOOF~0_combout\ : std_logic;
SIGNAL \inst10|inst28~combout\ : std_logic;
SIGNAL \inst10|inst26~combout\ : std_logic;
SIGNAL \inst10|inst25~combout\ : std_logic;
SIGNAL \inst10|inst32~combout\ : std_logic;
SIGNAL \inst10|inst30~combout\ : std_logic;
SIGNAL \inst10|inst29~combout\ : std_logic;
SIGNAL \inst5|MSA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|MSB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst10|ALT_INV_inst13~q\ : std_logic;
SIGNAL \inst10|inst39|ALT_INV_inst50~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_MSB\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \inst10|inst40|ALT_INV_inst50~0_combout\ : std_logic;
SIGNAL \inst10|inst41|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst10|inst41|ALT_INV_inst50~0_combout\ : std_logic;
SIGNAL \inst10|inst41|ALT_INV_BOOF~0_combout\ : std_logic;
SIGNAL \inst10|inst40|ALT_INV_BOOF~0_combout\ : std_logic;
SIGNAL \inst10|inst39|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_inst14~q\ : std_logic;
SIGNAL \inst10|inst39|ALT_INV_BOOF~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst10|inst40|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst10|ALT_INV_inst11~q\ : std_logic;
SIGNAL \ALT_INV_inst6~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

D0 <= ww_D0;
Q0 <= ww_Q0;
ww_Reset_L <= Reset_L;
ww_CLK <= CLK;
IROUT <= ww_IROUT;
ww_IR_LD <= IR_LD;
ww_IR <= IR;
COUT <= ww_COUT;
ww_CIN <= CIN;
ww_INPUT <= INPUT;
MSA <= ww_MSA;
MSB <= ww_MSB;
MSC <= ww_MSC;
A <= ww_A;
B <= ww_B;
C <= ww_C;
MUXA <= ww_MUXA;
MUXB <= ww_MUXB;
OUTPUT <= ww_OUTPUT;
REGA <= ww_REGA;
REGAandB <= ww_REGAandB;
REGALeft <= ww_REGALeft;
REGANOT <= ww_REGANOT;
REGAorB <= ww_REGAorB;
REGARight <= ww_REGARight;
REGAsumB <= ww_REGAsumB;
REGB <= ww_REGB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\Reset_L~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Reset_L~input_o\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst10|ALT_INV_inst13~q\ <= NOT \inst10|inst13~q\;
\inst10|inst39|ALT_INV_inst50~0_combout\ <= NOT \inst10|inst39|inst50~0_combout\;
\inst5|ALT_INV_MSB\(0) <= NOT \inst5|MSB\(0);
\inst10|inst40|ALT_INV_inst50~0_combout\ <= NOT \inst10|inst40|inst50~0_combout\;
\inst10|inst41|ALT_INV_inst17~0_combout\ <= NOT \inst10|inst41|inst17~0_combout\;
\inst10|inst41|ALT_INV_inst50~0_combout\ <= NOT \inst10|inst41|inst50~0_combout\;
\inst10|inst41|ALT_INV_BOOF~0_combout\ <= NOT \inst10|inst41|BOOF~0_combout\;
\inst10|inst40|ALT_INV_BOOF~0_combout\ <= NOT \inst10|inst40|BOOF~0_combout\;
\inst10|inst39|ALT_INV_inst17~0_combout\ <= NOT \inst10|inst39|inst17~0_combout\;
\inst10|ALT_INV_inst14~q\ <= NOT \inst10|inst14~q\;
\inst10|inst39|ALT_INV_BOOF~0_combout\ <= NOT \inst10|inst39|BOOF~0_combout\;
\inst10|ALT_INV_inst12~q\ <= NOT \inst10|inst12~q\;
\inst10|inst40|ALT_INV_inst17~0_combout\ <= NOT \inst10|inst40|inst17~0_combout\;
\inst10|ALT_INV_inst11~q\ <= NOT \inst10|inst11~q\;
\ALT_INV_inst6~q\ <= NOT \inst6~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y41_N16
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

-- Location: IOOBUF_X49_Y54_N16
\D0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst6~q\,
	devoe => ww_devoe,
	o => \D0~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\Q0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~q\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\IROUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst3~q\,
	devoe => ww_devoe,
	o => \IROUT[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\IROUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1~q\,
	devoe => ww_devoe,
	o => \IROUT[0]~output_o\);

-- Location: IOOBUF_X78_Y36_N24
\COUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst33|sub|107~0_combout\,
	devoe => ww_devoe,
	o => \COUT~output_o\);

-- Location: IOOBUF_X66_Y54_N9
\MSA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1~q\,
	devoe => ww_devoe,
	o => \MSA[1]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\MSA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|MSA\(0),
	devoe => ww_devoe,
	o => \MSA[0]~output_o\);

-- Location: IOOBUF_X78_Y36_N9
\MSB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|MSB\(0),
	devoe => ww_devoe,
	o => \MSB[1]~output_o\);

-- Location: IOOBUF_X78_Y36_N2
\MSB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_MSB\(0),
	devoe => ww_devoe,
	o => \MSB[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\MSC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1~q\,
	devoe => ww_devoe,
	o => \MSC[2]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\MSC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|MSC[1]~0_combout\,
	devoe => ww_devoe,
	o => \MSC[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\MSC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|inst1~q\,
	devoe => ww_devoe,
	o => \MSC[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\A[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst39|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\A[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst39|boom2~0_combout\,
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\A[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst39|boom1~0_combout\,
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X78_Y37_N23
\A[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst39|boom~0_combout\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\A[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst39|boom3~0_combout\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\A[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst39|ALT_INV_inst50~0_combout\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\A[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst39|ALT_INV_BOOF~0_combout\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\B[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst40|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \B[6]~output_o\);

-- Location: IOOBUF_X78_Y36_N16
\B[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst40|boom2~0_combout\,
	devoe => ww_devoe,
	o => \B[5]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\B[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst40|boom1~0_combout\,
	devoe => ww_devoe,
	o => \B[4]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst40|boom~0_combout\,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst40|boom3~0_combout\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst40|ALT_INV_inst50~0_combout\,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X78_Y33_N23
\B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst40|ALT_INV_BOOF~0_combout\,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X78_Y31_N23
\C[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst41|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \C[6]~output_o\);

-- Location: IOOBUF_X78_Y31_N2
\C[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst41|boom2~0_combout\,
	devoe => ww_devoe,
	o => \C[5]~output_o\);

-- Location: IOOBUF_X78_Y30_N16
\C[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst41|boom1~0_combout\,
	devoe => ww_devoe,
	o => \C[4]~output_o\);

-- Location: IOOBUF_X78_Y30_N2
\C[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst41|boom~0_combout\,
	devoe => ww_devoe,
	o => \C[3]~output_o\);

-- Location: IOOBUF_X78_Y30_N23
\C[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst41|boom3~0_combout\,
	devoe => ww_devoe,
	o => \C[2]~output_o\);

-- Location: IOOBUF_X78_Y30_N9
\C[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst41|ALT_INV_inst50~0_combout\,
	devoe => ww_devoe,
	o => \C[1]~output_o\);

-- Location: IOOBUF_X78_Y31_N16
\C[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst41|ALT_INV_BOOF~0_combout\,
	devoe => ww_devoe,
	o => \C[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\MUXA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst8|10~1_combout\,
	devoe => ww_devoe,
	o => \MUXA[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\MUXA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst8|9~3_combout\,
	devoe => ww_devoe,
	o => \MUXA[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\MUXA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst|10~3_combout\,
	devoe => ww_devoe,
	o => \MUXA[1]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\MUXA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst|9~1_combout\,
	devoe => ww_devoe,
	o => \MUXA[0]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\MUXB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst10|10~0_combout\,
	devoe => ww_devoe,
	o => \MUXB[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\MUXB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst10|9~0_combout\,
	devoe => ww_devoe,
	o => \MUXB[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\MUXB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst9|10~0_combout\,
	devoe => ww_devoe,
	o => \MUXB[1]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\MUXB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst9|9~0_combout\,
	devoe => ww_devoe,
	o => \MUXB[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst23|sub|81~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

-- Location: IOOBUF_X78_Y35_N16
\OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst7|sub|81~1_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[2]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
\OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst24|sub|81~1_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[1]~output_o\);

-- Location: IOOBUF_X78_Y31_N9
\OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst4|sub|81~1_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\REGA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst14~q\,
	devoe => ww_devoe,
	o => \REGA[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\REGA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst13~q\,
	devoe => ww_devoe,
	o => \REGA[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\REGA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst12~q\,
	devoe => ww_devoe,
	o => \REGA[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\REGA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst11~q\,
	devoe => ww_devoe,
	o => \REGA[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\REGAandB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst28~combout\,
	devoe => ww_devoe,
	o => \REGAandB[3]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\REGAandB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst27~combout\,
	devoe => ww_devoe,
	o => \REGAandB[2]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\REGAandB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst26~combout\,
	devoe => ww_devoe,
	o => \REGAandB[1]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\REGAandB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst25~combout\,
	devoe => ww_devoe,
	o => \REGAandB[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\REGALeft[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst13~q\,
	devoe => ww_devoe,
	o => \REGALeft[3]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\REGALeft[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst12~q\,
	devoe => ww_devoe,
	o => \REGALeft[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\REGALeft[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst11~q\,
	devoe => ww_devoe,
	o => \REGALeft[1]~output_o\);

-- Location: IOOBUF_X78_Y15_N23
\REGALeft[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \REGALeft[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\REGANOT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst14~q\,
	devoe => ww_devoe,
	o => \REGANOT[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\REGANOT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst13~q\,
	devoe => ww_devoe,
	o => \REGANOT[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\REGANOT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst12~q\,
	devoe => ww_devoe,
	o => \REGANOT[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\REGANOT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|ALT_INV_inst11~q\,
	devoe => ww_devoe,
	o => \REGANOT[0]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\REGAorB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst32~combout\,
	devoe => ww_devoe,
	o => \REGAorB[3]~output_o\);

-- Location: IOOBUF_X78_Y37_N2
\REGAorB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst31~combout\,
	devoe => ww_devoe,
	o => \REGAorB[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\REGAorB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst30~combout\,
	devoe => ww_devoe,
	o => \REGAorB[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\REGAorB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst29~combout\,
	devoe => ww_devoe,
	o => \REGAorB[0]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\REGARight[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \REGARight[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\REGARight[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst14~q\,
	devoe => ww_devoe,
	o => \REGARight[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\REGARight[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst13~q\,
	devoe => ww_devoe,
	o => \REGARight[1]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\REGARight[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst12~q\,
	devoe => ww_devoe,
	o => \REGARight[0]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\REGAsumB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst33|sub|82~combout\,
	devoe => ww_devoe,
	o => \REGAsumB[3]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\REGAsumB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst33|sub|80~combout\,
	devoe => ww_devoe,
	o => \REGAsumB[2]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\REGAsumB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst33|sub|78~combout\,
	devoe => ww_devoe,
	o => \REGAsumB[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\REGAsumB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst33|sub|76~0_combout\,
	devoe => ww_devoe,
	o => \REGAsumB[0]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\REGB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst18~q\,
	devoe => ww_devoe,
	o => \REGB[3]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\REGB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst17~q\,
	devoe => ww_devoe,
	o => \REGB[2]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\REGB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst16~q\,
	devoe => ww_devoe,
	o => \REGB[1]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\REGB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst15~q\,
	devoe => ww_devoe,
	o => \REGB[0]~output_o\);

-- Location: IOIBUF_X0_Y18_N15
\CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLK,
	o => \CLK~input_o\);

-- Location: CLKCTRL_G3
\CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X50_Y53_N12
\inst6~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6~0_combout\ = !\inst6~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst6~q\,
	combout => \inst6~0_combout\);

-- Location: IOIBUF_X0_Y18_N22
\Reset_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Reset_L,
	o => \Reset_L~input_o\);

-- Location: CLKCTRL_G4
\Reset_L~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Reset_L~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Reset_L~inputclkctrl_outclk\);

-- Location: FF_X50_Y53_N13
inst6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst6~0_combout\,
	clrn => \Reset_L~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6~q\);

-- Location: IOIBUF_X74_Y54_N8
\IR[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(1),
	o => \IR[1]~input_o\);

-- Location: LCCOMB_X75_Y41_N0
\inst|inst3~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst3~feeder_combout\ = \IR[1]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IR[1]~input_o\,
	combout => \inst|inst3~feeder_combout\);

-- Location: IOIBUF_X78_Y33_N8
\IR_LD~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR_LD,
	o => \IR_LD~input_o\);

-- Location: FF_X75_Y41_N1
\inst|inst3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst3~feeder_combout\,
	clrn => \Reset_L~inputclkctrl_outclk\,
	ena => \IR_LD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst3~q\);

-- Location: IOIBUF_X78_Y33_N15
\IR[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_IR(0),
	o => \IR[0]~input_o\);

-- Location: LCCOMB_X75_Y41_N14
\inst|inst1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|inst1~feeder_combout\ = \IR[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \IR[0]~input_o\,
	combout => \inst|inst1~feeder_combout\);

-- Location: FF_X75_Y41_N15
\inst|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|inst1~feeder_combout\,
	clrn => \Reset_L~inputclkctrl_outclk\,
	ena => \IR_LD~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|inst1~q\);

-- Location: IOIBUF_X74_Y54_N15
\INPUT[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(3),
	o => \INPUT[3]~input_o\);

-- Location: LCCOMB_X75_Y41_N6
\inst10|inst8|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst8|10~0_combout\ = (!\inst|inst1~q\ & ((\inst|inst3~q\ & (\INPUT[3]~input_o\)) # (!\inst|inst3~q\ & ((\inst10|inst14~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[3]~input_o\,
	datab => \inst|inst3~q\,
	datac => \inst|inst1~q\,
	datad => \inst10|inst14~q\,
	combout => \inst10|inst8|10~0_combout\);

-- Location: IOIBUF_X78_Y33_N1
\INPUT[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(2),
	o => \INPUT[2]~input_o\);

-- Location: IOIBUF_X78_Y29_N15
\INPUT[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(1),
	o => \INPUT[1]~input_o\);

-- Location: LCCOMB_X75_Y41_N26
\inst10|inst9|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst9|10~0_combout\ = (\inst|inst3~q\ & (\inst10|inst16~q\)) # (!\inst|inst3~q\ & ((\inst|inst1~q\ & (\inst10|inst16~q\)) # (!\inst|inst1~q\ & ((\inst10|inst12~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~q\,
	datab => \inst10|inst16~q\,
	datac => \inst|inst1~q\,
	datad => \inst10|inst12~q\,
	combout => \inst10|inst9|10~0_combout\);

-- Location: FF_X76_Y41_N17
\inst10|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10|inst9|10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst16~q\);

-- Location: IOIBUF_X78_Y49_N8
\CIN~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CIN,
	o => \CIN~input_o\);

-- Location: LCCOMB_X76_Y41_N22
\inst10|inst33|sub|76~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst33|sub|76~0_combout\ = \CIN~input_o\ $ (\inst10|inst15~q\ $ (\inst10|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CIN~input_o\,
	datac => \inst10|inst15~q\,
	datad => \inst10|inst11~q\,
	combout => \inst10|inst33|sub|76~0_combout\);

-- Location: IOIBUF_X74_Y54_N1
\INPUT[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_INPUT(0),
	o => \INPUT[0]~input_o\);

-- Location: LCCOMB_X75_Y41_N24
\inst10|inst|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst|9~0_combout\ = (\inst|inst1~q\ & (((\inst10|inst12~q\) # (!\inst|inst3~q\)))) # (!\inst|inst1~q\ & (\INPUT[0]~input_o\ & ((\inst|inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \inst10|inst12~q\,
	datac => \inst|inst1~q\,
	datad => \inst|inst3~q\,
	combout => \inst10|inst|9~0_combout\);

-- Location: LCCOMB_X76_Y41_N0
\inst10|inst|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst|9~1_combout\ = (\inst|inst3~q\ & (((\inst10|inst|9~0_combout\)))) # (!\inst|inst3~q\ & ((\inst10|inst|9~0_combout\ & (\inst10|inst33|sub|76~0_combout\)) # (!\inst10|inst|9~0_combout\ & ((\inst10|inst11~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~q\,
	datab => \inst10|inst33|sub|76~0_combout\,
	datac => \inst10|inst11~q\,
	datad => \inst10|inst|9~0_combout\,
	combout => \inst10|inst|9~1_combout\);

-- Location: FF_X76_Y41_N1
\inst10|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst|9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst11~q\);

-- Location: LCCOMB_X75_Y41_N16
\inst10|inst9|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst9|9~0_combout\ = (\inst|inst3~q\ & (((\inst10|inst15~q\)))) # (!\inst|inst3~q\ & ((\inst|inst1~q\ & ((\inst10|inst15~q\))) # (!\inst|inst1~q\ & (\inst10|inst11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~q\,
	datab => \inst|inst1~q\,
	datac => \inst10|inst11~q\,
	datad => \inst10|inst15~q\,
	combout => \inst10|inst9|9~0_combout\);

-- Location: FF_X76_Y41_N23
\inst10|inst15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10|inst9|9~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst15~q\);

-- Location: LCCOMB_X76_Y41_N20
\inst10|inst33|sub|104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst33|sub|104~0_combout\ = (\CIN~input_o\ & ((\inst10|inst15~q\) # (\inst10|inst11~q\))) # (!\CIN~input_o\ & (\inst10|inst15~q\ & \inst10|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CIN~input_o\,
	datac => \inst10|inst15~q\,
	datad => \inst10|inst11~q\,
	combout => \inst10|inst33|sub|104~0_combout\);

-- Location: LCCOMB_X76_Y41_N16
\inst10|inst33|sub|78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst33|sub|78~combout\ = \inst10|inst12~q\ $ (\inst10|inst16~q\ $ (\inst10|inst33|sub|104~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst12~q\,
	datac => \inst10|inst16~q\,
	datad => \inst10|inst33|sub|104~0_combout\,
	combout => \inst10|inst33|sub|78~combout\);

-- Location: LCCOMB_X76_Y41_N2
\inst10|inst|10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst|10~2_combout\ = (\inst|inst1~q\ & (((\inst|inst3~q\) # (\inst10|inst33|sub|78~combout\)))) # (!\inst|inst1~q\ & (\inst10|inst12~q\ & (!\inst|inst3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1~q\,
	datab => \inst10|inst12~q\,
	datac => \inst|inst3~q\,
	datad => \inst10|inst33|sub|78~combout\,
	combout => \inst10|inst|10~2_combout\);

-- Location: LCCOMB_X76_Y41_N6
\inst10|inst|10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst|10~3_combout\ = (\inst|inst3~q\ & ((\inst10|inst|10~2_combout\ & (\inst10|inst13~q\)) # (!\inst10|inst|10~2_combout\ & ((\INPUT[1]~input_o\))))) # (!\inst|inst3~q\ & (((\inst10|inst|10~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~q\,
	datab => \inst10|inst13~q\,
	datac => \INPUT[1]~input_o\,
	datad => \inst10|inst|10~2_combout\,
	combout => \inst10|inst|10~3_combout\);

-- Location: FF_X76_Y41_N7
\inst10|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst|10~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst12~q\);

-- Location: LCCOMB_X76_Y41_N14
\inst10|inst10|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst10|9~0_combout\ = (\inst|inst3~q\ & (((\inst10|inst17~q\)))) # (!\inst|inst3~q\ & ((\inst|inst1~q\ & ((\inst10|inst17~q\))) # (!\inst|inst1~q\ & (\inst10|inst13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst3~q\,
	datab => \inst10|inst13~q\,
	datac => \inst10|inst17~q\,
	datad => \inst|inst1~q\,
	combout => \inst10|inst10|9~0_combout\);

-- Location: FF_X76_Y41_N15
\inst10|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst10|9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst17~q\);

-- Location: LCCOMB_X76_Y41_N8
\inst10|inst33|sub|80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst33|sub|80~0_combout\ = \inst10|inst17~q\ $ (\inst10|inst13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst17~q\,
	datad => \inst10|inst13~q\,
	combout => \inst10|inst33|sub|80~0_combout\);

-- Location: LCCOMB_X76_Y41_N18
\inst10|inst33|sub|80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst33|sub|80~combout\ = \inst10|inst33|sub|80~0_combout\ $ (((\inst10|inst12~q\ & ((\inst10|inst16~q\) # (\inst10|inst33|sub|104~0_combout\))) # (!\inst10|inst12~q\ & (\inst10|inst16~q\ & \inst10|inst33|sub|104~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst12~q\,
	datab => \inst10|inst16~q\,
	datac => \inst10|inst33|sub|80~0_combout\,
	datad => \inst10|inst33|sub|104~0_combout\,
	combout => \inst10|inst33|sub|80~combout\);

-- Location: LCCOMB_X76_Y41_N10
\inst10|inst8|9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst8|9~2_combout\ = (\inst|inst1~q\ & (((\inst|inst3~q\) # (\inst10|inst33|sub|80~combout\)))) # (!\inst|inst1~q\ & (\inst10|inst13~q\ & (!\inst|inst3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1~q\,
	datab => \inst10|inst13~q\,
	datac => \inst|inst3~q\,
	datad => \inst10|inst33|sub|80~combout\,
	combout => \inst10|inst8|9~2_combout\);

-- Location: LCCOMB_X76_Y41_N4
\inst10|inst8|9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst8|9~3_combout\ = (\inst|inst3~q\ & ((\inst10|inst8|9~2_combout\ & (\inst10|inst14~q\)) # (!\inst10|inst8|9~2_combout\ & ((\INPUT[2]~input_o\))))) # (!\inst|inst3~q\ & (((\inst10|inst8|9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst14~q\,
	datab => \INPUT[2]~input_o\,
	datac => \inst|inst3~q\,
	datad => \inst10|inst8|9~2_combout\,
	combout => \inst10|inst8|9~3_combout\);

-- Location: FF_X76_Y41_N29
\inst10|inst13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10|inst8|9~3_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst13~q\);

-- Location: LCCOMB_X76_Y41_N28
\inst10|inst27\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst27~combout\ = (\inst10|inst13~q\ & \inst10|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst13~q\,
	datad => \inst10|inst17~q\,
	combout => \inst10|inst27~combout\);

-- Location: LCCOMB_X77_Y41_N22
\inst10|inst10|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst10|10~0_combout\ = (\inst|inst3~q\ & (((\inst10|inst18~q\)))) # (!\inst|inst3~q\ & ((\inst|inst1~q\ & ((\inst10|inst18~q\))) # (!\inst|inst1~q\ & (\inst10|inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst14~q\,
	datab => \inst10|inst18~q\,
	datac => \inst|inst3~q\,
	datad => \inst|inst1~q\,
	combout => \inst10|inst10|10~0_combout\);

-- Location: FF_X77_Y41_N9
\inst10|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10|inst10|10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst18~q\);

-- Location: LCCOMB_X76_Y41_N26
\inst10|inst31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst31~combout\ = (\inst10|inst17~q\) # (\inst10|inst13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst17~q\,
	datad => \inst10|inst13~q\,
	combout => \inst10|inst31~combout\);

-- Location: LCCOMB_X76_Y41_N30
\inst10|inst33|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst33|sub|106~0_combout\ = (\inst10|inst31~combout\ & ((\inst10|inst12~q\ & ((\inst10|inst16~q\) # (\inst10|inst33|sub|104~0_combout\))) # (!\inst10|inst12~q\ & (\inst10|inst16~q\ & \inst10|inst33|sub|104~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst12~q\,
	datab => \inst10|inst16~q\,
	datac => \inst10|inst31~combout\,
	datad => \inst10|inst33|sub|104~0_combout\,
	combout => \inst10|inst33|sub|106~0_combout\);

-- Location: LCCOMB_X76_Y41_N24
\inst10|inst33|sub|82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst33|sub|82~combout\ = \inst10|inst18~q\ $ (\inst10|inst14~q\ $ (((\inst10|inst27~combout\) # (\inst10|inst33|sub|106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst27~combout\,
	datab => \inst10|inst18~q\,
	datac => \inst10|inst33|sub|106~0_combout\,
	datad => \inst10|inst14~q\,
	combout => \inst10|inst33|sub|82~combout\);

-- Location: LCCOMB_X76_Y41_N12
\inst10|inst8|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst8|10~1_combout\ = (\inst10|inst8|10~0_combout\) # ((\inst|inst1~q\ & (!\inst|inst3~q\ & \inst10|inst33|sub|82~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|inst1~q\,
	datab => \inst10|inst8|10~0_combout\,
	datac => \inst|inst3~q\,
	datad => \inst10|inst33|sub|82~combout\,
	combout => \inst10|inst8|10~1_combout\);

-- Location: FF_X76_Y41_N13
\inst10|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|inst8|10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst14~q\);

-- Location: LCCOMB_X77_Y41_N8
\inst10|inst33|sub|107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst33|sub|107~0_combout\ = (\inst10|inst14~q\ & ((\inst10|inst33|sub|106~0_combout\) # ((\inst10|inst18~q\) # (\inst10|inst27~combout\)))) # (!\inst10|inst14~q\ & (\inst10|inst18~q\ & ((\inst10|inst33|sub|106~0_combout\) # 
-- (\inst10|inst27~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst14~q\,
	datab => \inst10|inst33|sub|106~0_combout\,
	datac => \inst10|inst18~q\,
	datad => \inst10|inst27~combout\,
	combout => \inst10|inst33|sub|107~0_combout\);

-- Location: LCCOMB_X77_Y41_N6
\inst5|MSA[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|MSA\(0) = (\inst|inst1~q\) # (!\inst|inst3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3~q\,
	datad => \inst|inst1~q\,
	combout => \inst5|MSA\(0));

-- Location: LCCOMB_X77_Y41_N4
\inst5|MSB[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|MSB\(0) = (\inst|inst3~q\) # (\inst|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3~q\,
	datad => \inst|inst1~q\,
	combout => \inst5|MSB\(0));

-- Location: LCCOMB_X77_Y41_N10
\inst5|MSC[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|MSC[1]~0_combout\ = (\inst|inst3~q\ & \inst|inst1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|inst3~q\,
	datad => \inst|inst1~q\,
	combout => \inst5|MSC[1]~0_combout\);

-- Location: LCCOMB_X77_Y45_N4
\inst10|inst39|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst39|inst17~0_combout\ = (\inst10|inst11~q\ & ((\inst10|inst14~q\) # (\inst10|inst12~q\ $ (\inst10|inst13~q\)))) # (!\inst10|inst11~q\ & ((\inst10|inst12~q\) # (\inst10|inst14~q\ $ (\inst10|inst13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst14~q\,
	datab => \inst10|inst11~q\,
	datac => \inst10|inst12~q\,
	datad => \inst10|inst13~q\,
	combout => \inst10|inst39|inst17~0_combout\);

-- Location: LCCOMB_X74_Y53_N4
\inst10|inst39|boom2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst39|boom2~0_combout\ = (\inst10|inst12~q\ & (!\inst10|inst14~q\ & ((\inst10|inst11~q\) # (!\inst10|inst13~q\)))) # (!\inst10|inst12~q\ & (\inst10|inst11~q\ & (\inst10|inst13~q\ $ (!\inst10|inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst12~q\,
	datab => \inst10|inst13~q\,
	datac => \inst10|inst14~q\,
	datad => \inst10|inst11~q\,
	combout => \inst10|inst39|boom2~0_combout\);

-- Location: LCCOMB_X77_Y45_N26
\inst10|inst39|boom1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst39|boom1~0_combout\ = (\inst10|inst12~q\ & (!\inst10|inst14~q\ & (\inst10|inst11~q\))) # (!\inst10|inst12~q\ & ((\inst10|inst13~q\ & (!\inst10|inst14~q\)) # (!\inst10|inst13~q\ & ((\inst10|inst11~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst14~q\,
	datab => \inst10|inst11~q\,
	datac => \inst10|inst12~q\,
	datad => \inst10|inst13~q\,
	combout => \inst10|inst39|boom1~0_combout\);

-- Location: LCCOMB_X75_Y41_N28
\inst10|inst39|boom~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst39|boom~0_combout\ = (\inst10|inst12~q\ & ((\inst10|inst13~q\ & (\inst10|inst11~q\)) # (!\inst10|inst13~q\ & (!\inst10|inst11~q\ & \inst10|inst14~q\)))) # (!\inst10|inst12~q\ & (!\inst10|inst14~q\ & (\inst10|inst13~q\ $ (\inst10|inst11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst13~q\,
	datab => \inst10|inst12~q\,
	datac => \inst10|inst11~q\,
	datad => \inst10|inst14~q\,
	combout => \inst10|inst39|boom~0_combout\);

-- Location: LCCOMB_X77_Y45_N12
\inst10|inst39|boom3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst39|boom3~0_combout\ = (\inst10|inst14~q\ & (\inst10|inst13~q\ & ((\inst10|inst12~q\) # (!\inst10|inst11~q\)))) # (!\inst10|inst14~q\ & (!\inst10|inst11~q\ & (\inst10|inst12~q\ & !\inst10|inst13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst14~q\,
	datab => \inst10|inst11~q\,
	datac => \inst10|inst12~q\,
	datad => \inst10|inst13~q\,
	combout => \inst10|inst39|boom3~0_combout\);

-- Location: LCCOMB_X71_Y53_N28
\inst10|inst39|inst50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst39|inst50~0_combout\ = (\inst10|inst12~q\ & ((\inst10|inst11~q\ & ((!\inst10|inst14~q\))) # (!\inst10|inst11~q\ & (!\inst10|inst13~q\)))) # (!\inst10|inst12~q\ & ((\inst10|inst11~q\ $ (!\inst10|inst14~q\)) # (!\inst10|inst13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11~q\,
	datab => \inst10|inst12~q\,
	datac => \inst10|inst13~q\,
	datad => \inst10|inst14~q\,
	combout => \inst10|inst39|inst50~0_combout\);

-- Location: LCCOMB_X75_Y41_N18
\inst10|inst39|BOOF~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst39|BOOF~0_combout\ = (\inst10|inst13~q\ & ((\inst10|inst12~q\) # (\inst10|inst11~q\ $ (\inst10|inst14~q\)))) # (!\inst10|inst13~q\ & ((\inst10|inst12~q\ $ (\inst10|inst14~q\)) # (!\inst10|inst11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst13~q\,
	datab => \inst10|inst12~q\,
	datac => \inst10|inst11~q\,
	datad => \inst10|inst14~q\,
	combout => \inst10|inst39|BOOF~0_combout\);

-- Location: LCCOMB_X77_Y41_N0
\inst10|inst40|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst40|inst17~0_combout\ = (\inst10|inst15~q\ & ((\inst10|inst18~q\) # (\inst10|inst16~q\ $ (\inst10|inst17~q\)))) # (!\inst10|inst15~q\ & ((\inst10|inst16~q\) # (\inst10|inst17~q\ $ (\inst10|inst18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst16~q\,
	datab => \inst10|inst17~q\,
	datac => \inst10|inst18~q\,
	datad => \inst10|inst15~q\,
	combout => \inst10|inst40|inst17~0_combout\);

-- Location: LCCOMB_X77_Y41_N30
\inst10|inst40|boom2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst40|boom2~0_combout\ = (\inst10|inst16~q\ & (!\inst10|inst18~q\ & ((\inst10|inst15~q\) # (!\inst10|inst17~q\)))) # (!\inst10|inst16~q\ & (\inst10|inst15~q\ & (\inst10|inst17~q\ $ (!\inst10|inst18~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100101100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst16~q\,
	datab => \inst10|inst17~q\,
	datac => \inst10|inst18~q\,
	datad => \inst10|inst15~q\,
	combout => \inst10|inst40|boom2~0_combout\);

-- Location: LCCOMB_X77_Y41_N20
\inst10|inst40|boom1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst40|boom1~0_combout\ = (\inst10|inst16~q\ & (((!\inst10|inst18~q\ & \inst10|inst15~q\)))) # (!\inst10|inst16~q\ & ((\inst10|inst17~q\ & (!\inst10|inst18~q\)) # (!\inst10|inst17~q\ & ((\inst10|inst15~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst16~q\,
	datab => \inst10|inst17~q\,
	datac => \inst10|inst18~q\,
	datad => \inst10|inst15~q\,
	combout => \inst10|inst40|boom1~0_combout\);

-- Location: LCCOMB_X77_Y41_N2
\inst10|inst40|boom~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst40|boom~0_combout\ = (\inst10|inst16~q\ & ((\inst10|inst17~q\ & ((\inst10|inst15~q\))) # (!\inst10|inst17~q\ & (\inst10|inst18~q\ & !\inst10|inst15~q\)))) # (!\inst10|inst16~q\ & (!\inst10|inst18~q\ & (\inst10|inst17~q\ $ 
-- (\inst10|inst15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst16~q\,
	datab => \inst10|inst17~q\,
	datac => \inst10|inst18~q\,
	datad => \inst10|inst15~q\,
	combout => \inst10|inst40|boom~0_combout\);

-- Location: LCCOMB_X77_Y41_N12
\inst10|inst40|boom3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst40|boom3~0_combout\ = (\inst10|inst17~q\ & (\inst10|inst18~q\ & ((\inst10|inst16~q\) # (!\inst10|inst15~q\)))) # (!\inst10|inst17~q\ & (\inst10|inst16~q\ & (!\inst10|inst18~q\ & !\inst10|inst15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst16~q\,
	datab => \inst10|inst17~q\,
	datac => \inst10|inst18~q\,
	datad => \inst10|inst15~q\,
	combout => \inst10|inst40|boom3~0_combout\);

-- Location: LCCOMB_X77_Y41_N18
\inst10|inst40|inst50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst40|inst50~0_combout\ = (\inst10|inst16~q\ & ((\inst10|inst15~q\ & ((!\inst10|inst18~q\))) # (!\inst10|inst15~q\ & (!\inst10|inst17~q\)))) # (!\inst10|inst16~q\ & ((\inst10|inst18~q\ $ (!\inst10|inst15~q\)) # (!\inst10|inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101100110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst16~q\,
	datab => \inst10|inst17~q\,
	datac => \inst10|inst18~q\,
	datad => \inst10|inst15~q\,
	combout => \inst10|inst40|inst50~0_combout\);

-- Location: LCCOMB_X77_Y41_N28
\inst10|inst40|BOOF~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst40|BOOF~0_combout\ = (\inst10|inst17~q\ & ((\inst10|inst16~q\) # (\inst10|inst18~q\ $ (\inst10|inst15~q\)))) # (!\inst10|inst17~q\ & ((\inst10|inst16~q\ $ (\inst10|inst18~q\)) # (!\inst10|inst15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111011111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst16~q\,
	datab => \inst10|inst17~q\,
	datac => \inst10|inst18~q\,
	datad => \inst10|inst15~q\,
	combout => \inst10|inst40|BOOF~0_combout\);

-- Location: LCCOMB_X75_Y41_N12
\inst10|inst4|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst4|sub|81~0_combout\ = (\inst|inst1~q\ & (((\inst10|inst12~q\ & \inst|inst3~q\)))) # (!\inst|inst1~q\ & (\inst10|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11~q\,
	datab => \inst10|inst12~q\,
	datac => \inst|inst1~q\,
	datad => \inst|inst3~q\,
	combout => \inst10|inst4|sub|81~0_combout\);

-- Location: LCCOMB_X75_Y41_N22
\inst10|inst4|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst4|sub|81~1_combout\ = (\inst10|inst4|sub|81~0_combout\) # ((\inst|inst1~q\ & (\inst10|inst33|sub|76~0_combout\ & !\inst|inst3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst4|sub|81~0_combout\,
	datab => \inst|inst1~q\,
	datac => \inst10|inst33|sub|76~0_combout\,
	datad => \inst|inst3~q\,
	combout => \inst10|inst4|sub|81~1_combout\);

-- Location: LCCOMB_X75_Y41_N10
\inst10|inst7|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst7|sub|81~0_combout\ = (\inst|inst1~q\ & (((\inst|inst3~q\ & \inst10|inst14~q\)))) # (!\inst|inst1~q\ & (\inst10|inst13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst13~q\,
	datab => \inst|inst3~q\,
	datac => \inst|inst1~q\,
	datad => \inst10|inst14~q\,
	combout => \inst10|inst7|sub|81~0_combout\);

-- Location: LCCOMB_X77_Y41_N24
\inst10|inst7|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst7|sub|81~1_combout\ = (\inst10|inst7|sub|81~0_combout\) # ((\inst10|inst33|sub|80~combout\ & (!\inst|inst3~q\ & \inst|inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst7|sub|81~0_combout\,
	datab => \inst10|inst33|sub|80~combout\,
	datac => \inst|inst3~q\,
	datad => \inst|inst1~q\,
	combout => \inst10|inst7|sub|81~1_combout\);

-- Location: LCCOMB_X75_Y41_N4
\inst10|inst23|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst23|sub|81~0_combout\ = (\inst|inst1~q\ & (\inst10|inst33|sub|82~combout\ & ((!\inst|inst3~q\)))) # (!\inst|inst1~q\ & (((\inst10|inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|sub|82~combout\,
	datab => \inst10|inst14~q\,
	datac => \inst|inst1~q\,
	datad => \inst|inst3~q\,
	combout => \inst10|inst23|sub|81~0_combout\);

-- Location: LCCOMB_X75_Y41_N20
\inst10|inst24|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst24|sub|81~0_combout\ = (\inst|inst1~q\ & (\inst10|inst13~q\ & (\inst|inst3~q\))) # (!\inst|inst1~q\ & (((\inst10|inst12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst13~q\,
	datab => \inst|inst3~q\,
	datac => \inst|inst1~q\,
	datad => \inst10|inst12~q\,
	combout => \inst10|inst24|sub|81~0_combout\);

-- Location: LCCOMB_X77_Y41_N26
\inst10|inst24|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst24|sub|81~1_combout\ = (\inst10|inst24|sub|81~0_combout\) # ((!\inst|inst3~q\ & (\inst10|inst33|sub|78~combout\ & \inst|inst1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst24|sub|81~0_combout\,
	datab => \inst|inst3~q\,
	datac => \inst10|inst33|sub|78~combout\,
	datad => \inst|inst1~q\,
	combout => \inst10|inst24|sub|81~1_combout\);

-- Location: LCCOMB_X77_Y34_N8
\inst10|inst41|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst41|inst17~0_combout\ = (\inst10|inst4|sub|81~1_combout\ & ((\inst10|inst23|sub|81~0_combout\) # (\inst10|inst7|sub|81~1_combout\ $ (\inst10|inst24|sub|81~1_combout\)))) # (!\inst10|inst4|sub|81~1_combout\ & ((\inst10|inst24|sub|81~1_combout\) 
-- # (\inst10|inst7|sub|81~1_combout\ $ (\inst10|inst23|sub|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst4|sub|81~1_combout\,
	datab => \inst10|inst7|sub|81~1_combout\,
	datac => \inst10|inst23|sub|81~0_combout\,
	datad => \inst10|inst24|sub|81~1_combout\,
	combout => \inst10|inst41|inst17~0_combout\);

-- Location: LCCOMB_X77_Y34_N14
\inst10|inst41|boom2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst41|boom2~0_combout\ = (\inst10|inst4|sub|81~1_combout\ & (\inst10|inst23|sub|81~0_combout\ $ (((\inst10|inst24|sub|81~1_combout\) # (!\inst10|inst7|sub|81~1_combout\))))) # (!\inst10|inst4|sub|81~1_combout\ & (!\inst10|inst7|sub|81~1_combout\ 
-- & (!\inst10|inst23|sub|81~0_combout\ & \inst10|inst24|sub|81~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst4|sub|81~1_combout\,
	datab => \inst10|inst7|sub|81~1_combout\,
	datac => \inst10|inst23|sub|81~0_combout\,
	datad => \inst10|inst24|sub|81~1_combout\,
	combout => \inst10|inst41|boom2~0_combout\);

-- Location: LCCOMB_X77_Y34_N4
\inst10|inst41|boom1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst41|boom1~0_combout\ = (\inst10|inst24|sub|81~1_combout\ & (\inst10|inst4|sub|81~1_combout\ & ((!\inst10|inst23|sub|81~0_combout\)))) # (!\inst10|inst24|sub|81~1_combout\ & ((\inst10|inst7|sub|81~1_combout\ & 
-- ((!\inst10|inst23|sub|81~0_combout\))) # (!\inst10|inst7|sub|81~1_combout\ & (\inst10|inst4|sub|81~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst4|sub|81~1_combout\,
	datab => \inst10|inst7|sub|81~1_combout\,
	datac => \inst10|inst23|sub|81~0_combout\,
	datad => \inst10|inst24|sub|81~1_combout\,
	combout => \inst10|inst41|boom1~0_combout\);

-- Location: LCCOMB_X77_Y34_N6
\inst10|inst41|boom~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst41|boom~0_combout\ = (\inst10|inst24|sub|81~1_combout\ & ((\inst10|inst4|sub|81~1_combout\ & (\inst10|inst7|sub|81~1_combout\)) # (!\inst10|inst4|sub|81~1_combout\ & (!\inst10|inst7|sub|81~1_combout\ & \inst10|inst23|sub|81~0_combout\)))) # 
-- (!\inst10|inst24|sub|81~1_combout\ & (!\inst10|inst23|sub|81~0_combout\ & (\inst10|inst4|sub|81~1_combout\ $ (\inst10|inst7|sub|81~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst4|sub|81~1_combout\,
	datab => \inst10|inst7|sub|81~1_combout\,
	datac => \inst10|inst23|sub|81~0_combout\,
	datad => \inst10|inst24|sub|81~1_combout\,
	combout => \inst10|inst41|boom~0_combout\);

-- Location: LCCOMB_X77_Y34_N20
\inst10|inst41|boom3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst41|boom3~0_combout\ = (\inst10|inst7|sub|81~1_combout\ & (\inst10|inst23|sub|81~0_combout\ & ((\inst10|inst24|sub|81~1_combout\) # (!\inst10|inst4|sub|81~1_combout\)))) # (!\inst10|inst7|sub|81~1_combout\ & (!\inst10|inst4|sub|81~1_combout\ & 
-- (!\inst10|inst23|sub|81~0_combout\ & \inst10|inst24|sub|81~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst4|sub|81~1_combout\,
	datab => \inst10|inst7|sub|81~1_combout\,
	datac => \inst10|inst23|sub|81~0_combout\,
	datad => \inst10|inst24|sub|81~1_combout\,
	combout => \inst10|inst41|boom3~0_combout\);

-- Location: LCCOMB_X77_Y34_N10
\inst10|inst41|inst50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst41|inst50~0_combout\ = (\inst10|inst23|sub|81~0_combout\ & ((\inst10|inst4|sub|81~1_combout\ & ((!\inst10|inst24|sub|81~1_combout\))) # (!\inst10|inst4|sub|81~1_combout\ & (!\inst10|inst7|sub|81~1_combout\)))) # 
-- (!\inst10|inst23|sub|81~0_combout\ & ((\inst10|inst4|sub|81~1_combout\ $ (!\inst10|inst24|sub|81~1_combout\)) # (!\inst10|inst7|sub|81~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst4|sub|81~1_combout\,
	datab => \inst10|inst7|sub|81~1_combout\,
	datac => \inst10|inst23|sub|81~0_combout\,
	datad => \inst10|inst24|sub|81~1_combout\,
	combout => \inst10|inst41|inst50~0_combout\);

-- Location: LCCOMB_X77_Y34_N12
\inst10|inst41|BOOF~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst41|BOOF~0_combout\ = (\inst10|inst7|sub|81~1_combout\ & ((\inst10|inst24|sub|81~1_combout\) # (\inst10|inst4|sub|81~1_combout\ $ (\inst10|inst23|sub|81~0_combout\)))) # (!\inst10|inst7|sub|81~1_combout\ & ((\inst10|inst23|sub|81~0_combout\ $ 
-- (\inst10|inst24|sub|81~1_combout\)) # (!\inst10|inst4|sub|81~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst4|sub|81~1_combout\,
	datab => \inst10|inst7|sub|81~1_combout\,
	datac => \inst10|inst23|sub|81~0_combout\,
	datad => \inst10|inst24|sub|81~1_combout\,
	combout => \inst10|inst41|BOOF~0_combout\);

-- Location: LCCOMB_X77_Y43_N16
\inst10|inst28\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst28~combout\ = (\inst10|inst14~q\ & \inst10|inst18~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst14~q\,
	datad => \inst10|inst18~q\,
	combout => \inst10|inst28~combout\);

-- Location: LCCOMB_X77_Y41_N16
\inst10|inst26\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst26~combout\ = (\inst10|inst16~q\ & \inst10|inst12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst16~q\,
	datad => \inst10|inst12~q\,
	combout => \inst10|inst26~combout\);

-- Location: LCCOMB_X77_Y45_N2
\inst10|inst25\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst25~combout\ = (\inst10|inst11~q\ & \inst10|inst15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11~q\,
	datad => \inst10|inst15~q\,
	combout => \inst10|inst25~combout\);

-- Location: LCCOMB_X77_Y45_N16
\inst10|inst32\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst32~combout\ = (\inst10|inst14~q\) # (\inst10|inst18~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst14~q\,
	datad => \inst10|inst18~q\,
	combout => \inst10|inst32~combout\);

-- Location: LCCOMB_X77_Y41_N14
\inst10|inst30\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst30~combout\ = (\inst10|inst16~q\) # (\inst10|inst12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst16~q\,
	datad => \inst10|inst12~q\,
	combout => \inst10|inst30~combout\);

-- Location: LCCOMB_X77_Y45_N14
\inst10|inst29\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst29~combout\ = (\inst10|inst11~q\) # (\inst10|inst15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst11~q\,
	datad => \inst10|inst15~q\,
	combout => \inst10|inst29~combout\);

-- Location: UNVM_X0_Y40_N40
\~QUARTUS_CREATED_UNVM~\ : fiftyfivenm_unvm
-- pragma translate_off
GENERIC MAP (
	addr_range1_end_addr => -1,
	addr_range1_offset => -1,
	addr_range2_end_addr => -1,
	addr_range2_offset => -1,
	addr_range3_offset => -1,
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

-- Location: ADCBLOCK_X43_Y52_N0
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

-- Location: ADCBLOCK_X43_Y51_N0
\~QUARTUS_CREATED_ADC2~\ : fiftyfivenm_adcblock
-- pragma translate_off
GENERIC MAP (
	analog_input_pin_mask => 0,
	clkdiv => 1,
	device_partname_fivechar_prefix => "none",
	is_this_first_or_second_adc => 2,
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
	chsel => \~QUARTUS_CREATED_ADC2~_CHSEL_bus\,
	eoc => \~QUARTUS_CREATED_ADC2~~eoc\);

ww_D0 <= \D0~output_o\;

ww_Q0 <= \Q0~output_o\;

ww_IROUT(1) <= \IROUT[1]~output_o\;

ww_IROUT(0) <= \IROUT[0]~output_o\;

ww_COUT <= \COUT~output_o\;

ww_MSA(1) <= \MSA[1]~output_o\;

ww_MSA(0) <= \MSA[0]~output_o\;

ww_MSB(1) <= \MSB[1]~output_o\;

ww_MSB(0) <= \MSB[0]~output_o\;

ww_MSC(2) <= \MSC[2]~output_o\;

ww_MSC(1) <= \MSC[1]~output_o\;

ww_MSC(0) <= \MSC[0]~output_o\;

ww_A(6) <= \A[6]~output_o\;

ww_A(5) <= \A[5]~output_o\;

ww_A(4) <= \A[4]~output_o\;

ww_A(3) <= \A[3]~output_o\;

ww_A(2) <= \A[2]~output_o\;

ww_A(1) <= \A[1]~output_o\;

ww_A(0) <= \A[0]~output_o\;

ww_B(6) <= \B[6]~output_o\;

ww_B(5) <= \B[5]~output_o\;

ww_B(4) <= \B[4]~output_o\;

ww_B(3) <= \B[3]~output_o\;

ww_B(2) <= \B[2]~output_o\;

ww_B(1) <= \B[1]~output_o\;

ww_B(0) <= \B[0]~output_o\;

ww_C(6) <= \C[6]~output_o\;

ww_C(5) <= \C[5]~output_o\;

ww_C(4) <= \C[4]~output_o\;

ww_C(3) <= \C[3]~output_o\;

ww_C(2) <= \C[2]~output_o\;

ww_C(1) <= \C[1]~output_o\;

ww_C(0) <= \C[0]~output_o\;

ww_MUXA(3) <= \MUXA[3]~output_o\;

ww_MUXA(2) <= \MUXA[2]~output_o\;

ww_MUXA(1) <= \MUXA[1]~output_o\;

ww_MUXA(0) <= \MUXA[0]~output_o\;

ww_MUXB(3) <= \MUXB[3]~output_o\;

ww_MUXB(2) <= \MUXB[2]~output_o\;

ww_MUXB(1) <= \MUXB[1]~output_o\;

ww_MUXB(0) <= \MUXB[0]~output_o\;

ww_OUTPUT(3) <= \OUTPUT[3]~output_o\;

ww_OUTPUT(2) <= \OUTPUT[2]~output_o\;

ww_OUTPUT(1) <= \OUTPUT[1]~output_o\;

ww_OUTPUT(0) <= \OUTPUT[0]~output_o\;

ww_REGA(3) <= \REGA[3]~output_o\;

ww_REGA(2) <= \REGA[2]~output_o\;

ww_REGA(1) <= \REGA[1]~output_o\;

ww_REGA(0) <= \REGA[0]~output_o\;

ww_REGAandB(3) <= \REGAandB[3]~output_o\;

ww_REGAandB(2) <= \REGAandB[2]~output_o\;

ww_REGAandB(1) <= \REGAandB[1]~output_o\;

ww_REGAandB(0) <= \REGAandB[0]~output_o\;

ww_REGALeft(3) <= \REGALeft[3]~output_o\;

ww_REGALeft(2) <= \REGALeft[2]~output_o\;

ww_REGALeft(1) <= \REGALeft[1]~output_o\;

ww_REGALeft(0) <= \REGALeft[0]~output_o\;

ww_REGANOT(3) <= \REGANOT[3]~output_o\;

ww_REGANOT(2) <= \REGANOT[2]~output_o\;

ww_REGANOT(1) <= \REGANOT[1]~output_o\;

ww_REGANOT(0) <= \REGANOT[0]~output_o\;

ww_REGAorB(3) <= \REGAorB[3]~output_o\;

ww_REGAorB(2) <= \REGAorB[2]~output_o\;

ww_REGAorB(1) <= \REGAorB[1]~output_o\;

ww_REGAorB(0) <= \REGAorB[0]~output_o\;

ww_REGARight(3) <= \REGARight[3]~output_o\;

ww_REGARight(2) <= \REGARight[2]~output_o\;

ww_REGARight(1) <= \REGARight[1]~output_o\;

ww_REGARight(0) <= \REGARight[0]~output_o\;

ww_REGAsumB(3) <= \REGAsumB[3]~output_o\;

ww_REGAsumB(2) <= \REGAsumB[2]~output_o\;

ww_REGAsumB(1) <= \REGAsumB[1]~output_o\;

ww_REGAsumB(0) <= \REGAsumB[0]~output_o\;

ww_REGB(3) <= \REGB[3]~output_o\;

ww_REGB(2) <= \REGB[2]~output_o\;

ww_REGB(1) <= \REGB[1]~output_o\;

ww_REGB(0) <= \REGB[0]~output_o\;
END structure;


