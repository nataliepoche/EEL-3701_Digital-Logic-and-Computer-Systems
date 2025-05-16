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

-- DATE "04/16/2025 22:11:23"

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

ENTITY 	Practial2 IS
    PORT (
	Y3 : OUT std_logic;
	Y2 : OUT std_logic;
	Y1 : OUT std_logic;
	Y0 : OUT std_logic;
	Move : IN std_logic;
	Q0 : OUT std_logic;
	Start_L : IN std_logic;
	T0 : OUT std_logic;
	Go_L : IN std_logic;
	CLK : IN std_logic;
	Sp_L : OUT std_logic
	);
END Practial2;

-- Design Ports Information
-- Y3	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y2	=>  Location: PIN_AB11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y1	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Y0	=>  Location: PIN_AA9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q0	=>  Location: PIN_AA6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- T0	=>  Location: PIN_W9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Sp_L	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Move	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Go_L	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_AB2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start_L	=>  Location: PIN_AA8,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Practial2 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Y3 : std_logic;
SIGNAL ww_Y2 : std_logic;
SIGNAL ww_Y1 : std_logic;
SIGNAL ww_Y0 : std_logic;
SIGNAL ww_Move : std_logic;
SIGNAL ww_Q0 : std_logic;
SIGNAL ww_Start_L : std_logic;
SIGNAL ww_T0 : std_logic;
SIGNAL ww_Go_L : std_logic;
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Sp_L : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Y3~output_o\ : std_logic;
SIGNAL \Y2~output_o\ : std_logic;
SIGNAL \Y1~output_o\ : std_logic;
SIGNAL \Y0~output_o\ : std_logic;
SIGNAL \Q0~output_o\ : std_logic;
SIGNAL \T0~output_o\ : std_logic;
SIGNAL \Sp_L~output_o\ : std_logic;
SIGNAL \Go_L~input_o\ : std_logic;
SIGNAL \Move~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \inst15~0_combout\ : std_logic;
SIGNAL \Start_L~input_o\ : std_logic;
SIGNAL \inst15~q\ : std_logic;
SIGNAL \inst10~0_combout\ : std_logic;
SIGNAL \inst38~0_combout\ : std_logic;
SIGNAL \inst13~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst13~0_combout\ : std_logic;
SIGNAL \ALT_INV_inst15~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Y3 <= ww_Y3;
Y2 <= ww_Y2;
Y1 <= ww_Y1;
Y0 <= ww_Y0;
ww_Move <= Move;
Q0 <= ww_Q0;
ww_Start_L <= Start_L;
T0 <= ww_T0;
ww_Go_L <= Go_L;
ww_CLK <= CLK;
Sp_L <= ww_Sp_L;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);
\ALT_INV_inst13~0_combout\ <= NOT \inst13~0_combout\;
\ALT_INV_inst15~q\ <= NOT \inst15~q\;
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

-- Location: IOOBUF_X40_Y0_N23
\Y3~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Y3~output_o\);

-- Location: IOOBUF_X38_Y0_N9
\Y2~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \Y2~output_o\);

-- Location: IOOBUF_X38_Y0_N16
\Y1~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \Y1~output_o\);

-- Location: IOOBUF_X34_Y0_N23
\Y0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst10~0_combout\,
	devoe => ww_devoe,
	o => \Y0~output_o\);

-- Location: IOOBUF_X29_Y0_N23
\Q0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst15~q\,
	devoe => ww_devoe,
	o => \Q0~output_o\);

-- Location: IOOBUF_X22_Y0_N2
\T0~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst38~0_combout\,
	devoe => ww_devoe,
	o => \T0~output_o\);

-- Location: IOOBUF_X29_Y0_N16
\Sp_L~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_inst13~0_combout\,
	devoe => ww_devoe,
	o => \Sp_L~output_o\);

-- Location: IOIBUF_X22_Y0_N8
\Go_L~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Go_L,
	o => \Go_L~input_o\);

-- Location: IOIBUF_X26_Y0_N1
\Move~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Move,
	o => \Move~input_o\);

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

-- Location: LCCOMB_X23_Y1_N28
\inst15~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst15~0_combout\ = !\inst10~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst10~0_combout\,
	combout => \inst15~0_combout\);

-- Location: IOIBUF_X31_Y0_N15
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

-- Location: FF_X23_Y1_N29
inst15 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~input_o\,
	d => \inst15~0_combout\,
	clrn => \Start_L~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst15~q\);

-- Location: LCCOMB_X23_Y1_N2
\inst10~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst10~0_combout\ = \inst15~q\ $ (((\Go_L~input_o\) # (!\Move~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Go_L~input_o\,
	datac => \Move~input_o\,
	datad => \inst15~q\,
	combout => \inst10~0_combout\);

-- Location: LCCOMB_X23_Y1_N0
\inst38~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst38~0_combout\ = (!\Go_L~input_o\ & \Move~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Go_L~input_o\,
	datad => \Move~input_o\,
	combout => \inst38~0_combout\);

-- Location: LCCOMB_X23_Y1_N26
\inst13~0\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst13~0_combout\ = (\Go_L~input_o\ & (\inst15~q\ & !\Move~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Go_L~input_o\,
	datac => \inst15~q\,
	datad => \Move~input_o\,
	combout => \inst13~0_combout\);

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

ww_Y3 <= \Y3~output_o\;

ww_Y2 <= \Y2~output_o\;

ww_Y1 <= \Y1~output_o\;

ww_Y0 <= \Y0~output_o\;

ww_Q0 <= \Q0~output_o\;

ww_T0 <= \T0~output_o\;

ww_Sp_L <= \Sp_L~output_o\;
END structure;


