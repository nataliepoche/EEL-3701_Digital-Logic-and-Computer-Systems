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

-- DATE "04/01/2025 23:02:12"

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

ENTITY 	hw10 IS
    PORT (
	A : OUT std_logic;
	X : IN std_logic_vector(3 DOWNTO 0);
	T_L : IN std_logic;
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic;
	E : OUT std_logic;
	F : OUT std_logic;
	G : OUT std_logic
	);
END hw10;

-- Design Ports Information
-- A	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_W10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_P10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T_L	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF hw10 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_T_L : std_logic;
SIGNAL ww_B : std_logic;
SIGNAL ww_C : std_logic;
SIGNAL ww_D : std_logic;
SIGNAL ww_E : std_logic;
SIGNAL ww_F : std_logic;
SIGNAL ww_G : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \X[0]~input_o\ : std_logic;
SIGNAL \X[2]~input_o\ : std_logic;
SIGNAL \X[3]~input_o\ : std_logic;
SIGNAL \X[1]~input_o\ : std_logic;
SIGNAL \inst|A~2_combout\ : std_logic;
SIGNAL \T_L~input_o\ : std_logic;
SIGNAL \inst|A~3_combout\ : std_logic;
SIGNAL \inst|B~2_combout\ : std_logic;
SIGNAL \inst|B~3_combout\ : std_logic;
SIGNAL \inst|C~2_combout\ : std_logic;
SIGNAL \inst|C~3_combout\ : std_logic;
SIGNAL \inst|D~2_combout\ : std_logic;
SIGNAL \inst|D~3_combout\ : std_logic;
SIGNAL \inst|E~0_combout\ : std_logic;
SIGNAL \inst|E~1_combout\ : std_logic;
SIGNAL \inst|F~2_combout\ : std_logic;
SIGNAL \inst|F~3_combout\ : std_logic;
SIGNAL \inst|G~0_combout\ : std_logic;
SIGNAL \inst|G~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_D~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_C~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_E~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_A~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_B~3_combout\ : std_logic;
SIGNAL \inst|ALT_INV_G~1_combout\ : std_logic;
SIGNAL \inst|ALT_INV_F~3_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

A <= ww_A;
ww_X <= X;
ww_T_L <= T_L;
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
\inst|ALT_INV_D~3_combout\ <= NOT \inst|D~3_combout\;
\inst|ALT_INV_C~3_combout\ <= NOT \inst|C~3_combout\;
\inst|ALT_INV_E~1_combout\ <= NOT \inst|E~1_combout\;
\inst|ALT_INV_A~3_combout\ <= NOT \inst|A~3_combout\;
\inst|ALT_INV_B~3_combout\ <= NOT \inst|B~3_combout\;
\inst|ALT_INV_G~1_combout\ <= NOT \inst|G~1_combout\;
\inst|ALT_INV_F~3_combout\ <= NOT \inst|F~3_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y51_N8
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

-- Location: IOOBUF_X24_Y0_N16
\A~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_A~3_combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X24_Y0_N2
\B~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_B~3_combout\,
	devoe => ww_devoe,
	o => \B~output_o\);

-- Location: IOOBUF_X26_Y0_N30
\C~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_C~3_combout\,
	devoe => ww_devoe,
	o => \C~output_o\);

-- Location: IOOBUF_X24_Y0_N9
\D~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_D~3_combout\,
	devoe => ww_devoe,
	o => \D~output_o\);

-- Location: IOOBUF_X24_Y0_N30
\E~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_E~1_combout\,
	devoe => ww_devoe,
	o => \E~output_o\);

-- Location: IOOBUF_X26_Y0_N23
\F~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_F~3_combout\,
	devoe => ww_devoe,
	o => \F~output_o\);

-- Location: IOOBUF_X24_Y0_N23
\G~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|ALT_INV_G~1_combout\,
	devoe => ww_devoe,
	o => \G~output_o\);

-- Location: IOIBUF_X22_Y0_N22
\X[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(0),
	o => \X[0]~input_o\);

-- Location: IOIBUF_X22_Y0_N8
\X[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(2),
	o => \X[2]~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\X[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(3),
	o => \X[3]~input_o\);

-- Location: IOIBUF_X26_Y0_N8
\X[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_X(1),
	o => \X[1]~input_o\);

-- Location: LCCOMB_X25_Y1_N0
\inst|A~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|A~2_combout\ = (\X[2]~input_o\ & ((\X[1]~input_o\) # (\X[0]~input_o\ $ (\X[3]~input_o\)))) # (!\X[2]~input_o\ & ((\X[3]~input_o\ $ (\X[1]~input_o\)) # (!\X[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111101111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \X[2]~input_o\,
	datac => \X[3]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst|A~2_combout\);

-- Location: IOIBUF_X26_Y0_N15
\T_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_T_L,
	o => \T_L~input_o\);

-- Location: LCCOMB_X25_Y1_N2
\inst|A~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|A~3_combout\ = (\inst|A~2_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|A~2_combout\,
	datad => \T_L~input_o\,
	combout => \inst|A~3_combout\);

-- Location: LCCOMB_X25_Y1_N28
\inst|B~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|B~2_combout\ = (\X[3]~input_o\ & ((\X[0]~input_o\ & ((!\X[1]~input_o\))) # (!\X[0]~input_o\ & (!\X[2]~input_o\)))) # (!\X[3]~input_o\ & ((\X[0]~input_o\ $ (!\X[1]~input_o\)) # (!\X[2]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001101110110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \X[2]~input_o\,
	datac => \X[3]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst|B~2_combout\);

-- Location: LCCOMB_X25_Y1_N6
\inst|B~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|B~3_combout\ = (\inst|B~2_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|B~2_combout\,
	datad => \T_L~input_o\,
	combout => \inst|B~3_combout\);

-- Location: LCCOMB_X25_Y1_N24
\inst|C~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|C~2_combout\ = (\X[2]~input_o\ & (((\X[0]~input_o\ & !\X[1]~input_o\)) # (!\X[3]~input_o\))) # (!\X[2]~input_o\ & ((\X[0]~input_o\) # ((\X[3]~input_o\) # (!\X[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111010111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \X[2]~input_o\,
	datac => \X[3]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst|C~2_combout\);

-- Location: LCCOMB_X25_Y1_N26
\inst|C~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|C~3_combout\ = (\inst|C~2_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|C~2_combout\,
	datad => \T_L~input_o\,
	combout => \inst|C~3_combout\);

-- Location: LCCOMB_X25_Y1_N8
\inst|D~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D~2_combout\ = (\X[3]~input_o\ & ((\X[0]~input_o\ $ (\X[2]~input_o\)) # (!\X[1]~input_o\))) # (!\X[3]~input_o\ & ((\X[1]~input_o\) # (\X[0]~input_o\ $ (!\X[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110111111111001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \X[2]~input_o\,
	datac => \X[3]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst|D~2_combout\);

-- Location: LCCOMB_X25_Y1_N18
\inst|D~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D~3_combout\ = (\inst|D~2_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|D~2_combout\,
	datad => \T_L~input_o\,
	combout => \inst|D~3_combout\);

-- Location: LCCOMB_X25_Y1_N16
\inst|E~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|E~0_combout\ = (\X[1]~input_o\ & (((\X[3]~input_o\)) # (!\X[0]~input_o\))) # (!\X[1]~input_o\ & ((\X[2]~input_o\ & ((\X[3]~input_o\))) # (!\X[2]~input_o\ & (!\X[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \X[2]~input_o\,
	datac => \X[3]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst|E~0_combout\);

-- Location: LCCOMB_X25_Y1_N10
\inst|E~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|E~1_combout\ = (\inst|E~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|E~0_combout\,
	datad => \T_L~input_o\,
	combout => \inst|E~1_combout\);

-- Location: LCCOMB_X25_Y1_N12
\inst|F~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|F~2_combout\ = (\X[0]~input_o\ & (\X[3]~input_o\ $ (((\X[2]~input_o\ & !\X[1]~input_o\))))) # (!\X[0]~input_o\ & ((\X[2]~input_o\) # ((\X[3]~input_o\) # (!\X[1]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \X[2]~input_o\,
	datac => \X[3]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst|F~2_combout\);

-- Location: LCCOMB_X25_Y1_N14
\inst|F~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|F~3_combout\ = (\inst|F~2_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|F~2_combout\,
	datad => \T_L~input_o\,
	combout => \inst|F~3_combout\);

-- Location: LCCOMB_X25_Y1_N20
\inst|G~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|G~0_combout\ = (\X[0]~input_o\ & ((\X[3]~input_o\) # (\X[2]~input_o\ $ (\X[1]~input_o\)))) # (!\X[0]~input_o\ & ((\X[1]~input_o\) # (\X[2]~input_o\ $ (\X[3]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111011110111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \X[0]~input_o\,
	datab => \X[2]~input_o\,
	datac => \X[3]~input_o\,
	datad => \X[1]~input_o\,
	combout => \inst|G~0_combout\);

-- Location: LCCOMB_X25_Y1_N30
\inst|G~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|G~1_combout\ = (\inst|G~0_combout\) # (!\T_L~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|G~0_combout\,
	datad => \T_L~input_o\,
	combout => \inst|G~1_combout\);

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

ww_A <= \A~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;

ww_E <= \E~output_o\;

ww_F <= \F~output_o\;

ww_G <= \G~output_o\;
END structure;


