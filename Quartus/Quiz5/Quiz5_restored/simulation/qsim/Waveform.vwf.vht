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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/27/2025 20:43:02"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Quiz5
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Quiz5_vhd_vec_tst IS
END Quiz5_vhd_vec_tst;
ARCHITECTURE Quiz5_arch OF Quiz5_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A_L : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL D0 : STD_LOGIC;
SIGNAL D1 : STD_LOGIC;
SIGNAL D2 : STD_LOGIC;
SIGNAL F : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;
SIGNAL Q2 : STD_LOGIC;
SIGNAL Start_L : STD_LOGIC;
SIGNAL TS : STD_LOGIC;
COMPONENT Quiz5
	PORT (
	A_L : IN STD_LOGIC;
	CLK : IN STD_LOGIC;
	D0 : OUT STD_LOGIC;
	D1 : OUT STD_LOGIC;
	D2 : OUT STD_LOGIC;
	F : OUT STD_LOGIC;
	Q0 : OUT STD_LOGIC;
	Q1 : OUT STD_LOGIC;
	Q2 : OUT STD_LOGIC;
	Start_L : IN STD_LOGIC;
	TS : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Quiz5
	PORT MAP (
-- list connections between master ports and signals
	A_L => A_L,
	CLK => CLK,
	D0 => D0,
	D1 => D1,
	D2 => D2,
	F => F,
	Q0 => Q0,
	Q1 => Q1,
	Q2 => Q2,
	Start_L => Start_L,
	TS => TS
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 10000 ps;
	CLK <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- Start_L
t_prcs_Start_L: PROCESS
BEGIN
	Start_L <= '1';
WAIT;
END PROCESS t_prcs_Start_L;

-- A_L
t_prcs_A_L: PROCESS
BEGIN
	A_L <= '0';
WAIT;
END PROCESS t_prcs_A_L;
END Quiz5_arch;
