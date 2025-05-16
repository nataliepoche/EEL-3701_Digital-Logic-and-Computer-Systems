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

-- DATE "02/27/2025 15:52:28"

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

ENTITY 	Lab3_3bit_Cnt IS
    PORT (
	Q0 : OUT std_logic;
	Start_L : IN std_logic;
	CLK : IN std_logic;
	FO : IN std_logic;
	BA : IN std_logic;
	Q2 : OUT std_logic;
	Q1 : OUT std_logic;
	A : OUT std_logic;
	X : OUT std_logic_vector(3 DOWNTO 0);
	Sp_L : OUT std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic;
	E : OUT std_logic;
	F : OUT std_logic;
	G : OUT std_logic;
	SET2 : IN std_logic;
	SET1 : IN std_logic;
	CLR1 : IN std_logic;
	CLR2 : IN std_logic
	);
END Lab3_3bit_Cnt;

-- Design Ports Information
-- Q0	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_B16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_J13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_A16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sp_L	=>  Location: PIN_H14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SET2	=>  Location: PIN_P20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SET1	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR1	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR2	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start_L	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- BA	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FO	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab3_3bit_Cnt IS
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
SIGNAL ww_Start_L : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_FO : std_logic;
SIGNAL ww_BA : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Sp_L : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL ww_SET2 : std_logic;
SIGNAL ww_SET1 : std_logic;
SIGNAL ww_CLR1 : std_logic;
SIGNAL ww_CLR2 : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SET2~input_o\ : std_logic;
SIGNAL \SET1~input_o\ : std_logic;
SIGNAL \CLR1~input_o\ : std_logic;
SIGNAL \CLR2~input_o\ : std_logic;
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
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst14~feeder_combout\ : std_logic;
SIGNAL \Start_L~input_o\ : std_logic;
SIGNAL \inst14~q\ : std_logic;
SIGNAL \BA~input_o\ : std_logic;
SIGNAL \FO~input_o\ : std_logic;
SIGNAL \inst37~0_combout\ : std_logic;
SIGNAL \inst37~1_combout\ : std_logic;
SIGNAL \inst9~q\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \inst15~1_combout\ : std_logic;
SIGNAL \inst7~q\ : std_logic;
SIGNAL \inst25~1_combout\ : std_logic;
SIGNAL \inst1|BOOF~0_combout\ : std_logic;
SIGNAL \inst1|inst50~0_combout\ : std_logic;
SIGNAL \inst1|boom3~0_combout\ : std_logic;
SIGNAL \inst1|boom~0_combout\ : std_logic;
SIGNAL \inst1|boom1~0_combout\ : std_logic;
SIGNAL \inst1|boom2~0_combout\ : std_logic;
SIGNAL \inst1|inst17~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_BOOF~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_inst50~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_boom3~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_boom~0_combout\ : std_logic;
SIGNAL \inst1|ALT_INV_boom1~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Q0 <= ww_Q0;
ww_Start_L <= Start_L;
ww_CLK <= CLK;
ww_FO <= FO;
ww_BA <= BA;
Q2 <= ww_Q2;
Q1 <= ww_Q1;
A <= ww_A;
X <= ww_X;
Sp_L <= ww_Sp_L;
B <= ww_B;
C <= ww_C;
D <= ww_D;
E <= ww_E;
F <= ww_F;
G <= ww_G;
ww_SET2 <= SET2;
ww_SET1 <= SET1;
ww_CLR1 <= CLR1;
ww_CLR2 <= CLR2;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
\inst1|ALT_INV_BOOF~0_combout\ <= NOT \inst1|BOOF~0_combout\;
\inst1|ALT_INV_inst50~0_combout\ <= NOT \inst1|inst50~0_combout\;
\inst1|ALT_INV_boom3~0_combout\ <= NOT \inst1|boom3~0_combout\;
\inst1|ALT_INV_boom~0_combout\ <= NOT \inst1|boom~0_combout\;
\inst1|ALT_INV_boom1~0_combout\ <= NOT \inst1|boom1~0_combout\;
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

-- Location: IOOBUF_X58_Y54_N30
\Q0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~q\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\Q2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~q\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X60_Y54_N9
\Q1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~q\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

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

-- Location: IOOBUF_X60_Y54_N30
\X[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25~1_combout\,
	devoe => ww_devoe,
	o => \X[3]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\X[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~q\,
	devoe => ww_devoe,
	o => \X[2]~output_o\);

-- Location: IOOBUF_X60_Y54_N16
\X[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst9~q\,
	devoe => ww_devoe,
	o => \X[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N23
\X[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~q\,
	devoe => ww_devoe,
	o => \X[0]~output_o\);

-- Location: IOOBUF_X60_Y54_N23
\Sp_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst25~1_combout\,
	devoe => ww_devoe,
	o => \Sp_L~output_o\);

-- Location: IOOBUF_X74_Y54_N9
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
	i => \inst1|ALT_INV_boom~0_combout\,
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
	i => \inst1|ALT_INV_boom1~0_combout\,
	devoe => ww_devoe,
	o => \E~output_o\);

-- Location: IOOBUF_X74_Y54_N16
\F~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|boom2~0_combout\,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOOBUF_X74_Y54_N23
\G~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|inst17~0_combout\,
	devoe => ww_devoe,
	o => \G~output_o\);

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

-- Location: LCCOMB_X60_Y53_N20
\inst14~feeder\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14~feeder_combout\ = VCC

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \inst14~feeder_combout\);

-- Location: IOIBUF_X29_Y0_N15
\Start_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start_L,
	o => \Start_L~input_o\);

-- Location: FF_X60_Y53_N21
inst14 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst14~feeder_combout\,
	clrn => \Start_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst14~q\);

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

-- Location: LCCOMB_X60_Y53_N28
\inst37~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst37~0_combout\ = (\FO~input_o\ & (\inst14~q\ & ((\inst7~q\) # (\inst9~q\)))) # (!\FO~input_o\ & ((\inst7~q\ & (\inst9~q\)) # (!\inst7~q\ & ((!\inst14~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datab => \FO~input_o\,
	datac => \inst9~q\,
	datad => \inst14~q\,
	combout => \inst37~0_combout\);

-- Location: LCCOMB_X60_Y53_N4
\inst37~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst37~1_combout\ = (\BA~input_o\ & (\inst37~0_combout\ & (\FO~input_o\ $ (\inst9~q\)))) # (!\BA~input_o\ & ((\inst37~0_combout\) # ((!\FO~input_o\ & \inst9~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111110100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BA~input_o\,
	datab => \FO~input_o\,
	datac => \inst9~q\,
	datad => \inst37~0_combout\,
	combout => \inst37~1_combout\);

-- Location: FF_X60_Y53_N5
inst9 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst37~1_combout\,
	clrn => \Start_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst9~q\);

-- Location: LCCOMB_X60_Y53_N0
\inst15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = \inst9~q\ $ (((\FO~input_o\ & \inst14~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \FO~input_o\,
	datac => \inst9~q\,
	datad => \inst14~q\,
	combout => \inst15~0_combout\);

-- Location: LCCOMB_X60_Y53_N6
\inst15~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15~1_combout\ = (\FO~input_o\ & (((!\inst7~q\ & !\inst15~0_combout\)))) # (!\FO~input_o\ & ((\BA~input_o\ & (!\inst7~q\ & \inst15~0_combout\)) # (!\BA~input_o\ & (\inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001000011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \BA~input_o\,
	datab => \FO~input_o\,
	datac => \inst7~q\,
	datad => \inst15~0_combout\,
	combout => \inst15~1_combout\);

-- Location: FF_X60_Y53_N7
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst15~1_combout\,
	clrn => \Start_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

-- Location: LCCOMB_X60_Y53_N2
\inst25~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst25~1_combout\ = (\inst9~q\ & (\inst14~q\ & ((\inst25~1_combout\) # (!\inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datab => \inst9~q\,
	datac => \inst25~1_combout\,
	datad => \inst14~q\,
	combout => \inst25~1_combout\);

-- Location: LCCOMB_X60_Y53_N18
\inst1|BOOF~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|BOOF~0_combout\ = (\inst25~1_combout\ & ((\inst9~q\ $ (!\inst7~q\)) # (!\inst14~q\))) # (!\inst25~1_combout\ & ((\inst9~q\) # (\inst14~q\ $ (!\inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25~1_combout\,
	datab => \inst9~q\,
	datac => \inst14~q\,
	datad => \inst7~q\,
	combout => \inst1|BOOF~0_combout\);

-- Location: LCCOMB_X60_Y53_N12
\inst1|inst50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst50~0_combout\ = (\inst25~1_combout\ & ((\inst14~q\ & (!\inst9~q\)) # (!\inst14~q\ & ((!\inst7~q\))))) # (!\inst25~1_combout\ & ((\inst9~q\ $ (!\inst14~q\)) # (!\inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25~1_combout\,
	datab => \inst9~q\,
	datac => \inst14~q\,
	datad => \inst7~q\,
	combout => \inst1|inst50~0_combout\);

-- Location: LCCOMB_X60_Y53_N30
\inst1|boom3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|boom3~0_combout\ = (\inst25~1_combout\ & (((!\inst9~q\ & \inst14~q\)) # (!\inst7~q\))) # (!\inst25~1_combout\ & (((\inst14~q\) # (\inst7~q\)) # (!\inst9~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25~1_combout\,
	datab => \inst9~q\,
	datac => \inst14~q\,
	datad => \inst7~q\,
	combout => \inst1|boom3~0_combout\);

-- Location: LCCOMB_X60_Y53_N16
\inst1|boom~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|boom~0_combout\ = (\inst9~q\ & ((\inst14~q\ & ((!\inst7~q\))) # (!\inst14~q\ & ((\inst7~q\) # (!\inst25~1_combout\))))) # (!\inst9~q\ & ((\inst25~1_combout\) # (\inst14~q\ $ (!\inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111011100111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25~1_combout\,
	datab => \inst9~q\,
	datac => \inst14~q\,
	datad => \inst7~q\,
	combout => \inst1|boom~0_combout\);

-- Location: LCCOMB_X60_Y53_N26
\inst1|boom1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|boom1~0_combout\ = (\inst9~q\ & ((\inst25~1_combout\) # ((!\inst14~q\)))) # (!\inst9~q\ & ((\inst7~q\ & (\inst25~1_combout\)) # (!\inst7~q\ & ((!\inst14~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111010001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25~1_combout\,
	datab => \inst9~q\,
	datac => \inst14~q\,
	datad => \inst7~q\,
	combout => \inst1|boom1~0_combout\);

-- Location: LCCOMB_X60_Y53_N8
\inst1|boom2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|boom2~0_combout\ = (\inst9~q\ & (!\inst25~1_combout\ & ((\inst14~q\) # (!\inst7~q\)))) # (!\inst9~q\ & (\inst14~q\ & (\inst25~1_combout\ $ (!\inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25~1_combout\,
	datab => \inst9~q\,
	datac => \inst14~q\,
	datad => \inst7~q\,
	combout => \inst1|boom2~0_combout\);

-- Location: LCCOMB_X60_Y53_N14
\inst1|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1|inst17~0_combout\ = (\inst14~q\ & (!\inst25~1_combout\ & (\inst9~q\ $ (!\inst7~q\)))) # (!\inst14~q\ & (!\inst9~q\ & (\inst25~1_combout\ $ (!\inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst25~1_combout\,
	datab => \inst9~q\,
	datac => \inst14~q\,
	datad => \inst7~q\,
	combout => \inst1|inst17~0_combout\);

-- Location: IOIBUF_X78_Y24_N1
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

-- Location: IOIBUF_X26_Y0_N8
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

-- Location: IOIBUF_X14_Y0_N15
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

-- Location: IOIBUF_X0_Y12_N1
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


