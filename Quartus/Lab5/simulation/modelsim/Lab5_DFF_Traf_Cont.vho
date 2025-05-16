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

-- DATE "03/27/2025 12:31:35"

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

ENTITY 	Lab5_DFF_Traf_Cont IS
    PORT (
	D3 : OUT std_logic;
	Q3 : OUT std_logic;
	Start_L : IN std_logic;
	CLK : IN std_logic;
	Q2 : OUT std_logic;
	D2 : OUT std_logic;
	Q1 : OUT std_logic;
	D1 : OUT std_logic;
	Q0 : OUT std_logic;
	D0 : OUT std_logic;
	CW_L : IN std_logic;
	EV : IN std_logic;
	Gr : OUT std_logic;
	Re : OUT std_logic;
	Ye : OUT std_logic
	);
END Lab5_DFF_Traf_Cont;

-- Design Ports Information
-- D3	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q3	=>  Location: PIN_W12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q2	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D2	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q1	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D1	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- D0	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Gr	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Re	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Ye	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- EV	=>  Location: PIN_W5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CW_L	=>  Location: PIN_AA14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start_L	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Lab5_DFF_Traf_Cont IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_D3 : std_logic;
SIGNAL ww_Q3 : std_logic;
SIGNAL ww_Start_L : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Q2 : std_logic;
SIGNAL ww_D2 : std_logic;
SIGNAL ww_Q1 : std_logic;
SIGNAL ww_D1 : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_D0 : std_logic;
SIGNAL ww_CW_L : std_logic;
SIGNAL ww_EV : std_logic;
SIGNAL ww_Gr : std_logic;
SIGNAL ww_Re : std_logic;
SIGNAL ww_Ye : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \D3~output_o\ : std_logic;
SIGNAL \Q3~output_o\ : std_logic;
SIGNAL \Q2~output_o\ : std_logic;
SIGNAL \D2~output_o\ : std_logic;
SIGNAL \Q1~output_o\ : std_logic;
SIGNAL \D1~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \D0~output_o\ : std_logic;
SIGNAL \Gr~output_o\ : std_logic;
SIGNAL \Re~output_o\ : std_logic;
SIGNAL \Ye~output_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \Start_L~input_o\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \EV~input_o\ : std_logic;
SIGNAL \CW_L~input_o\ : std_logic;
SIGNAL \inst|D1~2_combout\ : std_logic;
SIGNAL \inst|D3~0_combout\ : std_logic;
SIGNAL \inst|D1~0_combout\ : std_logic;
SIGNAL \inst|D1~1_combout\ : std_logic;
SIGNAL \inst|D1~3_combout\ : std_logic;
SIGNAL \inst6~q\ : std_logic;
SIGNAL \inst|D0~0_combout\ : std_logic;
SIGNAL \inst|D0~1_combout\ : std_logic;
SIGNAL \inst|D0~2_combout\ : std_logic;
SIGNAL \inst7~q\ : std_logic;
SIGNAL \inst|D2~0_combout\ : std_logic;
SIGNAL \inst|D2~1_combout\ : std_logic;
SIGNAL \inst|D2~2_combout\ : std_logic;
SIGNAL \inst3~q\ : std_logic;
SIGNAL \inst|D3~1_combout\ : std_logic;
SIGNAL \inst|D3~2_combout\ : std_logic;
SIGNAL \inst|Gr~0_combout\ : std_logic;
SIGNAL \inst|Re~0_combout\ : std_logic;
SIGNAL \inst|Ye~0_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

D3 <= ww_D3;
Q3 <= ww_Q3;
ww_Start_L <= Start_L;
ww_CLK <= CLK;
Q2 <= ww_Q2;
D2 <= ww_D2;
Q1 <= ww_Q1;
D1 <= ww_D1;
Q0 <= ww_Q0;
D0 <= ww_D0;
ww_CW_L <= CW_L;
ww_EV <= EV;
Gr <= ww_Gr;
Re <= ww_Re;
Ye <= ww_Ye;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
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

-- Location: IOOBUF_X34_Y0_N23
\D3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|D3~2_combout\,
	devoe => ww_devoe,
	o => \D3~output_o\);

-- Location: IOOBUF_X46_Y0_N9
\Q3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~q\,
	devoe => ww_devoe,
	o => \Q3~output_o\);

-- Location: IOOBUF_X40_Y0_N23
\Q2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3~q\,
	devoe => ww_devoe,
	o => \Q2~output_o\);

-- Location: IOOBUF_X31_Y0_N16
\D2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|D2~2_combout\,
	devoe => ww_devoe,
	o => \D2~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Q1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst6~q\,
	devoe => ww_devoe,
	o => \Q1~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\D1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|D1~3_combout\,
	devoe => ww_devoe,
	o => \D1~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\Q0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7~q\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\D0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|D0~2_combout\,
	devoe => ww_devoe,
	o => \D0~output_o\);

-- Location: IOOBUF_X26_Y0_N2
\Gr~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Gr~0_combout\,
	devoe => ww_devoe,
	o => \Gr~output_o\);

-- Location: IOOBUF_X20_Y0_N23
\Re~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Re~0_combout\,
	devoe => ww_devoe,
	o => \Re~output_o\);

-- Location: IOOBUF_X22_Y0_N9
\Ye~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|Ye~0_combout\,
	devoe => ww_devoe,
	o => \Ye~output_o\);

-- Location: IOIBUF_X22_Y0_N15
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

-- Location: IOIBUF_X16_Y0_N29
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

-- Location: FF_X23_Y1_N13
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst|D3~2_combout\,
	clrn => \Start_L~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: IOIBUF_X14_Y0_N1
\EV~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_EV,
	o => \EV~input_o\);

-- Location: IOIBUF_X51_Y0_N22
\CW_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CW_L,
	o => \CW_L~input_o\);

-- Location: LCCOMB_X23_Y1_N6
\inst|D1~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D1~2_combout\ = ((!\inst2~q\ & ((\CW_L~input_o\) # (!\EV~input_o\)))) # (!\inst3~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CW_L~input_o\,
	datab => \EV~input_o\,
	datac => \inst3~q\,
	datad => \inst2~q\,
	combout => \inst|D1~2_combout\);

-- Location: LCCOMB_X23_Y1_N8
\inst|D3~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D3~0_combout\ = (!\EV~input_o\ & \inst7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \EV~input_o\,
	datac => \inst7~q\,
	combout => \inst|D3~0_combout\);

-- Location: LCCOMB_X23_Y1_N18
\inst|D1~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D1~0_combout\ = (!\inst2~q\ & (!\inst7~q\ & ((\EV~input_o\) # (\inst6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst2~q\,
	datab => \EV~input_o\,
	datac => \inst7~q\,
	datad => \inst6~q\,
	combout => \inst|D1~0_combout\);

-- Location: LCCOMB_X23_Y1_N28
\inst|D1~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D1~1_combout\ = (\inst|D1~0_combout\) # ((!\inst3~q\ & (\inst6~q\ & !\inst|D3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst6~q\,
	datac => \inst|D3~0_combout\,
	datad => \inst|D1~0_combout\,
	combout => \inst|D1~1_combout\);

-- Location: LCCOMB_X23_Y1_N4
\inst|D1~3\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D1~3_combout\ = (\inst|D1~1_combout\) # ((\inst|D1~2_combout\ & (!\inst6~q\ & \inst7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|D1~2_combout\,
	datab => \inst6~q\,
	datac => \inst7~q\,
	datad => \inst|D1~1_combout\,
	combout => \inst|D1~3_combout\);

-- Location: FF_X23_Y1_N25
inst6 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst|D1~3_combout\,
	clrn => \Start_L~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst6~q\);

-- Location: LCCOMB_X23_Y1_N10
\inst|D0~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D0~0_combout\ = (\inst6~q\ & (((\inst3~q\)))) # (!\inst6~q\ & ((\inst2~q\) # ((!\CW_L~input_o\ & \inst3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CW_L~input_o\,
	datab => \inst6~q\,
	datac => \inst3~q\,
	datad => \inst2~q\,
	combout => \inst|D0~0_combout\);

-- Location: LCCOMB_X23_Y1_N20
\inst|D0~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D0~1_combout\ = (\inst6~q\ & (((\inst2~q\)))) # (!\inst6~q\ & (\inst3~q\ & ((\inst2~q\) # (!\CW_L~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CW_L~input_o\,
	datab => \inst6~q\,
	datac => \inst3~q\,
	datad => \inst2~q\,
	combout => \inst|D0~1_combout\);

-- Location: LCCOMB_X23_Y1_N30
\inst|D0~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D0~2_combout\ = (\inst|D0~0_combout\ & (!\inst7~q\ & ((!\inst|D0~1_combout\)))) # (!\inst|D0~0_combout\ & ((\EV~input_o\ & ((\inst|D0~1_combout\))) # (!\EV~input_o\ & (!\inst7~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datab => \EV~input_o\,
	datac => \inst|D0~0_combout\,
	datad => \inst|D0~1_combout\,
	combout => \inst|D0~2_combout\);

-- Location: FF_X23_Y1_N27
inst7 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst|D0~2_combout\,
	clrn => \Start_L~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7~q\);

-- Location: LCCOMB_X23_Y1_N14
\inst|D2~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D2~0_combout\ = (\inst3~q\ & (!\inst6~q\ & ((\inst7~q\) # (\CW_L~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datab => \CW_L~input_o\,
	datac => \inst3~q\,
	datad => \inst6~q\,
	combout => \inst|D2~0_combout\);

-- Location: LCCOMB_X23_Y1_N22
\inst|D2~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D2~1_combout\ = (\inst6~q\ & ((\inst7~q\ & ((!\inst3~q\))) # (!\inst7~q\ & ((\EV~input_o\) # (\inst3~q\))))) # (!\inst6~q\ & (((\EV~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datab => \EV~input_o\,
	datac => \inst3~q\,
	datad => \inst6~q\,
	combout => \inst|D2~1_combout\);

-- Location: LCCOMB_X23_Y1_N0
\inst|D2~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D2~2_combout\ = (!\inst2~q\ & ((\inst|D2~0_combout\) # (\inst|D2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst2~q\,
	datac => \inst|D2~0_combout\,
	datad => \inst|D2~1_combout\,
	combout => \inst|D2~2_combout\);

-- Location: FF_X23_Y1_N23
inst3 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	asdata => \inst|D2~2_combout\,
	clrn => \Start_L~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3~q\);

-- Location: LCCOMB_X23_Y1_N2
\inst|D3~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D3~1_combout\ = (\inst3~q\ & (\inst7~q\ & !\inst2~q\)) # (!\inst3~q\ & ((\inst2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7~q\,
	datac => \inst3~q\,
	datad => \inst2~q\,
	combout => \inst|D3~1_combout\);

-- Location: LCCOMB_X23_Y1_N16
\inst|D3~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|D3~2_combout\ = (\inst|D3~1_combout\ & ((\inst3~q\ & (\inst6~q\)) # (!\inst3~q\ & ((!\inst|D3~0_combout\) # (!\inst6~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst6~q\,
	datac => \inst|D3~0_combout\,
	datad => \inst|D3~1_combout\,
	combout => \inst|D3~2_combout\);

-- Location: LCCOMB_X23_Y1_N12
\inst|Gr~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Gr~0_combout\ = (!\inst2~q\ & (((!\inst7~q\ & !\inst6~q\)) # (!\inst3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010100000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst7~q\,
	datac => \inst2~q\,
	datad => \inst6~q\,
	combout => \inst|Gr~0_combout\);

-- Location: LCCOMB_X23_Y1_N24
\inst|Re~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Re~0_combout\ = (\inst3~q\ & (\inst7~q\ & (\inst6~q\ & !\inst2~q\))) # (!\inst3~q\ & (((\inst2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst7~q\,
	datac => \inst6~q\,
	datad => \inst2~q\,
	combout => \inst|Re~0_combout\);

-- Location: LCCOMB_X23_Y1_N26
\inst|Ye~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst|Ye~0_combout\ = (\inst3~q\ & (!\inst2~q\ & (\inst7~q\ $ (\inst6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3~q\,
	datab => \inst2~q\,
	datac => \inst7~q\,
	datad => \inst6~q\,
	combout => \inst|Ye~0_combout\);

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

ww_D3 <= \D3~output_o\;

ww_Q3 <= \Q3~output_o\;

ww_Q2 <= \Q2~output_o\;

ww_D2 <= \D2~output_o\;

ww_Q1 <= \Q1~output_o\;

ww_D1 <= \D1~output_o\;

ww_Q0 <= \Q0~output_o\;

ww_D0 <= \D0~output_o\;

ww_Gr <= \Gr~output_o\;

ww_Re <= \Re~output_o\;

ww_Ye <= \Ye~output_o\;
END structure;


