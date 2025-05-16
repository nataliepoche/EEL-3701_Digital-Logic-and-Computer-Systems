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

-- DATE "03/13/2025 10:06:19"

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

ENTITY 	Lab4_RALU IS
    PORT (
	COUT : OUT std_logic;
	CIN : IN std_logic;
	REGA : OUT std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic;
	MUXA : OUT std_logic_vector(3 DOWNTO 0);
	INPUT : IN std_logic_vector(3 DOWNTO 0);
	REGB : OUT std_logic_vector(3 DOWNTO 0);
	MUXB : OUT std_logic_vector(3 DOWNTO 0);
	OUTPUT : OUT std_logic_vector(3 DOWNTO 0);
	MSC : IN std_logic_vector(2 DOWNTO 0);
	REGAsumB : OUT std_logic_vector(3 DOWNTO 0);
	REGAorB : OUT std_logic_vector(3 DOWNTO 0);
	REGAandB : OUT std_logic_vector(3 DOWNTO 0);
	REGANOT : OUT std_logic_vector(3 DOWNTO 0);
	REGALeft : OUT std_logic_vector(3 DOWNTO 0);
	REGARight : OUT std_logic_vector(3 DOWNTO 0);
	MSB : IN std_logic_vector(1 DOWNTO 0);
	MSA : IN std_logic_vector(1 DOWNTO 0);
	A : OUT std_logic_vector(6 DOWNTO 0);
	B : OUT std_logic_vector(6 DOWNTO 0);
	C : OUT std_logic_vector(6 DOWNTO 0)
	);
END Lab4_RALU;

-- Design Ports Information
-- COUT	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[3]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[2]	=>  Location: PIN_H20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[1]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXA[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXA[2]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXA[1]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXA[0]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[3]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[2]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[0]	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXB[3]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXB[2]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXB[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXB[0]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAsumB[3]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAsumB[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAsumB[1]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAsumB[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAorB[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAorB[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAorB[1]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAorB[0]	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAandB[3]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAandB[2]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAandB[1]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGAandB[0]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGANOT[3]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGANOT[2]	=>  Location: PIN_H18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGANOT[1]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGANOT[0]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGALeft[3]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGALeft[2]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGALeft[1]	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGALeft[0]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGARight[3]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGARight[2]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGARight[1]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGARight[0]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[6]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[5]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[6]	=>  Location: PIN_B17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[5]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[4]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_D18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[6]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[5]	=>  Location: PIN_C22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[4]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[2]	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[1]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C[0]	=>  Location: PIN_B20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[1]	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[0]	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[3]	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[0]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[1]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[2]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[1]	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- INPUT[0]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[1]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[0]	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab4_RALU IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_COUT : std_logic;
SIGNAL ww_CIN : std_logic;
SIGNAL ww_REGA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_MUXA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_INPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MUXB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MSC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_REGAsumB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGAorB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGAandB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGANOT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGALeft : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_REGARight : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MSB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_A : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_C : std_logic_vector(6 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \COUT~output_o\ : std_logic;
SIGNAL \REGA[3]~output_o\ : std_logic;
SIGNAL \REGA[2]~output_o\ : std_logic;
SIGNAL \REGA[1]~output_o\ : std_logic;
SIGNAL \REGA[0]~output_o\ : std_logic;
SIGNAL \MUXA[3]~output_o\ : std_logic;
SIGNAL \MUXA[2]~output_o\ : std_logic;
SIGNAL \MUXA[1]~output_o\ : std_logic;
SIGNAL \MUXA[0]~output_o\ : std_logic;
SIGNAL \REGB[3]~output_o\ : std_logic;
SIGNAL \REGB[2]~output_o\ : std_logic;
SIGNAL \REGB[1]~output_o\ : std_logic;
SIGNAL \REGB[0]~output_o\ : std_logic;
SIGNAL \MUXB[3]~output_o\ : std_logic;
SIGNAL \MUXB[2]~output_o\ : std_logic;
SIGNAL \MUXB[1]~output_o\ : std_logic;
SIGNAL \MUXB[0]~output_o\ : std_logic;
SIGNAL \OUTPUT[3]~output_o\ : std_logic;
SIGNAL \OUTPUT[2]~output_o\ : std_logic;
SIGNAL \OUTPUT[1]~output_o\ : std_logic;
SIGNAL \OUTPUT[0]~output_o\ : std_logic;
SIGNAL \REGAsumB[3]~output_o\ : std_logic;
SIGNAL \REGAsumB[2]~output_o\ : std_logic;
SIGNAL \REGAsumB[1]~output_o\ : std_logic;
SIGNAL \REGAsumB[0]~output_o\ : std_logic;
SIGNAL \REGAorB[3]~output_o\ : std_logic;
SIGNAL \REGAorB[2]~output_o\ : std_logic;
SIGNAL \REGAorB[1]~output_o\ : std_logic;
SIGNAL \REGAorB[0]~output_o\ : std_logic;
SIGNAL \REGAandB[3]~output_o\ : std_logic;
SIGNAL \REGAandB[2]~output_o\ : std_logic;
SIGNAL \REGAandB[1]~output_o\ : std_logic;
SIGNAL \REGAandB[0]~output_o\ : std_logic;
SIGNAL \REGANOT[3]~output_o\ : std_logic;
SIGNAL \REGANOT[2]~output_o\ : std_logic;
SIGNAL \REGANOT[1]~output_o\ : std_logic;
SIGNAL \REGANOT[0]~output_o\ : std_logic;
SIGNAL \REGALeft[3]~output_o\ : std_logic;
SIGNAL \REGALeft[2]~output_o\ : std_logic;
SIGNAL \REGALeft[1]~output_o\ : std_logic;
SIGNAL \REGALeft[0]~output_o\ : std_logic;
SIGNAL \REGARight[3]~output_o\ : std_logic;
SIGNAL \REGARight[2]~output_o\ : std_logic;
SIGNAL \REGARight[1]~output_o\ : std_logic;
SIGNAL \REGARight[0]~output_o\ : std_logic;
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \MSA[1]~input_o\ : std_logic;
SIGNAL \MSB[0]~input_o\ : std_logic;
SIGNAL \MSB[1]~input_o\ : std_logic;
SIGNAL \INPUT[3]~input_o\ : std_logic;
SIGNAL \inst10|10~0_combout\ : std_logic;
SIGNAL \MSC[0]~input_o\ : std_logic;
SIGNAL \MSC[1]~input_o\ : std_logic;
SIGNAL \MSC[2]~input_o\ : std_logic;
SIGNAL \inst23|sub|81~2_combout\ : std_logic;
SIGNAL \inst23|sub|81~1_combout\ : std_logic;
SIGNAL \MSA[0]~input_o\ : std_logic;
SIGNAL \INPUT[2]~input_o\ : std_logic;
SIGNAL \inst10|9~0_combout\ : std_logic;
SIGNAL \inst7|sub|81~2_combout\ : std_logic;
SIGNAL \INPUT[1]~input_o\ : std_logic;
SIGNAL \inst|10~1_combout\ : std_logic;
SIGNAL \inst9|10~0_combout\ : std_logic;
SIGNAL \inst24|sub|81~0_combout\ : std_logic;
SIGNAL \inst4|sub|66~combout\ : std_logic;
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \INPUT[0]~input_o\ : std_logic;
SIGNAL \inst9|9~0_combout\ : std_logic;
SIGNAL \inst9|9~1_combout\ : std_logic;
SIGNAL \inst15~q\ : std_logic;
SIGNAL \inst4|sub|69~0_combout\ : std_logic;
SIGNAL \inst4|sub|81~1_combout\ : std_logic;
SIGNAL \inst4|sub|81~2_combout\ : std_logic;
SIGNAL \inst4|sub|81~0_combout\ : std_logic;
SIGNAL \inst|9~0_combout\ : std_logic;
SIGNAL \inst|9~1_combout\ : std_logic;
SIGNAL \inst11~q\ : std_logic;
SIGNAL \inst30~combout\ : std_logic;
SIGNAL \inst33|sub|104~0_combout\ : std_logic;
SIGNAL \inst33|sub|78~combout\ : std_logic;
SIGNAL \inst24|sub|81~1_combout\ : std_logic;
SIGNAL \inst24|sub|81~2_combout\ : std_logic;
SIGNAL \inst24|sub|81~3_combout\ : std_logic;
SIGNAL \inst9|10~1_combout\ : std_logic;
SIGNAL \inst16~q\ : std_logic;
SIGNAL \inst|10~0_combout\ : std_logic;
SIGNAL \inst|10~2_combout\ : std_logic;
SIGNAL \inst12~q\ : std_logic;
SIGNAL \inst31~combout\ : std_logic;
SIGNAL \inst33|sub|80~0_combout\ : std_logic;
SIGNAL \inst33|sub|80~combout\ : std_logic;
SIGNAL \inst7|sub|81~0_combout\ : std_logic;
SIGNAL \inst7|sub|81~1_combout\ : std_logic;
SIGNAL \inst7|sub|81~3_combout\ : std_logic;
SIGNAL \inst10|9~1_combout\ : std_logic;
SIGNAL \inst17~q\ : std_logic;
SIGNAL \inst8|9~0_combout\ : std_logic;
SIGNAL \inst8|9~1_combout\ : std_logic;
SIGNAL \inst13~q\ : std_logic;
SIGNAL \inst33|sub|82~0_combout\ : std_logic;
SIGNAL \inst33|sub|105~0_combout\ : std_logic;
SIGNAL \inst33|sub|106~0_combout\ : std_logic;
SIGNAL \inst23|sub|81~0_combout\ : std_logic;
SIGNAL \inst23|sub|81~3_combout\ : std_logic;
SIGNAL \inst10|10~1_combout\ : std_logic;
SIGNAL \inst18~q\ : std_logic;
SIGNAL \inst8|10~0_combout\ : std_logic;
SIGNAL \inst8|10~1_combout\ : std_logic;
SIGNAL \inst14~q\ : std_logic;
SIGNAL \inst33|sub|107~0_combout\ : std_logic;
SIGNAL \inst33|sub|82~combout\ : std_logic;
SIGNAL \inst33|sub|76~0_combout\ : std_logic;
SIGNAL \inst32~combout\ : std_logic;
SIGNAL \inst29~combout\ : std_logic;
SIGNAL \inst28~combout\ : std_logic;
SIGNAL \inst27~combout\ : std_logic;
SIGNAL \inst26~combout\ : std_logic;
SIGNAL \inst25~combout\ : std_logic;
SIGNAL \inst39|inst17~0_combout\ : std_logic;
SIGNAL \inst39|boom2~0_combout\ : std_logic;
SIGNAL \inst39|boom1~0_combout\ : std_logic;
SIGNAL \inst39|boom~0_combout\ : std_logic;
SIGNAL \inst39|boom3~0_combout\ : std_logic;
SIGNAL \inst39|inst50~0_combout\ : std_logic;
SIGNAL \inst39|BOOF~0_combout\ : std_logic;
SIGNAL \inst40|inst17~0_combout\ : std_logic;
SIGNAL \inst40|boom2~0_combout\ : std_logic;
SIGNAL \inst40|boom1~0_combout\ : std_logic;
SIGNAL \inst40|boom~0_combout\ : std_logic;
SIGNAL \inst40|boom3~0_combout\ : std_logic;
SIGNAL \inst40|inst50~0_combout\ : std_logic;
SIGNAL \inst40|BOOF~0_combout\ : std_logic;
SIGNAL \inst41|inst17~0_combout\ : std_logic;
SIGNAL \inst41|boom2~0_combout\ : std_logic;
SIGNAL \inst41|boom1~0_combout\ : std_logic;
SIGNAL \inst41|boom~0_combout\ : std_logic;
SIGNAL \inst41|boom3~0_combout\ : std_logic;
SIGNAL \inst41|inst50~0_combout\ : std_logic;
SIGNAL \inst41|BOOF~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst14~q\ : std_logic;
SIGNAL \ALT_INV_inst13~q\ : std_logic;
SIGNAL \inst39|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst12~q\ : std_logic;
SIGNAL \inst39|ALT_INV_BOOF~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst11~q\ : std_logic;
SIGNAL \inst39|ALT_INV_inst50~0_combout\ : std_logic;
SIGNAL \inst40|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst41|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst40|ALT_INV_BOOF~0_combout\ : std_logic;
SIGNAL \inst41|ALT_INV_inst50~0_combout\ : std_logic;
SIGNAL \inst41|ALT_INV_BOOF~0_combout\ : std_logic;
SIGNAL \inst40|ALT_INV_inst50~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

COUT <= ww_COUT;
ww_CIN <= CIN;
REGA <= ww_REGA;
ww_CLK <= CLK;
MUXA <= ww_MUXA;
ww_INPUT <= INPUT;
REGB <= ww_REGB;
MUXB <= ww_MUXB;
OUTPUT <= ww_OUTPUT;
ww_MSC <= MSC;
REGAsumB <= ww_REGAsumB;
REGAorB <= ww_REGAorB;
REGAandB <= ww_REGAandB;
REGANOT <= ww_REGANOT;
REGALeft <= ww_REGALeft;
REGARight <= ww_REGARight;
ww_MSB <= MSB;
ww_MSA <= MSA;
A <= ww_A;
B <= ww_B;
C <= ww_C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_inst14~q\ <= NOT \inst14~q\;
\ALT_INV_inst13~q\ <= NOT \inst13~q\;
\inst39|ALT_INV_inst17~0_combout\ <= NOT \inst39|inst17~0_combout\;
\ALT_INV_inst12~q\ <= NOT \inst12~q\;
\inst39|ALT_INV_BOOF~0_combout\ <= NOT \inst39|BOOF~0_combout\;
\ALT_INV_inst11~q\ <= NOT \inst11~q\;
\inst39|ALT_INV_inst50~0_combout\ <= NOT \inst39|inst50~0_combout\;
\inst40|ALT_INV_inst17~0_combout\ <= NOT \inst40|inst17~0_combout\;
\inst41|ALT_INV_inst17~0_combout\ <= NOT \inst41|inst17~0_combout\;
\inst40|ALT_INV_BOOF~0_combout\ <= NOT \inst40|BOOF~0_combout\;
\inst41|ALT_INV_inst50~0_combout\ <= NOT \inst41|inst50~0_combout\;
\inst41|ALT_INV_BOOF~0_combout\ <= NOT \inst41|BOOF~0_combout\;
\inst40|ALT_INV_inst50~0_combout\ <= NOT \inst40|inst50~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y50_N12
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

-- Location: IOOBUF_X66_Y54_N9
\COUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|sub|107~0_combout\,
	devoe => ww_devoe,
	o => \COUT~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\REGA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~q\,
	devoe => ww_devoe,
	o => \REGA[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N2
\REGA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13~q\,
	devoe => ww_devoe,
	o => \REGA[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\REGA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~q\,
	devoe => ww_devoe,
	o => \REGA[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\REGA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~q\,
	devoe => ww_devoe,
	o => \REGA[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N30
\MUXA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|10~1_combout\,
	devoe => ww_devoe,
	o => \MUXA[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\MUXA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst8|9~1_combout\,
	devoe => ww_devoe,
	o => \MUXA[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\MUXA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|10~2_combout\,
	devoe => ww_devoe,
	o => \MUXA[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N16
\MUXA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|9~1_combout\,
	devoe => ww_devoe,
	o => \MUXA[0]~output_o\);

-- Location: IOOBUF_X78_Y49_N16
\REGB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18~q\,
	devoe => ww_devoe,
	o => \REGB[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N23
\REGB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17~q\,
	devoe => ww_devoe,
	o => \REGB[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\REGB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16~q\,
	devoe => ww_devoe,
	o => \REGB[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\REGB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~q\,
	devoe => ww_devoe,
	o => \REGB[0]~output_o\);

-- Location: IOOBUF_X71_Y54_N30
\MUXB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|10~1_combout\,
	devoe => ww_devoe,
	o => \MUXB[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\MUXB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|9~1_combout\,
	devoe => ww_devoe,
	o => \MUXB[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\MUXB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|10~1_combout\,
	devoe => ww_devoe,
	o => \MUXB[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\MUXB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9|9~1_combout\,
	devoe => ww_devoe,
	o => \MUXB[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N16
\OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[2]~output_o\);

-- Location: IOOBUF_X78_Y44_N16
\OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[1]~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|sub|81~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\REGAsumB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|sub|82~combout\,
	devoe => ww_devoe,
	o => \REGAsumB[3]~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\REGAsumB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|sub|80~combout\,
	devoe => ww_devoe,
	o => \REGAsumB[2]~output_o\);

-- Location: IOOBUF_X69_Y54_N2
\REGAsumB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|sub|78~combout\,
	devoe => ww_devoe,
	o => \REGAsumB[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N2
\REGAsumB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst33|sub|76~0_combout\,
	devoe => ww_devoe,
	o => \REGAsumB[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\REGAorB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst32~combout\,
	devoe => ww_devoe,
	o => \REGAorB[3]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\REGAorB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst31~combout\,
	devoe => ww_devoe,
	o => \REGAorB[2]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
\REGAorB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst30~combout\,
	devoe => ww_devoe,
	o => \REGAorB[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\REGAorB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst29~combout\,
	devoe => ww_devoe,
	o => \REGAorB[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\REGAandB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28~combout\,
	devoe => ww_devoe,
	o => \REGAandB[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\REGAandB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst27~combout\,
	devoe => ww_devoe,
	o => \REGAandB[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\REGAandB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst26~combout\,
	devoe => ww_devoe,
	o => \REGAandB[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\REGAandB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25~combout\,
	devoe => ww_devoe,
	o => \REGAandB[0]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\REGANOT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst14~q\,
	devoe => ww_devoe,
	o => \REGANOT[3]~output_o\);

-- Location: IOOBUF_X78_Y45_N16
\REGANOT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst13~q\,
	devoe => ww_devoe,
	o => \REGANOT[2]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\REGANOT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst12~q\,
	devoe => ww_devoe,
	o => \REGANOT[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\REGANOT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst11~q\,
	devoe => ww_devoe,
	o => \REGANOT[0]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\REGALeft[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13~q\,
	devoe => ww_devoe,
	o => \REGALeft[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\REGALeft[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~q\,
	devoe => ww_devoe,
	o => \REGALeft[2]~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\REGALeft[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst11~q\,
	devoe => ww_devoe,
	o => \REGALeft[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N9
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

-- Location: IOOBUF_X26_Y39_N2
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

-- Location: IOOBUF_X51_Y54_N16
\REGARight[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~q\,
	devoe => ww_devoe,
	o => \REGARight[2]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\REGARight[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13~q\,
	devoe => ww_devoe,
	o => \REGARight[1]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\REGARight[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~q\,
	devoe => ww_devoe,
	o => \REGARight[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\A[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \A[6]~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\A[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|boom2~0_combout\,
	devoe => ww_devoe,
	o => \A[5]~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\A[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|boom1~0_combout\,
	devoe => ww_devoe,
	o => \A[4]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\A[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|boom~0_combout\,
	devoe => ww_devoe,
	o => \A[3]~output_o\);

-- Location: IOOBUF_X60_Y54_N2
\A[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|boom3~0_combout\,
	devoe => ww_devoe,
	o => \A[2]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\A[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|ALT_INV_inst50~0_combout\,
	devoe => ww_devoe,
	o => \A[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\A[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst39|ALT_INV_BOOF~0_combout\,
	devoe => ww_devoe,
	o => \A[0]~output_o\);

-- Location: IOOBUF_X69_Y54_N30
\B[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \B[6]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\B[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|boom2~0_combout\,
	devoe => ww_devoe,
	o => \B[5]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\B[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|boom1~0_combout\,
	devoe => ww_devoe,
	o => \B[4]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\B[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|boom~0_combout\,
	devoe => ww_devoe,
	o => \B[3]~output_o\);

-- Location: IOOBUF_X78_Y49_N2
\B[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|boom3~0_combout\,
	devoe => ww_devoe,
	o => \B[2]~output_o\);

-- Location: IOOBUF_X78_Y49_N9
\B[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|ALT_INV_inst50~0_combout\,
	devoe => ww_devoe,
	o => \B[1]~output_o\);

-- Location: IOOBUF_X69_Y54_N23
\B[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst40|ALT_INV_BOOF~0_combout\,
	devoe => ww_devoe,
	o => \B[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
\C[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst41|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \C[6]~output_o\);

-- Location: IOOBUF_X78_Y35_N2
\C[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst41|boom2~0_combout\,
	devoe => ww_devoe,
	o => \C[5]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\C[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst41|boom1~0_combout\,
	devoe => ww_devoe,
	o => \C[4]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\C[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst41|boom~0_combout\,
	devoe => ww_devoe,
	o => \C[3]~output_o\);

-- Location: IOOBUF_X69_Y54_N16
\C[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst41|boom3~0_combout\,
	devoe => ww_devoe,
	o => \C[2]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\C[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst41|ALT_INV_inst50~0_combout\,
	devoe => ww_devoe,
	o => \C[1]~output_o\);

-- Location: IOOBUF_X78_Y44_N9
\C[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst41|ALT_INV_BOOF~0_combout\,
	devoe => ww_devoe,
	o => \C[0]~output_o\);

-- Location: IOIBUF_X31_Y0_N22
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

-- Location: CLKCTRL_G19
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

-- Location: IOIBUF_X34_Y0_N22
\MSA[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSA(1),
	o => \MSA[1]~input_o\);

-- Location: IOIBUF_X29_Y0_N22
\MSB[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSB(0),
	o => \MSB[0]~input_o\);

-- Location: IOIBUF_X29_Y0_N15
\MSB[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSB(1),
	o => \MSB[1]~input_o\);

-- Location: IOIBUF_X46_Y0_N8
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

-- Location: LCCOMB_X63_Y50_N16
\inst10|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|10~0_combout\ = (\MSB[0]~input_o\ & ((\MSB[1]~input_o\) # ((\inst14~q\)))) # (!\MSB[0]~input_o\ & (!\MSB[1]~input_o\ & (\INPUT[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB[0]~input_o\,
	datab => \MSB[1]~input_o\,
	datac => \INPUT[3]~input_o\,
	datad => \inst14~q\,
	combout => \inst10|10~0_combout\);

-- Location: IOIBUF_X22_Y0_N15
\MSC[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSC(0),
	o => \MSC[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\MSC[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSC(1),
	o => \MSC[1]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\MSC[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSC(2),
	o => \MSC[2]~input_o\);

-- Location: LCCOMB_X65_Y50_N6
\inst23|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|sub|81~2_combout\ = (\MSC[0]~input_o\ & (((!\MSC[2]~input_o\ & \inst14~q\)) # (!\MSC[1]~input_o\))) # (!\MSC[0]~input_o\ & (\MSC[2]~input_o\ & ((\MSC[1]~input_o\) # (!\inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101001110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[0]~input_o\,
	datab => \MSC[1]~input_o\,
	datac => \MSC[2]~input_o\,
	datad => \inst14~q\,
	combout => \inst23|sub|81~2_combout\);

-- Location: LCCOMB_X65_Y50_N0
\inst23|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|sub|81~1_combout\ = (\MSC[0]~input_o\ & (!\MSC[1]~input_o\ & (\MSC[2]~input_o\))) # (!\MSC[0]~input_o\ & ((\MSC[1]~input_o\ & ((\MSC[2]~input_o\) # (!\inst14~q\))) # (!\MSC[1]~input_o\ & ((\inst14~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[0]~input_o\,
	datab => \MSC[1]~input_o\,
	datac => \MSC[2]~input_o\,
	datad => \inst14~q\,
	combout => \inst23|sub|81~1_combout\);

-- Location: IOIBUF_X31_Y0_N15
\MSA[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MSA(0),
	o => \MSA[0]~input_o\);

-- Location: IOIBUF_X40_Y0_N22
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

-- Location: LCCOMB_X63_Y50_N6
\inst10|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|9~0_combout\ = (\MSB[1]~input_o\ & (((\inst17~q\) # (\MSB[0]~input_o\)))) # (!\MSB[1]~input_o\ & (\INPUT[2]~input_o\ & ((!\MSB[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[2]~input_o\,
	datab => \MSB[1]~input_o\,
	datac => \inst17~q\,
	datad => \MSB[0]~input_o\,
	combout => \inst10|9~0_combout\);

-- Location: LCCOMB_X65_Y50_N20
\inst7|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|sub|81~2_combout\ = (\MSC[0]~input_o\ & (\inst17~q\ & ((\inst13~q\) # (!\MSC[1]~input_o\)))) # (!\MSC[0]~input_o\ & (\MSC[1]~input_o\ $ ((\inst13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[0]~input_o\,
	datab => \MSC[1]~input_o\,
	datac => \inst13~q\,
	datad => \inst17~q\,
	combout => \inst7|sub|81~2_combout\);

-- Location: IOIBUF_X38_Y0_N8
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

-- Location: LCCOMB_X63_Y50_N12
\inst|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|10~1_combout\ = (\MSA[0]~input_o\ & (((\inst12~q\) # (\MSA[1]~input_o\)))) # (!\MSA[0]~input_o\ & (\INPUT[1]~input_o\ & ((!\MSA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSA[0]~input_o\,
	datab => \INPUT[1]~input_o\,
	datac => \inst12~q\,
	datad => \MSA[1]~input_o\,
	combout => \inst|10~1_combout\);

-- Location: LCCOMB_X63_Y50_N0
\inst9|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|10~0_combout\ = (\MSB[0]~input_o\ & ((\MSB[1]~input_o\) # ((\inst12~q\)))) # (!\MSB[0]~input_o\ & (!\MSB[1]~input_o\ & (\INPUT[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB[0]~input_o\,
	datab => \MSB[1]~input_o\,
	datac => \INPUT[1]~input_o\,
	datad => \inst12~q\,
	combout => \inst9|10~0_combout\);

-- Location: LCCOMB_X65_Y50_N26
\inst24|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|sub|81~0_combout\ = (\MSC[0]~input_o\ & (\inst16~q\ & ((\inst12~q\) # (!\MSC[1]~input_o\)))) # (!\MSC[0]~input_o\ & (\MSC[1]~input_o\ $ ((\inst12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[0]~input_o\,
	datab => \MSC[1]~input_o\,
	datac => \inst12~q\,
	datad => \inst16~q\,
	combout => \inst24|sub|81~0_combout\);

-- Location: LCCOMB_X65_Y50_N30
\inst4|sub|66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|sub|66~combout\ = (\MSC[0]~input_o\ & \inst12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \MSC[0]~input_o\,
	datad => \inst12~q\,
	combout => \inst4|sub|66~combout\);

-- Location: IOIBUF_X14_Y0_N1
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

-- Location: IOIBUF_X38_Y0_N15
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

-- Location: LCCOMB_X63_Y50_N22
\inst9|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|9~0_combout\ = (\MSB[0]~input_o\ & (((\MSB[1]~input_o\)))) # (!\MSB[0]~input_o\ & ((\MSB[1]~input_o\ & ((\inst15~q\))) # (!\MSB[1]~input_o\ & (\INPUT[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \MSB[0]~input_o\,
	datac => \inst15~q\,
	datad => \MSB[1]~input_o\,
	combout => \inst9|9~0_combout\);

-- Location: LCCOMB_X65_Y50_N14
\inst9|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|9~1_combout\ = (\MSB[0]~input_o\ & ((\inst9|9~0_combout\ & ((\inst4|sub|81~0_combout\))) # (!\inst9|9~0_combout\ & (\inst11~q\)))) # (!\MSB[0]~input_o\ & (((\inst9|9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	datab => \MSB[0]~input_o\,
	datac => \inst9|9~0_combout\,
	datad => \inst4|sub|81~0_combout\,
	combout => \inst9|9~1_combout\);

-- Location: FF_X64_Y50_N1
inst15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst9|9~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15~q\);

-- Location: LCCOMB_X65_Y50_N8
\inst4|sub|69~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|sub|69~0_combout\ = (\MSC[0]~input_o\ & (\CIN~input_o\ $ (\inst15~q\ $ (\inst11~q\)))) # (!\MSC[0]~input_o\ & (((\inst15~q\) # (\inst11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011101111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[0]~input_o\,
	datab => \CIN~input_o\,
	datac => \inst15~q\,
	datad => \inst11~q\,
	combout => \inst4|sub|69~0_combout\);

-- Location: LCCOMB_X65_Y50_N16
\inst4|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|sub|81~1_combout\ = (\MSC[0]~input_o\ & (\inst15~q\ & ((\inst11~q\) # (!\MSC[1]~input_o\)))) # (!\MSC[0]~input_o\ & (\MSC[1]~input_o\ $ (((\inst11~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000101100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[0]~input_o\,
	datab => \MSC[1]~input_o\,
	datac => \inst15~q\,
	datad => \inst11~q\,
	combout => \inst4|sub|81~1_combout\);

-- Location: LCCOMB_X65_Y50_N2
\inst4|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|sub|81~2_combout\ = (\MSC[2]~input_o\ & (\MSC[1]~input_o\)) # (!\MSC[2]~input_o\ & ((\inst4|sub|81~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \MSC[1]~input_o\,
	datac => \MSC[2]~input_o\,
	datad => \inst4|sub|81~1_combout\,
	combout => \inst4|sub|81~2_combout\);

-- Location: LCCOMB_X65_Y50_N12
\inst4|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|sub|81~0_combout\ = (\MSC[2]~input_o\ & ((\inst4|sub|81~2_combout\ & (\inst4|sub|66~combout\)) # (!\inst4|sub|81~2_combout\ & ((\inst4|sub|69~0_combout\))))) # (!\MSC[2]~input_o\ & (((\inst4|sub|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|sub|66~combout\,
	datab => \MSC[2]~input_o\,
	datac => \inst4|sub|69~0_combout\,
	datad => \inst4|sub|81~2_combout\,
	combout => \inst4|sub|81~0_combout\);

-- Location: LCCOMB_X63_Y50_N2
\inst|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|9~0_combout\ = (\MSA[0]~input_o\ & (((\MSA[1]~input_o\)))) # (!\MSA[0]~input_o\ & ((\MSA[1]~input_o\ & ((\inst15~q\))) # (!\MSA[1]~input_o\ & (\INPUT[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \INPUT[0]~input_o\,
	datab => \inst15~q\,
	datac => \MSA[0]~input_o\,
	datad => \MSA[1]~input_o\,
	combout => \inst|9~0_combout\);

-- Location: LCCOMB_X64_Y50_N14
\inst|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|9~1_combout\ = (\MSA[0]~input_o\ & ((\inst|9~0_combout\ & (\inst4|sub|81~0_combout\)) # (!\inst|9~0_combout\ & ((\inst11~q\))))) # (!\MSA[0]~input_o\ & (((\inst|9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSA[0]~input_o\,
	datab => \inst4|sub|81~0_combout\,
	datac => \inst11~q\,
	datad => \inst|9~0_combout\,
	combout => \inst|9~1_combout\);

-- Location: FF_X64_Y50_N15
inst11 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst|9~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst11~q\);

-- Location: LCCOMB_X63_Y50_N26
inst30 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst30~combout\ = (\inst16~q\) # (\inst12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16~q\,
	datad => \inst12~q\,
	combout => \inst30~combout\);

-- Location: LCCOMB_X64_Y50_N30
\inst33|sub|104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|sub|104~0_combout\ = (\CIN~input_o\ & ((\inst11~q\) # (\inst15~q\))) # (!\CIN~input_o\ & (\inst11~q\ & \inst15~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CIN~input_o\,
	datac => \inst11~q\,
	datad => \inst15~q\,
	combout => \inst33|sub|104~0_combout\);

-- Location: LCCOMB_X64_Y50_N2
\inst33|sub|78\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|sub|78~combout\ = \inst16~q\ $ (\inst33|sub|104~0_combout\ $ (\inst12~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datac => \inst33|sub|104~0_combout\,
	datad => \inst12~q\,
	combout => \inst33|sub|78~combout\);

-- Location: LCCOMB_X64_Y50_N16
\inst24|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|sub|81~1_combout\ = (\MSC[1]~input_o\ & (\MSC[0]~input_o\)) # (!\MSC[1]~input_o\ & ((\MSC[0]~input_o\ & ((\inst33|sub|78~combout\))) # (!\MSC[0]~input_o\ & (\inst30~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[1]~input_o\,
	datab => \MSC[0]~input_o\,
	datac => \inst30~combout\,
	datad => \inst33|sub|78~combout\,
	combout => \inst24|sub|81~1_combout\);

-- Location: LCCOMB_X64_Y50_N22
\inst24|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|sub|81~2_combout\ = (\MSC[1]~input_o\ & ((\inst24|sub|81~1_combout\ & (\inst13~q\)) # (!\inst24|sub|81~1_combout\ & ((\inst11~q\))))) # (!\MSC[1]~input_o\ & (((\inst24|sub|81~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13~q\,
	datab => \MSC[1]~input_o\,
	datac => \inst11~q\,
	datad => \inst24|sub|81~1_combout\,
	combout => \inst24|sub|81~2_combout\);

-- Location: LCCOMB_X63_Y50_N18
\inst24|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|sub|81~3_combout\ = (\MSC[2]~input_o\ & ((\inst24|sub|81~2_combout\))) # (!\MSC[2]~input_o\ & (\inst24|sub|81~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst24|sub|81~0_combout\,
	datac => \MSC[2]~input_o\,
	datad => \inst24|sub|81~2_combout\,
	combout => \inst24|sub|81~3_combout\);

-- Location: LCCOMB_X63_Y50_N28
\inst9|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9|10~1_combout\ = (\inst9|10~0_combout\ & (((\inst24|sub|81~3_combout\)) # (!\MSB[1]~input_o\))) # (!\inst9|10~0_combout\ & (\MSB[1]~input_o\ & (\inst16~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9|10~0_combout\,
	datab => \MSB[1]~input_o\,
	datac => \inst16~q\,
	datad => \inst24|sub|81~3_combout\,
	combout => \inst9|10~1_combout\);

-- Location: FF_X63_Y50_N11
inst16 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst9|10~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16~q\);

-- Location: LCCOMB_X63_Y50_N10
\inst|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|10~0_combout\ = (\MSC[2]~input_o\ & ((\inst24|sub|81~2_combout\))) # (!\MSC[2]~input_o\ & (\inst24|sub|81~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[2]~input_o\,
	datab => \inst24|sub|81~0_combout\,
	datad => \inst24|sub|81~2_combout\,
	combout => \inst|10~0_combout\);

-- Location: LCCOMB_X63_Y50_N8
\inst|10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|10~2_combout\ = (\MSA[1]~input_o\ & ((\inst|10~1_combout\ & ((\inst|10~0_combout\))) # (!\inst|10~1_combout\ & (\inst16~q\)))) # (!\MSA[1]~input_o\ & (\inst|10~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSA[1]~input_o\,
	datab => \inst|10~1_combout\,
	datac => \inst16~q\,
	datad => \inst|10~0_combout\,
	combout => \inst|10~2_combout\);

-- Location: FF_X63_Y50_N13
inst12 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst|10~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst12~q\);

-- Location: LCCOMB_X64_Y50_N0
inst31 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst31~combout\ = (\inst17~q\) # (\inst13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17~q\,
	datad => \inst13~q\,
	combout => \inst31~combout\);

-- Location: LCCOMB_X64_Y50_N24
\inst33|sub|80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|sub|80~0_combout\ = \inst17~q\ $ (\inst13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17~q\,
	datad => \inst13~q\,
	combout => \inst33|sub|80~0_combout\);

-- Location: LCCOMB_X64_Y50_N10
\inst33|sub|80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|sub|80~combout\ = \inst33|sub|80~0_combout\ $ (((\inst12~q\ & ((\inst16~q\) # (\inst33|sub|104~0_combout\))) # (!\inst12~q\ & (\inst16~q\ & \inst33|sub|104~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~q\,
	datab => \inst16~q\,
	datac => \inst33|sub|104~0_combout\,
	datad => \inst33|sub|80~0_combout\,
	combout => \inst33|sub|80~combout\);

-- Location: LCCOMB_X64_Y50_N20
\inst7|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|sub|81~0_combout\ = (\MSC[1]~input_o\ & (\MSC[0]~input_o\)) # (!\MSC[1]~input_o\ & ((\MSC[0]~input_o\ & ((\inst33|sub|80~combout\))) # (!\MSC[0]~input_o\ & (\inst31~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[1]~input_o\,
	datab => \MSC[0]~input_o\,
	datac => \inst31~combout\,
	datad => \inst33|sub|80~combout\,
	combout => \inst7|sub|81~0_combout\);

-- Location: LCCOMB_X64_Y50_N6
\inst7|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|sub|81~1_combout\ = (\MSC[1]~input_o\ & ((\inst7|sub|81~0_combout\ & ((\inst14~q\))) # (!\inst7|sub|81~0_combout\ & (\inst12~q\)))) # (!\MSC[1]~input_o\ & (((\inst7|sub|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~q\,
	datab => \MSC[1]~input_o\,
	datac => \inst14~q\,
	datad => \inst7|sub|81~0_combout\,
	combout => \inst7|sub|81~1_combout\);

-- Location: LCCOMB_X64_Y50_N4
\inst7|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|sub|81~3_combout\ = (\MSC[2]~input_o\ & ((\inst7|sub|81~1_combout\))) # (!\MSC[2]~input_o\ & (\inst7|sub|81~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSC[2]~input_o\,
	datac => \inst7|sub|81~2_combout\,
	datad => \inst7|sub|81~1_combout\,
	combout => \inst7|sub|81~3_combout\);

-- Location: LCCOMB_X63_Y50_N30
\inst10|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|9~1_combout\ = (\MSB[0]~input_o\ & ((\inst10|9~0_combout\ & ((\inst7|sub|81~3_combout\))) # (!\inst10|9~0_combout\ & (\inst13~q\)))) # (!\MSB[0]~input_o\ & (((\inst10|9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSB[0]~input_o\,
	datab => \inst13~q\,
	datac => \inst10|9~0_combout\,
	datad => \inst7|sub|81~3_combout\,
	combout => \inst10|9~1_combout\);

-- Location: FF_X63_Y50_N7
inst17 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst10|9~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17~q\);

-- Location: LCCOMB_X62_Y50_N26
\inst8|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|9~0_combout\ = (\MSA[1]~input_o\ & ((\MSA[0]~input_o\) # ((\inst17~q\)))) # (!\MSA[1]~input_o\ & (!\MSA[0]~input_o\ & ((\INPUT[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSA[1]~input_o\,
	datab => \MSA[0]~input_o\,
	datac => \inst17~q\,
	datad => \INPUT[2]~input_o\,
	combout => \inst8|9~0_combout\);

-- Location: LCCOMB_X63_Y50_N4
\inst8|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|9~1_combout\ = (\MSA[0]~input_o\ & ((\inst8|9~0_combout\ & ((\inst7|sub|81~3_combout\))) # (!\inst8|9~0_combout\ & (\inst13~q\)))) # (!\MSA[0]~input_o\ & (((\inst8|9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSA[0]~input_o\,
	datab => \inst13~q\,
	datac => \inst8|9~0_combout\,
	datad => \inst7|sub|81~3_combout\,
	combout => \inst8|9~1_combout\);

-- Location: FF_X63_Y50_N21
inst13 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|9~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst13~q\);

-- Location: LCCOMB_X63_Y50_N20
\inst33|sub|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|sub|82~0_combout\ = \inst18~q\ $ (\inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst18~q\,
	datad => \inst14~q\,
	combout => \inst33|sub|82~0_combout\);

-- Location: LCCOMB_X64_Y50_N28
\inst33|sub|105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|sub|105~0_combout\ = (\inst12~q\ & ((\inst33|sub|104~0_combout\) # (\inst16~q\))) # (!\inst12~q\ & (\inst33|sub|104~0_combout\ & \inst16~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst12~q\,
	datac => \inst33|sub|104~0_combout\,
	datad => \inst16~q\,
	combout => \inst33|sub|105~0_combout\);

-- Location: LCCOMB_X64_Y50_N18
\inst33|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|sub|106~0_combout\ = (\inst13~q\ & ((\inst17~q\) # (\inst33|sub|105~0_combout\))) # (!\inst13~q\ & (\inst17~q\ & \inst33|sub|105~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst13~q\,
	datac => \inst17~q\,
	datad => \inst33|sub|105~0_combout\,
	combout => \inst33|sub|106~0_combout\);

-- Location: LCCOMB_X64_Y50_N12
\inst23|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|sub|81~0_combout\ = (\MSC[0]~input_o\ & ((\inst33|sub|82~0_combout\ $ (\inst33|sub|106~0_combout\)))) # (!\MSC[0]~input_o\ & (\inst13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst13~q\,
	datab => \MSC[0]~input_o\,
	datac => \inst33|sub|82~0_combout\,
	datad => \inst33|sub|106~0_combout\,
	combout => \inst23|sub|81~0_combout\);

-- Location: LCCOMB_X64_Y50_N26
\inst23|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|sub|81~3_combout\ = (\inst23|sub|81~2_combout\ & ((\inst23|sub|81~1_combout\ & ((\inst23|sub|81~0_combout\))) # (!\inst23|sub|81~1_combout\ & (\inst18~q\)))) # (!\inst23|sub|81~2_combout\ & (((\inst23|sub|81~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|sub|81~2_combout\,
	datab => \inst18~q\,
	datac => \inst23|sub|81~1_combout\,
	datad => \inst23|sub|81~0_combout\,
	combout => \inst23|sub|81~3_combout\);

-- Location: LCCOMB_X64_Y50_N8
\inst10|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|10~1_combout\ = (\inst10|10~0_combout\ & (((\inst23|sub|81~3_combout\)) # (!\MSB[1]~input_o\))) # (!\inst10|10~0_combout\ & (\MSB[1]~input_o\ & (\inst18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|10~0_combout\,
	datab => \MSB[1]~input_o\,
	datac => \inst18~q\,
	datad => \inst23|sub|81~3_combout\,
	combout => \inst10|10~1_combout\);

-- Location: FF_X64_Y50_N9
inst18 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10|10~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18~q\);

-- Location: LCCOMB_X63_Y50_N24
\inst8|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|10~0_combout\ = (\MSA[0]~input_o\ & (((\inst14~q\) # (\MSA[1]~input_o\)))) # (!\MSA[0]~input_o\ & (\INPUT[3]~input_o\ & ((!\MSA[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSA[0]~input_o\,
	datab => \INPUT[3]~input_o\,
	datac => \inst14~q\,
	datad => \MSA[1]~input_o\,
	combout => \inst8|10~0_combout\);

-- Location: LCCOMB_X63_Y50_N14
\inst8|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst8|10~1_combout\ = (\MSA[1]~input_o\ & ((\inst8|10~0_combout\ & ((\inst23|sub|81~3_combout\))) # (!\inst8|10~0_combout\ & (\inst18~q\)))) # (!\MSA[1]~input_o\ & (((\inst8|10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \MSA[1]~input_o\,
	datab => \inst18~q\,
	datac => \inst8|10~0_combout\,
	datad => \inst23|sub|81~3_combout\,
	combout => \inst8|10~1_combout\);

-- Location: FF_X63_Y50_N25
inst14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \inst8|10~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14~q\);

-- Location: LCCOMB_X62_Y50_N16
\inst33|sub|107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|sub|107~0_combout\ = (\inst14~q\ & ((\inst18~q\) # (\inst33|sub|106~0_combout\))) # (!\inst14~q\ & (\inst18~q\ & \inst33|sub|106~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst14~q\,
	datac => \inst18~q\,
	datad => \inst33|sub|106~0_combout\,
	combout => \inst33|sub|107~0_combout\);

-- Location: LCCOMB_X62_Y50_N24
\inst33|sub|82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|sub|82~combout\ = \inst33|sub|82~0_combout\ $ (((\inst33|sub|105~0_combout\ & ((\inst17~q\) # (\inst13~q\))) # (!\inst33|sub|105~0_combout\ & (\inst17~q\ & \inst13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001111001111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst33|sub|105~0_combout\,
	datab => \inst17~q\,
	datac => \inst33|sub|82~0_combout\,
	datad => \inst13~q\,
	combout => \inst33|sub|82~combout\);

-- Location: LCCOMB_X57_Y50_N24
\inst33|sub|76~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst33|sub|76~0_combout\ = \inst15~q\ $ (\inst11~q\ $ (\CIN~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst15~q\,
	datac => \inst11~q\,
	datad => \CIN~input_o\,
	combout => \inst33|sub|76~0_combout\);

-- Location: LCCOMB_X62_Y50_N6
inst32 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst32~combout\ = (\inst18~q\) # (\inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18~q\,
	datad => \inst14~q\,
	combout => \inst32~combout\);

-- Location: LCCOMB_X57_Y50_N22
inst29 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst29~combout\ = (\inst11~q\) # (\inst15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst11~q\,
	datad => \inst15~q\,
	combout => \inst29~combout\);

-- Location: LCCOMB_X62_Y50_N8
inst28 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst28~combout\ = (\inst18~q\ & \inst14~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18~q\,
	datad => \inst14~q\,
	combout => \inst28~combout\);

-- Location: LCCOMB_X62_Y50_N22
inst27 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst27~combout\ = (\inst17~q\ & \inst13~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17~q\,
	datad => \inst13~q\,
	combout => \inst27~combout\);

-- Location: LCCOMB_X51_Y53_N24
inst26 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst26~combout\ = (\inst16~q\ & \inst12~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16~q\,
	datad => \inst12~q\,
	combout => \inst26~combout\);

-- Location: LCCOMB_X55_Y51_N12
inst25 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25~combout\ = (\inst11~q\ & \inst15~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	datad => \inst15~q\,
	combout => \inst25~combout\);

-- Location: LCCOMB_X65_Y50_N4
\inst39|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|inst17~0_combout\ = (\inst11~q\ & ((\inst14~q\) # (\inst12~q\ $ (\inst13~q\)))) # (!\inst11~q\ & ((\inst12~q\) # (\inst13~q\ $ (\inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	datab => \inst12~q\,
	datac => \inst13~q\,
	datad => \inst14~q\,
	combout => \inst39|inst17~0_combout\);

-- Location: LCCOMB_X65_Y50_N18
\inst39|boom2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|boom2~0_combout\ = (\inst11~q\ & (\inst14~q\ $ (((\inst12~q\) # (!\inst13~q\))))) # (!\inst11~q\ & (\inst12~q\ & (!\inst13~q\ & !\inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	datab => \inst12~q\,
	datac => \inst13~q\,
	datad => \inst14~q\,
	combout => \inst39|boom2~0_combout\);

-- Location: LCCOMB_X65_Y50_N28
\inst39|boom1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|boom1~0_combout\ = (\inst12~q\ & (\inst11~q\ & ((!\inst14~q\)))) # (!\inst12~q\ & ((\inst13~q\ & ((!\inst14~q\))) # (!\inst13~q\ & (\inst11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	datab => \inst12~q\,
	datac => \inst13~q\,
	datad => \inst14~q\,
	combout => \inst39|boom1~0_combout\);

-- Location: LCCOMB_X65_Y50_N22
\inst39|boom~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|boom~0_combout\ = (\inst12~q\ & ((\inst11~q\ & (\inst13~q\)) # (!\inst11~q\ & (!\inst13~q\ & \inst14~q\)))) # (!\inst12~q\ & (!\inst14~q\ & (\inst11~q\ $ (\inst13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	datab => \inst12~q\,
	datac => \inst13~q\,
	datad => \inst14~q\,
	combout => \inst39|boom~0_combout\);

-- Location: LCCOMB_X62_Y50_N4
\inst39|boom3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|boom3~0_combout\ = (\inst13~q\ & (\inst14~q\ & ((\inst12~q\) # (!\inst11~q\)))) # (!\inst13~q\ & (!\inst11~q\ & (\inst12~q\ & !\inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	datab => \inst13~q\,
	datac => \inst12~q\,
	datad => \inst14~q\,
	combout => \inst39|boom3~0_combout\);

-- Location: LCCOMB_X65_Y50_N24
\inst39|inst50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|inst50~0_combout\ = (\inst12~q\ & ((\inst11~q\ & ((!\inst14~q\))) # (!\inst11~q\ & (!\inst13~q\)))) # (!\inst12~q\ & ((\inst11~q\ $ (!\inst14~q\)) # (!\inst13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010011110011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	datab => \inst12~q\,
	datac => \inst13~q\,
	datad => \inst14~q\,
	combout => \inst39|inst50~0_combout\);

-- Location: LCCOMB_X62_Y50_N18
\inst39|BOOF~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst39|BOOF~0_combout\ = (\inst13~q\ & ((\inst12~q\) # (\inst11~q\ $ (\inst14~q\)))) # (!\inst13~q\ & ((\inst12~q\ $ (\inst14~q\)) # (!\inst11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst11~q\,
	datab => \inst13~q\,
	datac => \inst12~q\,
	datad => \inst14~q\,
	combout => \inst39|BOOF~0_combout\);

-- Location: LCCOMB_X62_Y50_N28
\inst40|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|inst17~0_combout\ = (\inst15~q\ & ((\inst18~q\) # (\inst16~q\ $ (\inst17~q\)))) # (!\inst15~q\ & ((\inst16~q\) # (\inst18~q\ $ (\inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datab => \inst18~q\,
	datac => \inst17~q\,
	datad => \inst15~q\,
	combout => \inst40|inst17~0_combout\);

-- Location: LCCOMB_X62_Y50_N30
\inst40|boom2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|boom2~0_combout\ = (\inst16~q\ & (!\inst18~q\ & ((\inst15~q\) # (!\inst17~q\)))) # (!\inst16~q\ & (\inst15~q\ & (\inst18~q\ $ (!\inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datab => \inst18~q\,
	datac => \inst17~q\,
	datad => \inst15~q\,
	combout => \inst40|boom2~0_combout\);

-- Location: LCCOMB_X62_Y50_N20
\inst40|boom1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|boom1~0_combout\ = (\inst16~q\ & (!\inst18~q\ & ((\inst15~q\)))) # (!\inst16~q\ & ((\inst17~q\ & (!\inst18~q\)) # (!\inst17~q\ & ((\inst15~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datab => \inst18~q\,
	datac => \inst17~q\,
	datad => \inst15~q\,
	combout => \inst40|boom1~0_combout\);

-- Location: LCCOMB_X62_Y50_N14
\inst40|boom~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|boom~0_combout\ = (\inst16~q\ & ((\inst17~q\ & ((\inst15~q\))) # (!\inst17~q\ & (\inst18~q\ & !\inst15~q\)))) # (!\inst16~q\ & (!\inst18~q\ & (\inst17~q\ $ (\inst15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datab => \inst18~q\,
	datac => \inst17~q\,
	datad => \inst15~q\,
	combout => \inst40|boom~0_combout\);

-- Location: LCCOMB_X62_Y50_N12
\inst40|boom3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|boom3~0_combout\ = (\inst18~q\ & (\inst17~q\ & ((\inst16~q\) # (!\inst15~q\)))) # (!\inst18~q\ & (\inst16~q\ & (!\inst17~q\ & !\inst15~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datab => \inst18~q\,
	datac => \inst17~q\,
	datad => \inst15~q\,
	combout => \inst40|boom3~0_combout\);

-- Location: LCCOMB_X65_Y50_N10
\inst40|inst50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|inst50~0_combout\ = (\inst16~q\ & ((\inst15~q\ & (!\inst18~q\)) # (!\inst15~q\ & ((!\inst17~q\))))) # (!\inst16~q\ & ((\inst18~q\ $ (!\inst15~q\)) # (!\inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datab => \inst18~q\,
	datac => \inst15~q\,
	datad => \inst17~q\,
	combout => \inst40|inst50~0_combout\);

-- Location: LCCOMB_X62_Y50_N10
\inst40|BOOF~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst40|BOOF~0_combout\ = (\inst18~q\ & ((\inst16~q\ $ (!\inst17~q\)) # (!\inst15~q\))) # (!\inst18~q\ & ((\inst16~q\) # (\inst17~q\ $ (!\inst15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011011101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16~q\,
	datab => \inst18~q\,
	datac => \inst17~q\,
	datad => \inst15~q\,
	combout => \inst40|BOOF~0_combout\);

-- Location: LCCOMB_X77_Y43_N16
\inst41|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst41|inst17~0_combout\ = (\inst4|sub|81~0_combout\ & ((\inst23|sub|81~3_combout\) # (\inst7|sub|81~3_combout\ $ (\inst24|sub|81~3_combout\)))) # (!\inst4|sub|81~0_combout\ & ((\inst24|sub|81~3_combout\) # (\inst7|sub|81~3_combout\ $ 
-- (\inst23|sub|81~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|sub|81~3_combout\,
	datab => \inst24|sub|81~3_combout\,
	datac => \inst4|sub|81~0_combout\,
	datad => \inst23|sub|81~3_combout\,
	combout => \inst41|inst17~0_combout\);

-- Location: LCCOMB_X77_Y43_N18
\inst41|boom2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst41|boom2~0_combout\ = (\inst7|sub|81~3_combout\ & (\inst4|sub|81~0_combout\ & (\inst24|sub|81~3_combout\ $ (\inst23|sub|81~3_combout\)))) # (!\inst7|sub|81~3_combout\ & (!\inst23|sub|81~3_combout\ & ((\inst24|sub|81~3_combout\) # 
-- (\inst4|sub|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|sub|81~3_combout\,
	datab => \inst24|sub|81~3_combout\,
	datac => \inst4|sub|81~0_combout\,
	datad => \inst23|sub|81~3_combout\,
	combout => \inst41|boom2~0_combout\);

-- Location: LCCOMB_X77_Y43_N12
\inst41|boom1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst41|boom1~0_combout\ = (\inst24|sub|81~3_combout\ & (((\inst4|sub|81~0_combout\ & !\inst23|sub|81~3_combout\)))) # (!\inst24|sub|81~3_combout\ & ((\inst7|sub|81~3_combout\ & ((!\inst23|sub|81~3_combout\))) # (!\inst7|sub|81~3_combout\ & 
-- (\inst4|sub|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|sub|81~3_combout\,
	datab => \inst24|sub|81~3_combout\,
	datac => \inst4|sub|81~0_combout\,
	datad => \inst23|sub|81~3_combout\,
	combout => \inst41|boom1~0_combout\);

-- Location: LCCOMB_X77_Y43_N2
\inst41|boom~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst41|boom~0_combout\ = (\inst24|sub|81~3_combout\ & ((\inst7|sub|81~3_combout\ & (\inst4|sub|81~0_combout\)) # (!\inst7|sub|81~3_combout\ & (!\inst4|sub|81~0_combout\ & \inst23|sub|81~3_combout\)))) # (!\inst24|sub|81~3_combout\ & 
-- (!\inst23|sub|81~3_combout\ & (\inst7|sub|81~3_combout\ $ (\inst4|sub|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|sub|81~3_combout\,
	datab => \inst24|sub|81~3_combout\,
	datac => \inst4|sub|81~0_combout\,
	datad => \inst23|sub|81~3_combout\,
	combout => \inst41|boom~0_combout\);

-- Location: LCCOMB_X70_Y50_N0
\inst41|boom3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst41|boom3~0_combout\ = (\inst23|sub|81~3_combout\ & (\inst7|sub|81~3_combout\ & ((\inst24|sub|81~3_combout\) # (!\inst4|sub|81~0_combout\)))) # (!\inst23|sub|81~3_combout\ & (\inst24|sub|81~3_combout\ & (!\inst7|sub|81~3_combout\ & 
-- !\inst4|sub|81~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|sub|81~3_combout\,
	datab => \inst24|sub|81~3_combout\,
	datac => \inst7|sub|81~3_combout\,
	datad => \inst4|sub|81~0_combout\,
	combout => \inst41|boom3~0_combout\);

-- Location: LCCOMB_X67_Y50_N8
\inst41|inst50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst41|inst50~0_combout\ = (\inst23|sub|81~3_combout\ & ((\inst4|sub|81~0_combout\ & (!\inst24|sub|81~3_combout\)) # (!\inst4|sub|81~0_combout\ & ((!\inst7|sub|81~3_combout\))))) # (!\inst23|sub|81~3_combout\ & ((\inst24|sub|81~3_combout\ $ 
-- (!\inst4|sub|81~0_combout\)) # (!\inst7|sub|81~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst23|sub|81~3_combout\,
	datab => \inst24|sub|81~3_combout\,
	datac => \inst7|sub|81~3_combout\,
	datad => \inst4|sub|81~0_combout\,
	combout => \inst41|inst50~0_combout\);

-- Location: LCCOMB_X77_Y43_N0
\inst41|BOOF~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst41|BOOF~0_combout\ = (\inst7|sub|81~3_combout\ & ((\inst24|sub|81~3_combout\) # (\inst4|sub|81~0_combout\ $ (\inst23|sub|81~3_combout\)))) # (!\inst7|sub|81~3_combout\ & ((\inst24|sub|81~3_combout\ $ (\inst23|sub|81~3_combout\)) # 
-- (!\inst4|sub|81~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|sub|81~3_combout\,
	datab => \inst24|sub|81~3_combout\,
	datac => \inst4|sub|81~0_combout\,
	datad => \inst23|sub|81~3_combout\,
	combout => \inst41|BOOF~0_combout\);

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

ww_COUT <= \COUT~output_o\;

ww_REGA(3) <= \REGA[3]~output_o\;

ww_REGA(2) <= \REGA[2]~output_o\;

ww_REGA(1) <= \REGA[1]~output_o\;

ww_REGA(0) <= \REGA[0]~output_o\;

ww_MUXA(3) <= \MUXA[3]~output_o\;

ww_MUXA(2) <= \MUXA[2]~output_o\;

ww_MUXA(1) <= \MUXA[1]~output_o\;

ww_MUXA(0) <= \MUXA[0]~output_o\;

ww_REGB(3) <= \REGB[3]~output_o\;

ww_REGB(2) <= \REGB[2]~output_o\;

ww_REGB(1) <= \REGB[1]~output_o\;

ww_REGB(0) <= \REGB[0]~output_o\;

ww_MUXB(3) <= \MUXB[3]~output_o\;

ww_MUXB(2) <= \MUXB[2]~output_o\;

ww_MUXB(1) <= \MUXB[1]~output_o\;

ww_MUXB(0) <= \MUXB[0]~output_o\;

ww_OUTPUT(3) <= \OUTPUT[3]~output_o\;

ww_OUTPUT(2) <= \OUTPUT[2]~output_o\;

ww_OUTPUT(1) <= \OUTPUT[1]~output_o\;

ww_OUTPUT(0) <= \OUTPUT[0]~output_o\;

ww_REGAsumB(3) <= \REGAsumB[3]~output_o\;

ww_REGAsumB(2) <= \REGAsumB[2]~output_o\;

ww_REGAsumB(1) <= \REGAsumB[1]~output_o\;

ww_REGAsumB(0) <= \REGAsumB[0]~output_o\;

ww_REGAorB(3) <= \REGAorB[3]~output_o\;

ww_REGAorB(2) <= \REGAorB[2]~output_o\;

ww_REGAorB(1) <= \REGAorB[1]~output_o\;

ww_REGAorB(0) <= \REGAorB[0]~output_o\;

ww_REGAandB(3) <= \REGAandB[3]~output_o\;

ww_REGAandB(2) <= \REGAandB[2]~output_o\;

ww_REGAandB(1) <= \REGAandB[1]~output_o\;

ww_REGAandB(0) <= \REGAandB[0]~output_o\;

ww_REGANOT(3) <= \REGANOT[3]~output_o\;

ww_REGANOT(2) <= \REGANOT[2]~output_o\;

ww_REGANOT(1) <= \REGANOT[1]~output_o\;

ww_REGANOT(0) <= \REGANOT[0]~output_o\;

ww_REGALeft(3) <= \REGALeft[3]~output_o\;

ww_REGALeft(2) <= \REGALeft[2]~output_o\;

ww_REGALeft(1) <= \REGALeft[1]~output_o\;

ww_REGALeft(0) <= \REGALeft[0]~output_o\;

ww_REGARight(3) <= \REGARight[3]~output_o\;

ww_REGARight(2) <= \REGARight[2]~output_o\;

ww_REGARight(1) <= \REGARight[1]~output_o\;

ww_REGARight(0) <= \REGARight[0]~output_o\;

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
END structure;


