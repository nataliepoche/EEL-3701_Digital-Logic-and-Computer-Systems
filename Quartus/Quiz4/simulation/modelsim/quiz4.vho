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

-- DATE "03/13/2025 19:12:47"

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

ENTITY 	quiz4 IS
    PORT (
	Hold : OUT std_logic_vector(3 DOWNTO 0);
	Output : OUT std_logic_vector(3 DOWNTO 0);
	\In\ : OUT std_logic_vector(3 DOWNTO 0);
	CLK : IN std_logic;
	Input : IN std_logic_vector(3 DOWNTO 0);
	Right : OUT std_logic_vector(3 DOWNTO 0);
	Left : OUT std_logic_vector(3 DOWNTO 0);
	S : IN std_logic_vector(1 DOWNTO 0)
	);
END quiz4;

-- Design Ports Information
-- Hold[3]	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hold[2]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hold[1]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Hold[0]	=>  Location: PIN_D8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[3]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[2]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[1]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Output[0]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- In[3]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- In[2]	=>  Location: PIN_C5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- In[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- In[0]	=>  Location: PIN_E8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Right[3]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Right[2]	=>  Location: PIN_B2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Right[1]	=>  Location: PIN_D7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Right[0]	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Left[3]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Left[2]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Left[1]	=>  Location: PIN_E6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Left[0]	=>  Location: PIN_D5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[1]	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- S[0]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[3]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLK	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[1]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Input[0]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF quiz4 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Hold : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Output : std_logic_vector(3 DOWNTO 0);
SIGNAL \ww_In\ : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_CLK : std_logic;
SIGNAL ww_Input : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Right : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_Left : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_S : std_logic_vector(1 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC1~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_ADC2~_CHSEL_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \CLK~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \~QUARTUS_CREATED_GND~I_combout\ : std_logic;
SIGNAL \~QUARTUS_CREATED_UNVM~~busy\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC1~~eoc\ : std_logic;
SIGNAL \~QUARTUS_CREATED_ADC2~~eoc\ : std_logic;
SIGNAL \Hold[3]~output_o\ : std_logic;
SIGNAL \Hold[2]~output_o\ : std_logic;
SIGNAL \Hold[1]~output_o\ : std_logic;
SIGNAL \Hold[0]~output_o\ : std_logic;
SIGNAL \Output[3]~output_o\ : std_logic;
SIGNAL \Output[2]~output_o\ : std_logic;
SIGNAL \Output[1]~output_o\ : std_logic;
SIGNAL \Output[0]~output_o\ : std_logic;
SIGNAL \In[3]~output_o\ : std_logic;
SIGNAL \In[2]~output_o\ : std_logic;
SIGNAL \In[1]~output_o\ : std_logic;
SIGNAL \In[0]~output_o\ : std_logic;
SIGNAL \Right[3]~output_o\ : std_logic;
SIGNAL \Right[2]~output_o\ : std_logic;
SIGNAL \Right[1]~output_o\ : std_logic;
SIGNAL \Right[0]~output_o\ : std_logic;
SIGNAL \Left[3]~output_o\ : std_logic;
SIGNAL \Left[2]~output_o\ : std_logic;
SIGNAL \Left[1]~output_o\ : std_logic;
SIGNAL \Left[0]~output_o\ : std_logic;
SIGNAL \S[1]~input_o\ : std_logic;
SIGNAL \S[0]~input_o\ : std_logic;
SIGNAL \CLK~input_o\ : std_logic;
SIGNAL \CLK~inputclkctrl_outclk\ : std_logic;
SIGNAL \Input[1]~input_o\ : std_logic;
SIGNAL \inst2~q\ : std_logic;
SIGNAL \inst20|10~1_combout\ : std_logic;
SIGNAL \inst4|9~1_combout\ : std_logic;
SIGNAL \Input[2]~input_o\ : std_logic;
SIGNAL \inst28~q\ : std_logic;
SIGNAL \inst4|9~2_combout\ : std_logic;
SIGNAL \inst20|10~2_combout\ : std_logic;
SIGNAL \Input[0]~input_o\ : std_logic;
SIGNAL \inst1~q\ : std_logic;
SIGNAL \inst20|9~1_combout\ : std_logic;
SIGNAL \inst20|9~2_combout\ : std_logic;
SIGNAL \Input[3]~input_o\ : std_logic;
SIGNAL \inst17~q\ : std_logic;
SIGNAL \inst4|10~1_combout\ : std_logic;
SIGNAL \inst4|10~2_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

Hold <= ww_Hold;
Output <= ww_Output;
\In\ <= \ww_In\;
ww_CLK <= CLK;
ww_Input <= Input;
Right <= ww_Right;
Left <= ww_Left;
ww_S <= S;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\~QUARTUS_CREATED_ADC1~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\~QUARTUS_CREATED_ADC2~_CHSEL_bus\ <= (\~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\ & \~QUARTUS_CREATED_GND~I_combout\);

\CLK~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLK~input_o\);
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

-- Location: IOOBUF_X31_Y39_N9
\Hold[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|10~2_combout\,
	devoe => ww_devoe,
	o => \Hold[3]~output_o\);

-- Location: IOOBUF_X20_Y39_N9
\Hold[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|9~2_combout\,
	devoe => ww_devoe,
	o => \Hold[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N2
\Hold[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|10~2_combout\,
	devoe => ww_devoe,
	o => \Hold[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N2
\Hold[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|9~2_combout\,
	devoe => ww_devoe,
	o => \Hold[0]~output_o\);

-- Location: IOOBUF_X29_Y39_N9
\Output[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|10~2_combout\,
	devoe => ww_devoe,
	o => \Output[3]~output_o\);

-- Location: IOOBUF_X20_Y39_N16
\Output[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|9~2_combout\,
	devoe => ww_devoe,
	o => \Output[2]~output_o\);

-- Location: IOOBUF_X22_Y39_N23
\Output[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|10~2_combout\,
	devoe => ww_devoe,
	o => \Output[1]~output_o\);

-- Location: IOOBUF_X34_Y39_N30
\Output[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|9~2_combout\,
	devoe => ww_devoe,
	o => \Output[0]~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\In[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst17~q\,
	devoe => ww_devoe,
	o => \In[3]~output_o\);

-- Location: IOOBUF_X24_Y39_N23
\In[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst28~q\,
	devoe => ww_devoe,
	o => \In[2]~output_o\);

-- Location: IOOBUF_X24_Y39_N16
\In[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2~q\,
	devoe => ww_devoe,
	o => \In[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N9
\In[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1~q\,
	devoe => ww_devoe,
	o => \In[0]~output_o\);

-- Location: IOOBUF_X22_Y39_N30
\Right[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|9~2_combout\,
	devoe => ww_devoe,
	o => \Right[3]~output_o\);

-- Location: IOOBUF_X22_Y39_N16
\Right[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|10~2_combout\,
	devoe => ww_devoe,
	o => \Right[2]~output_o\);

-- Location: IOOBUF_X29_Y39_N16
\Right[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|9~2_combout\,
	devoe => ww_devoe,
	o => \Right[1]~output_o\);

-- Location: IOOBUF_X31_Y39_N30
\Right[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|9~2_combout\,
	devoe => ww_devoe,
	o => \Right[0]~output_o\);

-- Location: IOOBUF_X31_Y39_N23
\Left[3]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|9~2_combout\,
	devoe => ww_devoe,
	o => \Left[3]~output_o\);

-- Location: IOOBUF_X31_Y39_N16
\Left[2]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|10~2_combout\,
	devoe => ww_devoe,
	o => \Left[2]~output_o\);

-- Location: IOOBUF_X20_Y39_N2
\Left[1]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst4|9~2_combout\,
	devoe => ww_devoe,
	o => \Left[1]~output_o\);

-- Location: IOOBUF_X24_Y39_N30
\Left[0]~output\ : fiftyfivenm_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst20|10~2_combout\,
	devoe => ww_devoe,
	o => \Left[0]~output_o\);

-- Location: IOIBUF_X26_Y39_N1
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

-- Location: IOIBUF_X26_Y39_N29
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

-- Location: IOIBUF_X29_Y39_N1
\Input[1]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(1),
	o => \Input[1]~input_o\);

-- Location: FF_X25_Y37_N5
inst2 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Input[1]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst2~q\);

-- Location: LCCOMB_X25_Y37_N4
\inst20|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|10~1_combout\ = (\S[1]~input_o\ & (\S[0]~input_o\)) # (!\S[1]~input_o\ & ((\S[0]~input_o\ & (\inst2~q\)) # (!\S[0]~input_o\ & ((\inst20|10~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \inst2~q\,
	datad => \inst20|10~2_combout\,
	combout => \inst20|10~1_combout\);

-- Location: LCCOMB_X25_Y37_N10
\inst4|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|9~1_combout\ = (\S[1]~input_o\ & ((\S[0]~input_o\) # ((\inst20|10~2_combout\)))) # (!\S[1]~input_o\ & (!\S[0]~input_o\ & (\inst4|9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101010011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \inst4|9~2_combout\,
	datad => \inst20|10~2_combout\,
	combout => \inst4|9~1_combout\);

-- Location: IOIBUF_X26_Y39_N22
\Input[2]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(2),
	o => \Input[2]~input_o\);

-- Location: FF_X25_Y37_N19
inst28 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Input[2]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst28~q\);

-- Location: LCCOMB_X25_Y37_N18
\inst4|9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|9~2_combout\ = (\inst4|9~1_combout\ & (((\inst4|10~2_combout\)) # (!\S[0]~input_o\))) # (!\inst4|9~1_combout\ & (\S[0]~input_o\ & (\inst28~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|9~1_combout\,
	datab => \S[0]~input_o\,
	datac => \inst28~q\,
	datad => \inst4|10~2_combout\,
	combout => \inst4|9~2_combout\);

-- Location: LCCOMB_X25_Y37_N20
\inst20|10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|10~2_combout\ = (\S[1]~input_o\ & ((\inst20|10~1_combout\ & ((\inst4|9~2_combout\))) # (!\inst20|10~1_combout\ & (\inst20|9~2_combout\)))) # (!\S[1]~input_o\ & (((\inst20|10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100001011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \inst20|9~2_combout\,
	datac => \inst20|10~1_combout\,
	datad => \inst4|9~2_combout\,
	combout => \inst20|10~2_combout\);

-- Location: IOIBUF_X26_Y39_N15
\Input[0]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(0),
	o => \Input[0]~input_o\);

-- Location: FF_X25_Y37_N31
inst1 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Input[0]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1~q\);

-- Location: LCCOMB_X25_Y37_N30
\inst20|9~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|9~1_combout\ = (\S[0]~input_o\ & ((\S[1]~input_o\ & (\inst20|10~2_combout\)) # (!\S[1]~input_o\ & ((\inst1~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \inst20|10~2_combout\,
	datac => \inst1~q\,
	datad => \S[0]~input_o\,
	combout => \inst20|9~1_combout\);

-- Location: LCCOMB_X25_Y37_N14
\inst20|9~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst20|9~2_combout\ = (\inst20|9~1_combout\) # ((\inst20|9~2_combout\ & !\S[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst20|9~2_combout\,
	datac => \inst20|9~1_combout\,
	datad => \S[0]~input_o\,
	combout => \inst20|9~2_combout\);

-- Location: IOIBUF_X26_Y39_N8
\Input[3]~input\ : fiftyfivenm_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	listen_to_nsleep_signal => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Input(3),
	o => \Input[3]~input_o\);

-- Location: FF_X25_Y37_N25
inst17 : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLK~inputclkctrl_outclk\,
	asdata => \Input[3]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17~q\);

-- Location: LCCOMB_X25_Y37_N24
\inst4|10~1\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|10~1_combout\ = (\S[1]~input_o\ & (\S[0]~input_o\)) # (!\S[1]~input_o\ & ((\S[0]~input_o\ & (\inst17~q\)) # (!\S[0]~input_o\ & ((\inst4|10~2_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \S[0]~input_o\,
	datac => \inst17~q\,
	datad => \inst4|10~2_combout\,
	combout => \inst4|10~1_combout\);

-- Location: LCCOMB_X25_Y37_N16
\inst4|10~2\ : fiftyfivenm_lcell_comb
-- Equation(s):
-- \inst4|10~2_combout\ = (\S[1]~input_o\ & ((\inst4|10~1_combout\ & (\inst20|9~2_combout\)) # (!\inst4|10~1_combout\ & ((\inst4|9~2_combout\))))) # (!\S[1]~input_o\ & (((\inst4|10~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \S[1]~input_o\,
	datab => \inst20|9~2_combout\,
	datac => \inst4|9~2_combout\,
	datad => \inst4|10~1_combout\,
	combout => \inst4|10~2_combout\);

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

ww_Hold(3) <= \Hold[3]~output_o\;

ww_Hold(2) <= \Hold[2]~output_o\;

ww_Hold(1) <= \Hold[1]~output_o\;

ww_Hold(0) <= \Hold[0]~output_o\;

ww_Output(3) <= \Output[3]~output_o\;

ww_Output(2) <= \Output[2]~output_o\;

ww_Output(1) <= \Output[1]~output_o\;

ww_Output(0) <= \Output[0]~output_o\;

\ww_In\(3) <= \In[3]~output_o\;

\ww_In\(2) <= \In[2]~output_o\;

\ww_In\(1) <= \In[1]~output_o\;

\ww_In\(0) <= \In[0]~output_o\;

ww_Right(3) <= \Right[3]~output_o\;

ww_Right(2) <= \Right[2]~output_o\;

ww_Right(1) <= \Right[1]~output_o\;

ww_Right(0) <= \Right[0]~output_o\;

ww_Left(3) <= \Left[3]~output_o\;

ww_Left(2) <= \Left[2]~output_o\;

ww_Left(1) <= \Left[1]~output_o\;

ww_Left(0) <= \Left[0]~output_o\;
END structure;


