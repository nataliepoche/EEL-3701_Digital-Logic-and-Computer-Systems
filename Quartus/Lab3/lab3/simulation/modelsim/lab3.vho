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

-- DATE "03/03/2025 11:08:18"

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

ENTITY 	lab3 IS
    PORT (
	Q0 : OUT std_logic;
	CLR0 : IN std_logic;
	CLK : IN std_logic;
	Q2 : OUT std_logic;
	CLR2 : IN std_logic;
	FO : IN std_logic;
	Q1 : OUT std_logic;
	CLR1 : IN std_logic;
	BA : IN std_logic;
	SET1 : IN std_logic;
	SET2 : IN std_logic;
	SET0 : IN std_logic;
	A : OUT std_logic;
	X : OUT std_logic_vector(3 DOWNTO 0);
	Sp_L : OUT std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic;
	E : OUT std_logic;
	F : OUT std_logic;
	G : OUT std_logic
	);
END lab3;

-- Design Ports Information
-- Q0	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_D12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sp_L	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_H13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_J12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BA	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SET0	=>  Location: PIN_D13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR0	=>  Location: PIN_D14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SET2	=>  Location: PIN_E13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR2	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SET1	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR1	=>  Location: PIN_C12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FO	=>  Location: PIN_B14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_CLR0 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_CLR2 : std_logic;
SIGNAL ww_FO : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_CLR1 : std_logic;
SIGNAL ww_BA : std_logic;
SIGNAL ww_SET1 : std_logic;
SIGNAL ww_SET2 : std_logic;
SIGNAL ww_SET0 : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sp_L : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \X[3]~output_o\ : std_logic;
SIGNAL \X[2]~output_o\ : std_logic;
SIGNAL \X[1]~output_o\ : std_logic;
SIGNAL \X[0]~output_o\ : std_logic;
SIGNAL \Sp_L~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \SET0~input_o\ : std_logic;
SIGNAL \CLR0~input_o\ : std_logic;
SIGNAL \inst9~1_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \CLR1~input_o\ : std_logic;
SIGNAL \SET1~input_o\ : std_logic;
SIGNAL \inst44~1_combout\ : std_logic;
SIGNAL \FO~input_o\ : std_logic;
SIGNAL \BA~input_o\ : std_logic;
SIGNAL \CLR2~input_o\ : std_logic;
SIGNAL \SET2~input_o\ : std_logic;
SIGNAL \inst45~1_combout\ : std_logic;
SIGNAL \inst20~combout\ : std_logic;
SIGNAL \inst3~combout\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;
SIGNAL \inst45~3_combout\ : std_logic;
SIGNAL \inst45~0_combout\ : std_logic;
SIGNAL \inst45~_emulated_q\ : std_logic;
SIGNAL \inst45~2_combout\ : std_logic;
SIGNAL \inst47~0_combout\ : std_logic;
SIGNAL \inst47~1_combout\ : std_logic;
SIGNAL \inst44~3_combout\ : std_logic;
SIGNAL \inst44~0_combout\ : std_logic;
SIGNAL \inst44~_emulated_q\ : std_logic;
SIGNAL \inst44~2_combout\ : std_logic;
SIGNAL \inst9~5_combout\ : std_logic;
SIGNAL \inst9~6_combout\ : std_logic;
SIGNAL \inst9~3_combout\ : std_logic;
SIGNAL \inst9~0_combout\ : std_logic;
SIGNAL \inst9~_emulated_q\ : std_logic;
SIGNAL \inst9~2_combout\ : std_logic;
SIGNAL \inst1|BOOF~0_combout\ : std_logic;
SIGNAL \inst25~0_combout\ : std_logic;
SIGNAL \inst1|inst50~0_combout\ : std_logic;
SIGNAL \inst1|boom3~0_combout\ : std_logic;
SIGNAL \inst1|boom~0_combout\ : std_logic;
SIGNAL \inst1|boom~1_combout\ : std_logic;
SIGNAL \inst1|boom2~0_combout\ : std_logic;
SIGNAL \inst1|inst17~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_BOOF~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst25~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst50~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_boom2~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst44~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_boom~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst45~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_boom3~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Q0 <= ww_Q0;
ww_CLR0 <= CLR0;
ww_CLK <= CLK;
Q2 <= ww_Q2;
ww_CLR2 <= CLR2;
ww_FO <= FO;
Q1 <= ww_Q1;
ww_CLR1 <= CLR1;
ww_BA <= BA;
ww_SET1 <= SET1;
ww_SET2 <= SET2;
ww_SET0 <= SET0;
A <= ww_A;
X <= ww_X;
Sp_L <= ww_Sp_L;
B <= ww_B;
C <= ww_C;
D <= ww_D;
E <= ww_E;
F <= ww_F;
G <= ww_G;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst1|ALT_INV_BOOF~0_combout\ <= NOT \inst1|BOOF~0_combout\;
\ALT_INV_inst25~0_combout\ <= NOT \inst25~0_combout\;
\inst1|ALT_INV_inst50~0_combout\ <= NOT \inst1|inst50~0_combout\;
\inst1|ALT_INV_boom2~0_combout\ <= NOT \inst1|boom2~0_combout\;
\ALT_INV_inst9~0_combout\ <= NOT \inst9~0_combout\;
\ALT_INV_inst44~0_combout\ <= NOT \inst44~0_combout\;
\inst1|ALT_INV_boom~0_combout\ <= NOT \inst1|boom~0_combout\;
\inst1|ALT_INV_inst17~0_combout\ <= NOT \inst1|inst17~0_combout\;
\ALT_INV_inst45~0_combout\ <= NOT \inst45~0_combout\;
\inst1|ALT_INV_boom3~0_combout\ <= NOT \inst1|boom3~0_combout\;
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

-- Location: IOOBUF_X58_Y54_N2
\Q0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~2_combout\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOOBUF_X51_Y54_N9
\Q2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst45~2_combout\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\Q1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst44~2_combout\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X51_Y54_N30
\A~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_BOOF~0_combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\X[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst25~0_combout\,
	devoe => ww_devoe,
	o => \X[3]~output_o\);

-- Location: IOOBUF_X51_Y54_N2
\X[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst45~2_combout\,
	devoe => ww_devoe,
	o => \X[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\X[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst44~2_combout\,
	devoe => ww_devoe,
	o => \X[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\X[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~2_combout\,
	devoe => ww_devoe,
	o => \X[0]~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\Sp_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst25~0_combout\,
	devoe => ww_devoe,
	o => \Sp_L~output_o\);

-- Location: IOOBUF_X54_Y54_N2
\B~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_inst50~0_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X54_Y54_N9
\C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_boom3~0_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X54_Y54_N16
\D~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_boom~0_combout\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\E~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|boom~1_combout\,
	devoe => ww_devoe,
	o => \E~output_o\);

-- Location: IOOBUF_X51_Y54_N16
\F~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_boom2~0_combout\,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOOBUF_X51_Y54_N23
\G~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \G~output_o\);

-- Location: IOIBUF_X56_Y54_N29
\SET0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SET0,
	o => \SET0~input_o\);

-- Location: IOIBUF_X56_Y54_N8
\CLR0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR0,
	o => \CLR0~input_o\);

-- Location: LCCOMB_X56_Y53_N20
\inst9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9~1_combout\ = (\CLR0~input_o\ & ((\inst9~1_combout\) # (!\SET0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET0~input_o\,
	datac => \CLR0~input_o\,
	datad => \inst9~1_combout\,
	combout => \inst9~1_combout\);

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

-- Location: IOIBUF_X54_Y54_N29
\CLR1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR1,
	o => \CLR1~input_o\);

-- Location: IOIBUF_X54_Y54_N22
\SET1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SET1,
	o => \SET1~input_o\);

-- Location: LCCOMB_X55_Y53_N24
\inst44~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst44~1_combout\ = (\CLR1~input_o\ & ((\inst44~1_combout\) # (!\SET1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR1~input_o\,
	datac => \SET1~input_o\,
	datad => \inst44~1_combout\,
	combout => \inst44~1_combout\);

-- Location: IOIBUF_X56_Y54_N1
\FO~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_FO,
	o => \FO~input_o\);

-- Location: IOIBUF_X56_Y54_N22
\BA~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_BA,
	o => \BA~input_o\);

-- Location: IOIBUF_X60_Y54_N15
\CLR2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLR2,
	o => \CLR2~input_o\);

-- Location: IOIBUF_X56_Y54_N15
\SET2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SET2,
	o => \SET2~input_o\);

-- Location: LCCOMB_X56_Y53_N10
\inst45~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45~1_combout\ = (\CLR2~input_o\ & ((\inst45~1_combout\) # (!\SET2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR2~input_o\,
	datac => \SET2~input_o\,
	datad => \inst45~1_combout\,
	combout => \inst45~1_combout\);

-- Location: LCCOMB_X56_Y53_N0
inst20 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20~combout\ = (!\BA~input_o\ & (!\FO~input_o\ & \inst45~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BA~input_o\,
	datab => \FO~input_o\,
	datac => \inst45~2_combout\,
	combout => \inst20~combout\);

-- Location: LCCOMB_X56_Y53_N26
inst3 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst3~combout\ = (\BA~input_o\ & (!\inst45~2_combout\ & \inst44~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BA~input_o\,
	datac => \inst45~2_combout\,
	datad => \inst44~2_combout\,
	combout => \inst3~combout\);

-- Location: LCCOMB_X56_Y53_N24
\inst14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = (\FO~input_o\ & (!\inst45~2_combout\ & ((\inst9~2_combout\) # (!\inst44~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FO~input_o\,
	datab => \inst9~2_combout\,
	datac => \inst45~2_combout\,
	datad => \inst44~2_combout\,
	combout => \inst14~0_combout\);

-- Location: LCCOMB_X56_Y53_N2
\inst45~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45~3_combout\ = \inst45~1_combout\ $ (((\inst20~combout\) # ((\inst3~combout\) # (\inst14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45~1_combout\,
	datab => \inst20~combout\,
	datac => \inst3~combout\,
	datad => \inst14~0_combout\,
	combout => \inst45~3_combout\);

-- Location: LCCOMB_X56_Y53_N22
\inst45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45~0_combout\ = (!\CLR2~input_o\) # (!\SET2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SET2~input_o\,
	datad => \CLR2~input_o\,
	combout => \inst45~0_combout\);

-- Location: FF_X56_Y53_N3
\inst45~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst45~3_combout\,
	clrn => \ALT_INV_inst45~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst45~_emulated_q\);

-- Location: LCCOMB_X56_Y53_N8
\inst45~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45~2_combout\ = (\CLR2~input_o\ & ((\inst45~1_combout\ $ (\inst45~_emulated_q\)) # (!\SET2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR2~input_o\,
	datab => \inst45~1_combout\,
	datac => \SET2~input_o\,
	datad => \inst45~_emulated_q\,
	combout => \inst45~2_combout\);

-- Location: LCCOMB_X55_Y53_N30
\inst47~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47~0_combout\ = \inst44~2_combout\ $ (((!\inst45~2_combout\ & ((\BA~input_o\) # (!\inst9~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011010100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44~2_combout\,
	datab => \BA~input_o\,
	datac => \inst45~2_combout\,
	datad => \inst9~2_combout\,
	combout => \inst47~0_combout\);

-- Location: LCCOMB_X55_Y53_N16
\inst47~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst47~1_combout\ = (\inst45~2_combout\) # ((\inst9~2_combout\) # ((!\inst44~2_combout\ & \BA~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44~2_combout\,
	datab => \BA~input_o\,
	datac => \inst45~2_combout\,
	datad => \inst9~2_combout\,
	combout => \inst47~1_combout\);

-- Location: LCCOMB_X55_Y53_N18
\inst44~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst44~3_combout\ = \inst44~1_combout\ $ (\inst47~1_combout\ $ (((!\FO~input_o\ & !\inst47~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011011001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \FO~input_o\,
	datab => \inst44~1_combout\,
	datac => \inst47~0_combout\,
	datad => \inst47~1_combout\,
	combout => \inst44~3_combout\);

-- Location: LCCOMB_X55_Y53_N2
\inst44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst44~0_combout\ = (!\SET1~input_o\) # (!\CLR1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR1~input_o\,
	datac => \SET1~input_o\,
	combout => \inst44~0_combout\);

-- Location: FF_X55_Y53_N19
\inst44~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst44~3_combout\,
	clrn => \ALT_INV_inst44~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst44~_emulated_q\);

-- Location: LCCOMB_X55_Y53_N12
\inst44~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst44~2_combout\ = (\CLR1~input_o\ & ((\inst44~1_combout\ $ (\inst44~_emulated_q\)) # (!\SET1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR1~input_o\,
	datab => \inst44~1_combout\,
	datac => \SET1~input_o\,
	datad => \inst44~_emulated_q\,
	combout => \inst44~2_combout\);

-- Location: LCCOMB_X56_Y53_N30
\inst9~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9~5_combout\ = (\BA~input_o\ & (\inst9~2_combout\ & (\FO~input_o\ $ (!\inst45~2_combout\)))) # (!\BA~input_o\ & ((\inst45~2_combout\ & (\FO~input_o\)) # (!\inst45~2_combout\ & ((!\inst9~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001001000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BA~input_o\,
	datab => \FO~input_o\,
	datac => \inst45~2_combout\,
	datad => \inst9~2_combout\,
	combout => \inst9~5_combout\);

-- Location: LCCOMB_X56_Y53_N12
\inst9~6\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9~6_combout\ = (\FO~input_o\ & (((!\inst45~2_combout\ & !\inst9~2_combout\)))) # (!\FO~input_o\ & ((\BA~input_o\) # ((!\inst9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BA~input_o\,
	datab => \FO~input_o\,
	datac => \inst45~2_combout\,
	datad => \inst9~2_combout\,
	combout => \inst9~6_combout\);

-- Location: LCCOMB_X56_Y53_N18
\inst9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9~3_combout\ = \inst9~1_combout\ $ (((\inst44~2_combout\ & (!\inst9~5_combout\)) # (!\inst44~2_combout\ & ((!\inst9~6_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011010010011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44~2_combout\,
	datab => \inst9~1_combout\,
	datac => \inst9~5_combout\,
	datad => \inst9~6_combout\,
	combout => \inst9~3_combout\);

-- Location: LCCOMB_X56_Y53_N14
\inst9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9~0_combout\ = (!\SET0~input_o\) # (!\CLR0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLR0~input_o\,
	datad => \SET0~input_o\,
	combout => \inst9~0_combout\);

-- Location: FF_X56_Y53_N19
\inst9~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst9~3_combout\,
	clrn => \ALT_INV_inst9~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9~_emulated_q\);

-- Location: LCCOMB_X56_Y53_N28
\inst9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9~2_combout\ = (\CLR0~input_o\ & ((\inst9~1_combout\ $ (\inst9~_emulated_q\)) # (!\SET0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET0~input_o\,
	datab => \inst9~1_combout\,
	datac => \CLR0~input_o\,
	datad => \inst9~_emulated_q\,
	combout => \inst9~2_combout\);

-- Location: LCCOMB_X55_Y53_N28
\inst1|BOOF~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|BOOF~0_combout\ = (\inst45~2_combout\ & ((\inst9~2_combout\) # ((\inst44~2_combout\) # (\BA~input_o\)))) # (!\inst45~2_combout\ & (!\inst9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45~2_combout\,
	datab => \inst9~2_combout\,
	datac => \inst44~2_combout\,
	datad => \BA~input_o\,
	combout => \inst1|BOOF~0_combout\);

-- Location: LCCOMB_X56_Y53_N16
\inst25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25~0_combout\ = (\inst44~2_combout\ & ((\inst45~2_combout\) # ((!\inst9~2_combout\)))) # (!\inst44~2_combout\ & (((\inst9~2_combout\) # (!\BA~input_o\)) # (!\inst45~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44~2_combout\,
	datab => \inst45~2_combout\,
	datac => \BA~input_o\,
	datad => \inst9~2_combout\,
	combout => \inst25~0_combout\);

-- Location: LCCOMB_X55_Y53_N26
\inst1|inst50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst50~0_combout\ = (\inst9~2_combout\ & (\inst45~2_combout\ $ ((!\inst44~2_combout\)))) # (!\inst9~2_combout\ & (((!\inst44~2_combout\ & !\BA~input_o\)) # (!\inst45~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010110010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45~2_combout\,
	datab => \inst9~2_combout\,
	datac => \inst44~2_combout\,
	datad => \BA~input_o\,
	combout => \inst1|inst50~0_combout\);

-- Location: LCCOMB_X55_Y53_N20
\inst1|boom3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|boom3~0_combout\ = (\inst9~2_combout\) # ((\inst45~2_combout\ & ((\inst44~2_combout\) # (!\BA~input_o\))) # (!\inst45~2_combout\ & (!\inst44~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45~2_combout\,
	datab => \inst9~2_combout\,
	datac => \inst44~2_combout\,
	datad => \BA~input_o\,
	combout => \inst1|boom3~0_combout\);

-- Location: LCCOMB_X55_Y53_N14
\inst1|boom~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|boom~0_combout\ = (\inst9~2_combout\ & (\inst45~2_combout\ $ ((\inst44~2_combout\)))) # (!\inst9~2_combout\ & (((\inst44~2_combout\) # (\BA~input_o\)) # (!\inst45~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111101101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45~2_combout\,
	datab => \inst9~2_combout\,
	datac => \inst44~2_combout\,
	datad => \BA~input_o\,
	combout => \inst1|boom~0_combout\);

-- Location: LCCOMB_X55_Y53_N4
\inst1|boom~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|boom~1_combout\ = (\inst45~2_combout\ & ((\inst9~2_combout\) # ((!\inst44~2_combout\ & !\BA~input_o\)))) # (!\inst45~2_combout\ & (\inst9~2_combout\ & (!\inst44~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45~2_combout\,
	datab => \inst9~2_combout\,
	datac => \inst44~2_combout\,
	datad => \BA~input_o\,
	combout => \inst1|boom~1_combout\);

-- Location: LCCOMB_X55_Y53_N10
\inst1|boom2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|boom2~0_combout\ = (\inst44~2_combout\ & (\inst9~2_combout\ $ (\inst45~2_combout\))) # (!\inst44~2_combout\ & ((\inst45~2_combout\) # (!\inst9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110011001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44~2_combout\,
	datab => \inst9~2_combout\,
	datad => \inst45~2_combout\,
	combout => \inst1|boom2~0_combout\);

-- Location: LCCOMB_X55_Y53_N8
\inst1|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst17~0_combout\ = (\inst45~2_combout\ & ((\inst9~2_combout\ & (!\inst44~2_combout\)) # (!\inst9~2_combout\ & ((\inst44~2_combout\) # (!\BA~input_o\))))) # (!\inst45~2_combout\ & (((\inst44~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111100001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45~2_combout\,
	datab => \inst9~2_combout\,
	datac => \inst44~2_combout\,
	datad => \BA~input_o\,
	combout => \inst1|inst17~0_combout\);

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

ww_Q0 <= \Q0~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_A <= \A~output_o\;

ww_X(3) <= \X[3]~output_o\;

ww_X(2) <= \X[2]~output_o\;

ww_X(1) <= \X[1]~output_o\;

ww_X(0) <= \X[0]~output_o\;

ww_Sp_L <= \Sp_L~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;

ww_E <= \E~output_o\;

ww_F <= \F~output_o\;

ww_G <= \G~output_o\;
END structure;


