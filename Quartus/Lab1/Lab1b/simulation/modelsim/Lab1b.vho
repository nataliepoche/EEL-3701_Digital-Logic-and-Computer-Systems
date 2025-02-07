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

-- DATE "02/06/2025 11:17:31"

-- 
-- Device: Altera 5M2210ZF324I5 Package FBGA324
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	Lab1b IS
    PORT (
	X_L : OUT std_logic;
	B_L : IN std_logic;
	A : IN std_logic;
	D_L : IN std_logic;
	C : IN std_logic
	);
END Lab1b;

-- Design Ports Information


ARCHITECTURE structure OF Lab1b IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_X_L : std_logic;
SIGNAL ww_B_L : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_D_L : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL \C~combout\ : std_logic;
SIGNAL \B_L~combout\ : std_logic;
SIGNAL \A~combout\ : std_logic;
SIGNAL \D_L~combout\ : std_logic;
SIGNAL \inst~0_combout\ : std_logic;

BEGIN

X_L <= ww_X_L;
ww_B_L <= B_L;
ww_A <= A;
ww_D_L <= D_L;
ww_C <= C;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_T11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\C~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_C,
	combout => \C~combout\);

-- Location: PIN_V12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\B_L~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_B_L,
	combout => \B_L~combout\);

-- Location: PIN_P11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\A~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_A,
	combout => \A~combout\);

-- Location: PIN_U13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\D_L~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_D_L,
	combout => \D_L~combout\);

-- Location: LC_X14_Y1_N7
\inst~0\ : maxv_lcell
-- Equation(s):
-- \inst~0_combout\ = (\C~combout\ & (!\D_L~combout\ & ((\B_L~combout\) # (\A~combout\)))) # (!\C~combout\ & ((\B_L~combout\) # ((\A~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "54fc",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \C~combout\,
	datab => \B_L~combout\,
	datac => \A~combout\,
	datad => \D_L~combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \inst~0_combout\);

-- Location: PIN_N11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\X_L~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \inst~0_combout\,
	oe => VCC,
	padio => ww_X_L);
END structure;


