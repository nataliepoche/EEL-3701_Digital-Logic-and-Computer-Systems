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
-- Generated on "03/27/2025 17:34:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Lab5_DFF_Traf_Cont
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Lab5_DFF_Traf_Cont_vhd_vec_tst IS
END Lab5_DFF_Traf_Cont_vhd_vec_tst;
ARCHITECTURE Lab5_DFF_Traf_Cont_arch OF Lab5_DFF_Traf_Cont_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLK : STD_LOGIC;
SIGNAL CW_L : STD_LOGIC;
SIGNAL D0 : STD_LOGIC;
SIGNAL D1 : STD_LOGIC;
SIGNAL D2 : STD_LOGIC;
SIGNAL D3 : STD_LOGIC;
SIGNAL EV : STD_LOGIC;
SIGNAL Gr : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;
SIGNAL Q2 : STD_LOGIC;
SIGNAL Q3 : STD_LOGIC;
SIGNAL Re : STD_LOGIC;
SIGNAL Start_L : STD_LOGIC;
SIGNAL Ye : STD_LOGIC;
COMPONENT Lab5_DFF_Traf_Cont
	PORT (
	CLK : IN STD_LOGIC;
	CW_L : IN STD_LOGIC;
	D0 : OUT STD_LOGIC;
	D1 : OUT STD_LOGIC;
	D2 : OUT STD_LOGIC;
	D3 : OUT STD_LOGIC;
	EV : IN STD_LOGIC;
	Gr : OUT STD_LOGIC;
	Q0 : OUT STD_LOGIC;
	Q1 : OUT STD_LOGIC;
	Q2 : OUT STD_LOGIC;
	Q3 : OUT STD_LOGIC;
	Re : OUT STD_LOGIC;
	Start_L : IN STD_LOGIC;
	Ye : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Lab5_DFF_Traf_Cont
	PORT MAP (
-- list connections between master ports and signals
	CLK => CLK,
	CW_L => CW_L,
	D0 => D0,
	D1 => D1,
	D2 => D2,
	D3 => D3,
	EV => EV,
	Gr => Gr,
	Q0 => Q0,
	Q1 => Q1,
	Q2 => Q2,
	Q3 => Q3,
	Re => Re,
	Start_L => Start_L,
	Ye => Ye
	);

-- CLK
t_prcs_CLK: PROCESS
BEGIN
LOOP
	CLK <= '0';
	WAIT FOR 25000 ps;
	CLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 1200000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLK;

-- Start_L
t_prcs_Start_L: PROCESS
BEGIN
	Start_L <= '1';
WAIT;
END PROCESS t_prcs_Start_L;

-- EV
t_prcs_EV: PROCESS
BEGIN
	EV <= '1';
WAIT;
END PROCESS t_prcs_EV;

-- CW_L
t_prcs_CW_L: PROCESS
BEGIN
	CW_L <= '1';
WAIT;
END PROCESS t_prcs_CW_L;
END Lab5_DFF_Traf_Cont_arch;
