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

-- DATE "03/13/2025 13:42:21"

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


LIBRARY FIFTYFIVENM;
LIBRARY IEEE;
USE FIFTYFIVENM.FIFTYFIVENM_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Lab4_ALU IS
    PORT (
	COUT : OUT std_logic;
	A : IN std_logic_vector(3 DOWNTO 0);
	B : IN std_logic_vector(3 DOWNTO 0);
	S : IN std_logic_vector(1 DOWNTO 0);
	F : OUT std_logic_vector(3 DOWNTO 0);
	\FOR\ : OUT std_logic_vector(3 DOWNTO 0);
	FNOT : OUT std_logic_vector(3 DOWNTO 0);
	FSUM : OUT std_logic_vector(3 DOWNTO 0);
	FAND : OUT std_logic_vector(3 DOWNTO 0);
	CIN : IN std_logic
	);
END Lab4_ALU;

-- Design Ports Information
-- COUT	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[3]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[2]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F[0]	=>  Location: PIN_H4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOR[3]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOR[2]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOR[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FOR[0]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FNOT[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FNOT[2]	=>  Location: PIN_U5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FNOT[1]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FNOT[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FSUM[3]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FSUM[2]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FSUM[1]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FSUM[0]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FAND[3]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FAND[2]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FAND[1]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- FAND[0]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CIN	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[3]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[3]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[2]	=>  Location: PIN_K4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[2]	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[1]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[1]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab4_ALU IS
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
SIGNAL ww_A : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_B : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_F : std_logic_vector(3 DOWNTO 0);
SIGNAL \ww_FOR\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FNOT : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FSUM : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_FAND : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CIN : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CIN~input_o\ : std_logic;
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \COUT~output_o\ : std_logic;
SIGNAL \F[3]~output_o\ : std_logic;
SIGNAL \F[2]~output_o\ : std_logic;
SIGNAL \F[1]~output_o\ : std_logic;
SIGNAL \F[0]~output_o\ : std_logic;
SIGNAL \FOR[3]~output_o\ : std_logic;
SIGNAL \FOR[2]~output_o\ : std_logic;
SIGNAL \FOR[1]~output_o\ : std_logic;
SIGNAL \FOR[0]~output_o\ : std_logic;
SIGNAL \FNOT[3]~output_o\ : std_logic;
SIGNAL \FNOT[2]~output_o\ : std_logic;
SIGNAL \FNOT[1]~output_o\ : std_logic;
SIGNAL \FNOT[0]~output_o\ : std_logic;
SIGNAL \FSUM[3]~output_o\ : std_logic;
SIGNAL \FSUM[2]~output_o\ : std_logic;
SIGNAL \FSUM[1]~output_o\ : std_logic;
SIGNAL \FSUM[0]~output_o\ : std_logic;
SIGNAL \FAND[3]~output_o\ : std_logic;
SIGNAL \FAND[2]~output_o\ : std_logic;
SIGNAL \FAND[1]~output_o\ : std_logic;
SIGNAL \FAND[0]~output_o\ : std_logic;
SIGNAL \A[1]~input_o\ : std_logic;
SIGNAL \B[1]~input_o\ : std_logic;
SIGNAL \B[0]~input_o\ : std_logic;
SIGNAL \A[0]~input_o\ : std_logic;
SIGNAL \inst7|sub|105~0_combout\ : std_logic;
SIGNAL \B[2]~input_o\ : std_logic;
SIGNAL \A[2]~input_o\ : std_logic;
SIGNAL \inst7|sub|106~0_combout\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \inst6|3~0_combout\ : std_logic;
SIGNAL \B[3]~input_o\ : std_logic;
SIGNAL \A[3]~input_o\ : std_logic;
SIGNAL \inst1~0_combout\ : std_logic;
SIGNAL \inst7|sub|82~0_combout\ : std_logic;
SIGNAL \inst6|10~0_combout\ : std_logic;
SIGNAL \inst6|10~1_combout\ : std_logic;
SIGNAL \inst7|sub|80~combout\ : std_logic;
SIGNAL \inst6|9~2_combout\ : std_logic;
SIGNAL \inst6|9~3_combout\ : std_logic;
SIGNAL \inst7|sub|78~0_combout\ : std_logic;
SIGNAL \inst|10~2_combout\ : std_logic;
SIGNAL \inst|10~3_combout\ : std_logic;
SIGNAL \inst|9~0_combout\ : std_logic;
SIGNAL \inst15~combout\ : std_logic;
SIGNAL \inst14~combout\ : std_logic;
SIGNAL \inst13~combout\ : std_logic;
SIGNAL \inst12~combout\ : std_logic;
SIGNAL \inst7|sub|82~combout\ : std_logic;
SIGNAL \inst7|sub|76~combout\ : std_logic;
SIGNAL \inst7|sub|103~combout\ : std_logic;
SIGNAL \inst7|sub|100~combout\ : std_logic;
SIGNAL \inst7|sub|97~combout\ : std_logic;
SIGNAL \inst7|sub|93~combout\ : std_logic;
SIGNAL \ALT_INV_A[1]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[0]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[3]~input_o\ : std_logic;
SIGNAL \ALT_INV_A[2]~input_o\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

COUT <= ww_COUT;
ww_A <= A;
ww_B <= B;
ww_S <= S;
F <= ww_F;
\FOR\ <= \ww_FOR\;
FNOT <= ww_FNOT;
FSUM <= ww_FSUM;
FAND <= ww_FAND;
ww_CIN <= CIN;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_A[1]~input_o\ <= NOT \A[1]~input_o\;
\ALT_INV_A[0]~input_o\ <= NOT \A[0]~input_o\;
\ALT_INV_A[3]~input_o\ <= NOT \A[3]~input_o\;
\ALT_INV_A[2]~input_o\ <= NOT \A[2]~input_o\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N8
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

-- Location: IOOBUF_X22_Y39_N23
\COUT~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~0_combout\,
	devoe => ww_devoe,
	o => \COUT~output_o\);

-- Location: IOOBUF_X26_Y39_N23
\F[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|10~1_combout\,
	devoe => ww_devoe,
	o => \F[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\F[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6|9~3_combout\,
	devoe => ww_devoe,
	o => \F[2]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\F[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|10~3_combout\,
	devoe => ww_devoe,
	o => \F[1]~output_o\);

-- Location: IOOBUF_X0_Y35_N2
\F[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|9~0_combout\,
	devoe => ww_devoe,
	o => \F[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\FOR[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst15~combout\,
	devoe => ww_devoe,
	o => \FOR[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N30
\FOR[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst14~combout\,
	devoe => ww_devoe,
	o => \FOR[2]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\FOR[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst13~combout\,
	devoe => ww_devoe,
	o => \FOR[1]~output_o\);

-- Location: IOOBUF_X26_Y39_N2
\FOR[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst12~combout\,
	devoe => ww_devoe,
	o => \FOR[0]~output_o\);

-- Location: IOOBUF_X31_Y39_N9
\FNOT[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_A[3]~input_o\,
	devoe => ww_devoe,
	o => \FNOT[3]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\FNOT[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_A[2]~input_o\,
	devoe => ww_devoe,
	o => \FNOT[2]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\FNOT[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_A[1]~input_o\,
	devoe => ww_devoe,
	o => \FNOT[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\FNOT[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_A[0]~input_o\,
	devoe => ww_devoe,
	o => \FNOT[0]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\FSUM[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sub|82~combout\,
	devoe => ww_devoe,
	o => \FSUM[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\FSUM[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sub|80~combout\,
	devoe => ww_devoe,
	o => \FSUM[2]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\FSUM[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sub|78~0_combout\,
	devoe => ww_devoe,
	o => \FSUM[1]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\FSUM[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sub|76~combout\,
	devoe => ww_devoe,
	o => \FSUM[0]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\FAND[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sub|103~combout\,
	devoe => ww_devoe,
	o => \FAND[3]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\FAND[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sub|100~combout\,
	devoe => ww_devoe,
	o => \FAND[2]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\FAND[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sub|97~combout\,
	devoe => ww_devoe,
	o => \FAND[1]~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\FAND[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|sub|93~combout\,
	devoe => ww_devoe,
	o => \FAND[0]~output_o\);

-- Location: IOIBUF_X22_Y39_N29
\A[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(1),
	o => \A[1]~input_o\);

-- Location: IOIBUF_X24_Y39_N22
\B[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(1),
	o => \B[1]~input_o\);

-- Location: IOIBUF_X26_Y39_N29
\B[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(0),
	o => \B[0]~input_o\);

-- Location: IOIBUF_X31_Y39_N22
\A[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(0),
	o => \A[0]~input_o\);

-- Location: LCCOMB_X25_Y35_N26
\inst7|sub|105~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|sub|105~0_combout\ = (\A[1]~input_o\ & ((\B[1]~input_o\) # ((\B[0]~input_o\ & \A[0]~input_o\)))) # (!\A[1]~input_o\ & (\B[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst7|sub|105~0_combout\);

-- Location: IOIBUF_X22_Y0_N15
\B[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(2),
	o => \B[2]~input_o\);

-- Location: IOIBUF_X0_Y34_N1
\A[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(2),
	o => \A[2]~input_o\);

-- Location: LCCOMB_X25_Y35_N12
\inst7|sub|106~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|sub|106~0_combout\ = (\inst7|sub|105~0_combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\))) # (!\inst7|sub|105~0_combout\ & (\B[2]~input_o\ & \A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110100011101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|sub|105~0_combout\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	combout => \inst7|sub|106~0_combout\);

-- Location: IOIBUF_X26_Y39_N15
\S[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(1),
	o => \S[1]~input_o\);

-- Location: IOIBUF_X26_Y39_N8
\S[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_S(0),
	o => \S[0]~input_o\);

-- Location: LCCOMB_X25_Y35_N16
\inst6|3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|3~0_combout\ = (\S[1]~input_o\ & !\S[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datac => \S[0]~input_o\,
	combout => \inst6|3~0_combout\);

-- Location: IOIBUF_X29_Y39_N1
\B[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_B(3),
	o => \B[3]~input_o\);

-- Location: IOIBUF_X31_Y39_N29
\A[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_A(3),
	o => \A[3]~input_o\);

-- Location: LCCOMB_X25_Y35_N30
\inst1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst1~0_combout\ = (\inst6|3~0_combout\ & ((\inst7|sub|106~0_combout\ & ((\B[3]~input_o\) # (\A[3]~input_o\))) # (!\inst7|sub|106~0_combout\ & (\B[3]~input_o\ & \A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|sub|106~0_combout\,
	datab => \inst6|3~0_combout\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst1~0_combout\);

-- Location: LCCOMB_X25_Y35_N10
\inst7|sub|82~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|sub|82~0_combout\ = \B[3]~input_o\ $ (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst7|sub|82~0_combout\);

-- Location: LCCOMB_X25_Y35_N8
\inst6|10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|10~0_combout\ = (\B[3]~input_o\ & ((\A[3]~input_o\ & (\S[0]~input_o\)) # (!\A[3]~input_o\ & ((!\S[1]~input_o\))))) # (!\B[3]~input_o\ & (!\S[1]~input_o\ & (\S[0]~input_o\ $ (!\A[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \S[1]~input_o\,
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst6|10~0_combout\);

-- Location: LCCOMB_X25_Y35_N4
\inst6|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|10~1_combout\ = (\inst6|10~0_combout\) # ((\inst6|3~0_combout\ & (\inst7|sub|82~0_combout\ $ (\inst7|sub|106~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|sub|82~0_combout\,
	datab => \inst6|3~0_combout\,
	datac => \inst6|10~0_combout\,
	datad => \inst7|sub|106~0_combout\,
	combout => \inst6|10~1_combout\);

-- Location: LCCOMB_X25_Y35_N0
\inst7|sub|80\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|sub|80~combout\ = \inst7|sub|105~0_combout\ $ (\B[2]~input_o\ $ (\A[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|sub|105~0_combout\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	combout => \inst7|sub|80~combout\);

-- Location: LCCOMB_X25_Y35_N6
\inst6|9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|9~2_combout\ = (\A[2]~input_o\ & (\S[0]~input_o\ & ((\B[2]~input_o\) # (!\S[1]~input_o\)))) # (!\A[2]~input_o\ & (!\S[1]~input_o\ & ((\B[2]~input_o\) # (!\S[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \A[2]~input_o\,
	datac => \S[1]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst6|9~2_combout\);

-- Location: LCCOMB_X25_Y35_N20
\inst6|9~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst6|9~3_combout\ = (\inst6|9~2_combout\) # ((!\S[0]~input_o\ & (\inst7|sub|80~combout\ & \S[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \inst7|sub|80~combout\,
	datac => \S[1]~input_o\,
	datad => \inst6|9~2_combout\,
	combout => \inst6|9~3_combout\);

-- Location: LCCOMB_X25_Y35_N28
\inst7|sub|78~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|sub|78~0_combout\ = \A[1]~input_o\ $ (\B[1]~input_o\ $ (((\B[0]~input_o\ & \A[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \A[1]~input_o\,
	datab => \B[1]~input_o\,
	datac => \B[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst7|sub|78~0_combout\);

-- Location: LCCOMB_X25_Y35_N18
\inst|10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|10~2_combout\ = (\B[1]~input_o\ & ((\A[1]~input_o\ & (\S[0]~input_o\)) # (!\A[1]~input_o\ & ((!\S[1]~input_o\))))) # (!\B[1]~input_o\ & (!\S[1]~input_o\ & (\S[0]~input_o\ $ (!\A[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[0]~input_o\,
	datab => \B[1]~input_o\,
	datac => \S[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst|10~2_combout\);

-- Location: LCCOMB_X25_Y35_N14
\inst|10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|10~3_combout\ = (\inst|10~2_combout\) # ((\S[1]~input_o\ & (\inst7|sub|78~0_combout\ & !\S[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \inst7|sub|78~0_combout\,
	datac => \S[0]~input_o\,
	datad => \inst|10~2_combout\,
	combout => \inst|10~3_combout\);

-- Location: LCCOMB_X25_Y35_N22
\inst|9~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|9~0_combout\ = (\S[0]~input_o\ & ((\S[1]~input_o\ & (\B[0]~input_o\ & \A[0]~input_o\)) # (!\S[1]~input_o\ & ((\B[0]~input_o\) # (\A[0]~input_o\))))) # (!\S[0]~input_o\ & (\A[0]~input_o\ $ (((\B[0]~input_o\) # (!\S[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101001001001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \B[0]~input_o\,
	datac => \S[0]~input_o\,
	datad => \A[0]~input_o\,
	combout => \inst|9~0_combout\);

-- Location: LCCOMB_X25_Y35_N24
inst15 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15~combout\ = (\B[3]~input_o\) # (\A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst15~combout\);

-- Location: LCCOMB_X21_Y1_N0
inst14 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst14~combout\ = (\A[2]~input_o\) # (\B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst14~combout\);

-- Location: LCCOMB_X25_Y36_N8
inst13 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13~combout\ = (\B[1]~input_o\) # (\A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst13~combout\);

-- Location: LCCOMB_X26_Y35_N0
inst12 : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst12~combout\ = (\B[0]~input_o\) # (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	combout => \inst12~combout\);

-- Location: LCCOMB_X25_Y35_N2
\inst7|sub|82\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|sub|82~combout\ = \inst7|sub|82~0_combout\ $ (((\inst7|sub|105~0_combout\ & ((\B[2]~input_o\) # (\A[2]~input_o\))) # (!\inst7|sub|105~0_combout\ & (\B[2]~input_o\ & \A[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001011111101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|sub|105~0_combout\,
	datab => \B[2]~input_o\,
	datac => \A[2]~input_o\,
	datad => \inst7|sub|82~0_combout\,
	combout => \inst7|sub|82~combout\);

-- Location: LCCOMB_X26_Y35_N2
\inst7|sub|76\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|sub|76~combout\ = \B[0]~input_o\ $ (\A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	combout => \inst7|sub|76~combout\);

-- Location: LCCOMB_X30_Y38_N0
\inst7|sub|103\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|sub|103~combout\ = (\B[3]~input_o\ & \A[3]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \B[3]~input_o\,
	datad => \A[3]~input_o\,
	combout => \inst7|sub|103~combout\);

-- Location: LCCOMB_X21_Y1_N2
\inst7|sub|100\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|sub|100~combout\ = (\A[2]~input_o\ & \B[2]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \A[2]~input_o\,
	datad => \B[2]~input_o\,
	combout => \inst7|sub|100~combout\);

-- Location: LCCOMB_X25_Y36_N10
\inst7|sub|97\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|sub|97~combout\ = (\B[1]~input_o\ & \A[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \B[1]~input_o\,
	datad => \A[1]~input_o\,
	combout => \inst7|sub|97~combout\);

-- Location: LCCOMB_X26_Y35_N20
\inst7|sub|93\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst7|sub|93~combout\ = (\B[0]~input_o\ & \A[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \B[0]~input_o\,
	datac => \A[0]~input_o\,
	combout => \inst7|sub|93~combout\);

-- Location: IOIBUF_X0_Y34_N8
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

ww_F(3) <= \F[3]~output_o\;

ww_F(2) <= \F[2]~output_o\;

ww_F(1) <= \F[1]~output_o\;

ww_F(0) <= \F[0]~output_o\;

\ww_FOR\(3) <= \FOR[3]~output_o\;

\ww_FOR\(2) <= \FOR[2]~output_o\;

\ww_FOR\(1) <= \FOR[1]~output_o\;

\ww_FOR\(0) <= \FOR[0]~output_o\;

ww_FNOT(3) <= \FNOT[3]~output_o\;

ww_FNOT(2) <= \FNOT[2]~output_o\;

ww_FNOT(1) <= \FNOT[1]~output_o\;

ww_FNOT(0) <= \FNOT[0]~output_o\;

ww_FSUM(3) <= \FSUM[3]~output_o\;

ww_FSUM(2) <= \FSUM[2]~output_o\;

ww_FSUM(1) <= \FSUM[1]~output_o\;

ww_FSUM(0) <= \FSUM[0]~output_o\;

ww_FAND(3) <= \FAND[3]~output_o\;

ww_FAND(2) <= \FAND[2]~output_o\;

ww_FAND(1) <= \FAND[1]~output_o\;

ww_FAND(0) <= \FAND[0]~output_o\;
END structure;


