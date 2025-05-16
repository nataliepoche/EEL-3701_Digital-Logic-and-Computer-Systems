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
-- Generated on "04/10/2025 19:06:11"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          LAB6_Part2
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY LAB6_Part2_vhd_vec_tst IS
END LAB6_Part2_vhd_vec_tst;
ARCHITECTURE LAB6_Part2_arch OF LAB6_Part2_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL AA : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL Address : STD_LOGIC_VECTOR(14 DOWNTO 0);
SIGNAL BB : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL CC : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL CIN : STD_LOGIC;
SIGNAL CLK : STD_LOGIC;
SIGNAL COUT : STD_LOGIC;
SIGNAL D : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL DPA : STD_LOGIC;
SIGNAL DPB : STD_LOGIC;
SIGNAL IR_LD : STD_LOGIC;
SIGNAL IROUT : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL MEM_CLK : STD_LOGIC;
SIGNAL MSA : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL MSB : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL MSC : STD_LOGIC_VECTOR(2 DOWNTO 0);
SIGNAL MUXA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL MUXB : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL OUTPUT : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL PC : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL PC_INC : STD_LOGIC;
SIGNAL PC_LD : STD_LOGIC;
SIGNAL Q : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL REGA : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL REGB : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL Reset_L : STD_LOGIC;
SIGNAL X : STD_LOGIC_VECTOR(7 DOWNTO 0);
COMPONENT LAB6_Part2
	PORT (
	AA : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	Address : OUT STD_LOGIC_VECTOR(14 DOWNTO 0);
	BB : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	CC : OUT STD_LOGIC_VECTOR(6 DOWNTO 0);
	CIN : IN STD_LOGIC;
	CLK : OUT STD_LOGIC;
	COUT : OUT STD_LOGIC;
	D : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	DPA : OUT STD_LOGIC;
	DPB : OUT STD_LOGIC;
	IR_LD : OUT STD_LOGIC;
	IROUT : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	MEM_CLK : IN STD_LOGIC;
	MSA : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	MSB : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	MSC : OUT STD_LOGIC_VECTOR(2 DOWNTO 0);
	MUXA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	MUXB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	OUTPUT : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	PC : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	PC_INC : OUT STD_LOGIC;
	PC_LD : OUT STD_LOGIC;
	Q : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
	REGA : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	REGB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	Reset_L : IN STD_LOGIC;
	X : OUT STD_LOGIC_VECTOR(7 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : LAB6_Part2
	PORT MAP (
-- list connections between master ports and signals
	AA => AA,
	Address => Address,
	BB => BB,
	CC => CC,
	CIN => CIN,
	CLK => CLK,
	COUT => COUT,
	D => D,
	DPA => DPA,
	DPB => DPB,
	IR_LD => IR_LD,
	IROUT => IROUT,
	MEM_CLK => MEM_CLK,
	MSA => MSA,
	MSB => MSB,
	MSC => MSC,
	MUXA => MUXA,
	MUXB => MUXB,
	OUTPUT => OUTPUT,
	PC => PC,
	PC_INC => PC_INC,
	PC_LD => PC_LD,
	Q => Q,
	REGA => REGA,
	REGB => REGB,
	Reset_L => Reset_L,
	X => X
	);

-- Reset_L
t_prcs_Reset_L: PROCESS
BEGIN
	Reset_L <= '0';
	WAIT FOR 50000 ps;
	Reset_L <= '1';
WAIT;
END PROCESS t_prcs_Reset_L;

-- MEM_CLK
t_prcs_MEM_CLK: PROCESS
BEGIN
LOOP
	MEM_CLK <= '0';
	WAIT FOR 25000 ps;
	MEM_CLK <= '1';
	WAIT FOR 25000 ps;
	IF (NOW >= 4000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_MEM_CLK;

-- CIN
t_prcs_CIN: PROCESS
BEGIN
	CIN <= '0';
WAIT;
END PROCESS t_prcs_CIN;
END LAB6_Part2_arch;
