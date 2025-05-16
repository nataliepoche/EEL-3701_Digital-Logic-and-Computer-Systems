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

-- DATE "03/03/2025 01:28:27"

-- 
-- Device: Altera 10M50DAF484C6GES Package FBGA484
-- 

-- 
-- This VHDL file should be used for Questa Intel FPGA (VHDL) only
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

ENTITY 	lab3_3bit_cnt IS
    PORT (
	Q0 : OUT std_logic;
	CLR0 : IN std_logic;
	CLK : IN std_logic;
	Q2 : OUT std_logic;
	CLR2 : IN std_logic;
	B : OUT std_logic;
	X : OUT std_logic_vector(3 DOWNTO 0);
	Q1 : OUT std_logic;
	CLR1 : IN std_logic;
	F : OUT std_logic;
	SET1 : IN std_logic;
	Sp_L : OUT std_logic;
	SET2 : IN std_logic;
	SET0 : IN std_logic;
	A : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic;
	E : OUT std_logic;
	G : OUT std_logic;
	FO : IN std_logic;
	BA : IN std_logic
	);
END lab3_3bit_cnt;

-- Design Ports Information
-- Q0	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_C19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_A18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sp_L	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FO	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BA	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SET0	=>  Location: PIN_C18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR0	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SET2	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR2	=>  Location: PIN_B19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SET1	=>  Location: PIN_D15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR1	=>  Location: PIN_A19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF lab3_3bit_cnt IS
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
SIGNAL ww_B : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_CLR1 : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_SET1 : std_logic;
SIGNAL ww_Sp_L : std_logic;
SIGNAL ww_SET2 : std_logic;
SIGNAL ww_SET0 : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL ww_FO : std_logic;
SIGNAL ww_BA : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \FO~input_o\ : std_logic;
SIGNAL \BA~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \X[3]~output_o\ : std_logic;
SIGNAL \X[2]~output_o\ : std_logic;
SIGNAL \X[1]~output_o\ : std_logic;
SIGNAL \X[0]~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \Sp_L~output_o\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \SET0~input_o\ : std_logic;
SIGNAL \CLR0~input_o\ : std_logic;
SIGNAL \inst44~1_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \SET1~input_o\ : std_logic;
SIGNAL \CLR1~input_o\ : std_logic;
SIGNAL \inst9~1_combout\ : std_logic;
SIGNAL \SET2~input_o\ : std_logic;
SIGNAL \CLR2~input_o\ : std_logic;
SIGNAL \inst45~1_combout\ : std_logic;
SIGNAL \inst1|inst50~1_combout\ : std_logic;
SIGNAL \inst14~1_combout\ : std_logic;
SIGNAL \inst14~0_combout\ : std_logic;
SIGNAL \inst45~3_combout\ : std_logic;
SIGNAL \inst45~0_combout\ : std_logic;
SIGNAL \inst45~_emulated_q\ : std_logic;
SIGNAL \inst45~2_combout\ : std_logic;
SIGNAL \inst48~0_combout\ : std_logic;
SIGNAL \inst14~2_combout\ : std_logic;
SIGNAL \inst9~3_combout\ : std_logic;
SIGNAL \inst9~0_combout\ : std_logic;
SIGNAL \inst9~_emulated_q\ : std_logic;
SIGNAL \inst9~2_combout\ : std_logic;
SIGNAL \inst44~5_combout\ : std_logic;
SIGNAL \inst44~3_combout\ : std_logic;
SIGNAL \inst44~0_combout\ : std_logic;
SIGNAL \inst44~_emulated_q\ : std_logic;
SIGNAL \inst44~2_combout\ : std_logic;
SIGNAL \inst25~0_combout\ : std_logic;
SIGNAL \inst1|boom2~0_combout\ : std_logic;
SIGNAL \inst1|BOOF~0_combout\ : std_logic;
SIGNAL \inst1|boom3~0_combout\ : std_logic;
SIGNAL \inst1|boom~combout\ : std_logic;
SIGNAL \inst1|boom~0_combout\ : std_logic;
SIGNAL \inst1|inst17~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst25~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_BOOF~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_boom3~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_boom2~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_boom~combout\ : std_logic;
SIGNAL \ALT_INV_inst9~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst44~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst45~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst50~1_combout\ : std_logic;

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
B <= ww_B;
X <= ww_X;
Q1 <= ww_Q1;
ww_CLR1 <= CLR1;
F <= ww_F;
ww_SET1 <= SET1;
Sp_L <= ww_Sp_L;
ww_SET2 <= SET2;
ww_SET0 <= SET0;
A <= ww_A;
C <= ww_C;
D <= ww_D;
E <= ww_E;
G <= ww_G;
ww_FO <= FO;
ww_BA <= BA;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\ALT_INV_inst25~0_combout\ <= NOT \inst25~0_combout\;
\inst1|ALT_INV_BOOF~0_combout\ <= NOT \inst1|BOOF~0_combout\;
\inst1|ALT_INV_inst17~0_combout\ <= NOT \inst1|inst17~0_combout\;
\inst1|ALT_INV_boom3~0_combout\ <= NOT \inst1|boom3~0_combout\;
\inst1|ALT_INV_boom2~0_combout\ <= NOT \inst1|boom2~0_combout\;
\inst1|ALT_INV_boom~combout\ <= NOT \inst1|boom~combout\;
\ALT_INV_inst9~0_combout\ <= NOT \inst9~0_combout\;
\ALT_INV_inst44~0_combout\ <= NOT \inst44~0_combout\;
\ALT_INV_inst45~0_combout\ <= NOT \inst45~0_combout\;
\inst1|ALT_INV_inst50~1_combout\ <= NOT \inst1|inst50~1_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y42_N12
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

-- Location: IOOBUF_X60_Y54_N16
\Q0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst44~2_combout\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOOBUF_X69_Y54_N2
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

-- Location: IOOBUF_X74_Y54_N9
\B~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_inst50~1_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X60_Y54_N23
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

-- Location: IOOBUF_X69_Y54_N9
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

-- Location: IOOBUF_X66_Y54_N30
\X[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~2_combout\,
	devoe => ww_devoe,
	o => \X[1]~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\X[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst44~2_combout\,
	devoe => ww_devoe,
	o => \X[0]~output_o\);

-- Location: IOOBUF_X66_Y54_N23
\Q1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~2_combout\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X74_Y54_N16
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

-- Location: IOOBUF_X60_Y54_N30
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

-- Location: IOOBUF_X58_Y54_N16
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

-- Location: IOOBUF_X60_Y54_N2
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

-- Location: IOOBUF_X62_Y54_N30
\D~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|ALT_INV_boom~combout\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOOBUF_X74_Y54_N2
\E~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|boom~0_combout\,
	devoe => ww_devoe,
	o => \E~output_o\);

-- Location: IOOBUF_X74_Y54_N23
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

-- Location: IOIBUF_X69_Y54_N22
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

-- Location: IOIBUF_X64_Y54_N1
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

-- Location: LCCOMB_X67_Y53_N10
\inst44~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst44~1_combout\ = (\CLR0~input_o\ & ((\inst44~1_combout\) # (!\SET0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET0~input_o\,
	datac => \CLR0~input_o\,
	datad => \inst44~1_combout\,
	combout => \inst44~1_combout\);

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

-- Location: IOIBUF_X66_Y54_N15
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

-- Location: IOIBUF_X66_Y54_N8
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

-- Location: LCCOMB_X66_Y53_N10
\inst9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9~1_combout\ = (\CLR1~input_o\ & ((\inst9~1_combout\) # (!\SET1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SET1~input_o\,
	datac => \CLR1~input_o\,
	datad => \inst9~1_combout\,
	combout => \inst9~1_combout\);

-- Location: IOIBUF_X66_Y54_N1
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

-- Location: IOIBUF_X69_Y54_N15
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

-- Location: LCCOMB_X67_Y53_N0
\inst45~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45~1_combout\ = (\CLR2~input_o\ & ((\inst45~1_combout\) # (!\SET2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLR2~input_o\,
	datac => \SET2~input_o\,
	datad => \inst45~1_combout\,
	combout => \inst45~1_combout\);

-- Location: LCCOMB_X67_Y53_N18
\inst1|inst50~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst50~1_combout\ = (\inst44~2_combout\ & ((\inst45~2_combout\ $ (!\inst9~2_combout\)))) # (!\inst44~2_combout\ & (((\inst1|inst50~1_combout\ & !\inst9~2_combout\)) # (!\inst45~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|inst50~1_combout\,
	datab => \inst44~2_combout\,
	datac => \inst45~2_combout\,
	datad => \inst9~2_combout\,
	combout => \inst1|inst50~1_combout\);

-- Location: LCCOMB_X67_Y53_N22
\inst14~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14~1_combout\ = ((!\inst45~2_combout\ & !\inst1|inst50~1_combout\)) # (!\inst9~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~2_combout\,
	datac => \inst45~2_combout\,
	datad => \inst1|inst50~1_combout\,
	combout => \inst14~1_combout\);

-- Location: LCCOMB_X67_Y53_N16
\inst14~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14~0_combout\ = (\inst1|inst50~1_combout\ & ((\inst45~2_combout\))) # (!\inst1|inst50~1_combout\ & (\inst9~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~2_combout\,
	datac => \inst45~2_combout\,
	datad => \inst1|inst50~1_combout\,
	combout => \inst14~0_combout\);

-- Location: LCCOMB_X67_Y53_N6
\inst45~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45~3_combout\ = \inst45~1_combout\ $ (((\inst44~2_combout\ & (\inst14~1_combout\)) # (!\inst44~2_combout\ & ((\inst14~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100101101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44~2_combout\,
	datab => \inst45~1_combout\,
	datac => \inst14~1_combout\,
	datad => \inst14~0_combout\,
	combout => \inst45~3_combout\);

-- Location: LCCOMB_X67_Y53_N12
\inst45~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45~0_combout\ = (!\SET2~input_o\) # (!\CLR2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CLR2~input_o\,
	datac => \SET2~input_o\,
	combout => \inst45~0_combout\);

-- Location: FF_X67_Y53_N7
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

-- Location: LCCOMB_X67_Y53_N4
\inst45~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst45~2_combout\ = (\CLR2~input_o\ & ((\inst45~1_combout\ $ (\inst45~_emulated_q\)) # (!\SET2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET2~input_o\,
	datab => \inst45~1_combout\,
	datac => \CLR2~input_o\,
	datad => \inst45~_emulated_q\,
	combout => \inst45~2_combout\);

-- Location: LCCOMB_X66_Y53_N8
\inst48~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst48~0_combout\ = ((!\inst44~2_combout\) # (!\inst9~2_combout\)) # (!\inst45~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45~2_combout\,
	datab => \inst9~2_combout\,
	datac => \inst44~2_combout\,
	combout => \inst48~0_combout\);

-- Location: LCCOMB_X66_Y53_N18
\inst14~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14~2_combout\ = (\inst9~2_combout\ & !\inst1|inst50~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst9~2_combout\,
	datad => \inst1|inst50~1_combout\,
	combout => \inst14~2_combout\);

-- Location: LCCOMB_X66_Y53_N24
\inst9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9~3_combout\ = \inst9~1_combout\ $ (\inst14~2_combout\ $ (((\inst44~2_combout\ & \inst48~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001010101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~1_combout\,
	datab => \inst44~2_combout\,
	datac => \inst48~0_combout\,
	datad => \inst14~2_combout\,
	combout => \inst9~3_combout\);

-- Location: LCCOMB_X66_Y53_N28
\inst9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9~0_combout\ = (!\SET1~input_o\) # (!\CLR1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \CLR1~input_o\,
	datad => \SET1~input_o\,
	combout => \inst9~0_combout\);

-- Location: FF_X66_Y53_N25
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

-- Location: LCCOMB_X66_Y53_N14
\inst9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst9~2_combout\ = (\CLR1~input_o\ & ((\inst9~1_combout\ $ (\inst9~_emulated_q\)) # (!\SET1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~1_combout\,
	datab => \SET1~input_o\,
	datac => \CLR1~input_o\,
	datad => \inst9~_emulated_q\,
	combout => \inst9~2_combout\);

-- Location: LCCOMB_X67_Y53_N28
\inst44~5\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst44~5_combout\ = (\inst9~2_combout\ & (!\inst45~2_combout\ & ((!\inst1|inst50~1_combout\) # (!\inst44~2_combout\)))) # (!\inst9~2_combout\ & ((\inst1|inst50~1_combout\) # ((\inst45~2_combout\ & !\inst44~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~2_combout\,
	datab => \inst45~2_combout\,
	datac => \inst44~2_combout\,
	datad => \inst1|inst50~1_combout\,
	combout => \inst44~5_combout\);

-- Location: LCCOMB_X67_Y53_N2
\inst44~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst44~3_combout\ = \inst44~1_combout\ $ (!\inst44~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44~1_combout\,
	datad => \inst44~5_combout\,
	combout => \inst44~3_combout\);

-- Location: LCCOMB_X67_Y53_N30
\inst44~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst44~0_combout\ = (!\CLR0~input_o\) # (!\SET0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SET0~input_o\,
	datac => \CLR0~input_o\,
	combout => \inst44~0_combout\);

-- Location: FF_X67_Y53_N3
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

-- Location: LCCOMB_X67_Y53_N8
\inst44~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst44~2_combout\ = (\CLR0~input_o\ & ((\inst44~1_combout\ $ (\inst44~_emulated_q\)) # (!\SET0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44~1_combout\,
	datab => \CLR0~input_o\,
	datac => \SET0~input_o\,
	datad => \inst44~_emulated_q\,
	combout => \inst44~2_combout\);

-- Location: LCCOMB_X66_Y53_N20
\inst25~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25~0_combout\ = (\inst44~2_combout\ & (((\inst45~2_combout\) # (!\inst9~2_combout\)))) # (!\inst44~2_combout\ & ((\inst1|inst50~1_combout\) # ((\inst9~2_combout\) # (!\inst45~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111001011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44~2_combout\,
	datab => \inst1|inst50~1_combout\,
	datac => \inst9~2_combout\,
	datad => \inst45~2_combout\,
	combout => \inst25~0_combout\);

-- Location: LCCOMB_X67_Y53_N20
\inst1|boom2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|boom2~0_combout\ = (\inst9~2_combout\ & (\inst45~2_combout\ $ (\inst44~2_combout\))) # (!\inst9~2_combout\ & ((\inst45~2_combout\) # (!\inst44~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst9~2_combout\,
	datac => \inst45~2_combout\,
	datad => \inst44~2_combout\,
	combout => \inst1|boom2~0_combout\);

-- Location: LCCOMB_X66_Y53_N26
\inst1|BOOF~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|BOOF~0_combout\ = (\inst44~2_combout\ & (((\inst45~2_combout\)))) # (!\inst44~2_combout\ & (((\inst9~2_combout\) # (!\inst45~2_combout\)) # (!\inst1|inst50~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44~2_combout\,
	datab => \inst1|inst50~1_combout\,
	datac => \inst9~2_combout\,
	datad => \inst45~2_combout\,
	combout => \inst1|BOOF~0_combout\);

-- Location: LCCOMB_X66_Y53_N4
\inst1|boom3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|boom3~0_combout\ = (\inst44~2_combout\) # ((\inst9~2_combout\ & ((\inst45~2_combout\))) # (!\inst9~2_combout\ & ((\inst1|inst50~1_combout\) # (!\inst45~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44~2_combout\,
	datab => \inst1|inst50~1_combout\,
	datac => \inst9~2_combout\,
	datad => \inst45~2_combout\,
	combout => \inst1|boom3~0_combout\);

-- Location: LCCOMB_X66_Y53_N22
\inst1|boom\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|boom~combout\ = (\inst44~2_combout\ & ((\inst9~2_combout\ $ (\inst45~2_combout\)))) # (!\inst44~2_combout\ & (((\inst9~2_combout\) # (!\inst45~2_combout\)) # (!\inst1|inst50~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44~2_combout\,
	datab => \inst1|inst50~1_combout\,
	datac => \inst9~2_combout\,
	datad => \inst45~2_combout\,
	combout => \inst1|boom~combout\);

-- Location: LCCOMB_X67_Y53_N26
\inst1|boom~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|boom~0_combout\ = (\inst44~2_combout\ & (((\inst45~2_combout\) # (!\inst9~2_combout\)))) # (!\inst44~2_combout\ & (\inst1|inst50~1_combout\ & (\inst45~2_combout\ & !\inst9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst44~2_combout\,
	datab => \inst1|inst50~1_combout\,
	datac => \inst45~2_combout\,
	datad => \inst9~2_combout\,
	combout => \inst1|boom~0_combout\);

-- Location: LCCOMB_X67_Y53_N24
\inst1|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst17~0_combout\ = (\inst45~2_combout\ & ((\inst9~2_combout\ & ((!\inst44~2_combout\))) # (!\inst9~2_combout\ & ((\inst1|inst50~1_combout\) # (\inst44~2_combout\))))) # (!\inst45~2_combout\ & (((\inst9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst45~2_combout\,
	datab => \inst1|inst50~1_combout\,
	datac => \inst9~2_combout\,
	datad => \inst44~2_combout\,
	combout => \inst1|inst17~0_combout\);

-- Location: IOIBUF_X29_Y0_N22
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

-- Location: IOIBUF_X26_Y0_N1
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

ww_B <= \B~output_o\;

ww_X(3) <= \X[3]~output_o\;

ww_X(2) <= \X[2]~output_o\;

ww_X(1) <= \X[1]~output_o\;

ww_X(0) <= \X[0]~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_F <= \F~output_o\;

ww_Sp_L <= \Sp_L~output_o\;

ww_A <= \A~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;

ww_E <= \E~output_o\;

ww_G <= \G~output_o\;
END structure;


