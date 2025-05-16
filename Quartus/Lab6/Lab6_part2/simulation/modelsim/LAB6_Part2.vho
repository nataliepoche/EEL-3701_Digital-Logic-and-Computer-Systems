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

-- DATE "04/10/2025 17:15:07"

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

ENTITY 	LAB6_Part2 IS
    PORT (
	IR_LD : OUT std_logic;
	IROUT : OUT std_logic_vector(2 DOWNTO 0);
	CLK : OUT std_logic;
	MEM_CLK : IN std_logic;
	Reset_L : IN std_logic;
	Address : OUT std_logic_vector(14 DOWNTO 0);
	PC : OUT std_logic_vector(3 DOWNTO 0);
	PC_INC : OUT std_logic;
	PC_LD : OUT std_logic;
	X : OUT std_logic_vector(7 DOWNTO 0);
	Q : OUT std_logic_vector(1 DOWNTO 0);
	D : OUT std_logic_vector(1 DOWNTO 0);
	COUT : OUT std_logic;
	CIN : IN std_logic;
	MSA : OUT std_logic_vector(1 DOWNTO 0);
	MSB : OUT std_logic_vector(1 DOWNTO 0);
	MSC : OUT std_logic_vector(2 DOWNTO 0);
	DPA : OUT std_logic;
	DPB : OUT std_logic;
	AA : OUT std_logic_vector(6 DOWNTO 0);
	REGA : OUT std_logic_vector(3 DOWNTO 0);
	BB : OUT std_logic_vector(6 DOWNTO 0);
	REGB : OUT std_logic_vector(3 DOWNTO 0);
	CC : OUT std_logic_vector(6 DOWNTO 0);
	OUTPUT : OUT std_logic_vector(3 DOWNTO 0);
	MUXA : OUT std_logic_vector(3 DOWNTO 0);
	MUXB : OUT std_logic_vector(3 DOWNTO 0)
	);
END LAB6_Part2;

-- Design Ports Information
-- IR_LD	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[2]	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[1]	=>  Location: PIN_B21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- IROUT[0]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_K15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[14]	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[13]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[12]	=>  Location: PIN_AB17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[11]	=>  Location: PIN_Y16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[10]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[9]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[8]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[7]	=>  Location: PIN_P13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[6]	=>  Location: PIN_AA10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[5]	=>  Location: PIN_W13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[4]	=>  Location: PIN_AB14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[3]	=>  Location: PIN_C9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[2]	=>  Location: PIN_H12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[1]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Address[0]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[3]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[2]	=>  Location: PIN_B12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC[0]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_INC	=>  Location: PIN_B11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- PC_LD	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[6]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[5]	=>  Location: PIN_J11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[4]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_A21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_E10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[1]	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D[0]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- COUT	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[1]	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSA[0]	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[1]	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSB[0]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[2]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[1]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MSC[0]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DPA	=>  Location: PIN_L19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- DPB	=>  Location: PIN_F17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AA[6]	=>  Location: PIN_N20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AA[5]	=>  Location: PIN_N19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AA[4]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AA[3]	=>  Location: PIN_N18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AA[2]	=>  Location: PIN_L18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AA[1]	=>  Location: PIN_K20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- AA[0]	=>  Location: PIN_J20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[3]	=>  Location: PIN_B22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[2]	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGA[0]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BB[6]	=>  Location: PIN_F20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BB[5]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BB[4]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BB[3]	=>  Location: PIN_J18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BB[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BB[1]	=>  Location: PIN_E20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BB[0]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[3]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[2]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[1]	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- REGB[0]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CC[6]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CC[5]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CC[4]	=>  Location: PIN_C20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CC[3]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CC[2]	=>  Location: PIN_E21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CC[1]	=>  Location: PIN_E22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CC[0]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[3]	=>  Location: PIN_K14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[2]	=>  Location: PIN_K18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[1]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- OUTPUT[0]	=>  Location: PIN_J14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXA[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXA[2]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXA[1]	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXA[0]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXB[3]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXB[2]	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXB[1]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MUXB[0]	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Reset_L	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- MEM_CLK	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF LAB6_Part2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_IR_LD : std_logic;
SIGNAL ww_IROUT : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_MEM_CLK : std_logic;
SIGNAL ww_Reset_L : std_logic;
SIGNAL ww_Address : std_logic_vector(14 DOWNTO 0);
SIGNAL ww_PC : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_PC_INC : std_logic;
SIGNAL ww_PC_LD : std_logic;
SIGNAL ww_X : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_Q : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_D : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_COUT : std_logic;
SIGNAL ww_CIN : std_logic;
SIGNAL ww_MSA : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSB : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_MSC : std_logic_vector(2 DOWNTO 0);
SIGNAL ww_DPA : std_logic;
SIGNAL ww_DPB : std_logic;
SIGNAL ww_AA : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_REGA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_BB : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_REGB : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CC : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_OUTPUT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MUXA : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_MUXB : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst22|inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst22|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst22|inst1~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \MEM_CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \IR_LD~output_o\ : std_logic;
SIGNAL \IROUT[2]~output_o\ : std_logic;
SIGNAL \IROUT[1]~output_o\ : std_logic;
SIGNAL \IROUT[0]~output_o\ : std_logic;
SIGNAL \CLK~output_o\ : std_logic;
SIGNAL \Address[14]~output_o\ : std_logic;
SIGNAL \Address[13]~output_o\ : std_logic;
SIGNAL \Address[12]~output_o\ : std_logic;
SIGNAL \Address[11]~output_o\ : std_logic;
SIGNAL \Address[10]~output_o\ : std_logic;
SIGNAL \Address[9]~output_o\ : std_logic;
SIGNAL \Address[8]~output_o\ : std_logic;
SIGNAL \Address[7]~output_o\ : std_logic;
SIGNAL \Address[6]~output_o\ : std_logic;
SIGNAL \Address[5]~output_o\ : std_logic;
SIGNAL \Address[4]~output_o\ : std_logic;
SIGNAL \Address[3]~output_o\ : std_logic;
SIGNAL \Address[2]~output_o\ : std_logic;
SIGNAL \Address[1]~output_o\ : std_logic;
SIGNAL \Address[0]~output_o\ : std_logic;
SIGNAL \PC[3]~output_o\ : std_logic;
SIGNAL \PC[2]~output_o\ : std_logic;
SIGNAL \PC[1]~output_o\ : std_logic;
SIGNAL \PC[0]~output_o\ : std_logic;
SIGNAL \PC_INC~output_o\ : std_logic;
SIGNAL \PC_LD~output_o\ : std_logic;
SIGNAL \X[7]~output_o\ : std_logic;
SIGNAL \X[6]~output_o\ : std_logic;
SIGNAL \X[5]~output_o\ : std_logic;
SIGNAL \X[4]~output_o\ : std_logic;
SIGNAL \X[3]~output_o\ : std_logic;
SIGNAL \X[2]~output_o\ : std_logic;
SIGNAL \X[1]~output_o\ : std_logic;
SIGNAL \X[0]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \D[1]~output_o\ : std_logic;
SIGNAL \D[0]~output_o\ : std_logic;
SIGNAL \COUT~output_o\ : std_logic;
SIGNAL \MSA[1]~output_o\ : std_logic;
SIGNAL \MSA[0]~output_o\ : std_logic;
SIGNAL \MSB[1]~output_o\ : std_logic;
SIGNAL \MSB[0]~output_o\ : std_logic;
SIGNAL \MSC[2]~output_o\ : std_logic;
SIGNAL \MSC[1]~output_o\ : std_logic;
SIGNAL \MSC[0]~output_o\ : std_logic;
SIGNAL \DPA~output_o\ : std_logic;
SIGNAL \DPB~output_o\ : std_logic;
SIGNAL \AA[6]~output_o\ : std_logic;
SIGNAL \AA[5]~output_o\ : std_logic;
SIGNAL \AA[4]~output_o\ : std_logic;
SIGNAL \AA[3]~output_o\ : std_logic;
SIGNAL \AA[2]~output_o\ : std_logic;
SIGNAL \AA[1]~output_o\ : std_logic;
SIGNAL \AA[0]~output_o\ : std_logic;
SIGNAL \REGA[3]~output_o\ : std_logic;
SIGNAL \REGA[2]~output_o\ : std_logic;
SIGNAL \REGA[1]~output_o\ : std_logic;
SIGNAL \REGA[0]~output_o\ : std_logic;
SIGNAL \BB[6]~output_o\ : std_logic;
SIGNAL \BB[5]~output_o\ : std_logic;
SIGNAL \BB[4]~output_o\ : std_logic;
SIGNAL \BB[3]~output_o\ : std_logic;
SIGNAL \BB[2]~output_o\ : std_logic;
SIGNAL \BB[1]~output_o\ : std_logic;
SIGNAL \BB[0]~output_o\ : std_logic;
SIGNAL \REGB[3]~output_o\ : std_logic;
SIGNAL \REGB[2]~output_o\ : std_logic;
SIGNAL \REGB[1]~output_o\ : std_logic;
SIGNAL \REGB[0]~output_o\ : std_logic;
SIGNAL \CC[6]~output_o\ : std_logic;
SIGNAL \CC[5]~output_o\ : std_logic;
SIGNAL \CC[4]~output_o\ : std_logic;
SIGNAL \CC[3]~output_o\ : std_logic;
SIGNAL \CC[2]~output_o\ : std_logic;
SIGNAL \CC[1]~output_o\ : std_logic;
SIGNAL \CC[0]~output_o\ : std_logic;
SIGNAL \OUTPUT[3]~output_o\ : std_logic;
SIGNAL \OUTPUT[2]~output_o\ : std_logic;
SIGNAL \OUTPUT[1]~output_o\ : std_logic;
SIGNAL \OUTPUT[0]~output_o\ : std_logic;
SIGNAL \MUXA[3]~output_o\ : std_logic;
SIGNAL \MUXA[2]~output_o\ : std_logic;
SIGNAL \MUXA[1]~output_o\ : std_logic;
SIGNAL \MUXA[0]~output_o\ : std_logic;
SIGNAL \MUXB[3]~output_o\ : std_logic;
SIGNAL \MUXB[2]~output_o\ : std_logic;
SIGNAL \MUXB[1]~output_o\ : std_logic;
SIGNAL \MUXB[0]~output_o\ : std_logic;
SIGNAL \MEM_CLK~input_o\ : std_logic;
SIGNAL \MEM_CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst22|inst1~0_combout\ : std_logic;
SIGNAL \inst22|inst1~feeder_combout\ : std_logic;
SIGNAL \Reset_L~input_o\ : std_logic;
SIGNAL \inst22|inst1~q\ : std_logic;
SIGNAL \inst22|inst1~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|PC_INC~1_combout\ : std_logic;
SIGNAL \inst2|sub|92~0_combout\ : std_logic;
SIGNAL \inst2|sub|92~1_combout\ : std_logic;
SIGNAL \inst2|sub|87~q\ : std_logic;
SIGNAL \inst2|sub|106~0_combout\ : std_logic;
SIGNAL \inst22|inst|altsyncram_component|auto_generated|ram_block1a11\ : std_logic;
SIGNAL \inst2|sub|109~0_combout\ : std_logic;
SIGNAL \inst2|sub|110~q\ : std_logic;
SIGNAL \inst22|inst|altsyncram_component|auto_generated|ram_block1a10\ : std_logic;
SIGNAL \inst2|sub|97~combout\ : std_logic;
SIGNAL \inst2|sub|102~0_combout\ : std_logic;
SIGNAL \inst2|sub|99~q\ : std_logic;
SIGNAL \inst22|inst|altsyncram_component|auto_generated|ram_block1a9\ : std_logic;
SIGNAL \inst1|inst7~q\ : std_logic;
SIGNAL \inst1|inst2~q\ : std_logic;
SIGNAL \inst5|D[1]~0_combout\ : std_logic;
SIGNAL \inst5|MSC[0]~0_combout\ : std_logic;
SIGNAL \inst5|D[1]~1_combout\ : std_logic;
SIGNAL \inst18~q\ : std_logic;
SIGNAL \inst5|PC_INC~combout\ : std_logic;
SIGNAL \inst2|sub|75~0_combout\ : std_logic;
SIGNAL \inst2|sub|9~q\ : std_logic;
SIGNAL \inst22|inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\ : std_logic;
SIGNAL \inst1|inst6~q\ : std_logic;
SIGNAL \inst5|PC_INC~0_combout\ : std_logic;
SIGNAL \inst5|D[0]~2_combout\ : std_logic;
SIGNAL \inst19~q\ : std_logic;
SIGNAL \inst5|IR_LD~0_combout\ : std_logic;
SIGNAL \inst22|inst|altsyncram_component|auto_generated|ram_block1a15\ : std_logic;
SIGNAL \inst22|inst|altsyncram_component|auto_generated|ram_block1a14\ : std_logic;
SIGNAL \inst22|inst|altsyncram_component|auto_generated|ram_block1a13\ : std_logic;
SIGNAL \inst22|inst|altsyncram_component|auto_generated|ram_block1a12\ : std_logic;
SIGNAL \inst5|MSA[1]~0_combout\ : std_logic;
SIGNAL \inst10|inst8|10~0_combout\ : std_logic;
SIGNAL \inst5|MSC[1]~1_combout\ : std_logic;
SIGNAL \inst5|MSC[0]~2_combout\ : std_logic;
SIGNAL \inst10|inst4|sub|66~combout\ : std_logic;
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \inst10|inst9|9~0_combout\ : std_logic;
SIGNAL \inst10|inst15~q\ : std_logic;
SIGNAL \inst10|inst4|sub|69~0_combout\ : std_logic;
SIGNAL \inst10|inst4|sub|81~1_combout\ : std_logic;
SIGNAL \inst10|inst4|sub|81~2_combout\ : std_logic;
SIGNAL \inst10|inst4|sub|81~0_combout\ : std_logic;
SIGNAL \inst10|inst|9~0_combout\ : std_logic;
SIGNAL \inst10|inst|9~1_combout\ : std_logic;
SIGNAL \inst10|inst11~q\ : std_logic;
SIGNAL \inst10|inst24|sub|81~1_combout\ : std_logic;
SIGNAL \inst10|inst9|10~0_combout\ : std_logic;
SIGNAL \inst10|inst16~q\ : std_logic;
SIGNAL \inst10|inst33|sub|104~0_combout\ : std_logic;
SIGNAL \inst10|inst24|sub|81~0_combout\ : std_logic;
SIGNAL \inst10|inst24|sub|81~2_combout\ : std_logic;
SIGNAL \inst10|inst|10~0_combout\ : std_logic;
SIGNAL \inst10|inst|10~1_combout\ : std_logic;
SIGNAL \inst10|inst12~q\ : std_logic;
SIGNAL \inst10|inst10|9~0_combout\ : std_logic;
SIGNAL \inst10|inst17~q\ : std_logic;
SIGNAL \inst10|inst31~combout\ : std_logic;
SIGNAL \inst10|inst33|sub|80~0_combout\ : std_logic;
SIGNAL \inst10|inst33|sub|80~combout\ : std_logic;
SIGNAL \inst10|inst7|sub|81~1_combout\ : std_logic;
SIGNAL \inst10|inst7|sub|81~2_combout\ : std_logic;
SIGNAL \inst10|inst8|9~0_combout\ : std_logic;
SIGNAL \inst10|inst8|9~1_combout\ : std_logic;
SIGNAL \inst10|inst13~q\ : std_logic;
SIGNAL \inst10|inst10|10~0_combout\ : std_logic;
SIGNAL \inst10|inst18~feeder_combout\ : std_logic;
SIGNAL \inst10|inst18~q\ : std_logic;
SIGNAL \inst10|inst33|sub|106~0_combout\ : std_logic;
SIGNAL \inst10|inst33|sub|106~1_combout\ : std_logic;
SIGNAL \inst10|inst23|sub|81~2_combout\ : std_logic;
SIGNAL \inst10|inst23|sub|81~3_combout\ : std_logic;
SIGNAL \inst10|inst23|sub|81~5_combout\ : std_logic;
SIGNAL \inst10|inst8|10~1_combout\ : std_logic;
SIGNAL \inst10|inst14~feeder_combout\ : std_logic;
SIGNAL \inst10|inst14~q\ : std_logic;
SIGNAL \inst10|inst33|sub|107~0_combout\ : std_logic;
SIGNAL \inst23|inst17~0_combout\ : std_logic;
SIGNAL \inst23|boom2~0_combout\ : std_logic;
SIGNAL \inst23|boom1~0_combout\ : std_logic;
SIGNAL \inst23|boom~0_combout\ : std_logic;
SIGNAL \inst23|boom3~0_combout\ : std_logic;
SIGNAL \inst23|inst50~0_combout\ : std_logic;
SIGNAL \inst23|BOOF~0_combout\ : std_logic;
SIGNAL \inst24|inst17~0_combout\ : std_logic;
SIGNAL \inst24|boom2~0_combout\ : std_logic;
SIGNAL \inst24|boom1~0_combout\ : std_logic;
SIGNAL \inst24|boom~0_combout\ : std_logic;
SIGNAL \inst24|boom3~0_combout\ : std_logic;
SIGNAL \inst24|inst50~0_combout\ : std_logic;
SIGNAL \inst24|BOOF~0_combout\ : std_logic;
SIGNAL \inst10|inst7|sub|81~0_combout\ : std_logic;
SIGNAL \inst10|inst24|sub|81~3_combout\ : std_logic;
SIGNAL \inst10|inst7|sub|81~3_combout\ : std_logic;
SIGNAL \inst10|inst23|sub|81~4_combout\ : std_logic;
SIGNAL \inst25|inst17~0_combout\ : std_logic;
SIGNAL \inst25|boom2~0_combout\ : std_logic;
SIGNAL \inst25|boom1~0_combout\ : std_logic;
SIGNAL \inst25|boom~0_combout\ : std_logic;
SIGNAL \inst25|boom3~0_combout\ : std_logic;
SIGNAL \inst25|inst50~0_combout\ : std_logic;
SIGNAL \inst25|BOOF~0_combout\ : std_logic;
SIGNAL \inst5|MSA\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|MSB\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst5|ALT_INV_PC_INC~combout\ : std_logic;
SIGNAL \inst24|ALT_INV_inst50~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_BOOF~0_combout\ : std_logic;
SIGNAL \inst24|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst23|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst25|ALT_INV_BOOF~0_combout\ : std_logic;
SIGNAL \inst25|ALT_INV_inst50~0_combout\ : std_logic;
SIGNAL \inst23|ALT_INV_BOOF~0_combout\ : std_logic;
SIGNAL \inst23|ALT_INV_inst50~0_combout\ : std_logic;
SIGNAL \inst25|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst5|ALT_INV_MSB\ : std_logic_vector(1 DOWNTO 1);

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

IR_LD <= ww_IR_LD;
IROUT <= ww_IROUT;
CLK <= ww_CLK;
ww_MEM_CLK <= MEM_CLK;
ww_Reset_L <= Reset_L;
Address <= ww_Address;
PC <= ww_PC;
PC_INC <= ww_PC_INC;
PC_LD <= ww_PC_LD;
X <= ww_X;
Q <= ww_Q;
D <= ww_D;
COUT <= ww_COUT;
ww_CIN <= CIN;
MSA <= ww_MSA;
MSB <= ww_MSB;
MSC <= ww_MSC;
DPA <= ww_DPA;
DPB <= ww_DPB;
AA <= ww_AA;
REGA <= ww_REGA;
BB <= ww_BB;
REGB <= ww_REGB;
CC <= ww_CC;
OUTPUT <= ww_OUTPUT;
MUXA <= ww_MUXA;
MUXB <= ww_MUXB;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst22|inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\ <= (\inst2|sub|110~q\ & \inst2|sub|99~q\ & \inst2|sub|87~q\ & \inst2|sub|9~q\);

\inst22|inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\ <= \inst22|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(0);
\inst22|inst|altsyncram_component|auto_generated|ram_block1a9\ <= \inst22|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(1);
\inst22|inst|altsyncram_component|auto_generated|ram_block1a10\ <= \inst22|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(2);
\inst22|inst|altsyncram_component|auto_generated|ram_block1a11\ <= \inst22|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(3);
\inst22|inst|altsyncram_component|auto_generated|ram_block1a12\ <= \inst22|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(4);
\inst22|inst|altsyncram_component|auto_generated|ram_block1a13\ <= \inst22|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(5);
\inst22|inst|altsyncram_component|auto_generated|ram_block1a14\ <= \inst22|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(6);
\inst22|inst|altsyncram_component|auto_generated|ram_block1a15\ <= \inst22|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\(7);

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\inst22|inst1~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst22|inst1~q\);

\MEM_CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \MEM_CLK~input_o\);
\inst5|ALT_INV_PC_INC~combout\ <= NOT \inst5|PC_INC~combout\;
\inst24|ALT_INV_inst50~0_combout\ <= NOT \inst24|inst50~0_combout\;
\inst24|ALT_INV_BOOF~0_combout\ <= NOT \inst24|BOOF~0_combout\;
\inst24|ALT_INV_inst17~0_combout\ <= NOT \inst24|inst17~0_combout\;
\inst23|ALT_INV_inst17~0_combout\ <= NOT \inst23|inst17~0_combout\;
\inst25|ALT_INV_BOOF~0_combout\ <= NOT \inst25|BOOF~0_combout\;
\inst25|ALT_INV_inst50~0_combout\ <= NOT \inst25|inst50~0_combout\;
\inst23|ALT_INV_BOOF~0_combout\ <= NOT \inst23|BOOF~0_combout\;
\inst23|ALT_INV_inst50~0_combout\ <= NOT \inst23|inst50~0_combout\;
\inst25|ALT_INV_inst17~0_combout\ <= NOT \inst25|inst17~0_combout\;
\inst5|ALT_INV_MSB\(1) <= NOT \inst5|MSB\(1);
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y47_N20
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

-- Location: IOOBUF_X54_Y54_N16
\IR_LD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|IR_LD~0_combout\,
	devoe => ww_devoe,
	o => \IR_LD~output_o\);

-- Location: IOOBUF_X56_Y54_N9
\IROUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst2~q\,
	devoe => ww_devoe,
	o => \IROUT[2]~output_o\);

-- Location: IOOBUF_X78_Y43_N2
\IROUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst7~q\,
	devoe => ww_devoe,
	o => \IROUT[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N23
\IROUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst6~q\,
	devoe => ww_devoe,
	o => \IROUT[0]~output_o\);

-- Location: IOOBUF_X78_Y41_N16
\CLK~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst1~q\,
	devoe => ww_devoe,
	o => \CLK~output_o\);

-- Location: IOOBUF_X0_Y16_N16
\Address[14]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address[14]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\Address[13]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Address[13]~output_o\);

-- Location: IOOBUF_X69_Y0_N23
\Address[12]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address[12]~output_o\);

-- Location: IOOBUF_X54_Y0_N23
\Address[11]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Address[11]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\Address[10]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address[10]~output_o\);

-- Location: IOOBUF_X22_Y0_N30
\Address[9]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Address[9]~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\Address[8]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Address[8]~output_o\);

-- Location: IOOBUF_X51_Y0_N30
\Address[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Address[7]~output_o\);

-- Location: IOOBUF_X34_Y0_N2
\Address[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Address[6]~output_o\);

-- Location: IOOBUF_X46_Y0_N2
\Address[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Address[5]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\Address[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Address[4]~output_o\);

-- Location: IOOBUF_X46_Y54_N16
\Address[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sub|110~q\,
	devoe => ww_devoe,
	o => \Address[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N16
\Address[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sub|99~q\,
	devoe => ww_devoe,
	o => \Address[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N30
\Address[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sub|87~q\,
	devoe => ww_devoe,
	o => \Address[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N30
\Address[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sub|9~q\,
	devoe => ww_devoe,
	o => \Address[0]~output_o\);

-- Location: IOOBUF_X46_Y54_N9
\PC[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sub|110~q\,
	devoe => ww_devoe,
	o => \PC[3]~output_o\);

-- Location: IOOBUF_X49_Y54_N2
\PC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sub|99~q\,
	devoe => ww_devoe,
	o => \PC[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N23
\PC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sub|87~q\,
	devoe => ww_devoe,
	o => \PC[1]~output_o\);

-- Location: IOOBUF_X64_Y54_N2
\PC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|sub|9~q\,
	devoe => ww_devoe,
	o => \PC[0]~output_o\);

-- Location: IOOBUF_X49_Y54_N9
\PC_INC~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_PC_INC~combout\,
	devoe => ww_devoe,
	o => \PC_INC~output_o\);

-- Location: IOOBUF_X54_Y54_N30
\PC_LD~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|PC_INC~1_combout\,
	devoe => ww_devoe,
	o => \PC_LD~output_o\);

-- Location: IOOBUF_X36_Y39_N16
\X[7]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst|altsyncram_component|auto_generated|ram_block1a15\,
	devoe => ww_devoe,
	o => \X[7]~output_o\);

-- Location: IOOBUF_X49_Y54_N30
\X[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst|altsyncram_component|auto_generated|ram_block1a14\,
	devoe => ww_devoe,
	o => \X[6]~output_o\);

-- Location: IOOBUF_X49_Y54_N23
\X[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst|altsyncram_component|auto_generated|ram_block1a13\,
	devoe => ww_devoe,
	o => \X[5]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\X[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst|altsyncram_component|auto_generated|ram_block1a12\,
	devoe => ww_devoe,
	o => \X[4]~output_o\);

-- Location: IOOBUF_X78_Y44_N2
\X[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst|altsyncram_component|auto_generated|ram_block1a11\,
	devoe => ww_devoe,
	o => \X[3]~output_o\);

-- Location: IOOBUF_X36_Y39_N23
\X[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst|altsyncram_component|auto_generated|ram_block1a10\,
	devoe => ww_devoe,
	o => \X[2]~output_o\);

-- Location: IOOBUF_X46_Y54_N2
\X[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst|altsyncram_component|auto_generated|ram_block1a9\,
	devoe => ww_devoe,
	o => \X[1]~output_o\);

-- Location: IOOBUF_X36_Y39_N30
\X[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst22|inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	devoe => ww_devoe,
	o => \X[0]~output_o\);

-- Location: IOOBUF_X62_Y54_N30
\Q[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst18~q\,
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N30
\Q[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst19~q\,
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\D[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|D[1]~1_combout\,
	devoe => ww_devoe,
	o => \D[1]~output_o\);

-- Location: IOOBUF_X54_Y54_N23
\D[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|D[0]~2_combout\,
	devoe => ww_devoe,
	o => \D[0]~output_o\);

-- Location: IOOBUF_X78_Y35_N9
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

-- Location: IOOBUF_X60_Y54_N2
\MSA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|MSA[1]~0_combout\,
	devoe => ww_devoe,
	o => \MSA[1]~output_o\);

-- Location: IOOBUF_X56_Y54_N16
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

-- Location: IOOBUF_X66_Y54_N9
\MSB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|MSB\(1),
	devoe => ww_devoe,
	o => \MSB[1]~output_o\);

-- Location: IOOBUF_X66_Y54_N2
\MSB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_MSB\(1),
	devoe => ww_devoe,
	o => \MSB[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\MSC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|MSA[1]~0_combout\,
	devoe => ww_devoe,
	o => \MSC[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\MSC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|MSC[1]~1_combout\,
	devoe => ww_devoe,
	o => \MSC[1]~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\MSC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|MSC[0]~2_combout\,
	devoe => ww_devoe,
	o => \MSC[0]~output_o\);

-- Location: IOOBUF_X78_Y37_N9
\DPA~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DPA~output_o\);

-- Location: IOOBUF_X78_Y43_N23
\DPB~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \DPB~output_o\);

-- Location: IOOBUF_X78_Y34_N2
\AA[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \AA[6]~output_o\);

-- Location: IOOBUF_X78_Y34_N16
\AA[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|boom2~0_combout\,
	devoe => ww_devoe,
	o => \AA[5]~output_o\);

-- Location: IOOBUF_X78_Y34_N9
\AA[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|boom1~0_combout\,
	devoe => ww_devoe,
	o => \AA[4]~output_o\);

-- Location: IOOBUF_X78_Y34_N24
\AA[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|boom~0_combout\,
	devoe => ww_devoe,
	o => \AA[3]~output_o\);

-- Location: IOOBUF_X78_Y37_N16
\AA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|boom3~0_combout\,
	devoe => ww_devoe,
	o => \AA[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N2
\AA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|ALT_INV_inst50~0_combout\,
	devoe => ww_devoe,
	o => \AA[1]~output_o\);

-- Location: IOOBUF_X78_Y45_N9
\AA[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst23|ALT_INV_BOOF~0_combout\,
	devoe => ww_devoe,
	o => \AA[0]~output_o\);

-- Location: IOOBUF_X78_Y43_N9
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

-- Location: IOOBUF_X54_Y54_N9
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

-- Location: IOOBUF_X51_Y54_N16
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

-- Location: IOOBUF_X51_Y54_N2
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

-- Location: IOOBUF_X78_Y35_N16
\BB[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \BB[6]~output_o\);

-- Location: IOOBUF_X78_Y40_N9
\BB[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|boom2~0_combout\,
	devoe => ww_devoe,
	o => \BB[5]~output_o\);

-- Location: IOOBUF_X78_Y45_N23
\BB[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|boom1~0_combout\,
	devoe => ww_devoe,
	o => \BB[4]~output_o\);

-- Location: IOOBUF_X78_Y42_N16
\BB[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|boom~0_combout\,
	devoe => ww_devoe,
	o => \BB[3]~output_o\);

-- Location: IOOBUF_X78_Y40_N23
\BB[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|boom3~0_combout\,
	devoe => ww_devoe,
	o => \BB[2]~output_o\);

-- Location: IOOBUF_X78_Y40_N2
\BB[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|ALT_INV_inst50~0_combout\,
	devoe => ww_devoe,
	o => \BB[1]~output_o\);

-- Location: IOOBUF_X78_Y40_N16
\BB[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst24|ALT_INV_BOOF~0_combout\,
	devoe => ww_devoe,
	o => \BB[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
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

-- Location: IOOBUF_X58_Y54_N16
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

-- Location: IOOBUF_X58_Y54_N9
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

-- Location: IOOBUF_X58_Y54_N30
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

-- Location: IOOBUF_X78_Y43_N16
\CC[6]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \CC[6]~output_o\);

-- Location: IOOBUF_X78_Y41_N2
\CC[5]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|boom2~0_combout\,
	devoe => ww_devoe,
	o => \CC[5]~output_o\);

-- Location: IOOBUF_X78_Y41_N9
\CC[4]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|boom1~0_combout\,
	devoe => ww_devoe,
	o => \CC[4]~output_o\);

-- Location: IOOBUF_X69_Y54_N9
\CC[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|boom~0_combout\,
	devoe => ww_devoe,
	o => \CC[3]~output_o\);

-- Location: IOOBUF_X78_Y33_N2
\CC[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|boom3~0_combout\,
	devoe => ww_devoe,
	o => \CC[2]~output_o\);

-- Location: IOOBUF_X78_Y33_N9
\CC[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|ALT_INV_inst50~0_combout\,
	devoe => ww_devoe,
	o => \CC[1]~output_o\);

-- Location: IOOBUF_X78_Y35_N23
\CC[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25|ALT_INV_BOOF~0_combout\,
	devoe => ww_devoe,
	o => \CC[0]~output_o\);

-- Location: IOOBUF_X78_Y41_N24
\OUTPUT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst23|sub|81~4_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[3]~output_o\);

-- Location: IOOBUF_X78_Y42_N23
\OUTPUT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst7|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[2]~output_o\);

-- Location: IOOBUF_X78_Y42_N9
\OUTPUT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst24|sub|81~3_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[1]~output_o\);

-- Location: IOOBUF_X78_Y44_N24
\OUTPUT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst4|sub|81~0_combout\,
	devoe => ww_devoe,
	o => \OUTPUT[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
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

-- Location: IOOBUF_X60_Y54_N30
\MUXA[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst8|9~1_combout\,
	devoe => ww_devoe,
	o => \MUXA[2]~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\MUXA[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10|inst|10~1_combout\,
	devoe => ww_devoe,
	o => \MUXA[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
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

-- Location: IOOBUF_X66_Y54_N23
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

-- Location: IOOBUF_X66_Y54_N16
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

-- Location: IOOBUF_X58_Y54_N2
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

-- Location: IOOBUF_X56_Y54_N2
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

-- Location: IOIBUF_X31_Y0_N22
\MEM_CLK~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_MEM_CLK,
	o => \MEM_CLK~input_o\);

-- Location: CLKCTRL_G19
\MEM_CLK~inputclkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \MEM_CLK~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \MEM_CLK~inputclkctrl_outclk\);

-- Location: LCCOMB_X57_Y43_N14
\inst22|inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22|inst1~0_combout\ = !\inst22|inst1~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst22|inst1~q\,
	combout => \inst22|inst1~0_combout\);

-- Location: LCCOMB_X57_Y43_N30
\inst22|inst1~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst22|inst1~feeder_combout\ = \inst22|inst1~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst22|inst1~0_combout\,
	combout => \inst22|inst1~feeder_combout\);

-- Location: IOIBUF_X22_Y0_N8
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

-- Location: FF_X57_Y43_N31
\inst22|inst1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \MEM_CLK~inputclkctrl_outclk\,
	d => \inst22|inst1~feeder_combout\,
	clrn => \Reset_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst22|inst1~q\);

-- Location: CLKCTRL_G9
\inst22|inst1~clkctrl\ : fiftyfivenm_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst22|inst1~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst22|inst1~clkctrl_outclk\);

-- Location: LCCOMB_X54_Y43_N8
\inst5|PC_INC~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|PC_INC~1_combout\ = (\inst19~q\ & (\inst18~q\ & \inst5|PC_INC~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~q\,
	datab => \inst18~q\,
	datad => \inst5|PC_INC~0_combout\,
	combout => \inst5|PC_INC~1_combout\);

-- Location: LCCOMB_X54_Y43_N22
\inst2|sub|92~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|sub|92~0_combout\ = (!\inst5|PC_INC~1_combout\ & (\inst2|sub|87~q\ $ (((\inst2|sub|9~q\ & !\inst5|PC_INC~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sub|87~q\,
	datab => \inst2|sub|9~q\,
	datac => \inst5|PC_INC~combout\,
	datad => \inst5|PC_INC~1_combout\,
	combout => \inst2|sub|92~0_combout\);

-- Location: LCCOMB_X54_Y43_N6
\inst2|sub|92~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|sub|92~1_combout\ = (\inst2|sub|92~0_combout\) # ((\inst22|inst|altsyncram_component|auto_generated|ram_block1a9\ & \inst5|PC_INC~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sub|92~0_combout\,
	datac => \inst22|inst|altsyncram_component|auto_generated|ram_block1a9\,
	datad => \inst5|PC_INC~1_combout\,
	combout => \inst2|sub|92~1_combout\);

-- Location: FF_X54_Y43_N7
\inst2|sub|87\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst1~clkctrl_outclk\,
	d => \inst2|sub|92~1_combout\,
	clrn => \Reset_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sub|87~q\);

-- Location: LCCOMB_X54_Y43_N2
\inst2|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|sub|106~0_combout\ = (\inst2|sub|87~q\ & (\inst2|sub|99~q\ & (!\inst5|PC_INC~combout\ & \inst2|sub|9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sub|87~q\,
	datab => \inst2|sub|99~q\,
	datac => \inst5|PC_INC~combout\,
	datad => \inst2|sub|9~q\,
	combout => \inst2|sub|106~0_combout\);

-- Location: M9K_X53_Y43_N0
\inst22|inst|altsyncram_component|auto_generated|ram_block1a8\ : fiftyfivenm_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"0000000000000000000000400050001400010000400030000400030000800000001C0002",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "rom_32k.mif",
	init_file_layout => "port_a",
	logical_ram_name => "ROM:inst22|rom_32k:inst|altsyncram:altsyncram_component|altsyncram_mcr3:auto_generated|ALTSYNCRAM",
	operation_mode => "rom",
	port_a_address_clear => "none",
	port_a_address_width => 4,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 18,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 15,
	port_a_logical_ram_depth => 32768,
	port_a_logical_ram_width => 8,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_a_write_enable_clock => "none",
	port_b_address_width => 4,
	port_b_data_width => 18,
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portare => VCC,
	clk0 => \MEM_CLK~inputclkctrl_outclk\,
	portaaddr => \inst22|inst|altsyncram_component|auto_generated|ram_block1a8_PORTAADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portadataout => \inst22|inst|altsyncram_component|auto_generated|ram_block1a8_PORTADATAOUT_bus\);

-- Location: LCCOMB_X54_Y43_N30
\inst2|sub|109~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|sub|109~0_combout\ = (\inst5|PC_INC~1_combout\ & (((\inst22|inst|altsyncram_component|auto_generated|ram_block1a11\)))) # (!\inst5|PC_INC~1_combout\ & (\inst2|sub|106~0_combout\ $ ((\inst2|sub|110~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|PC_INC~1_combout\,
	datab => \inst2|sub|106~0_combout\,
	datac => \inst2|sub|110~q\,
	datad => \inst22|inst|altsyncram_component|auto_generated|ram_block1a11\,
	combout => \inst2|sub|109~0_combout\);

-- Location: FF_X54_Y43_N31
\inst2|sub|110\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst1~clkctrl_outclk\,
	d => \inst2|sub|109~0_combout\,
	clrn => \Reset_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sub|110~q\);

-- Location: LCCOMB_X54_Y43_N24
\inst2|sub|97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|sub|97~combout\ = \inst2|sub|99~q\ $ (((\inst2|sub|87~q\ & (!\inst5|PC_INC~combout\ & \inst2|sub|9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2|sub|87~q\,
	datab => \inst2|sub|99~q\,
	datac => \inst5|PC_INC~combout\,
	datad => \inst2|sub|9~q\,
	combout => \inst2|sub|97~combout\);

-- Location: LCCOMB_X54_Y43_N28
\inst2|sub|102~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|sub|102~0_combout\ = (\inst5|PC_INC~1_combout\ & (\inst22|inst|altsyncram_component|auto_generated|ram_block1a10\)) # (!\inst5|PC_INC~1_combout\ & ((\inst2|sub|97~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|PC_INC~1_combout\,
	datac => \inst22|inst|altsyncram_component|auto_generated|ram_block1a10\,
	datad => \inst2|sub|97~combout\,
	combout => \inst2|sub|102~0_combout\);

-- Location: FF_X54_Y43_N29
\inst2|sub|99\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst1~clkctrl_outclk\,
	d => \inst2|sub|102~0_combout\,
	clrn => \Reset_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sub|99~q\);

-- Location: FF_X54_Y43_N27
\inst1|inst7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst1~clkctrl_outclk\,
	asdata => \inst22|inst|altsyncram_component|auto_generated|ram_block1a9\,
	clrn => \Reset_L~input_o\,
	sload => VCC,
	ena => \inst5|IR_LD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst7~q\);

-- Location: FF_X54_Y43_N13
\inst1|inst2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst1~clkctrl_outclk\,
	asdata => \inst22|inst|altsyncram_component|auto_generated|ram_block1a10\,
	clrn => \Reset_L~input_o\,
	sload => VCC,
	ena => \inst5|IR_LD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst2~q\);

-- Location: LCCOMB_X54_Y43_N4
\inst5|D[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|D[1]~0_combout\ = (!\inst1|inst6~q\ & !\inst1|inst2~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst6~q\,
	datad => \inst1|inst2~q\,
	combout => \inst5|D[1]~0_combout\);

-- Location: LCCOMB_X54_Y43_N10
\inst5|MSC[0]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|MSC[0]~0_combout\ = (!\inst18~q\ & \inst19~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst18~q\,
	datad => \inst19~q\,
	combout => \inst5|MSC[0]~0_combout\);

-- Location: LCCOMB_X55_Y43_N30
\inst5|D[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|D[1]~1_combout\ = (\inst5|MSC[0]~0_combout\ & ((\inst5|PC_INC~0_combout\) # ((\inst1|inst7~q\ & \inst5|D[1]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7~q\,
	datab => \inst5|PC_INC~0_combout\,
	datac => \inst5|D[1]~0_combout\,
	datad => \inst5|MSC[0]~0_combout\,
	combout => \inst5|D[1]~1_combout\);

-- Location: FF_X54_Y43_N5
inst18 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst1~clkctrl_outclk\,
	asdata => \inst5|D[1]~1_combout\,
	clrn => \Reset_L~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst18~q\);

-- Location: LCCOMB_X54_Y43_N12
\inst5|PC_INC\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|PC_INC~combout\ = (\inst19~q\ & (\inst18~q\ & \inst5|PC_INC~0_combout\)) # (!\inst19~q\ & (!\inst18~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst19~q\,
	datab => \inst18~q\,
	datad => \inst5|PC_INC~0_combout\,
	combout => \inst5|PC_INC~combout\);

-- Location: LCCOMB_X54_Y43_N20
\inst2|sub|75~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst2|sub|75~0_combout\ = (\inst5|PC_INC~1_combout\ & (((\inst22|inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\)))) # (!\inst5|PC_INC~1_combout\ & (\inst5|PC_INC~combout\ $ (((!\inst2|sub|9~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|PC_INC~combout\,
	datab => \inst22|inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	datac => \inst2|sub|9~q\,
	datad => \inst5|PC_INC~1_combout\,
	combout => \inst2|sub|75~0_combout\);

-- Location: FF_X54_Y43_N21
\inst2|sub|9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst1~clkctrl_outclk\,
	d => \inst2|sub|75~0_combout\,
	clrn => \Reset_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2|sub|9~q\);

-- Location: FF_X54_Y43_N9
\inst1|inst6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst1~clkctrl_outclk\,
	asdata => \inst22|inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	clrn => \Reset_L~input_o\,
	sload => VCC,
	ena => \inst5|IR_LD~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|inst6~q\);

-- Location: LCCOMB_X54_Y43_N26
\inst5|PC_INC~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|PC_INC~0_combout\ = (\inst1|inst6~q\ & (!\inst1|inst7~q\ & \inst1|inst2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|inst6~q\,
	datac => \inst1|inst7~q\,
	datad => \inst1|inst2~q\,
	combout => \inst5|PC_INC~0_combout\);

-- Location: LCCOMB_X54_Y43_N18
\inst5|D[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|D[0]~2_combout\ = (!\inst18~q\ & ((\inst5|PC_INC~0_combout\) # (!\inst19~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|PC_INC~0_combout\,
	datac => \inst19~q\,
	datad => \inst18~q\,
	combout => \inst5|D[0]~2_combout\);

-- Location: FF_X54_Y43_N19
inst19 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst1~clkctrl_outclk\,
	d => \inst5|D[0]~2_combout\,
	clrn => \Reset_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst19~q\);

-- Location: LCCOMB_X55_Y43_N24
\inst5|IR_LD~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|IR_LD~0_combout\ = (!\inst19~q\ & !\inst18~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst19~q\,
	datad => \inst18~q\,
	combout => \inst5|IR_LD~0_combout\);

-- Location: LCCOMB_X54_Y43_N16
\inst5|MSA[1]~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|MSA[1]~0_combout\ = (\inst5|MSC[0]~0_combout\ & ((\inst1|inst2~q\ & (!\inst1|inst6~q\ & !\inst1|inst7~q\)) # (!\inst1|inst2~q\ & (\inst1|inst6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2~q\,
	datab => \inst1|inst6~q\,
	datac => \inst1|inst7~q\,
	datad => \inst5|MSC[0]~0_combout\,
	combout => \inst5|MSA[1]~0_combout\);

-- Location: LCCOMB_X57_Y43_N10
\inst10|inst8|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst8|10~0_combout\ = (\inst10|inst14~q\ & !\inst5|MSA[1]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst14~q\,
	datad => \inst5|MSA[1]~0_combout\,
	combout => \inst10|inst8|10~0_combout\);

-- Location: LCCOMB_X55_Y43_N28
\inst5|MSA[0]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|MSA\(0) = ((\inst19~q\) # ((!\inst18~q\) # (!\inst5|D[1]~0_combout\))) # (!\inst1|inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7~q\,
	datab => \inst19~q\,
	datac => \inst5|D[1]~0_combout\,
	datad => \inst18~q\,
	combout => \inst5|MSA\(0));

-- Location: LCCOMB_X54_Y43_N14
\inst5|MSC[1]~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|MSC[1]~1_combout\ = (\inst5|MSC[0]~0_combout\ & ((\inst1|inst2~q\ & (!\inst1|inst6~q\ & !\inst1|inst7~q\)) # (!\inst1|inst2~q\ & (\inst1|inst6~q\ & \inst1|inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2~q\,
	datab => \inst1|inst6~q\,
	datac => \inst1|inst7~q\,
	datad => \inst5|MSC[0]~0_combout\,
	combout => \inst5|MSC[1]~1_combout\);

-- Location: LCCOMB_X54_Y43_N0
\inst5|MSC[0]~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|MSC[0]~2_combout\ = (!\inst1|inst2~q\ & (\inst1|inst6~q\ & (\inst19~q\ & !\inst18~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst2~q\,
	datab => \inst1|inst6~q\,
	datac => \inst19~q\,
	datad => \inst18~q\,
	combout => \inst5|MSC[0]~2_combout\);

-- Location: LCCOMB_X55_Y43_N18
\inst10|inst4|sub|66\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst4|sub|66~combout\ = (\inst10|inst12~q\ & \inst5|MSC[0]~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst12~q\,
	datac => \inst5|MSC[0]~2_combout\,
	combout => \inst10|inst4|sub|66~combout\);

-- Location: IOIBUF_X22_Y0_N15
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

-- Location: LCCOMB_X55_Y43_N2
\inst5|MSB[1]\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5|MSB\(1) = ((\inst1|inst6~q\) # ((\inst1|inst7~q\) # (\inst1|inst2~q\))) # (!\inst5|MSC[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|MSC[0]~0_combout\,
	datab => \inst1|inst6~q\,
	datac => \inst1|inst7~q\,
	datad => \inst1|inst2~q\,
	combout => \inst5|MSB\(1));

-- Location: LCCOMB_X56_Y43_N22
\inst10|inst9|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst9|9~0_combout\ = (\inst5|MSB\(1) & ((\inst10|inst15~q\))) # (!\inst5|MSB\(1) & (\inst10|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11~q\,
	datac => \inst10|inst15~q\,
	datad => \inst5|MSB\(1),
	combout => \inst10|inst9|9~0_combout\);

-- Location: FF_X56_Y43_N23
\inst10|inst15\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst1~clkctrl_outclk\,
	d => \inst10|inst9|9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst15~q\);

-- Location: LCCOMB_X55_Y43_N8
\inst10|inst4|sub|69~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst4|sub|69~0_combout\ = (\inst5|MSC[0]~2_combout\ & (\inst10|inst11~q\ $ (\CIN~input_o\ $ (\inst10|inst15~q\)))) # (!\inst5|MSC[0]~2_combout\ & ((\inst10|inst11~q\) # ((\inst10|inst15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11~q\,
	datab => \CIN~input_o\,
	datac => \inst5|MSC[0]~2_combout\,
	datad => \inst10|inst15~q\,
	combout => \inst10|inst4|sub|69~0_combout\);

-- Location: LCCOMB_X55_Y43_N12
\inst10|inst4|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst4|sub|81~1_combout\ = (\inst5|MSC[0]~2_combout\ & (\inst10|inst15~q\ & ((\inst10|inst11~q\) # (!\inst5|MSC[1]~1_combout\)))) # (!\inst5|MSC[0]~2_combout\ & (\inst10|inst11~q\ $ (((\inst5|MSC[1]~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010111001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11~q\,
	datab => \inst10|inst15~q\,
	datac => \inst5|MSC[0]~2_combout\,
	datad => \inst5|MSC[1]~1_combout\,
	combout => \inst10|inst4|sub|81~1_combout\);

-- Location: LCCOMB_X55_Y43_N10
\inst10|inst4|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst4|sub|81~2_combout\ = (\inst5|MSA[1]~0_combout\ & (\inst5|MSC[1]~1_combout\)) # (!\inst5|MSA[1]~0_combout\ & ((\inst10|inst4|sub|81~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|MSC[1]~1_combout\,
	datac => \inst5|MSA[1]~0_combout\,
	datad => \inst10|inst4|sub|81~1_combout\,
	combout => \inst10|inst4|sub|81~2_combout\);

-- Location: LCCOMB_X55_Y43_N16
\inst10|inst4|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst4|sub|81~0_combout\ = (\inst5|MSA[1]~0_combout\ & ((\inst10|inst4|sub|81~2_combout\ & (\inst10|inst4|sub|66~combout\)) # (!\inst10|inst4|sub|81~2_combout\ & ((\inst10|inst4|sub|69~0_combout\))))) # (!\inst5|MSA[1]~0_combout\ & 
-- (((\inst10|inst4|sub|81~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|MSA[1]~0_combout\,
	datab => \inst10|inst4|sub|66~combout\,
	datac => \inst10|inst4|sub|69~0_combout\,
	datad => \inst10|inst4|sub|81~2_combout\,
	combout => \inst10|inst4|sub|81~0_combout\);

-- Location: LCCOMB_X55_Y43_N6
\inst10|inst|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst|9~0_combout\ = (\inst5|MSA\(0) & ((\inst5|MSA[1]~0_combout\ & ((\inst10|inst4|sub|81~0_combout\))) # (!\inst5|MSA[1]~0_combout\ & (\inst10|inst11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11~q\,
	datab => \inst5|MSA\(0),
	datac => \inst5|MSA[1]~0_combout\,
	datad => \inst10|inst4|sub|81~0_combout\,
	combout => \inst10|inst|9~0_combout\);

-- Location: LCCOMB_X56_Y43_N8
\inst10|inst|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst|9~1_combout\ = (\inst10|inst|9~0_combout\) # ((!\inst5|MSA\(0) & \inst22|inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|MSA\(0),
	datac => \inst10|inst|9~0_combout\,
	datad => \inst22|inst|altsyncram_component|auto_generated|ram_block1a8~portadataout\,
	combout => \inst10|inst|9~1_combout\);

-- Location: FF_X56_Y43_N21
\inst10|inst11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst1~clkctrl_outclk\,
	asdata => \inst10|inst|9~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst11~q\);

-- Location: LCCOMB_X52_Y43_N4
\inst10|inst24|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst24|sub|81~1_combout\ = (\inst5|MSC[0]~2_combout\ & ((\inst10|inst13~q\))) # (!\inst5|MSC[0]~2_combout\ & (\inst10|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11~q\,
	datac => \inst10|inst13~q\,
	datad => \inst5|MSC[0]~2_combout\,
	combout => \inst10|inst24|sub|81~1_combout\);

-- Location: LCCOMB_X55_Y43_N0
\inst10|inst9|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst9|10~0_combout\ = (\inst5|MSB\(1) & (\inst10|inst16~q\)) # (!\inst5|MSB\(1) & ((\inst10|inst12~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst16~q\,
	datac => \inst10|inst12~q\,
	datad => \inst5|MSB\(1),
	combout => \inst10|inst9|10~0_combout\);

-- Location: FF_X56_Y43_N27
\inst10|inst16\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst1~clkctrl_outclk\,
	asdata => \inst10|inst9|10~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst16~q\);

-- Location: LCCOMB_X56_Y43_N4
\inst10|inst33|sub|104~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst33|sub|104~0_combout\ = (\CIN~input_o\ & ((\inst10|inst15~q\) # (\inst10|inst11~q\))) # (!\CIN~input_o\ & (\inst10|inst15~q\ & \inst10|inst11~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CIN~input_o\,
	datac => \inst10|inst15~q\,
	datad => \inst10|inst11~q\,
	combout => \inst10|inst33|sub|104~0_combout\);

-- Location: LCCOMB_X52_Y43_N18
\inst10|inst24|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst24|sub|81~0_combout\ = (\inst5|MSC[0]~2_combout\ & (\inst10|inst16~q\ $ (\inst10|inst12~q\ $ (\inst10|inst33|sub|104~0_combout\)))) # (!\inst5|MSC[0]~2_combout\ & ((\inst10|inst16~q\) # ((\inst10|inst12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst16~q\,
	datab => \inst10|inst12~q\,
	datac => \inst10|inst33|sub|104~0_combout\,
	datad => \inst5|MSC[0]~2_combout\,
	combout => \inst10|inst24|sub|81~0_combout\);

-- Location: LCCOMB_X52_Y43_N6
\inst10|inst24|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst24|sub|81~2_combout\ = (\inst5|MSC[1]~1_combout\ & (\inst10|inst24|sub|81~1_combout\)) # (!\inst5|MSC[1]~1_combout\ & ((\inst10|inst24|sub|81~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|MSC[1]~1_combout\,
	datac => \inst10|inst24|sub|81~1_combout\,
	datad => \inst10|inst24|sub|81~0_combout\,
	combout => \inst10|inst24|sub|81~2_combout\);

-- Location: LCCOMB_X52_Y43_N22
\inst10|inst|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst|10~0_combout\ = (\inst5|MSA\(0) & ((\inst5|MSA[1]~0_combout\ & ((\inst10|inst24|sub|81~2_combout\))) # (!\inst5|MSA[1]~0_combout\ & (\inst10|inst12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|MSA[1]~0_combout\,
	datab => \inst10|inst12~q\,
	datac => \inst5|MSA\(0),
	datad => \inst10|inst24|sub|81~2_combout\,
	combout => \inst10|inst|10~0_combout\);

-- Location: LCCOMB_X52_Y43_N8
\inst10|inst|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst|10~1_combout\ = (\inst10|inst|10~0_combout\) # ((!\inst5|MSA\(0) & \inst22|inst|altsyncram_component|auto_generated|ram_block1a9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|MSA\(0),
	datac => \inst10|inst|10~0_combout\,
	datad => \inst22|inst|altsyncram_component|auto_generated|ram_block1a9\,
	combout => \inst10|inst|10~1_combout\);

-- Location: FF_X52_Y43_N1
\inst10|inst12\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst1~clkctrl_outclk\,
	asdata => \inst10|inst|10~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst12~q\);

-- Location: LCCOMB_X56_Y43_N20
\inst10|inst10|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst10|9~0_combout\ = (\inst5|MSB\(1) & (\inst10|inst17~q\)) # (!\inst5|MSB\(1) & ((\inst10|inst13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst17~q\,
	datab => \inst10|inst13~q\,
	datad => \inst5|MSB\(1),
	combout => \inst10|inst10|9~0_combout\);

-- Location: FF_X56_Y43_N17
\inst10|inst17\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst1~clkctrl_outclk\,
	asdata => \inst10|inst10|9~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst17~q\);

-- Location: LCCOMB_X56_Y43_N12
\inst10|inst31\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst31~combout\ = (\inst10|inst13~q\) # (\inst10|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst10|inst13~q\,
	datad => \inst10|inst17~q\,
	combout => \inst10|inst31~combout\);

-- Location: LCCOMB_X56_Y43_N16
\inst10|inst33|sub|80~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst33|sub|80~0_combout\ = \inst10|inst13~q\ $ (\inst10|inst17~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst13~q\,
	datac => \inst10|inst17~q\,
	combout => \inst10|inst33|sub|80~0_combout\);

-- Location: LCCOMB_X56_Y43_N26
\inst10|inst33|sub|80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst33|sub|80~combout\ = \inst10|inst33|sub|80~0_combout\ $ (((\inst10|inst33|sub|104~0_combout\ & ((\inst10|inst16~q\) # (\inst10|inst12~q\))) # (!\inst10|inst33|sub|104~0_combout\ & (\inst10|inst16~q\ & \inst10|inst12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst33|sub|80~0_combout\,
	datab => \inst10|inst33|sub|104~0_combout\,
	datac => \inst10|inst16~q\,
	datad => \inst10|inst12~q\,
	combout => \inst10|inst33|sub|80~combout\);

-- Location: LCCOMB_X56_Y43_N2
\inst10|inst7|sub|81~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst7|sub|81~1_combout\ = (\inst5|MSC[0]~2_combout\ & (((\inst10|inst33|sub|80~combout\) # (\inst5|MSC[1]~1_combout\)))) # (!\inst5|MSC[0]~2_combout\ & (\inst10|inst31~combout\ & ((!\inst5|MSC[1]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|MSC[0]~2_combout\,
	datab => \inst10|inst31~combout\,
	datac => \inst10|inst33|sub|80~combout\,
	datad => \inst5|MSC[1]~1_combout\,
	combout => \inst10|inst7|sub|81~1_combout\);

-- Location: LCCOMB_X56_Y43_N28
\inst10|inst7|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst7|sub|81~2_combout\ = (\inst5|MSC[1]~1_combout\ & ((\inst10|inst7|sub|81~1_combout\ & ((\inst10|inst14~q\))) # (!\inst10|inst7|sub|81~1_combout\ & (\inst10|inst12~q\)))) # (!\inst5|MSC[1]~1_combout\ & (((\inst10|inst7|sub|81~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst12~q\,
	datab => \inst5|MSC[1]~1_combout\,
	datac => \inst10|inst14~q\,
	datad => \inst10|inst7|sub|81~1_combout\,
	combout => \inst10|inst7|sub|81~2_combout\);

-- Location: LCCOMB_X56_Y43_N14
\inst10|inst8|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst8|9~0_combout\ = (\inst5|MSA\(0) & ((\inst5|MSA[1]~0_combout\ & ((\inst10|inst7|sub|81~2_combout\))) # (!\inst5|MSA[1]~0_combout\ & (\inst10|inst13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|MSA\(0),
	datab => \inst5|MSA[1]~0_combout\,
	datac => \inst10|inst13~q\,
	datad => \inst10|inst7|sub|81~2_combout\,
	combout => \inst10|inst8|9~0_combout\);

-- Location: LCCOMB_X56_Y43_N30
\inst10|inst8|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst8|9~1_combout\ = (\inst10|inst8|9~0_combout\) # ((!\inst5|MSA\(0) & \inst22|inst|altsyncram_component|auto_generated|ram_block1a10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|MSA\(0),
	datac => \inst22|inst|altsyncram_component|auto_generated|ram_block1a10\,
	datad => \inst10|inst8|9~0_combout\,
	combout => \inst10|inst8|9~1_combout\);

-- Location: FF_X56_Y43_N15
\inst10|inst13\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst1~clkctrl_outclk\,
	asdata => \inst10|inst8|9~1_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst13~q\);

-- Location: LCCOMB_X57_Y43_N28
\inst10|inst10|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst10|10~0_combout\ = (\inst5|MSB\(1) & ((\inst10|inst18~q\))) # (!\inst5|MSB\(1) & (\inst10|inst14~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst14~q\,
	datac => \inst5|MSB\(1),
	datad => \inst10|inst18~q\,
	combout => \inst10|inst10|10~0_combout\);

-- Location: LCCOMB_X57_Y43_N18
\inst10|inst18~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst18~feeder_combout\ = \inst10|inst10|10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|inst10|10~0_combout\,
	combout => \inst10|inst18~feeder_combout\);

-- Location: FF_X57_Y43_N19
\inst10|inst18\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst1~clkctrl_outclk\,
	d => \inst10|inst18~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst18~q\);

-- Location: LCCOMB_X56_Y43_N10
\inst10|inst33|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst33|sub|106~0_combout\ = (\inst10|inst31~combout\ & ((\inst10|inst16~q\ & ((\inst10|inst33|sub|104~0_combout\) # (\inst10|inst12~q\))) # (!\inst10|inst16~q\ & (\inst10|inst33|sub|104~0_combout\ & \inst10|inst12~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst31~combout\,
	datab => \inst10|inst16~q\,
	datac => \inst10|inst33|sub|104~0_combout\,
	datad => \inst10|inst12~q\,
	combout => \inst10|inst33|sub|106~0_combout\);

-- Location: LCCOMB_X56_Y43_N0
\inst10|inst33|sub|106~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst33|sub|106~1_combout\ = (\inst10|inst33|sub|106~0_combout\) # ((\inst10|inst17~q\ & \inst10|inst13~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst17~q\,
	datac => \inst10|inst13~q\,
	datad => \inst10|inst33|sub|106~0_combout\,
	combout => \inst10|inst33|sub|106~1_combout\);

-- Location: LCCOMB_X56_Y43_N18
\inst10|inst23|sub|81~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst23|sub|81~2_combout\ = \inst10|inst18~q\ $ (\inst10|inst14~q\ $ (\inst10|inst33|sub|106~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst18~q\,
	datac => \inst10|inst14~q\,
	datad => \inst10|inst33|sub|106~1_combout\,
	combout => \inst10|inst23|sub|81~2_combout\);

-- Location: LCCOMB_X56_Y43_N24
\inst10|inst23|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst23|sub|81~3_combout\ = (\inst1|inst6~q\ & (!\inst1|inst2~q\ & ((\inst10|inst23|sub|81~2_combout\)))) # (!\inst1|inst6~q\ & (\inst1|inst2~q\ & (\inst10|inst13~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst6~q\,
	datab => \inst1|inst2~q\,
	datac => \inst10|inst13~q\,
	datad => \inst10|inst23|sub|81~2_combout\,
	combout => \inst10|inst23|sub|81~3_combout\);

-- Location: LCCOMB_X56_Y43_N6
\inst10|inst23|sub|81~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst23|sub|81~5_combout\ = (!\inst1|inst7~q\ & (\inst19~q\ & (!\inst18~q\ & \inst10|inst23|sub|81~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst7~q\,
	datab => \inst19~q\,
	datac => \inst18~q\,
	datad => \inst10|inst23|sub|81~3_combout\,
	combout => \inst10|inst23|sub|81~5_combout\);

-- Location: LCCOMB_X57_Y43_N16
\inst10|inst8|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst8|10~1_combout\ = (\inst5|MSA\(0) & ((\inst10|inst8|10~0_combout\) # ((\inst10|inst23|sub|81~5_combout\)))) # (!\inst5|MSA\(0) & (((\inst22|inst|altsyncram_component|auto_generated|ram_block1a11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst8|10~0_combout\,
	datab => \inst5|MSA\(0),
	datac => \inst10|inst23|sub|81~5_combout\,
	datad => \inst22|inst|altsyncram_component|auto_generated|ram_block1a11\,
	combout => \inst10|inst8|10~1_combout\);

-- Location: LCCOMB_X57_Y43_N20
\inst10|inst14~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst14~feeder_combout\ = \inst10|inst8|10~1_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10|inst8|10~1_combout\,
	combout => \inst10|inst14~feeder_combout\);

-- Location: FF_X57_Y43_N21
\inst10|inst14\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst22|inst1~clkctrl_outclk\,
	d => \inst10|inst14~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10|inst14~q\);

-- Location: LCCOMB_X57_Y43_N6
\inst10|inst33|sub|107~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst33|sub|107~0_combout\ = (\inst10|inst14~q\ & ((\inst10|inst33|sub|106~1_combout\) # (\inst10|inst18~q\))) # (!\inst10|inst14~q\ & (\inst10|inst33|sub|106~1_combout\ & \inst10|inst18~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst14~q\,
	datac => \inst10|inst33|sub|106~1_combout\,
	datad => \inst10|inst18~q\,
	combout => \inst10|inst33|sub|107~0_combout\);

-- Location: LCCOMB_X52_Y43_N0
\inst23|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|inst17~0_combout\ = (\inst10|inst11~q\ & ((\inst10|inst14~q\) # (\inst10|inst13~q\ $ (\inst10|inst12~q\)))) # (!\inst10|inst11~q\ & ((\inst10|inst12~q\) # (\inst10|inst13~q\ $ (\inst10|inst14~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11~q\,
	datab => \inst10|inst13~q\,
	datac => \inst10|inst12~q\,
	datad => \inst10|inst14~q\,
	combout => \inst23|inst17~0_combout\);

-- Location: LCCOMB_X52_Y43_N26
\inst23|boom2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|boom2~0_combout\ = (\inst10|inst11~q\ & (\inst10|inst14~q\ $ (((\inst10|inst12~q\) # (!\inst10|inst13~q\))))) # (!\inst10|inst11~q\ & (\inst10|inst12~q\ & (!\inst10|inst13~q\ & !\inst10|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11~q\,
	datab => \inst10|inst12~q\,
	datac => \inst10|inst13~q\,
	datad => \inst10|inst14~q\,
	combout => \inst23|boom2~0_combout\);

-- Location: LCCOMB_X52_Y43_N20
\inst23|boom1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|boom1~0_combout\ = (\inst10|inst12~q\ & (\inst10|inst11~q\ & ((!\inst10|inst14~q\)))) # (!\inst10|inst12~q\ & ((\inst10|inst13~q\ & ((!\inst10|inst14~q\))) # (!\inst10|inst13~q\ & (\inst10|inst11~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11~q\,
	datab => \inst10|inst12~q\,
	datac => \inst10|inst13~q\,
	datad => \inst10|inst14~q\,
	combout => \inst23|boom1~0_combout\);

-- Location: LCCOMB_X52_Y43_N14
\inst23|boom~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|boom~0_combout\ = (\inst10|inst12~q\ & ((\inst10|inst11~q\ & (\inst10|inst13~q\)) # (!\inst10|inst11~q\ & (!\inst10|inst13~q\ & \inst10|inst14~q\)))) # (!\inst10|inst12~q\ & (!\inst10|inst14~q\ & (\inst10|inst11~q\ $ (\inst10|inst13~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11~q\,
	datab => \inst10|inst12~q\,
	datac => \inst10|inst13~q\,
	datad => \inst10|inst14~q\,
	combout => \inst23|boom~0_combout\);

-- Location: LCCOMB_X52_Y43_N24
\inst23|boom3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|boom3~0_combout\ = (\inst10|inst13~q\ & (\inst10|inst14~q\ & ((\inst10|inst12~q\) # (!\inst10|inst11~q\)))) # (!\inst10|inst13~q\ & (!\inst10|inst11~q\ & (\inst10|inst12~q\ & !\inst10|inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11~q\,
	datab => \inst10|inst12~q\,
	datac => \inst10|inst13~q\,
	datad => \inst10|inst14~q\,
	combout => \inst23|boom3~0_combout\);

-- Location: LCCOMB_X52_Y43_N30
\inst23|inst50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|inst50~0_combout\ = (\inst10|inst12~q\ & ((\inst10|inst11~q\ & ((!\inst10|inst14~q\))) # (!\inst10|inst11~q\ & (!\inst10|inst13~q\)))) # (!\inst10|inst12~q\ & ((\inst10|inst11~q\ $ (!\inst10|inst14~q\)) # (!\inst10|inst13~q\)))

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
	combout => \inst23|inst50~0_combout\);

-- Location: LCCOMB_X52_Y43_N16
\inst23|BOOF~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst23|BOOF~0_combout\ = (\inst10|inst13~q\ & ((\inst10|inst12~q\) # (\inst10|inst11~q\ $ (\inst10|inst14~q\)))) # (!\inst10|inst13~q\ & ((\inst10|inst12~q\ $ (\inst10|inst14~q\)) # (!\inst10|inst11~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111101101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst11~q\,
	datab => \inst10|inst12~q\,
	datac => \inst10|inst13~q\,
	datad => \inst10|inst14~q\,
	combout => \inst23|BOOF~0_combout\);

-- Location: LCCOMB_X58_Y43_N24
\inst24|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|inst17~0_combout\ = (\inst10|inst15~q\ & ((\inst10|inst18~q\) # (\inst10|inst16~q\ $ (\inst10|inst17~q\)))) # (!\inst10|inst15~q\ & ((\inst10|inst16~q\) # (\inst10|inst18~q\ $ (\inst10|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst18~q\,
	datab => \inst10|inst15~q\,
	datac => \inst10|inst16~q\,
	datad => \inst10|inst17~q\,
	combout => \inst24|inst17~0_combout\);

-- Location: LCCOMB_X59_Y43_N8
\inst24|boom2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|boom2~0_combout\ = (\inst10|inst16~q\ & (!\inst10|inst18~q\ & ((\inst10|inst15~q\) # (!\inst10|inst17~q\)))) # (!\inst10|inst16~q\ & (\inst10|inst15~q\ & (\inst10|inst18~q\ $ (!\inst10|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst16~q\,
	datab => \inst10|inst15~q\,
	datac => \inst10|inst18~q\,
	datad => \inst10|inst17~q\,
	combout => \inst24|boom2~0_combout\);

-- Location: LCCOMB_X59_Y43_N6
\inst24|boom1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|boom1~0_combout\ = (\inst10|inst16~q\ & (\inst10|inst15~q\ & (!\inst10|inst18~q\))) # (!\inst10|inst16~q\ & ((\inst10|inst17~q\ & ((!\inst10|inst18~q\))) # (!\inst10|inst17~q\ & (\inst10|inst15~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst16~q\,
	datab => \inst10|inst15~q\,
	datac => \inst10|inst18~q\,
	datad => \inst10|inst17~q\,
	combout => \inst24|boom1~0_combout\);

-- Location: LCCOMB_X59_Y43_N24
\inst24|boom~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|boom~0_combout\ = (\inst10|inst16~q\ & ((\inst10|inst15~q\ & ((\inst10|inst17~q\))) # (!\inst10|inst15~q\ & (\inst10|inst18~q\ & !\inst10|inst17~q\)))) # (!\inst10|inst16~q\ & (!\inst10|inst18~q\ & (\inst10|inst15~q\ $ (\inst10|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst16~q\,
	datab => \inst10|inst15~q\,
	datac => \inst10|inst18~q\,
	datad => \inst10|inst17~q\,
	combout => \inst24|boom~0_combout\);

-- Location: LCCOMB_X58_Y43_N30
\inst24|boom3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|boom3~0_combout\ = (\inst10|inst18~q\ & (\inst10|inst17~q\ & ((\inst10|inst16~q\) # (!\inst10|inst15~q\)))) # (!\inst10|inst18~q\ & (!\inst10|inst15~q\ & (\inst10|inst16~q\ & !\inst10|inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst18~q\,
	datab => \inst10|inst15~q\,
	datac => \inst10|inst16~q\,
	datad => \inst10|inst17~q\,
	combout => \inst24|boom3~0_combout\);

-- Location: LCCOMB_X59_Y43_N18
\inst24|inst50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|inst50~0_combout\ = (\inst10|inst16~q\ & ((\inst10|inst15~q\ & (!\inst10|inst18~q\)) # (!\inst10|inst15~q\ & ((!\inst10|inst17~q\))))) # (!\inst10|inst16~q\ & ((\inst10|inst15~q\ $ (!\inst10|inst18~q\)) # (!\inst10|inst17~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst16~q\,
	datab => \inst10|inst15~q\,
	datac => \inst10|inst18~q\,
	datad => \inst10|inst17~q\,
	combout => \inst24|inst50~0_combout\);

-- Location: LCCOMB_X58_Y43_N20
\inst24|BOOF~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst24|BOOF~0_combout\ = (\inst10|inst18~q\ & ((\inst10|inst16~q\ $ (!\inst10|inst17~q\)) # (!\inst10|inst15~q\))) # (!\inst10|inst18~q\ & ((\inst10|inst16~q\) # (\inst10|inst15~q\ $ (!\inst10|inst17~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst18~q\,
	datab => \inst10|inst15~q\,
	datac => \inst10|inst16~q\,
	datad => \inst10|inst17~q\,
	combout => \inst24|BOOF~0_combout\);

-- Location: LCCOMB_X55_Y43_N22
\inst10|inst7|sub|81~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst7|sub|81~0_combout\ = ((\inst1|inst6~q\ & ((\inst1|inst2~q\))) # (!\inst1|inst6~q\ & ((\inst1|inst7~q\) # (!\inst1|inst2~q\)))) # (!\inst5|MSC[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|MSC[0]~0_combout\,
	datab => \inst1|inst6~q\,
	datac => \inst1|inst7~q\,
	datad => \inst1|inst2~q\,
	combout => \inst10|inst7|sub|81~0_combout\);

-- Location: LCCOMB_X52_Y43_N28
\inst10|inst24|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst24|sub|81~3_combout\ = (\inst5|MSA[1]~0_combout\ & ((\inst10|inst24|sub|81~2_combout\) # ((\inst10|inst12~q\ & \inst10|inst7|sub|81~0_combout\)))) # (!\inst5|MSA[1]~0_combout\ & (\inst10|inst12~q\ & (\inst10|inst7|sub|81~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|MSA[1]~0_combout\,
	datab => \inst10|inst12~q\,
	datac => \inst10|inst7|sub|81~0_combout\,
	datad => \inst10|inst24|sub|81~2_combout\,
	combout => \inst10|inst24|sub|81~3_combout\);

-- Location: LCCOMB_X52_Y43_N12
\inst10|inst7|sub|81~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst7|sub|81~3_combout\ = (\inst5|MSA[1]~0_combout\ & ((\inst10|inst7|sub|81~2_combout\) # ((\inst10|inst13~q\ & \inst10|inst7|sub|81~0_combout\)))) # (!\inst5|MSA[1]~0_combout\ & (\inst10|inst13~q\ & (\inst10|inst7|sub|81~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|MSA[1]~0_combout\,
	datab => \inst10|inst13~q\,
	datac => \inst10|inst7|sub|81~0_combout\,
	datad => \inst10|inst7|sub|81~2_combout\,
	combout => \inst10|inst7|sub|81~3_combout\);

-- Location: LCCOMB_X52_Y43_N10
\inst10|inst23|sub|81~4\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10|inst23|sub|81~4_combout\ = (\inst10|inst23|sub|81~5_combout\) # ((\inst10|inst7|sub|81~0_combout\ & \inst10|inst14~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10|inst23|sub|81~5_combout\,
	datac => \inst10|inst7|sub|81~0_combout\,
	datad => \inst10|inst14~q\,
	combout => \inst10|inst23|sub|81~4_combout\);

-- Location: LCCOMB_X77_Y41_N4
\inst25|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst17~0_combout\ = (\inst10|inst4|sub|81~0_combout\ & ((\inst10|inst23|sub|81~4_combout\) # (\inst10|inst24|sub|81~3_combout\ $ (\inst10|inst7|sub|81~3_combout\)))) # (!\inst10|inst4|sub|81~0_combout\ & ((\inst10|inst24|sub|81~3_combout\) # 
-- (\inst10|inst7|sub|81~3_combout\ $ (\inst10|inst23|sub|81~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst24|sub|81~3_combout\,
	datab => \inst10|inst7|sub|81~3_combout\,
	datac => \inst10|inst4|sub|81~0_combout\,
	datad => \inst10|inst23|sub|81~4_combout\,
	combout => \inst25|inst17~0_combout\);

-- Location: LCCOMB_X77_Y41_N14
\inst25|boom2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|boom2~0_combout\ = (\inst10|inst24|sub|81~3_combout\ & (!\inst10|inst23|sub|81~4_combout\ & ((\inst10|inst4|sub|81~0_combout\) # (!\inst10|inst7|sub|81~3_combout\)))) # (!\inst10|inst24|sub|81~3_combout\ & (\inst10|inst4|sub|81~0_combout\ & 
-- (\inst10|inst7|sub|81~3_combout\ $ (!\inst10|inst23|sub|81~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst24|sub|81~3_combout\,
	datab => \inst10|inst7|sub|81~3_combout\,
	datac => \inst10|inst4|sub|81~0_combout\,
	datad => \inst10|inst23|sub|81~4_combout\,
	combout => \inst25|boom2~0_combout\);

-- Location: LCCOMB_X77_Y41_N16
\inst25|boom1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|boom1~0_combout\ = (\inst10|inst24|sub|81~3_combout\ & (((\inst10|inst4|sub|81~0_combout\ & !\inst10|inst23|sub|81~4_combout\)))) # (!\inst10|inst24|sub|81~3_combout\ & ((\inst10|inst7|sub|81~3_combout\ & ((!\inst10|inst23|sub|81~4_combout\))) # 
-- (!\inst10|inst7|sub|81~3_combout\ & (\inst10|inst4|sub|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst24|sub|81~3_combout\,
	datab => \inst10|inst7|sub|81~3_combout\,
	datac => \inst10|inst4|sub|81~0_combout\,
	datad => \inst10|inst23|sub|81~4_combout\,
	combout => \inst25|boom1~0_combout\);

-- Location: LCCOMB_X77_Y41_N18
\inst25|boom~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|boom~0_combout\ = (\inst10|inst24|sub|81~3_combout\ & ((\inst10|inst7|sub|81~3_combout\ & (\inst10|inst4|sub|81~0_combout\)) # (!\inst10|inst7|sub|81~3_combout\ & (!\inst10|inst4|sub|81~0_combout\ & \inst10|inst23|sub|81~4_combout\)))) # 
-- (!\inst10|inst24|sub|81~3_combout\ & (!\inst10|inst23|sub|81~4_combout\ & (\inst10|inst7|sub|81~3_combout\ $ (\inst10|inst4|sub|81~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst24|sub|81~3_combout\,
	datab => \inst10|inst7|sub|81~3_combout\,
	datac => \inst10|inst4|sub|81~0_combout\,
	datad => \inst10|inst23|sub|81~4_combout\,
	combout => \inst25|boom~0_combout\);

-- Location: LCCOMB_X77_Y41_N8
\inst25|boom3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|boom3~0_combout\ = (\inst10|inst7|sub|81~3_combout\ & (\inst10|inst23|sub|81~4_combout\ & ((\inst10|inst24|sub|81~3_combout\) # (!\inst10|inst4|sub|81~0_combout\)))) # (!\inst10|inst7|sub|81~3_combout\ & (\inst10|inst24|sub|81~3_combout\ & 
-- (!\inst10|inst4|sub|81~0_combout\ & !\inst10|inst23|sub|81~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst24|sub|81~3_combout\,
	datab => \inst10|inst7|sub|81~3_combout\,
	datac => \inst10|inst4|sub|81~0_combout\,
	datad => \inst10|inst23|sub|81~4_combout\,
	combout => \inst25|boom3~0_combout\);

-- Location: LCCOMB_X77_Y41_N6
\inst25|inst50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|inst50~0_combout\ = (\inst10|inst24|sub|81~3_combout\ & ((\inst10|inst4|sub|81~0_combout\ & ((!\inst10|inst23|sub|81~4_combout\))) # (!\inst10|inst4|sub|81~0_combout\ & (!\inst10|inst7|sub|81~3_combout\)))) # (!\inst10|inst24|sub|81~3_combout\ & 
-- ((\inst10|inst4|sub|81~0_combout\ $ (!\inst10|inst23|sub|81~4_combout\)) # (!\inst10|inst7|sub|81~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101001110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst24|sub|81~3_combout\,
	datab => \inst10|inst7|sub|81~3_combout\,
	datac => \inst10|inst4|sub|81~0_combout\,
	datad => \inst10|inst23|sub|81~4_combout\,
	combout => \inst25|inst50~0_combout\);

-- Location: LCCOMB_X77_Y41_N12
\inst25|BOOF~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25|BOOF~0_combout\ = (\inst10|inst7|sub|81~3_combout\ & ((\inst10|inst24|sub|81~3_combout\) # (\inst10|inst4|sub|81~0_combout\ $ (\inst10|inst23|sub|81~4_combout\)))) # (!\inst10|inst7|sub|81~3_combout\ & ((\inst10|inst24|sub|81~3_combout\ $ 
-- (\inst10|inst23|sub|81~4_combout\)) # (!\inst10|inst4|sub|81~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001111111101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst10|inst24|sub|81~3_combout\,
	datab => \inst10|inst7|sub|81~3_combout\,
	datac => \inst10|inst4|sub|81~0_combout\,
	datad => \inst10|inst23|sub|81~4_combout\,
	combout => \inst25|BOOF~0_combout\);

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

ww_IR_LD <= \IR_LD~output_o\;

ww_IROUT(2) <= \IROUT[2]~output_o\;

ww_IROUT(1) <= \IROUT[1]~output_o\;

ww_IROUT(0) <= \IROUT[0]~output_o\;

ww_CLK <= \CLK~output_o\;

ww_Address(14) <= \Address[14]~output_o\;

ww_Address(13) <= \Address[13]~output_o\;

ww_Address(12) <= \Address[12]~output_o\;

ww_Address(11) <= \Address[11]~output_o\;

ww_Address(10) <= \Address[10]~output_o\;

ww_Address(9) <= \Address[9]~output_o\;

ww_Address(8) <= \Address[8]~output_o\;

ww_Address(7) <= \Address[7]~output_o\;

ww_Address(6) <= \Address[6]~output_o\;

ww_Address(5) <= \Address[5]~output_o\;

ww_Address(4) <= \Address[4]~output_o\;

ww_Address(3) <= \Address[3]~output_o\;

ww_Address(2) <= \Address[2]~output_o\;

ww_Address(1) <= \Address[1]~output_o\;

ww_Address(0) <= \Address[0]~output_o\;

ww_PC(3) <= \PC[3]~output_o\;

ww_PC(2) <= \PC[2]~output_o\;

ww_PC(1) <= \PC[1]~output_o\;

ww_PC(0) <= \PC[0]~output_o\;

ww_PC_INC <= \PC_INC~output_o\;

ww_PC_LD <= \PC_LD~output_o\;

ww_X(7) <= \X[7]~output_o\;

ww_X(6) <= \X[6]~output_o\;

ww_X(5) <= \X[5]~output_o\;

ww_X(4) <= \X[4]~output_o\;

ww_X(3) <= \X[3]~output_o\;

ww_X(2) <= \X[2]~output_o\;

ww_X(1) <= \X[1]~output_o\;

ww_X(0) <= \X[0]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;

ww_D(1) <= \D[1]~output_o\;

ww_D(0) <= \D[0]~output_o\;

ww_COUT <= \COUT~output_o\;

ww_MSA(1) <= \MSA[1]~output_o\;

ww_MSA(0) <= \MSA[0]~output_o\;

ww_MSB(1) <= \MSB[1]~output_o\;

ww_MSB(0) <= \MSB[0]~output_o\;

ww_MSC(2) <= \MSC[2]~output_o\;

ww_MSC(1) <= \MSC[1]~output_o\;

ww_MSC(0) <= \MSC[0]~output_o\;

ww_DPA <= \DPA~output_o\;

ww_DPB <= \DPB~output_o\;

ww_AA(6) <= \AA[6]~output_o\;

ww_AA(5) <= \AA[5]~output_o\;

ww_AA(4) <= \AA[4]~output_o\;

ww_AA(3) <= \AA[3]~output_o\;

ww_AA(2) <= \AA[2]~output_o\;

ww_AA(1) <= \AA[1]~output_o\;

ww_AA(0) <= \AA[0]~output_o\;

ww_REGA(3) <= \REGA[3]~output_o\;

ww_REGA(2) <= \REGA[2]~output_o\;

ww_REGA(1) <= \REGA[1]~output_o\;

ww_REGA(0) <= \REGA[0]~output_o\;

ww_BB(6) <= \BB[6]~output_o\;

ww_BB(5) <= \BB[5]~output_o\;

ww_BB(4) <= \BB[4]~output_o\;

ww_BB(3) <= \BB[3]~output_o\;

ww_BB(2) <= \BB[2]~output_o\;

ww_BB(1) <= \BB[1]~output_o\;

ww_BB(0) <= \BB[0]~output_o\;

ww_REGB(3) <= \REGB[3]~output_o\;

ww_REGB(2) <= \REGB[2]~output_o\;

ww_REGB(1) <= \REGB[1]~output_o\;

ww_REGB(0) <= \REGB[0]~output_o\;

ww_CC(6) <= \CC[6]~output_o\;

ww_CC(5) <= \CC[5]~output_o\;

ww_CC(4) <= \CC[4]~output_o\;

ww_CC(3) <= \CC[3]~output_o\;

ww_CC(2) <= \CC[2]~output_o\;

ww_CC(1) <= \CC[1]~output_o\;

ww_CC(0) <= \CC[0]~output_o\;

ww_OUTPUT(3) <= \OUTPUT[3]~output_o\;

ww_OUTPUT(2) <= \OUTPUT[2]~output_o\;

ww_OUTPUT(1) <= \OUTPUT[1]~output_o\;

ww_OUTPUT(0) <= \OUTPUT[0]~output_o\;

ww_MUXA(3) <= \MUXA[3]~output_o\;

ww_MUXA(2) <= \MUXA[2]~output_o\;

ww_MUXA(1) <= \MUXA[1]~output_o\;

ww_MUXA(0) <= \MUXA[0]~output_o\;

ww_MUXB(3) <= \MUXB[3]~output_o\;

ww_MUXB(2) <= \MUXB[2]~output_o\;

ww_MUXB(1) <= \MUXB[1]~output_o\;

ww_MUXB(0) <= \MUXB[0]~output_o\;
END structure;


