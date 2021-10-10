-- Copyright (C) 2020  Intel Corporation. All rights reserved.
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
-- VERSION "Version 20.1.0 Build 711 06/05/2020 SJ Lite Edition"

-- DATE "10/10/2021 11:58:04"

-- 
-- Device: Altera 5M1270ZT144C5 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY IEEE;
LIBRARY MAXV;
USE IEEE.STD_LOGIC_1164.ALL;
USE MAXV.MAXV_COMPONENTS.ALL;

ENTITY 	DUT IS
    PORT (
	input_vector : IN std_logic_vector(3 DOWNTO 0);
	output_vector : OUT std_logic_vector(1 DOWNTO 0)
	);
END DUT;

-- Design Ports Information


ARCHITECTURE structure OF DUT IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_input_vector : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_output_vector : std_logic_vector(1 DOWNTO 0);
SIGNAL \add_instance|process_0~0_combout\ : std_logic;
SIGNAL \add_instance|y_present.rst~regout\ : std_logic;
SIGNAL \add_instance|Selector1~0_combout\ : std_logic;
SIGNAL \add_instance|Selector4~0_combout\ : std_logic;
SIGNAL \add_instance|y_next.gt_162\ : std_logic;
SIGNAL \add_instance|y_present.gt~regout\ : std_logic;
SIGNAL \add_instance|Selector2~0_combout\ : std_logic;
SIGNAL \add_instance|y_next.eq_145\ : std_logic;
SIGNAL \add_instance|y_present.eq~regout\ : std_logic;
SIGNAL \add_instance|Selector3~0_combout\ : std_logic;
SIGNAL \add_instance|Selector3~1_combout\ : std_logic;
SIGNAL \add_instance|y_next.lt_128\ : std_logic;
SIGNAL \add_instance|y_present.lt~regout\ : std_logic;
SIGNAL \add_instance|Selector0~0_combout\ : std_logic;
SIGNAL \input_vector~combout\ : std_logic_vector(3 DOWNTO 0);

BEGIN

ww_input_vector <= input_vector;
output_vector <= ww_output_vector;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: PIN_86,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(1),
	combout => \input_vector~combout\(1));

-- Location: PIN_88,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[2]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(2),
	combout => \input_vector~combout\(2));

-- Location: LC_X16_Y6_N2
\add_instance|process_0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|process_0~0_combout\ = (((\input_vector~combout\(1) & !\input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "00f0",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datac => \input_vector~combout\(1),
	datad => \input_vector~combout\(2),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|process_0~0_combout\);

-- Location: PIN_18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(0),
	combout => \input_vector~combout\(0));

-- Location: PIN_20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
\input_vector[3]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "input")
-- pragma translate_on
PORT MAP (
	oe => GND,
	padio => ww_input_vector(3),
	combout => \input_vector~combout\(3));

-- Location: LC_X16_Y5_N9
\add_instance|y_present.rst\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_present.rst~regout\ = DFFEAS(VCC, GLOBAL(\input_vector~combout\(0)), !GLOBAL(\input_vector~combout\(3)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ffff",
	operation_mode => "normal",
	output_mode => "reg_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	aclr => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	regout => \add_instance|y_present.rst~regout\);

-- Location: LC_X16_Y5_N5
\add_instance|Selector1~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector1~0_combout\ = (!\add_instance|y_present.lt~regout\ & ((\add_instance|y_present.rst~regout\) # ((\input_vector~combout\(1) & !\input_vector~combout\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "3302",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \add_instance|y_present.lt~regout\,
	datac => \input_vector~combout\(2),
	datad => \add_instance|y_present.rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector1~0_combout\);

-- Location: LC_X16_Y5_N8
\add_instance|Selector4~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector4~0_combout\ = (\add_instance|y_present.lt~regout\) # ((\input_vector~combout\(2) & (!\input_vector~combout\(1) & !\add_instance|y_present.rst~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ccce",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \add_instance|y_present.lt~regout\,
	datac => \input_vector~combout\(1),
	datad => \add_instance|y_present.rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector4~0_combout\);

-- Location: LC_X16_Y5_N1
\add_instance|y_present.gt\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_next.gt_162\ = ((GLOBAL(\add_instance|Selector3~1_combout\) & (\add_instance|Selector4~0_combout\)) # (!GLOBAL(\add_instance|Selector3~1_combout\) & ((\add_instance|y_next.gt_162\))))
-- \add_instance|y_present.gt~regout\ = DFFEAS(\add_instance|y_next.gt_162\, GLOBAL(\input_vector~combout\(0)), !GLOBAL(\input_vector~combout\(3)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datab => \add_instance|Selector4~0_combout\,
	datac => \add_instance|Selector3~1_combout\,
	datad => \add_instance|y_next.gt_162\,
	aclr => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|y_next.gt_162\,
	regout => \add_instance|y_present.gt~regout\);

-- Location: LC_X16_Y5_N4
\add_instance|Selector2~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector2~0_combout\ = ((\add_instance|y_present.rst~regout\) # (\input_vector~combout\(1) $ (\input_vector~combout\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ff5a",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datac => \input_vector~combout\(2),
	datad => \add_instance|y_present.rst~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector2~0_combout\);

-- Location: LC_X16_Y5_N3
\add_instance|y_present.eq\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_next.eq_145\ = ((GLOBAL(\add_instance|Selector3~1_combout\) & (!\add_instance|Selector2~0_combout\)) # (!GLOBAL(\add_instance|Selector3~1_combout\) & ((\add_instance|y_next.eq_145\))))
-- \add_instance|y_present.eq~regout\ = DFFEAS(\add_instance|y_next.eq_145\, GLOBAL(\input_vector~combout\(0)), !GLOBAL(\input_vector~combout\(3)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "5f50",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	dataa => \add_instance|Selector2~0_combout\,
	datac => \add_instance|Selector3~1_combout\,
	datad => \add_instance|y_next.eq_145\,
	aclr => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|y_next.eq_145\,
	regout => \add_instance|y_present.eq~regout\);

-- Location: LC_X16_Y5_N6
\add_instance|Selector3~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector3~0_combout\ = ((!\add_instance|y_present.gt~regout\ & (!\add_instance|y_present.eq~regout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0303",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	datab => \add_instance|y_present.gt~regout\,
	datac => \add_instance|y_present.eq~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector3~0_combout\);

-- Location: LC_X16_Y5_N7
\add_instance|Selector3~1\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector3~1_combout\ = (\input_vector~combout\(2) & (\add_instance|Selector3~0_combout\ & ((!\add_instance|y_present.lt~regout\) # (!\input_vector~combout\(1))))) # (!\input_vector~combout\(2) & (!\add_instance|y_present.lt~regout\ & 
-- ((\input_vector~combout\(1)) # (\add_instance|Selector3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "2f04",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(2),
	datab => \input_vector~combout\(1),
	datac => \add_instance|y_present.lt~regout\,
	datad => \add_instance|Selector3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector3~1_combout\);

-- Location: LC_X16_Y5_N0
\add_instance|y_present.lt\ : maxv_lcell
-- Equation(s):
-- \add_instance|y_next.lt_128\ = ((GLOBAL(\add_instance|Selector3~1_combout\) & (\add_instance|Selector1~0_combout\)) # (!GLOBAL(\add_instance|Selector3~1_combout\) & ((\add_instance|y_next.lt_128\))))
-- \add_instance|y_present.lt~regout\ = DFFEAS(\add_instance|y_next.lt_128\, GLOBAL(\input_vector~combout\(0)), !GLOBAL(\input_vector~combout\(3)), , , , , , )

-- pragma translate_off
GENERIC MAP (
	lut_mask => "cfc0",
	operation_mode => "normal",
	output_mode => "reg_and_comb",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	clk => \input_vector~combout\(0),
	datab => \add_instance|Selector1~0_combout\,
	datac => \add_instance|Selector3~1_combout\,
	datad => \add_instance|y_next.lt_128\,
	aclr => \input_vector~combout\(3),
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|y_next.lt_128\,
	regout => \add_instance|y_present.lt~regout\);

-- Location: LC_X16_Y5_N2
\add_instance|Selector0~0\ : maxv_lcell
-- Equation(s):
-- \add_instance|Selector0~0_combout\ = (\input_vector~combout\(1) & (\input_vector~combout\(2) & ((\add_instance|y_present.lt~regout\) # (\add_instance|y_present.gt~regout\)))) # (!\input_vector~combout\(1) & ((\input_vector~combout\(2)) # 
-- ((\add_instance|y_present.lt~regout\) # (\add_instance|y_present.gt~regout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "ddd4",
	operation_mode => "normal",
	output_mode => "comb_only",
	register_cascade_mode => "off",
	sum_lutc_input => "datac",
	synch_mode => "off")
-- pragma translate_on
PORT MAP (
	dataa => \input_vector~combout\(1),
	datab => \input_vector~combout\(2),
	datac => \add_instance|y_present.lt~regout\,
	datad => \add_instance|y_present.gt~regout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	combout => \add_instance|Selector0~0_combout\);

-- Location: PIN_98,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[0]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|process_0~0_combout\,
	oe => VCC,
	padio => ww_output_vector(0));

-- Location: PIN_89,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 16mA
\output_vector[1]~I\ : maxv_io
-- pragma translate_off
GENERIC MAP (
	operation_mode => "output")
-- pragma translate_on
PORT MAP (
	datain => \add_instance|Selector0~0_combout\,
	oe => VCC,
	padio => ww_output_vector(1));
END structure;

