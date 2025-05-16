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
-- Generated on "03/03/2025 01:28:26"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          lab3_3bit_cnt
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY lab3_3bit_cnt_vhd_vec_tst IS
END lab3_3bit_cnt_vhd_vec_tst;
ARCHITECTURE lab3_3bit_cnt_arch OF lab3_3bit_cnt_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL A : STD_LOGIC;
SIGNAL B : STD_LOGIC;
SIGNAL BA : STD_LOGIC;
SIGNAL C : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL CLR0 : STD_LOGIC;
SIGNAL CLR1 : STD_LOGIC;
SIGNAL CLR2 : STD_LOGIC;
SIGNAL D : STD_LOGIC;
SIGNAL E : STD_LOGIC;
SIGNAL F : STD_LOGIC;
SIGNAL FO : STD_LOGIC;
SIGNAL G : STD_LOGIC;
SIGNAL Q0 : STD_LOGIC;
SIGNAL Q1 : STD_LOGIC;
SIGNAL Q2 : STD_LOGIC;
SIGNAL SET0 : STD_LOGIC;
SIGNAL SET1 : STD_LOGIC;
SIGNAL SET2 : STD_LOGIC;
SIGNAL Sp_L : STD_LOGIC;
SIGNAL X : STD_LOGIC_VECTOR(3 DOWNTO 0);
COMPONENT lab3_3bit_cnt
	PORT (
	A : OUT STD_LOGIC;
	B : OUT STD_LOGIC;
	BA : IN STD_LOGIC;
	C : OUT STD_LOGIC;
	CLK : IN STD_LOGIC;
	CLR0 : IN STD_LOGIC;
	CLR1 : IN STD_LOGIC;
	CLR2 : IN STD_LOGIC;
	D : OUT STD_LOGIC;
	E : OUT STD_LOGIC;
	F : OUT STD_LOGIC;
	FO : IN STD_LOGIC;
	G : OUT STD_LOGIC;
	Q0 : OUT STD_LOGIC;
	Q1 : OUT STD_LOGIC;
	Q2 : OUT STD_LOGIC;
	SET0 : IN STD_LOGIC;
	SET1 : IN STD_LOGIC;
	SET2 : IN STD_LOGIC;
	Sp_L : OUT STD_LOGIC;
	X : OUT STD_LOGIC_VECTOR(3 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : lab3_3bit_cnt
	PORT MAP (
-- list connections between master ports and signals
	A => A,
	B => B,
	BA => BA,
	C => C,
	CLK => CLK,
	CLR0 => CLR0,
	CLR1 => CLR1,
	CLR2 => CLR2,
	D => D,
	E => E,
	F => F,
	FO => FO,
	G => G,
	Q0 => Q0,
	Q1 => Q1,
	Q2 => Q2,
	SET0 => SET0,
	SET1 => SET1,
	SET2 => SET2,
	Sp_L => Sp_L,
	X => X
	);

-- BA
t_prcs_BA: PROCESS
BEGIN
	BA <= '0';
WAIT;
END PROCESS t_prcs_BA;

-- CLK
t_prcs_CLK: PROCESS
BEGIN
	CLK <= '0';
WAIT;
END PROCESS t_prcs_CLK;

-- CLR0
t_prcs_CLR0: PROCESS
BEGIN
	CLR0 <= '0';
WAIT;
END PROCESS t_prcs_CLR0;

-- CLR1
t_prcs_CLR1: PROCESS
BEGIN
	CLR1 <= '0';
WAIT;
END PROCESS t_prcs_CLR1;

-- CLR2
t_prcs_CLR2: PROCESS
BEGIN
	CLR2 <= '0';
WAIT;
END PROCESS t_prcs_CLR2;

-- FO
t_prcs_FO: PROCESS
BEGIN
	FO <= '0';
WAIT;
END PROCESS t_prcs_FO;

-- SET0
t_prcs_SET0: PROCESS
BEGIN
	SET0 <= '0';
WAIT;
END PROCESS t_prcs_SET0;

-- SET1
t_prcs_SET1: PROCESS
BEGIN
	SET1 <= '0';
WAIT;
END PROCESS t_prcs_SET1;

-- SET2
t_prcs_SET2: PROCESS
BEGIN
	SET2 <= '0';
WAIT;
END PROCESS t_prcs_SET2;
END lab3_3bit_cnt_arch;
