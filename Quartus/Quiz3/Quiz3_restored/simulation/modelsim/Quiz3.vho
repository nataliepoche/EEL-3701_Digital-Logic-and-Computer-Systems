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

-- DATE "03/02/2025 17:05:03"

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

ENTITY 	Quiz3 IS
    PORT (
	Q1 : OUT std_logic;
	CLR1 : IN std_logic;
	CLK : IN std_logic;
	Q0 : OUT std_logic;
	CLR0 : IN std_logic;
	Set0 : IN std_logic;
	Set1 : IN std_logic;
	Q2 : OUT std_logic;
	Set2 : IN std_logic;
	CLR2 : IN std_logic;
	A : OUT std_logic;
	X : OUT std_logic_vector(3 DOWNTO 0);
	B : OUT std_logic;
	C : OUT std_logic;
	D : OUT std_logic;
	E : OUT std_logic;
	F : OUT std_logic;
	G : OUT std_logic
	);
END Quiz3;

-- Design Ports Information
-- Q1	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_B15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_AA11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- A	=>  Location: PIN_C14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[3]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[2]	=>  Location: PIN_AB13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[1]	=>  Location: PIN_A14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- X[0]	=>  Location: PIN_A15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- B	=>  Location: PIN_E15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- C	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D	=>  Location: PIN_C16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- E	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- F	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- G	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Set1	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR1	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Set0	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR0	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Set2	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLR2	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Quiz3 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_CLR1 : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_CLR0 : std_logic;
SIGNAL ww_Set0 : std_logic;
SIGNAL ww_Set1 : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_Set2 : std_logic;
SIGNAL ww_CLR2 : std_logic;
SIGNAL ww_A : std_logic;
SIGNAL ww_X : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \A~output_o\ : std_logic;
SIGNAL \X[3]~output_o\ : std_logic;
SIGNAL \X[2]~output_o\ : std_logic;
SIGNAL \X[1]~output_o\ : std_logic;
SIGNAL \X[0]~output_o\ : std_logic;
SIGNAL \B~output_o\ : std_logic;
SIGNAL \C~output_o\ : std_logic;
SIGNAL \D~output_o\ : std_logic;
SIGNAL \E~output_o\ : std_logic;
SIGNAL \F~output_o\ : std_logic;
SIGNAL \G~output_o\ : std_logic;
SIGNAL \CLR1~input_o\ : std_logic;
SIGNAL \Set1~input_o\ : std_logic;
SIGNAL \inst4~1_combout\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Set0~input_o\ : std_logic;
SIGNAL \CLR0~input_o\ : std_logic;
SIGNAL \inst5~1_combout\ : std_logic;
SIGNAL \inst5~3_combout\ : std_logic;
SIGNAL \inst5~0_combout\ : std_logic;
SIGNAL \inst5~_emulated_q\ : std_logic;
SIGNAL \inst5~2_combout\ : std_logic;
SIGNAL \inst4~3_combout\ : std_logic;
SIGNAL \inst4~0_combout\ : std_logic;
SIGNAL \inst4~_emulated_q\ : std_logic;
SIGNAL \inst4~2_combout\ : std_logic;
SIGNAL \Set2~input_o\ : std_logic;
SIGNAL \CLR2~input_o\ : std_logic;
SIGNAL \inst10~1_combout\ : std_logic;
SIGNAL \inst10~3_combout\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst10~_emulated_q\ : std_logic;
SIGNAL \inst10~2_combout\ : std_logic;
SIGNAL \inst20|BOOF~0_combout\ : std_logic;
SIGNAL \inst20|inst50~0_combout\ : std_logic;
SIGNAL \inst20|boom3~combout\ : std_logic;
SIGNAL \inst20|boom~0_combout\ : std_logic;
SIGNAL \inst20|boom1~0_combout\ : std_logic;
SIGNAL \inst20|boom2~0_combout\ : std_logic;
SIGNAL \inst20|inst17~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_inst17~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_BOOF~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_inst50~0_combout\ : std_logic;
SIGNAL \inst20|ALT_INV_boom3~combout\ : std_logic;
SIGNAL \inst20|ALT_INV_boom2~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst4~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst5~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst10~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Q1 <= ww_Q1;
ww_CLR1 <= CLR1;
ww_CLK <= CLK;
Q0 <= ww_Q0;
ww_CLR0 <= CLR0;
ww_Set0 <= Set0;
ww_Set1 <= Set1;
Q2 <= ww_Q2;
ww_Set2 <= Set2;
ww_CLR2 <= CLR2;
A <= ww_A;
X <= ww_X;
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
\inst20|ALT_INV_inst17~0_combout\ <= NOT \inst20|inst17~0_combout\;
\inst20|ALT_INV_BOOF~0_combout\ <= NOT \inst20|BOOF~0_combout\;
\inst20|ALT_INV_inst50~0_combout\ <= NOT \inst20|inst50~0_combout\;
\inst20|ALT_INV_boom3~combout\ <= NOT \inst20|boom3~combout\;
\inst20|ALT_INV_boom2~0_combout\ <= NOT \inst20|boom2~0_combout\;
\ALT_INV_inst4~0_combout\ <= NOT \inst4~0_combout\;
\ALT_INV_inst5~0_combout\ <= NOT \inst5~0_combout\;
\ALT_INV_inst10~0_combout\ <= NOT \inst10~0_combout\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: LCCOMB_X44_Y52_N4
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

-- Location: IOOBUF_X58_Y54_N23
\Q1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~2_combout\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X58_Y54_N9
\Q0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~2_combout\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOOBUF_X40_Y0_N9
\Q2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~2_combout\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X58_Y54_N16
\A~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|ALT_INV_BOOF~0_combout\,
	devoe => ww_devoe,
	o => \A~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\X[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \X[3]~output_o\);

-- Location: IOOBUF_X40_Y0_N16
\X[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~2_combout\,
	devoe => ww_devoe,
	o => \X[2]~output_o\);

-- Location: IOOBUF_X58_Y54_N30
\X[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4~2_combout\,
	devoe => ww_devoe,
	o => \X[1]~output_o\);

-- Location: IOOBUF_X58_Y54_N2
\X[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5~2_combout\,
	devoe => ww_devoe,
	o => \X[0]~output_o\);

-- Location: IOOBUF_X74_Y54_N9
\B~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|ALT_INV_inst50~0_combout\,
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
	i => \inst20|ALT_INV_boom3~combout\,
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
	i => \inst20|boom~0_combout\,
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
	i => \inst20|boom1~0_combout\,
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
	i => \inst20|ALT_INV_boom2~0_combout\,
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
	i => \inst20|ALT_INV_inst17~0_combout\,
	devoe => ww_devoe,
	o => \G~output_o\);

-- Location: IOIBUF_X46_Y0_N8
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

-- Location: IOIBUF_X38_Y0_N15
\Set1~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Set1,
	o => \Set1~input_o\);

-- Location: LCCOMB_X59_Y50_N18
\inst4~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4~1_combout\ = (\CLR1~input_o\ & ((\inst4~1_combout\) # (!\Set1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR1~input_o\,
	datac => \Set1~input_o\,
	datad => \inst4~1_combout\,
	combout => \inst4~1_combout\);

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

-- Location: IOIBUF_X38_Y0_N8
\Set0~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Set0,
	o => \Set0~input_o\);

-- Location: IOIBUF_X51_Y0_N22
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

-- Location: LCCOMB_X59_Y50_N0
\inst5~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5~1_combout\ = (\CLR0~input_o\ & ((\inst5~1_combout\) # (!\Set0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Set0~input_o\,
	datac => \CLR0~input_o\,
	datad => \inst5~1_combout\,
	combout => \inst5~1_combout\);

-- Location: LCCOMB_X59_Y50_N10
\inst5~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5~3_combout\ = \inst5~1_combout\ $ (((\inst4~2_combout\ & !\inst5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5~1_combout\,
	datac => \inst4~2_combout\,
	datad => \inst5~2_combout\,
	combout => \inst5~3_combout\);

-- Location: LCCOMB_X59_Y50_N16
\inst5~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5~0_combout\ = (!\CLR0~input_o\) # (!\Set0~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Set0~input_o\,
	datac => \CLR0~input_o\,
	combout => \inst5~0_combout\);

-- Location: FF_X59_Y50_N11
\inst5~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst5~3_combout\,
	clrn => \ALT_INV_inst5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5~_emulated_q\);

-- Location: LCCOMB_X59_Y50_N12
\inst5~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst5~2_combout\ = (\CLR0~input_o\ & ((\inst5~1_combout\ $ (\inst5~_emulated_q\)) # (!\Set0~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Set0~input_o\,
	datab => \inst5~1_combout\,
	datac => \CLR0~input_o\,
	datad => \inst5~_emulated_q\,
	combout => \inst5~2_combout\);

-- Location: LCCOMB_X59_Y50_N6
\inst4~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4~3_combout\ = \inst4~1_combout\ $ (((!\inst5~2_combout\) # (!\inst4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4~1_combout\,
	datac => \inst4~2_combout\,
	datad => \inst5~2_combout\,
	combout => \inst4~3_combout\);

-- Location: LCCOMB_X59_Y50_N14
\inst4~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4~0_combout\ = (!\CLR1~input_o\) # (!\Set1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Set1~input_o\,
	datad => \CLR1~input_o\,
	combout => \inst4~0_combout\);

-- Location: FF_X59_Y50_N7
\inst4~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst4~3_combout\,
	clrn => \ALT_INV_inst4~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4~_emulated_q\);

-- Location: LCCOMB_X59_Y50_N8
\inst4~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4~2_combout\ = (\CLR1~input_o\ & ((\inst4~1_combout\ $ (\inst4~_emulated_q\)) # (!\Set1~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CLR1~input_o\,
	datab => \inst4~1_combout\,
	datac => \Set1~input_o\,
	datad => \inst4~_emulated_q\,
	combout => \inst4~2_combout\);

-- Location: IOIBUF_X34_Y0_N22
\Set2~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Set2,
	o => \Set2~input_o\);

-- Location: IOIBUF_X40_Y0_N22
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

-- Location: LCCOMB_X39_Y1_N18
\inst10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10~1_combout\ = (\CLR2~input_o\ & ((\inst10~1_combout\) # (!\Set2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Set2~input_o\,
	datac => \CLR2~input_o\,
	datad => \inst10~1_combout\,
	combout => \inst10~1_combout\);

-- Location: LCCOMB_X39_Y1_N12
\inst10~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10~3_combout\ = \inst10~1_combout\ $ (\inst10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst10~1_combout\,
	datad => \inst10~2_combout\,
	combout => \inst10~3_combout\);

-- Location: LCCOMB_X39_Y1_N28
\inst10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = (!\CLR2~input_o\) # (!\Set2~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Set2~input_o\,
	datac => \CLR2~input_o\,
	combout => \inst10~0_combout\);

-- Location: FF_X39_Y1_N13
\inst10~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	d => \inst10~3_combout\,
	clrn => \ALT_INV_inst10~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst10~_emulated_q\);

-- Location: LCCOMB_X39_Y1_N6
\inst10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10~2_combout\ = (\CLR2~input_o\ & ((\inst10~1_combout\ $ (\inst10~_emulated_q\)) # (!\Set2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Set2~input_o\,
	datab => \inst10~1_combout\,
	datac => \CLR2~input_o\,
	datad => \inst10~_emulated_q\,
	combout => \inst10~2_combout\);

-- Location: LCCOMB_X59_Y50_N28
\inst20|BOOF~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|BOOF~0_combout\ = (\inst4~2_combout\) # (\inst5~2_combout\ $ (!\inst10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~2_combout\,
	datab => \inst5~2_combout\,
	datad => \inst10~2_combout\,
	combout => \inst20|BOOF~0_combout\);

-- Location: LCCOMB_X59_Y50_N22
\inst20|inst50~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|inst50~0_combout\ = (\inst4~2_combout\ $ (!\inst5~2_combout\)) # (!\inst10~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~2_combout\,
	datab => \inst5~2_combout\,
	datad => \inst10~2_combout\,
	combout => \inst20|inst50~0_combout\);

-- Location: LCCOMB_X59_Y50_N24
\inst20|boom3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|boom3~combout\ = ((\inst5~2_combout\) # (\inst10~2_combout\)) # (!\inst4~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~2_combout\,
	datab => \inst5~2_combout\,
	datad => \inst10~2_combout\,
	combout => \inst20|boom3~combout\);

-- Location: LCCOMB_X59_Y50_N2
\inst20|boom~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|boom~0_combout\ = (\inst4~2_combout\ & (\inst5~2_combout\ & \inst10~2_combout\)) # (!\inst4~2_combout\ & (\inst5~2_combout\ $ (\inst10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~2_combout\,
	datab => \inst5~2_combout\,
	datad => \inst10~2_combout\,
	combout => \inst20|boom~0_combout\);

-- Location: LCCOMB_X59_Y50_N4
\inst20|boom1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|boom1~0_combout\ = (\inst5~2_combout\) # ((!\inst4~2_combout\ & \inst10~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~2_combout\,
	datab => \inst5~2_combout\,
	datad => \inst10~2_combout\,
	combout => \inst20|boom1~0_combout\);

-- Location: LCCOMB_X59_Y50_N30
\inst20|boom2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|boom2~0_combout\ = (\inst4~2_combout\ & (!\inst5~2_combout\ & \inst10~2_combout\)) # (!\inst4~2_combout\ & ((\inst10~2_combout\) # (!\inst5~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~2_combout\,
	datab => \inst5~2_combout\,
	datad => \inst10~2_combout\,
	combout => \inst20|boom2~0_combout\);

-- Location: LCCOMB_X59_Y50_N20
\inst20|inst17~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|inst17~0_combout\ = (\inst4~2_combout\ & ((!\inst10~2_combout\) # (!\inst5~2_combout\))) # (!\inst4~2_combout\ & ((\inst10~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4~2_combout\,
	datab => \inst5~2_combout\,
	datad => \inst10~2_combout\,
	combout => \inst20|inst17~0_combout\);

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

ww_Q1 <= \Q1~output_o\;

ww_Q0 <= \Q0~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_A <= \A~output_o\;

ww_X(3) <= \X[3]~output_o\;

ww_X(2) <= \X[2]~output_o\;

ww_X(1) <= \X[1]~output_o\;

ww_X(0) <= \X[0]~output_o\;

ww_B <= \B~output_o\;

ww_C <= \C~output_o\;

ww_D <= \D~output_o\;

ww_E <= \E~output_o\;

ww_F <= \F~output_o\;

ww_G <= \G~output_o\;
END structure;


