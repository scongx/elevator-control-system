-- Copyright (C) 1991-2010 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 9.1 Build 350 03/24/2010 Service Pack 2 SJ Full Version"

-- DATE "03/08/2023 19:02:23"

-- 
-- Device: Altera EP4CE10F17C8L Package FBGA256
-- 

-- 
-- This VHDL file should be used for ModelSim (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	block1 IS
    PORT (
	beep : OUT std_logic;
	clk : IN std_logic;
	rst : IN std_logic;
	key_open : IN std_logic;
	key_close : IN std_logic;
	din1 : IN std_logic;
	din2 : IN std_logic;
	din3 : IN std_logic;
	dina : IN std_logic;
	dinb : IN std_logic;
	dinc : IN std_logic;
	dind : IN std_logic;
	dout : IN std_logic;
	pdsck : OUT std_logic;
	sel1 : OUT std_logic;
	sel2 : OUT std_logic;
	txd : OUT std_logic;
	busy : IN std_logic;
	rxd : IN std_logic;
	led : OUT std_logic;
	Q : OUT std_logic_vector(6 DOWNTO 0);
	y : OUT std_logic_vector(3 DOWNTO 0)
	);
END block1;

-- Design Ports Information
-- beep	=>  Location: PIN_C11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- pdsck	=>  Location: PIN_R13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel1	=>  Location: PIN_N9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- sel2	=>  Location: PIN_P9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- txd	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rxd	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- led	=>  Location: PIN_D9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[6]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[5]	=>  Location: PIN_N12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[4]	=>  Location: PIN_P15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[3]	=>  Location: PIN_T15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[2]	=>  Location: PIN_P16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[1]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Q[0]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[3]	=>  Location: PIN_A12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[2]	=>  Location: PIN_A11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[1]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- y[0]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- rst	=>  Location: PIN_N13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- busy	=>  Location: PIN_R10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_open	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dout	=>  Location: PIN_R12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- key_close	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din2	=>  Location: PIN_A2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din1	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- din3	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dina	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dind	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinb	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- dinc	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_D2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: 8mA

ARCHITECTURE structure OF block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_beep : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_key_open : std_logic;
SIGNAL ww_key_close : std_logic;
SIGNAL ww_din1 : std_logic;
SIGNAL ww_din2 : std_logic;
SIGNAL ww_din3 : std_logic;
SIGNAL ww_dina : std_logic;
SIGNAL ww_dinb : std_logic;
SIGNAL ww_dinc : std_logic;
SIGNAL ww_dind : std_logic;
SIGNAL ww_dout : std_logic;
SIGNAL ww_pdsck : std_logic;
SIGNAL ww_sel1 : std_logic;
SIGNAL ww_sel2 : std_logic;
SIGNAL ww_txd : std_logic;
SIGNAL ww_busy : std_logic;
SIGNAL ww_rxd : std_logic;
SIGNAL ww_led : std_logic;
SIGNAL ww_Q : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_y : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst5|clk2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst|y~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst7|clk_s~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst17|y~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \inst1|Add1~0_combout\ : std_logic;
SIGNAL \inst1|Add1~4_combout\ : std_logic;
SIGNAL \inst1|Add1~6_combout\ : std_logic;
SIGNAL \inst1|Add1~20_combout\ : std_logic;
SIGNAL \inst7|Add1~2_combout\ : std_logic;
SIGNAL \inst7|Add0~2_combout\ : std_logic;
SIGNAL \inst7|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Add3~2_combout\ : std_logic;
SIGNAL \inst3|douc~q\ : std_logic;
SIGNAL \inst3|doua~q\ : std_logic;
SIGNAL \inst3|dou3~q\ : std_logic;
SIGNAL \inst|Add0~2_combout\ : std_logic;
SIGNAL \inst|Add0~11\ : std_logic;
SIGNAL \inst|Add0~12_combout\ : std_logic;
SIGNAL \inst5|Add0~0_combout\ : std_logic;
SIGNAL \inst5|Add0~1\ : std_logic;
SIGNAL \inst5|Add0~2_combout\ : std_logic;
SIGNAL \inst5|Add0~3\ : std_logic;
SIGNAL \inst5|Add0~4_combout\ : std_logic;
SIGNAL \inst5|Add0~5\ : std_logic;
SIGNAL \inst5|Add0~6_combout\ : std_logic;
SIGNAL \inst5|Add0~7\ : std_logic;
SIGNAL \inst5|Add0~8_combout\ : std_logic;
SIGNAL \inst5|Add0~9\ : std_logic;
SIGNAL \inst5|Add0~10_combout\ : std_logic;
SIGNAL \inst5|Add0~11\ : std_logic;
SIGNAL \inst5|Add0~12_combout\ : std_logic;
SIGNAL \inst5|Add0~13\ : std_logic;
SIGNAL \inst5|Add0~14_combout\ : std_logic;
SIGNAL \inst5|Add0~15\ : std_logic;
SIGNAL \inst5|Add0~16_combout\ : std_logic;
SIGNAL \inst5|Add0~17\ : std_logic;
SIGNAL \inst5|Add0~18_combout\ : std_logic;
SIGNAL \inst5|Add0~19\ : std_logic;
SIGNAL \inst5|Add0~20_combout\ : std_logic;
SIGNAL \inst5|Add0~21\ : std_logic;
SIGNAL \inst5|Add0~22_combout\ : std_logic;
SIGNAL \inst5|Add0~23\ : std_logic;
SIGNAL \inst5|Add0~24_combout\ : std_logic;
SIGNAL \inst5|Add0~25\ : std_logic;
SIGNAL \inst5|Add0~26_combout\ : std_logic;
SIGNAL \inst5|Add0~27\ : std_logic;
SIGNAL \inst5|Add0~28_combout\ : std_logic;
SIGNAL \inst5|Add0~29\ : std_logic;
SIGNAL \inst5|Add0~30_combout\ : std_logic;
SIGNAL \inst5|Add0~31\ : std_logic;
SIGNAL \inst5|Add0~32_combout\ : std_logic;
SIGNAL \inst5|Add0~33\ : std_logic;
SIGNAL \inst5|Add0~34_combout\ : std_logic;
SIGNAL \inst4|Add1~2_combout\ : std_logic;
SIGNAL \inst4|Add1~9_combout\ : std_logic;
SIGNAL \inst4|Add1~11_combout\ : std_logic;
SIGNAL \inst4|Add1~15_combout\ : std_logic;
SIGNAL \inst4|Add1~19_combout\ : std_logic;
SIGNAL \inst4|Add1~31_combout\ : std_logic;
SIGNAL \inst4|Add1~41_combout\ : std_logic;
SIGNAL \inst4|Add1~51_combout\ : std_logic;
SIGNAL \inst1|Add2~2_combout\ : std_logic;
SIGNAL \inst1|Add2~10_combout\ : std_logic;
SIGNAL \inst1|Add2~12_combout\ : std_logic;
SIGNAL \inst1|Add0~2_combout\ : std_logic;
SIGNAL \inst1|Add0~4_combout\ : std_logic;
SIGNAL \inst1|Add0~12_combout\ : std_logic;
SIGNAL \inst1|Add0~16_combout\ : std_logic;
SIGNAL \inst1|Add0~18_combout\ : std_logic;
SIGNAL \inst17|Add0~0_combout\ : std_logic;
SIGNAL \inst17|Add0~1\ : std_logic;
SIGNAL \inst17|Add0~2_combout\ : std_logic;
SIGNAL \inst17|Add0~3\ : std_logic;
SIGNAL \inst17|Add0~4_combout\ : std_logic;
SIGNAL \inst17|Add0~5\ : std_logic;
SIGNAL \inst17|Add0~6_combout\ : std_logic;
SIGNAL \inst17|Add0~7\ : std_logic;
SIGNAL \inst17|Add0~8_combout\ : std_logic;
SIGNAL \inst17|Add0~9\ : std_logic;
SIGNAL \inst17|Add0~10_combout\ : std_logic;
SIGNAL \inst17|Add0~11\ : std_logic;
SIGNAL \inst17|Add0~12_combout\ : std_logic;
SIGNAL \inst17|Add0~13\ : std_logic;
SIGNAL \inst17|Add0~14_combout\ : std_logic;
SIGNAL \inst17|Add0~15\ : std_logic;
SIGNAL \inst17|Add0~16_combout\ : std_logic;
SIGNAL \inst17|Add0~17\ : std_logic;
SIGNAL \inst17|Add0~18_combout\ : std_logic;
SIGNAL \inst17|Add0~19\ : std_logic;
SIGNAL \inst17|Add0~20_combout\ : std_logic;
SIGNAL \inst17|Add0~21\ : std_logic;
SIGNAL \inst17|Add0~22_combout\ : std_logic;
SIGNAL \inst17|Add0~23\ : std_logic;
SIGNAL \inst17|Add0~24_combout\ : std_logic;
SIGNAL \inst17|Add0~25\ : std_logic;
SIGNAL \inst17|Add0~26_combout\ : std_logic;
SIGNAL \inst17|Add0~27\ : std_logic;
SIGNAL \inst17|Add0~28_combout\ : std_logic;
SIGNAL \inst17|Add0~29\ : std_logic;
SIGNAL \inst17|Add0~30_combout\ : std_logic;
SIGNAL \inst3|count2[0]~26_combout\ : std_logic;
SIGNAL \inst3|count2[2]~30_combout\ : std_logic;
SIGNAL \inst3|count2[3]~32_combout\ : std_logic;
SIGNAL \inst3|count2[8]~42_combout\ : std_logic;
SIGNAL \inst3|count2[10]~46_combout\ : std_logic;
SIGNAL \inst3|count2[12]~50_combout\ : std_logic;
SIGNAL \inst3|count2[18]~62_combout\ : std_logic;
SIGNAL \inst3|countc[0]~26_combout\ : std_logic;
SIGNAL \inst3|countc[0]~27\ : std_logic;
SIGNAL \inst3|countc[1]~28_combout\ : std_logic;
SIGNAL \inst3|countc[1]~29\ : std_logic;
SIGNAL \inst3|countc[2]~30_combout\ : std_logic;
SIGNAL \inst3|countc[2]~31\ : std_logic;
SIGNAL \inst3|countc[3]~32_combout\ : std_logic;
SIGNAL \inst3|countc[3]~33\ : std_logic;
SIGNAL \inst3|countc[4]~34_combout\ : std_logic;
SIGNAL \inst3|countc[4]~35\ : std_logic;
SIGNAL \inst3|countc[5]~36_combout\ : std_logic;
SIGNAL \inst3|countc[5]~37\ : std_logic;
SIGNAL \inst3|countc[6]~38_combout\ : std_logic;
SIGNAL \inst3|countc[6]~39\ : std_logic;
SIGNAL \inst3|countc[7]~40_combout\ : std_logic;
SIGNAL \inst3|countc[7]~41\ : std_logic;
SIGNAL \inst3|countc[8]~42_combout\ : std_logic;
SIGNAL \inst3|countc[8]~43\ : std_logic;
SIGNAL \inst3|countc[9]~44_combout\ : std_logic;
SIGNAL \inst3|countc[9]~45\ : std_logic;
SIGNAL \inst3|countc[10]~46_combout\ : std_logic;
SIGNAL \inst3|countc[10]~47\ : std_logic;
SIGNAL \inst3|countc[11]~48_combout\ : std_logic;
SIGNAL \inst3|countc[11]~49\ : std_logic;
SIGNAL \inst3|countc[12]~50_combout\ : std_logic;
SIGNAL \inst3|countc[12]~51\ : std_logic;
SIGNAL \inst3|countc[13]~52_combout\ : std_logic;
SIGNAL \inst3|countc[13]~53\ : std_logic;
SIGNAL \inst3|countc[14]~54_combout\ : std_logic;
SIGNAL \inst3|countc[14]~55\ : std_logic;
SIGNAL \inst3|countc[15]~56_combout\ : std_logic;
SIGNAL \inst3|countc[15]~57\ : std_logic;
SIGNAL \inst3|countc[16]~58_combout\ : std_logic;
SIGNAL \inst3|countc[16]~59\ : std_logic;
SIGNAL \inst3|countc[17]~60_combout\ : std_logic;
SIGNAL \inst3|countc[17]~61\ : std_logic;
SIGNAL \inst3|countc[18]~62_combout\ : std_logic;
SIGNAL \inst3|countc[18]~63\ : std_logic;
SIGNAL \inst3|countc[19]~64_combout\ : std_logic;
SIGNAL \inst3|countc[19]~65\ : std_logic;
SIGNAL \inst3|countc[20]~66_combout\ : std_logic;
SIGNAL \inst3|countc[20]~67\ : std_logic;
SIGNAL \inst3|countc[21]~68_combout\ : std_logic;
SIGNAL \inst3|countc[21]~69\ : std_logic;
SIGNAL \inst3|countc[22]~70_combout\ : std_logic;
SIGNAL \inst3|countc[22]~71\ : std_logic;
SIGNAL \inst3|countc[23]~72_combout\ : std_logic;
SIGNAL \inst3|countc[23]~73\ : std_logic;
SIGNAL \inst3|countc[24]~74_combout\ : std_logic;
SIGNAL \inst3|countc[24]~75\ : std_logic;
SIGNAL \inst3|countc[25]~76_combout\ : std_logic;
SIGNAL \inst3|countb[0]~26_combout\ : std_logic;
SIGNAL \inst3|countb[2]~30_combout\ : std_logic;
SIGNAL \inst3|countb[3]~32_combout\ : std_logic;
SIGNAL \inst3|countb[8]~42_combout\ : std_logic;
SIGNAL \inst3|countb[10]~46_combout\ : std_logic;
SIGNAL \inst3|countb[12]~50_combout\ : std_logic;
SIGNAL \inst3|countb[18]~62_combout\ : std_logic;
SIGNAL \inst3|count1[0]~27_combout\ : std_logic;
SIGNAL \inst3|count1[2]~31_combout\ : std_logic;
SIGNAL \inst3|count1[3]~33_combout\ : std_logic;
SIGNAL \inst3|count1[8]~43_combout\ : std_logic;
SIGNAL \inst3|count1[10]~47_combout\ : std_logic;
SIGNAL \inst3|count1[12]~51_combout\ : std_logic;
SIGNAL \inst3|count1[19]~65_combout\ : std_logic;
SIGNAL \inst3|counta[0]~26_combout\ : std_logic;
SIGNAL \inst3|counta[0]~27\ : std_logic;
SIGNAL \inst3|counta[1]~28_combout\ : std_logic;
SIGNAL \inst3|counta[1]~29\ : std_logic;
SIGNAL \inst3|counta[2]~30_combout\ : std_logic;
SIGNAL \inst3|counta[2]~31\ : std_logic;
SIGNAL \inst3|counta[3]~32_combout\ : std_logic;
SIGNAL \inst3|counta[3]~33\ : std_logic;
SIGNAL \inst3|counta[4]~34_combout\ : std_logic;
SIGNAL \inst3|counta[4]~35\ : std_logic;
SIGNAL \inst3|counta[5]~36_combout\ : std_logic;
SIGNAL \inst3|counta[5]~37\ : std_logic;
SIGNAL \inst3|counta[6]~38_combout\ : std_logic;
SIGNAL \inst3|counta[6]~39\ : std_logic;
SIGNAL \inst3|counta[7]~40_combout\ : std_logic;
SIGNAL \inst3|counta[7]~41\ : std_logic;
SIGNAL \inst3|counta[8]~42_combout\ : std_logic;
SIGNAL \inst3|counta[8]~43\ : std_logic;
SIGNAL \inst3|counta[9]~44_combout\ : std_logic;
SIGNAL \inst3|counta[9]~45\ : std_logic;
SIGNAL \inst3|counta[10]~46_combout\ : std_logic;
SIGNAL \inst3|counta[10]~47\ : std_logic;
SIGNAL \inst3|counta[11]~48_combout\ : std_logic;
SIGNAL \inst3|counta[11]~49\ : std_logic;
SIGNAL \inst3|counta[12]~50_combout\ : std_logic;
SIGNAL \inst3|counta[12]~51\ : std_logic;
SIGNAL \inst3|counta[13]~52_combout\ : std_logic;
SIGNAL \inst3|counta[13]~53\ : std_logic;
SIGNAL \inst3|counta[14]~54_combout\ : std_logic;
SIGNAL \inst3|counta[14]~55\ : std_logic;
SIGNAL \inst3|counta[15]~56_combout\ : std_logic;
SIGNAL \inst3|counta[15]~57\ : std_logic;
SIGNAL \inst3|counta[16]~58_combout\ : std_logic;
SIGNAL \inst3|counta[16]~59\ : std_logic;
SIGNAL \inst3|counta[17]~60_combout\ : std_logic;
SIGNAL \inst3|counta[17]~61\ : std_logic;
SIGNAL \inst3|counta[18]~62_combout\ : std_logic;
SIGNAL \inst3|counta[18]~63\ : std_logic;
SIGNAL \inst3|counta[19]~64_combout\ : std_logic;
SIGNAL \inst3|counta[19]~65\ : std_logic;
SIGNAL \inst3|counta[20]~66_combout\ : std_logic;
SIGNAL \inst3|counta[20]~67\ : std_logic;
SIGNAL \inst3|counta[21]~68_combout\ : std_logic;
SIGNAL \inst3|counta[21]~69\ : std_logic;
SIGNAL \inst3|counta[22]~70_combout\ : std_logic;
SIGNAL \inst3|counta[22]~71\ : std_logic;
SIGNAL \inst3|counta[23]~72_combout\ : std_logic;
SIGNAL \inst3|counta[23]~73\ : std_logic;
SIGNAL \inst3|counta[24]~74_combout\ : std_logic;
SIGNAL \inst3|counta[24]~75\ : std_logic;
SIGNAL \inst3|counta[25]~76_combout\ : std_logic;
SIGNAL \inst3|count3[0]~26_combout\ : std_logic;
SIGNAL \inst3|count3[0]~27\ : std_logic;
SIGNAL \inst3|count3[1]~28_combout\ : std_logic;
SIGNAL \inst3|count3[1]~29\ : std_logic;
SIGNAL \inst3|count3[2]~30_combout\ : std_logic;
SIGNAL \inst3|count3[2]~31\ : std_logic;
SIGNAL \inst3|count3[3]~32_combout\ : std_logic;
SIGNAL \inst3|count3[3]~33\ : std_logic;
SIGNAL \inst3|count3[4]~34_combout\ : std_logic;
SIGNAL \inst3|count3[4]~35\ : std_logic;
SIGNAL \inst3|count3[5]~36_combout\ : std_logic;
SIGNAL \inst3|count3[5]~37\ : std_logic;
SIGNAL \inst3|count3[6]~38_combout\ : std_logic;
SIGNAL \inst3|count3[6]~39\ : std_logic;
SIGNAL \inst3|count3[7]~40_combout\ : std_logic;
SIGNAL \inst3|count3[7]~41\ : std_logic;
SIGNAL \inst3|count3[8]~42_combout\ : std_logic;
SIGNAL \inst3|count3[8]~43\ : std_logic;
SIGNAL \inst3|count3[9]~44_combout\ : std_logic;
SIGNAL \inst3|count3[9]~45\ : std_logic;
SIGNAL \inst3|count3[10]~46_combout\ : std_logic;
SIGNAL \inst3|count3[10]~47\ : std_logic;
SIGNAL \inst3|count3[11]~48_combout\ : std_logic;
SIGNAL \inst3|count3[11]~49\ : std_logic;
SIGNAL \inst3|count3[12]~50_combout\ : std_logic;
SIGNAL \inst3|count3[12]~51\ : std_logic;
SIGNAL \inst3|count3[13]~52_combout\ : std_logic;
SIGNAL \inst3|count3[13]~53\ : std_logic;
SIGNAL \inst3|count3[14]~54_combout\ : std_logic;
SIGNAL \inst3|count3[14]~55\ : std_logic;
SIGNAL \inst3|count3[15]~56_combout\ : std_logic;
SIGNAL \inst3|count3[15]~57\ : std_logic;
SIGNAL \inst3|count3[16]~58_combout\ : std_logic;
SIGNAL \inst3|count3[16]~59\ : std_logic;
SIGNAL \inst3|count3[17]~60_combout\ : std_logic;
SIGNAL \inst3|count3[17]~61\ : std_logic;
SIGNAL \inst3|count3[18]~62_combout\ : std_logic;
SIGNAL \inst3|count3[18]~63\ : std_logic;
SIGNAL \inst3|count3[19]~64_combout\ : std_logic;
SIGNAL \inst3|count3[19]~65\ : std_logic;
SIGNAL \inst3|count3[20]~66_combout\ : std_logic;
SIGNAL \inst3|count3[20]~67\ : std_logic;
SIGNAL \inst3|count3[21]~68_combout\ : std_logic;
SIGNAL \inst3|count3[21]~69\ : std_logic;
SIGNAL \inst3|count3[22]~70_combout\ : std_logic;
SIGNAL \inst3|count3[22]~71\ : std_logic;
SIGNAL \inst3|count3[23]~72_combout\ : std_logic;
SIGNAL \inst3|count3[23]~73\ : std_logic;
SIGNAL \inst3|count3[24]~74_combout\ : std_logic;
SIGNAL \inst3|count3[24]~75\ : std_logic;
SIGNAL \inst3|count3[25]~76_combout\ : std_logic;
SIGNAL \inst3|countd[2]~30_combout\ : std_logic;
SIGNAL \inst3|countd[10]~46_combout\ : std_logic;
SIGNAL \inst3|countd[12]~50_combout\ : std_logic;
SIGNAL \inst3|countd[18]~62_combout\ : std_logic;
SIGNAL \inst3|countd[23]~73\ : std_logic;
SIGNAL \inst3|countd[24]~74_combout\ : std_logic;
SIGNAL \inst3|countd[24]~75\ : std_logic;
SIGNAL \inst3|countd[25]~76_combout\ : std_logic;
SIGNAL \inst7|Mux0~0_combout\ : std_logic;
SIGNAL \inst7|Mux0~1_combout\ : std_logic;
SIGNAL \inst7|Mux0~2_combout\ : std_logic;
SIGNAL \inst7|Mux0~3_combout\ : std_logic;
SIGNAL \inst1|direction.d2~q\ : std_logic;
SIGNAL \inst1|Equal2~2_combout\ : std_logic;
SIGNAL \inst1|Equal3~0_combout\ : std_logic;
SIGNAL \inst1|Equal1~1_combout\ : std_logic;
SIGNAL \inst1|Equal1~5_combout\ : std_logic;
SIGNAL \inst17|y~q\ : std_logic;
SIGNAL \inst1|Selector53~0_combout\ : std_logic;
SIGNAL \inst1|Selector51~0_combout\ : std_logic;
SIGNAL \inst1|Selector52~0_combout\ : std_logic;
SIGNAL \inst1|Selector50~0_combout\ : std_logic;
SIGNAL \inst1|Selector50~1_combout\ : std_logic;
SIGNAL \inst16|data_24~2_combout\ : std_logic;
SIGNAL \inst16|data_24~5_combout\ : std_logic;
SIGNAL \inst16|data_24~7_combout\ : std_logic;
SIGNAL \inst16|data_24~9_combout\ : std_logic;
SIGNAL \inst16|data_24~13_combout\ : std_logic;
SIGNAL \inst16|data_24~15_combout\ : std_logic;
SIGNAL \inst16|data_24~24_combout\ : std_logic;
SIGNAL \inst4|door~0_combout\ : std_logic;
SIGNAL \inst5|Equal0~0_combout\ : std_logic;
SIGNAL \inst5|Equal0~1_combout\ : std_logic;
SIGNAL \inst5|Equal0~2_combout\ : std_logic;
SIGNAL \inst5|Equal0~3_combout\ : std_logic;
SIGNAL \inst5|Equal0~4_combout\ : std_logic;
SIGNAL \inst5|clk2~0_combout\ : std_logic;
SIGNAL \inst4|Selector0~0_combout\ : std_logic;
SIGNAL \inst4|Selector0~1_combout\ : std_logic;
SIGNAL \inst4|Selector0~2_combout\ : std_logic;
SIGNAL \inst4|Selector0~3_combout\ : std_logic;
SIGNAL \inst4|direction~2_combout\ : std_logic;
SIGNAL \inst4|Selector1~5_combout\ : std_logic;
SIGNAL \inst4|Selector1~9_combout\ : std_logic;
SIGNAL \inst7|cnt~1_combout\ : std_logic;
SIGNAL \inst7|Selector1~0_combout\ : std_logic;
SIGNAL \inst4|Equal2~5_combout\ : std_logic;
SIGNAL \inst1|process_0~0_combout\ : std_logic;
SIGNAL \inst1|Selector37~1_combout\ : std_logic;
SIGNAL \inst1|target[2]~5_combout\ : std_logic;
SIGNAL \inst1|target[4]~7_combout\ : std_logic;
SIGNAL \inst1|Selector10~0_combout\ : std_logic;
SIGNAL \inst1|mark[1]~0_combout\ : std_logic;
SIGNAL \inst1|mark[1]~1_combout\ : std_logic;
SIGNAL \inst1|mark[1]~2_combout\ : std_logic;
SIGNAL \inst1|Selector9~0_combout\ : std_logic;
SIGNAL \inst1|Selector7~0_combout\ : std_logic;
SIGNAL \inst1|Selector6~0_combout\ : std_logic;
SIGNAL \inst1|Selector3~0_combout\ : std_logic;
SIGNAL \inst1|Selector0~0_combout\ : std_logic;
SIGNAL \inst17|Equal0~0_combout\ : std_logic;
SIGNAL \inst17|Equal0~1_combout\ : std_logic;
SIGNAL \inst17|Equal0~2_combout\ : std_logic;
SIGNAL \inst17|Equal0~3_combout\ : std_logic;
SIGNAL \inst17|Equal0~4_combout\ : std_logic;
SIGNAL \inst17|y~0_combout\ : std_logic;
SIGNAL \inst16|Selector11~0_combout\ : std_logic;
SIGNAL \inst16|Selector11~1_combout\ : std_logic;
SIGNAL \inst16|Selector12~0_combout\ : std_logic;
SIGNAL \inst16|Selector12~1_combout\ : std_logic;
SIGNAL \inst16|Decoder0~3_combout\ : std_logic;
SIGNAL \inst16|Selector13~0_combout\ : std_logic;
SIGNAL \inst16|Selector13~1_combout\ : std_logic;
SIGNAL \inst16|Decoder0~4_combout\ : std_logic;
SIGNAL \inst16|Selector14~1_combout\ : std_logic;
SIGNAL \inst16|Selector14~2_combout\ : std_logic;
SIGNAL \inst16|Decoder0~6_combout\ : std_logic;
SIGNAL \inst16|Selector22~0_combout\ : std_logic;
SIGNAL \inst16|Selector22~1_combout\ : std_logic;
SIGNAL \inst16|Decoder0~8_combout\ : std_logic;
SIGNAL \inst16|Selector17~0_combout\ : std_logic;
SIGNAL \inst16|Selector17~1_combout\ : std_logic;
SIGNAL \inst16|Decoder0~10_combout\ : std_logic;
SIGNAL \inst16|Selector19~0_combout\ : std_logic;
SIGNAL \inst16|Selector19~1_combout\ : std_logic;
SIGNAL \inst16|Decoder0~11_combout\ : std_logic;
SIGNAL \inst16|Selector23~0_combout\ : std_logic;
SIGNAL \inst16|Selector23~1_combout\ : std_logic;
SIGNAL \inst16|Selector28~0_combout\ : std_logic;
SIGNAL \inst16|Decoder0~13_combout\ : std_logic;
SIGNAL \inst16|Selector24~0_combout\ : std_logic;
SIGNAL \inst16|Selector24~1_combout\ : std_logic;
SIGNAL \inst16|Selector26~0_combout\ : std_logic;
SIGNAL \inst16|Selector27~0_combout\ : std_logic;
SIGNAL \inst16|Selector9~0_combout\ : std_logic;
SIGNAL \inst16|Selector9~1_combout\ : std_logic;
SIGNAL \inst16|Selector8~0_combout\ : std_logic;
SIGNAL \inst16|Selector8~1_combout\ : std_logic;
SIGNAL \inst4|floor~12_combout\ : std_logic;
SIGNAL \inst4|Selector4~6_combout\ : std_logic;
SIGNAL \inst4|Selector4~7_combout\ : std_logic;
SIGNAL \inst4|LessThan0~0_combout\ : std_logic;
SIGNAL \inst4|LessThan0~3_combout\ : std_logic;
SIGNAL \inst4|Selector4~9_combout\ : std_logic;
SIGNAL \inst4|Selector9~3_combout\ : std_logic;
SIGNAL \inst4|Selector6~7_combout\ : std_logic;
SIGNAL \inst4|Selector7~2_combout\ : std_logic;
SIGNAL \inst4|Selector7~3_combout\ : std_logic;
SIGNAL \inst4|Selector8~3_combout\ : std_logic;
SIGNAL \inst|cnt~0_combout\ : std_logic;
SIGNAL \inst|cnt~5_combout\ : std_logic;
SIGNAL \inst5|cnt~0_combout\ : std_logic;
SIGNAL \inst5|cnt~1_combout\ : std_logic;
SIGNAL \inst5|cnt~2_combout\ : std_logic;
SIGNAL \inst5|cnt~3_combout\ : std_logic;
SIGNAL \inst5|cnt~4_combout\ : std_logic;
SIGNAL \inst5|cnt~5_combout\ : std_logic;
SIGNAL \inst5|cnt~6_combout\ : std_logic;
SIGNAL \inst5|cnt~7_combout\ : std_logic;
SIGNAL \inst7|count~5_combout\ : std_logic;
SIGNAL \inst4|Add1~53_combout\ : std_logic;
SIGNAL \inst4|Add1~59_combout\ : std_logic;
SIGNAL \inst4|Add1~66_combout\ : std_logic;
SIGNAL \inst4|Add1~70_combout\ : std_logic;
SIGNAL \inst4|Selector3~2_combout\ : std_logic;
SIGNAL \inst4|Selector3~3_combout\ : std_logic;
SIGNAL \inst4|stop~4_combout\ : std_logic;
SIGNAL \inst1|Add2~23_combout\ : std_logic;
SIGNAL \inst1|Selector43~0_combout\ : std_logic;
SIGNAL \inst1|Selector43~1_combout\ : std_logic;
SIGNAL \inst1|Selector47~0_combout\ : std_logic;
SIGNAL \inst1|Selector47~1_combout\ : std_logic;
SIGNAL \inst17|cnt~0_combout\ : std_logic;
SIGNAL \inst17|cnt~1_combout\ : std_logic;
SIGNAL \inst17|cnt~2_combout\ : std_logic;
SIGNAL \inst17|cnt~3_combout\ : std_logic;
SIGNAL \inst17|cnt~4_combout\ : std_logic;
SIGNAL \inst17|cnt~5_combout\ : std_logic;
SIGNAL \inst17|cnt~6_combout\ : std_logic;
SIGNAL \inst3|Equal1~0_combout\ : std_logic;
SIGNAL \inst3|Equal1~1_combout\ : std_logic;
SIGNAL \inst3|Equal1~2_combout\ : std_logic;
SIGNAL \inst3|Equal1~3_combout\ : std_logic;
SIGNAL \inst3|Equal1~4_combout\ : std_logic;
SIGNAL \inst3|Equal5~0_combout\ : std_logic;
SIGNAL \inst3|Equal5~1_combout\ : std_logic;
SIGNAL \inst3|Equal5~2_combout\ : std_logic;
SIGNAL \inst3|Equal5~3_combout\ : std_logic;
SIGNAL \inst3|Equal5~4_combout\ : std_logic;
SIGNAL \inst3|Equal5~5_combout\ : std_logic;
SIGNAL \inst3|Equal5~6_combout\ : std_logic;
SIGNAL \inst3|Equal5~7_combout\ : std_logic;
SIGNAL \inst3|Equal5~8_combout\ : std_logic;
SIGNAL \inst3|douc~0_combout\ : std_logic;
SIGNAL \inst3|Equal4~0_combout\ : std_logic;
SIGNAL \inst3|Equal4~1_combout\ : std_logic;
SIGNAL \inst3|Equal4~2_combout\ : std_logic;
SIGNAL \inst3|Equal4~3_combout\ : std_logic;
SIGNAL \inst3|Equal4~4_combout\ : std_logic;
SIGNAL \inst3|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|Equal0~1_combout\ : std_logic;
SIGNAL \inst3|Equal0~2_combout\ : std_logic;
SIGNAL \inst3|Equal0~3_combout\ : std_logic;
SIGNAL \inst3|Equal0~4_combout\ : std_logic;
SIGNAL \inst3|Equal3~0_combout\ : std_logic;
SIGNAL \inst3|Equal3~1_combout\ : std_logic;
SIGNAL \inst3|Equal3~2_combout\ : std_logic;
SIGNAL \inst3|Equal3~3_combout\ : std_logic;
SIGNAL \inst3|Equal3~4_combout\ : std_logic;
SIGNAL \inst3|Equal3~5_combout\ : std_logic;
SIGNAL \inst3|Equal3~6_combout\ : std_logic;
SIGNAL \inst3|Equal3~7_combout\ : std_logic;
SIGNAL \inst3|Equal3~8_combout\ : std_logic;
SIGNAL \inst3|doua~0_combout\ : std_logic;
SIGNAL \inst3|doua~1_combout\ : std_logic;
SIGNAL \inst3|Equal2~0_combout\ : std_logic;
SIGNAL \inst3|Equal2~1_combout\ : std_logic;
SIGNAL \inst3|Equal2~2_combout\ : std_logic;
SIGNAL \inst3|Equal2~3_combout\ : std_logic;
SIGNAL \inst3|Equal2~4_combout\ : std_logic;
SIGNAL \inst3|Equal2~5_combout\ : std_logic;
SIGNAL \inst3|Equal2~6_combout\ : std_logic;
SIGNAL \inst3|Equal2~7_combout\ : std_logic;
SIGNAL \inst3|Equal2~8_combout\ : std_logic;
SIGNAL \inst3|dou3~0_combout\ : std_logic;
SIGNAL \inst3|Equal6~3_combout\ : std_logic;
SIGNAL \inst3|Equal6~7_combout\ : std_logic;
SIGNAL \rxd~input_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \inst17|y~clkctrl_outclk\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \inst17|y~feeder_combout\ : std_logic;
SIGNAL \inst3|douc~feeder_combout\ : std_logic;
SIGNAL \inst3|doua~feeder_combout\ : std_logic;
SIGNAL \inst3|dou3~feeder_combout\ : std_logic;
SIGNAL \beep~output_o\ : std_logic;
SIGNAL \pdsck~output_o\ : std_logic;
SIGNAL \sel1~output_o\ : std_logic;
SIGNAL \sel2~output_o\ : std_logic;
SIGNAL \txd~output_o\ : std_logic;
SIGNAL \led~output_o\ : std_logic;
SIGNAL \Q[6]~output_o\ : std_logic;
SIGNAL \Q[5]~output_o\ : std_logic;
SIGNAL \Q[4]~output_o\ : std_logic;
SIGNAL \Q[3]~output_o\ : std_logic;
SIGNAL \Q[2]~output_o\ : std_logic;
SIGNAL \Q[1]~output_o\ : std_logic;
SIGNAL \Q[0]~output_o\ : std_logic;
SIGNAL \y[3]~output_o\ : std_logic;
SIGNAL \y[2]~output_o\ : std_logic;
SIGNAL \y[1]~output_o\ : std_logic;
SIGNAL \y[0]~output_o\ : std_logic;
SIGNAL \inst|Add0~1\ : std_logic;
SIGNAL \inst|Add0~3\ : std_logic;
SIGNAL \inst|Add0~4_combout\ : std_logic;
SIGNAL \inst|cnt~4_combout\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \inst|Add0~5\ : std_logic;
SIGNAL \inst|Add0~6_combout\ : std_logic;
SIGNAL \inst|cnt~3_combout\ : std_logic;
SIGNAL \inst|Add0~7\ : std_logic;
SIGNAL \inst|Add0~8_combout\ : std_logic;
SIGNAL \inst|cnt~2_combout\ : std_logic;
SIGNAL \inst|Add0~9\ : std_logic;
SIGNAL \inst|Add0~10_combout\ : std_logic;
SIGNAL \inst|cnt~1_combout\ : std_logic;
SIGNAL \inst|Equal0~0_combout\ : std_logic;
SIGNAL \inst|Add0~0_combout\ : std_logic;
SIGNAL \inst|Equal0~1_combout\ : std_logic;
SIGNAL \inst|y~0_combout\ : std_logic;
SIGNAL \inst|y~feeder_combout\ : std_logic;
SIGNAL \inst|y~q\ : std_logic;
SIGNAL \inst|y~clkctrl_outclk\ : std_logic;
SIGNAL \inst4|Equal1~0_combout\ : std_logic;
SIGNAL \inst4|Selector7~4_combout\ : std_logic;
SIGNAL \inst4|Selector7~6_combout\ : std_logic;
SIGNAL \inst4|Equal7~0_combout\ : std_logic;
SIGNAL \inst4|Selector9~1_combout\ : std_logic;
SIGNAL \inst4|state~18_combout\ : std_logic;
SIGNAL \inst4|Selector9~0_combout\ : std_logic;
SIGNAL \inst1|Add3~0_combout\ : std_logic;
SIGNAL \key_open~input_o\ : std_logic;
SIGNAL \inst1|target[7]~8_combout\ : std_logic;
SIGNAL \inst1|Equal2~3_combout\ : std_logic;
SIGNAL \inst1|target[3]~4_combout\ : std_logic;
SIGNAL \inst1|Add3~6_combout\ : std_logic;
SIGNAL \inst1|Add3~16_combout\ : std_logic;
SIGNAL \inst1|target[8]~10_combout\ : std_logic;
SIGNAL \inst1|target[6]~9_combout\ : std_logic;
SIGNAL \inst1|Add3~10_combout\ : std_logic;
SIGNAL \inst1|target[5]~6_combout\ : std_logic;
SIGNAL \inst1|target[1]~2_combout\ : std_logic;
SIGNAL \inst1|Add1~1\ : std_logic;
SIGNAL \inst1|Add1~3\ : std_logic;
SIGNAL \inst1|Add1~5\ : std_logic;
SIGNAL \inst1|Add1~7\ : std_logic;
SIGNAL \inst1|Add1~9\ : std_logic;
SIGNAL \inst1|Add1~11\ : std_logic;
SIGNAL \inst1|Add1~13\ : std_logic;
SIGNAL \inst1|Add1~15\ : std_logic;
SIGNAL \inst1|Add1~17\ : std_logic;
SIGNAL \inst1|Add1~18_combout\ : std_logic;
SIGNAL \inst1|Add1~16_combout\ : std_logic;
SIGNAL \inst1|Add1~14_combout\ : std_logic;
SIGNAL \inst1|Add1~12_combout\ : std_logic;
SIGNAL \inst1|Add1~10_combout\ : std_logic;
SIGNAL \inst1|Add1~8_combout\ : std_logic;
SIGNAL \inst1|Add0~0_combout\ : std_logic;
SIGNAL \key_close~input_o\ : std_logic;
SIGNAL \inst1|Selector49~1_combout\ : std_logic;
SIGNAL \inst1|Selector49~2_combout\ : std_logic;
SIGNAL \inst1|Add0~1\ : std_logic;
SIGNAL \inst1|Add0~3\ : std_logic;
SIGNAL \inst1|Add0~5\ : std_logic;
SIGNAL \inst1|Add0~6_combout\ : std_logic;
SIGNAL \inst1|Add2~4_combout\ : std_logic;
SIGNAL \inst1|Selector46~0_combout\ : std_logic;
SIGNAL \inst1|Selector46~1_combout\ : std_logic;
SIGNAL \inst1|Add2~6_combout\ : std_logic;
SIGNAL \inst1|Add0~7\ : std_logic;
SIGNAL \inst1|Add0~8_combout\ : std_logic;
SIGNAL \inst1|Selector45~0_combout\ : std_logic;
SIGNAL \inst1|Selector45~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~1_combout\ : std_logic;
SIGNAL \inst1|Equal0~2_combout\ : std_logic;
SIGNAL \inst1|Selector49~0_combout\ : std_logic;
SIGNAL \inst1|Add2~0_combout\ : std_logic;
SIGNAL \inst1|Selector48~0_combout\ : std_logic;
SIGNAL \inst1|Selector48~1_combout\ : std_logic;
SIGNAL \inst1|Add2~1\ : std_logic;
SIGNAL \inst1|Add2~3\ : std_logic;
SIGNAL \inst1|Add2~5\ : std_logic;
SIGNAL \inst1|Add2~7\ : std_logic;
SIGNAL \inst1|Add2~8_combout\ : std_logic;
SIGNAL \inst1|Add0~9\ : std_logic;
SIGNAL \inst1|Add0~10_combout\ : std_logic;
SIGNAL \inst1|Selector44~0_combout\ : std_logic;
SIGNAL \inst1|Selector44~1_combout\ : std_logic;
SIGNAL \inst1|Add2~9\ : std_logic;
SIGNAL \inst1|Add2~11\ : std_logic;
SIGNAL \inst1|Add2~13\ : std_logic;
SIGNAL \inst1|Add2~15\ : std_logic;
SIGNAL \inst1|Add2~16_combout\ : std_logic;
SIGNAL \inst1|Add2~24_combout\ : std_logic;
SIGNAL \inst1|Selector40~0_combout\ : std_logic;
SIGNAL \inst1|Add0~11\ : std_logic;
SIGNAL \inst1|Add0~13\ : std_logic;
SIGNAL \inst1|Add0~15\ : std_logic;
SIGNAL \inst1|Add0~17\ : std_logic;
SIGNAL \inst1|Add0~19\ : std_logic;
SIGNAL \inst1|Add0~20_combout\ : std_logic;
SIGNAL \inst1|Add2~17\ : std_logic;
SIGNAL \inst1|Add2~18_combout\ : std_logic;
SIGNAL \inst1|Add2~21_combout\ : std_logic;
SIGNAL \inst1|Selector39~1_combout\ : std_logic;
SIGNAL \inst16|overweight~feeder_combout\ : std_logic;
SIGNAL \inst16|overweight~q\ : std_logic;
SIGNAL \inst1|Selector34~0_combout\ : std_logic;
SIGNAL \inst1|Selector34~1_combout\ : std_logic;
SIGNAL \inst1|state.c3~q\ : std_logic;
SIGNAL \inst1|Add2~20_combout\ : std_logic;
SIGNAL \inst1|Selector39~0_combout\ : std_logic;
SIGNAL \inst1|Add2~14_combout\ : std_logic;
SIGNAL \inst1|Add2~22_combout\ : std_logic;
SIGNAL \inst1|Selector41~0_combout\ : std_logic;
SIGNAL \inst1|Add0~14_combout\ : std_logic;
SIGNAL \inst1|Selector42~0_combout\ : std_logic;
SIGNAL \inst1|Equal0~0_combout\ : std_logic;
SIGNAL \inst1|direction~11_combout\ : std_logic;
SIGNAL \inst1|Selector31~4_combout\ : std_logic;
SIGNAL \inst1|state.c0~q\ : std_logic;
SIGNAL \inst1|direction~10_combout\ : std_logic;
SIGNAL \inst1|Selector36~0_combout\ : std_logic;
SIGNAL \inst1|direction.d1~q\ : std_logic;
SIGNAL \inst1|Selector20~0_combout\ : std_logic;
SIGNAL \inst1|LessThan0~1_cout\ : std_logic;
SIGNAL \inst1|LessThan0~3_cout\ : std_logic;
SIGNAL \inst1|LessThan0~5_cout\ : std_logic;
SIGNAL \inst1|LessThan0~7_cout\ : std_logic;
SIGNAL \inst1|LessThan0~9_cout\ : std_logic;
SIGNAL \inst1|LessThan0~11_cout\ : std_logic;
SIGNAL \inst1|LessThan0~13_cout\ : std_logic;
SIGNAL \inst1|LessThan0~15_cout\ : std_logic;
SIGNAL \inst1|LessThan0~17_cout\ : std_logic;
SIGNAL \inst1|LessThan0~19_cout\ : std_logic;
SIGNAL \inst1|LessThan0~20_combout\ : std_logic;
SIGNAL \inst1|Selector13~0_combout\ : std_logic;
SIGNAL \inst1|Add3~18_combout\ : std_logic;
SIGNAL \inst1|Selector12~0_combout\ : std_logic;
SIGNAL \inst1|Equal2~5_combout\ : std_logic;
SIGNAL \inst1|Selector31~5_combout\ : std_logic;
SIGNAL \inst1|Selector31~2_combout\ : std_logic;
SIGNAL \inst1|Selector37~0_combout\ : std_logic;
SIGNAL \inst1|Selector18~0_combout\ : std_logic;
SIGNAL \inst1|Equal2~1_combout\ : std_logic;
SIGNAL \inst1|target[0]~3_combout\ : std_logic;
SIGNAL \inst1|Equal2~0_combout\ : std_logic;
SIGNAL \inst1|Equal2~4_combout\ : std_logic;
SIGNAL \inst1|process_1~3_combout\ : std_logic;
SIGNAL \inst1|process_1~2_combout\ : std_logic;
SIGNAL \inst1|target[9]~0_combout\ : std_logic;
SIGNAL \inst1|target[9]~11_combout\ : std_logic;
SIGNAL \inst1|Selector1~0_combout\ : std_logic;
SIGNAL \inst1|Equal1~6_combout\ : std_logic;
SIGNAL \inst1|Add1~2_combout\ : std_logic;
SIGNAL \inst1|Equal1~0_combout\ : std_logic;
SIGNAL \inst1|Equal1~3_combout\ : std_logic;
SIGNAL \inst1|Equal1~2_combout\ : std_logic;
SIGNAL \inst1|Equal1~4_combout\ : std_logic;
SIGNAL \inst1|Equal1~7_combout\ : std_logic;
SIGNAL \inst1|Selector1~1_combout\ : std_logic;
SIGNAL \inst1|Selector2~0_combout\ : std_logic;
SIGNAL \inst1|Equal3~5_combout\ : std_logic;
SIGNAL \inst1|Selector5~0_combout\ : std_logic;
SIGNAL \inst1|Selector16~0_combout\ : std_logic;
SIGNAL \inst1|Equal3~2_combout\ : std_logic;
SIGNAL \inst1|Selector4~0_combout\ : std_logic;
SIGNAL \inst1|Equal3~3_combout\ : std_logic;
SIGNAL \inst1|Selector8~0_combout\ : std_logic;
SIGNAL \inst1|Equal3~1_combout\ : std_logic;
SIGNAL \inst1|Equal3~4_combout\ : std_logic;
SIGNAL \inst1|Equal3~6_combout\ : std_logic;
SIGNAL \inst1|pre_step~13_combout\ : std_logic;
SIGNAL \inst1|Selector21~0_combout\ : std_logic;
SIGNAL \inst1|Add3~1\ : std_logic;
SIGNAL \inst1|Add3~3\ : std_logic;
SIGNAL \inst1|Add3~4_combout\ : std_logic;
SIGNAL \inst1|Selector19~0_combout\ : std_logic;
SIGNAL \inst1|Add3~5\ : std_logic;
SIGNAL \inst1|Add3~7\ : std_logic;
SIGNAL \inst1|Add3~8_combout\ : std_logic;
SIGNAL \inst1|Selector17~0_combout\ : std_logic;
SIGNAL \inst1|Add3~9\ : std_logic;
SIGNAL \inst1|Add3~11\ : std_logic;
SIGNAL \inst1|Add3~12_combout\ : std_logic;
SIGNAL \inst1|Selector15~0_combout\ : std_logic;
SIGNAL \inst1|Add3~13\ : std_logic;
SIGNAL \inst1|Add3~14_combout\ : std_logic;
SIGNAL \inst1|Selector14~0_combout\ : std_logic;
SIGNAL \inst1|Add3~15\ : std_logic;
SIGNAL \inst1|Add3~17\ : std_logic;
SIGNAL \inst1|Add3~19\ : std_logic;
SIGNAL \inst1|Add3~20_combout\ : std_logic;
SIGNAL \inst1|Selector11~0_combout\ : std_logic;
SIGNAL \inst1|Equal2~6_combout\ : std_logic;
SIGNAL \inst1|target[0]~1_combout\ : std_logic;
SIGNAL \inst1|target[10]~12_combout\ : std_logic;
SIGNAL \inst1|Add1~19\ : std_logic;
SIGNAL \inst1|Add1~21\ : std_logic;
SIGNAL \inst1|Add1~22_combout\ : std_logic;
SIGNAL \inst1|Selector31~3_combout\ : std_logic;
SIGNAL \inst1|Selector38~0_combout\ : std_logic;
SIGNAL \inst1|en~q\ : std_logic;
SIGNAL \inst4|state~17_combout\ : std_logic;
SIGNAL \inst4|Selector9~2_combout\ : std_logic;
SIGNAL \inst4|Selector9~4_combout\ : std_logic;
SIGNAL \inst4|state.s3~q\ : std_logic;
SIGNAL \inst4|Selector8~0_combout\ : std_logic;
SIGNAL \inst4|Selector7~5_combout\ : std_logic;
SIGNAL \inst4|state.s1~q\ : std_logic;
SIGNAL \inst4|Selector4~10_combout\ : std_logic;
SIGNAL \inst3|count2[0]~27\ : std_logic;
SIGNAL \inst3|count2[1]~28_combout\ : std_logic;
SIGNAL \din2~input_o\ : std_logic;
SIGNAL \din3~input_o\ : std_logic;
SIGNAL \din1~input_o\ : std_logic;
SIGNAL \dinb~input_o\ : std_logic;
SIGNAL \dinc~input_o\ : std_logic;
SIGNAL \dind~input_o\ : std_logic;
SIGNAL \inst3|dou2~0_combout\ : std_logic;
SIGNAL \inst3|dou2~1_combout\ : std_logic;
SIGNAL \inst3|count2[1]~29\ : std_logic;
SIGNAL \inst3|count2[2]~31\ : std_logic;
SIGNAL \inst3|count2[3]~33\ : std_logic;
SIGNAL \inst3|count2[4]~34_combout\ : std_logic;
SIGNAL \inst3|count2[4]~35\ : std_logic;
SIGNAL \inst3|count2[5]~36_combout\ : std_logic;
SIGNAL \inst3|count2[5]~37\ : std_logic;
SIGNAL \inst3|count2[6]~38_combout\ : std_logic;
SIGNAL \inst3|count2[6]~39\ : std_logic;
SIGNAL \inst3|count2[7]~40_combout\ : std_logic;
SIGNAL \inst3|count2[7]~41\ : std_logic;
SIGNAL \inst3|count2[8]~43\ : std_logic;
SIGNAL \inst3|count2[9]~44_combout\ : std_logic;
SIGNAL \inst3|count2[9]~45\ : std_logic;
SIGNAL \inst3|count2[10]~47\ : std_logic;
SIGNAL \inst3|count2[11]~48_combout\ : std_logic;
SIGNAL \inst3|count2[11]~49\ : std_logic;
SIGNAL \inst3|count2[12]~51\ : std_logic;
SIGNAL \inst3|count2[13]~52_combout\ : std_logic;
SIGNAL \inst3|count2[13]~53\ : std_logic;
SIGNAL \inst3|count2[14]~54_combout\ : std_logic;
SIGNAL \inst3|count2[14]~55\ : std_logic;
SIGNAL \inst3|count2[15]~56_combout\ : std_logic;
SIGNAL \inst3|count2[15]~57\ : std_logic;
SIGNAL \inst3|count2[16]~59\ : std_logic;
SIGNAL \inst3|count2[17]~60_combout\ : std_logic;
SIGNAL \inst3|count2[17]~61\ : std_logic;
SIGNAL \inst3|count2[18]~63\ : std_logic;
SIGNAL \inst3|count2[19]~65\ : std_logic;
SIGNAL \inst3|count2[20]~66_combout\ : std_logic;
SIGNAL \inst3|count2[20]~67\ : std_logic;
SIGNAL \inst3|count2[21]~68_combout\ : std_logic;
SIGNAL \inst3|count2[21]~69\ : std_logic;
SIGNAL \inst3|count2[22]~70_combout\ : std_logic;
SIGNAL \inst3|Equal1~6_combout\ : std_logic;
SIGNAL \inst3|count2[19]~64_combout\ : std_logic;
SIGNAL \inst3|count2[16]~58_combout\ : std_logic;
SIGNAL \inst3|Equal1~5_combout\ : std_logic;
SIGNAL \inst3|count2[22]~71\ : std_logic;
SIGNAL \inst3|count2[23]~72_combout\ : std_logic;
SIGNAL \inst3|count2[23]~73\ : std_logic;
SIGNAL \inst3|count2[24]~74_combout\ : std_logic;
SIGNAL \inst3|count2[24]~75\ : std_logic;
SIGNAL \inst3|count2[25]~76_combout\ : std_logic;
SIGNAL \inst3|Equal1~7_combout\ : std_logic;
SIGNAL \inst3|Equal1~8_combout\ : std_logic;
SIGNAL \inst3|dou2~feeder_combout\ : std_logic;
SIGNAL \inst3|dou2~q\ : std_logic;
SIGNAL \inst3|count1[0]~28\ : std_logic;
SIGNAL \inst3|count1[1]~29_combout\ : std_logic;
SIGNAL \inst3|count1[16]~26_combout\ : std_logic;
SIGNAL \inst3|count1[1]~30\ : std_logic;
SIGNAL \inst3|count1[2]~32\ : std_logic;
SIGNAL \inst3|count1[3]~34\ : std_logic;
SIGNAL \inst3|count1[4]~35_combout\ : std_logic;
SIGNAL \inst3|count1[4]~36\ : std_logic;
SIGNAL \inst3|count1[5]~37_combout\ : std_logic;
SIGNAL \inst3|count1[5]~38\ : std_logic;
SIGNAL \inst3|count1[6]~39_combout\ : std_logic;
SIGNAL \inst3|count1[6]~40\ : std_logic;
SIGNAL \inst3|count1[7]~41_combout\ : std_logic;
SIGNAL \inst3|count1[7]~42\ : std_logic;
SIGNAL \inst3|count1[8]~44\ : std_logic;
SIGNAL \inst3|count1[9]~45_combout\ : std_logic;
SIGNAL \inst3|count1[9]~46\ : std_logic;
SIGNAL \inst3|count1[10]~48\ : std_logic;
SIGNAL \inst3|count1[11]~49_combout\ : std_logic;
SIGNAL \inst3|count1[11]~50\ : std_logic;
SIGNAL \inst3|count1[12]~52\ : std_logic;
SIGNAL \inst3|count1[13]~53_combout\ : std_logic;
SIGNAL \inst3|count1[13]~54\ : std_logic;
SIGNAL \inst3|count1[14]~55_combout\ : std_logic;
SIGNAL \inst3|count1[14]~56\ : std_logic;
SIGNAL \inst3|count1[15]~57_combout\ : std_logic;
SIGNAL \inst3|count1[15]~58\ : std_logic;
SIGNAL \inst3|count1[16]~60\ : std_logic;
SIGNAL \inst3|count1[17]~61_combout\ : std_logic;
SIGNAL \inst3|count1[17]~62\ : std_logic;
SIGNAL \inst3|count1[18]~64\ : std_logic;
SIGNAL \inst3|count1[19]~66\ : std_logic;
SIGNAL \inst3|count1[20]~67_combout\ : std_logic;
SIGNAL \inst3|count1[20]~68\ : std_logic;
SIGNAL \inst3|count1[21]~69_combout\ : std_logic;
SIGNAL \inst3|count1[21]~70\ : std_logic;
SIGNAL \inst3|count1[22]~71_combout\ : std_logic;
SIGNAL \inst3|count1[22]~72\ : std_logic;
SIGNAL \inst3|count1[23]~73_combout\ : std_logic;
SIGNAL \inst3|count1[23]~74\ : std_logic;
SIGNAL \inst3|count1[24]~75_combout\ : std_logic;
SIGNAL \inst3|count1[24]~76\ : std_logic;
SIGNAL \inst3|count1[25]~77_combout\ : std_logic;
SIGNAL \inst3|Equal0~7_combout\ : std_logic;
SIGNAL \inst3|Equal0~6_combout\ : std_logic;
SIGNAL \inst3|count1[18]~63_combout\ : std_logic;
SIGNAL \inst3|count1[16]~59_combout\ : std_logic;
SIGNAL \inst3|Equal0~5_combout\ : std_logic;
SIGNAL \inst3|Equal0~8_combout\ : std_logic;
SIGNAL \inst3|dou1~feeder_combout\ : std_logic;
SIGNAL \inst3|dou1~q\ : std_logic;
SIGNAL \inst4|process_1~0_combout\ : std_logic;
SIGNAL \inst4|key_latch~1_combout\ : std_logic;
SIGNAL \inst4|key_latch~0_combout\ : std_logic;
SIGNAL \inst4|Equal0~0_combout\ : std_logic;
SIGNAL \inst3|countb[0]~27\ : std_logic;
SIGNAL \inst3|countb[1]~28_combout\ : std_logic;
SIGNAL \inst3|doub~0_combout\ : std_logic;
SIGNAL \inst3|countb[1]~29\ : std_logic;
SIGNAL \inst3|countb[2]~31\ : std_logic;
SIGNAL \inst3|countb[3]~33\ : std_logic;
SIGNAL \inst3|countb[4]~34_combout\ : std_logic;
SIGNAL \inst3|countb[4]~35\ : std_logic;
SIGNAL \inst3|countb[5]~36_combout\ : std_logic;
SIGNAL \inst3|countb[5]~37\ : std_logic;
SIGNAL \inst3|countb[6]~38_combout\ : std_logic;
SIGNAL \inst3|countb[6]~39\ : std_logic;
SIGNAL \inst3|countb[7]~40_combout\ : std_logic;
SIGNAL \inst3|countb[7]~41\ : std_logic;
SIGNAL \inst3|countb[8]~43\ : std_logic;
SIGNAL \inst3|countb[9]~44_combout\ : std_logic;
SIGNAL \inst3|countb[9]~45\ : std_logic;
SIGNAL \inst3|countb[10]~47\ : std_logic;
SIGNAL \inst3|countb[11]~48_combout\ : std_logic;
SIGNAL \inst3|countb[11]~49\ : std_logic;
SIGNAL \inst3|countb[12]~51\ : std_logic;
SIGNAL \inst3|countb[13]~52_combout\ : std_logic;
SIGNAL \inst3|countb[13]~53\ : std_logic;
SIGNAL \inst3|countb[14]~54_combout\ : std_logic;
SIGNAL \inst3|countb[14]~55\ : std_logic;
SIGNAL \inst3|countb[15]~56_combout\ : std_logic;
SIGNAL \inst3|countb[15]~57\ : std_logic;
SIGNAL \inst3|countb[16]~59\ : std_logic;
SIGNAL \inst3|countb[17]~60_combout\ : std_logic;
SIGNAL \inst3|countb[17]~61\ : std_logic;
SIGNAL \inst3|countb[18]~63\ : std_logic;
SIGNAL \inst3|countb[19]~65\ : std_logic;
SIGNAL \inst3|countb[20]~66_combout\ : std_logic;
SIGNAL \inst3|countb[20]~67\ : std_logic;
SIGNAL \inst3|countb[21]~68_combout\ : std_logic;
SIGNAL \inst3|countb[21]~69\ : std_logic;
SIGNAL \inst3|countb[22]~70_combout\ : std_logic;
SIGNAL \inst3|countb[22]~71\ : std_logic;
SIGNAL \inst3|countb[23]~72_combout\ : std_logic;
SIGNAL \inst3|Equal4~6_combout\ : std_logic;
SIGNAL \inst3|countb[23]~73\ : std_logic;
SIGNAL \inst3|countb[24]~74_combout\ : std_logic;
SIGNAL \inst3|countb[24]~75\ : std_logic;
SIGNAL \inst3|countb[25]~76_combout\ : std_logic;
SIGNAL \inst3|Equal4~7_combout\ : std_logic;
SIGNAL \inst3|countb[19]~64_combout\ : std_logic;
SIGNAL \inst3|countb[16]~58_combout\ : std_logic;
SIGNAL \inst3|Equal4~5_combout\ : std_logic;
SIGNAL \inst3|Equal4~8_combout\ : std_logic;
SIGNAL \inst3|doub~feeder_combout\ : std_logic;
SIGNAL \inst3|doub~q\ : std_logic;
SIGNAL \inst4|up_latch~0_combout\ : std_logic;
SIGNAL \inst4|Selector6~4_combout\ : std_logic;
SIGNAL \inst3|countd[0]~27\ : std_logic;
SIGNAL \inst3|countd[1]~28_combout\ : std_logic;
SIGNAL \dina~input_o\ : std_logic;
SIGNAL \inst3|doud~0_combout\ : std_logic;
SIGNAL \inst3|doud~1_combout\ : std_logic;
SIGNAL \inst3|countd[1]~29\ : std_logic;
SIGNAL \inst3|countd[2]~31\ : std_logic;
SIGNAL \inst3|countd[3]~33\ : std_logic;
SIGNAL \inst3|countd[4]~34_combout\ : std_logic;
SIGNAL \inst3|countd[4]~35\ : std_logic;
SIGNAL \inst3|countd[5]~36_combout\ : std_logic;
SIGNAL \inst3|countd[5]~37\ : std_logic;
SIGNAL \inst3|countd[6]~38_combout\ : std_logic;
SIGNAL \inst3|countd[6]~39\ : std_logic;
SIGNAL \inst3|countd[7]~40_combout\ : std_logic;
SIGNAL \inst3|countd[7]~41\ : std_logic;
SIGNAL \inst3|countd[8]~43\ : std_logic;
SIGNAL \inst3|countd[9]~44_combout\ : std_logic;
SIGNAL \inst3|countd[9]~45\ : std_logic;
SIGNAL \inst3|countd[10]~47\ : std_logic;
SIGNAL \inst3|countd[11]~48_combout\ : std_logic;
SIGNAL \inst3|countd[11]~49\ : std_logic;
SIGNAL \inst3|countd[12]~51\ : std_logic;
SIGNAL \inst3|countd[13]~52_combout\ : std_logic;
SIGNAL \inst3|countd[13]~53\ : std_logic;
SIGNAL \inst3|countd[14]~54_combout\ : std_logic;
SIGNAL \inst3|countd[14]~55\ : std_logic;
SIGNAL \inst3|countd[15]~56_combout\ : std_logic;
SIGNAL \inst3|countd[15]~57\ : std_logic;
SIGNAL \inst3|countd[16]~59\ : std_logic;
SIGNAL \inst3|countd[17]~60_combout\ : std_logic;
SIGNAL \inst3|countd[17]~61\ : std_logic;
SIGNAL \inst3|countd[18]~63\ : std_logic;
SIGNAL \inst3|countd[19]~65\ : std_logic;
SIGNAL \inst3|countd[20]~66_combout\ : std_logic;
SIGNAL \inst3|countd[20]~67\ : std_logic;
SIGNAL \inst3|countd[21]~68_combout\ : std_logic;
SIGNAL \inst3|countd[21]~69\ : std_logic;
SIGNAL \inst3|countd[22]~70_combout\ : std_logic;
SIGNAL \inst3|countd[22]~71\ : std_logic;
SIGNAL \inst3|countd[23]~72_combout\ : std_logic;
SIGNAL \inst3|Equal6~6_combout\ : std_logic;
SIGNAL \inst3|Equal6~1_combout\ : std_logic;
SIGNAL \inst3|countd[8]~42_combout\ : std_logic;
SIGNAL \inst3|Equal6~2_combout\ : std_logic;
SIGNAL \inst3|countd[3]~32_combout\ : std_logic;
SIGNAL \inst3|countd[0]~26_combout\ : std_logic;
SIGNAL \inst3|Equal6~0_combout\ : std_logic;
SIGNAL \inst3|Equal6~4_combout\ : std_logic;
SIGNAL \inst3|countd[19]~64_combout\ : std_logic;
SIGNAL \inst3|countd[16]~58_combout\ : std_logic;
SIGNAL \inst3|Equal6~5_combout\ : std_logic;
SIGNAL \inst3|Equal6~8_combout\ : std_logic;
SIGNAL \inst3|doud~feeder_combout\ : std_logic;
SIGNAL \inst3|doud~q\ : std_logic;
SIGNAL \inst4|process_1~1_combout\ : std_logic;
SIGNAL \inst4|down_latch~1_combout\ : std_logic;
SIGNAL \inst4|key_latch~2_combout\ : std_logic;
SIGNAL \inst4|process_2~1_combout\ : std_logic;
SIGNAL \inst4|state~19_combout\ : std_logic;
SIGNAL \inst4|up_latch~1_combout\ : std_logic;
SIGNAL \inst4|process_2~0_combout\ : std_logic;
SIGNAL \inst4|stop~6_combout\ : std_logic;
SIGNAL \inst4|stop~5_combout\ : std_logic;
SIGNAL \inst4|Selector6~5_combout\ : std_logic;
SIGNAL \inst4|Selector6~9_combout\ : std_logic;
SIGNAL \inst4|Selector6~6_combout\ : std_logic;
SIGNAL \inst4|Selector6~8_combout\ : std_logic;
SIGNAL \inst4|state.s0~q\ : std_logic;
SIGNAL \inst4|Selector3~0_combout\ : std_logic;
SIGNAL \inst4|Selector3~1_combout\ : std_logic;
SIGNAL \inst4|Selector3~4_combout\ : std_logic;
SIGNAL \inst4|stop~q\ : std_logic;
SIGNAL \inst4|Add1~34\ : std_logic;
SIGNAL \inst4|Add1~36\ : std_logic;
SIGNAL \inst4|Add1~38\ : std_logic;
SIGNAL \inst4|Add1~40\ : std_logic;
SIGNAL \inst4|Add1~42\ : std_logic;
SIGNAL \inst4|Add1~43_combout\ : std_logic;
SIGNAL \inst4|Add1~69_combout\ : std_logic;
SIGNAL \inst4|cnt[13]~0_combout\ : std_logic;
SIGNAL \inst4|Add1~44\ : std_logic;
SIGNAL \inst4|Add1~45_combout\ : std_logic;
SIGNAL \inst4|Add1~68_combout\ : std_logic;
SIGNAL \inst4|Add1~39_combout\ : std_logic;
SIGNAL \inst4|Add1~67_combout\ : std_logic;
SIGNAL \inst4|Equal2~4_combout\ : std_logic;
SIGNAL \inst4|Add1~4_combout\ : std_logic;
SIGNAL \inst4|Add1~0_combout\ : std_logic;
SIGNAL \inst4|Add1~80_combout\ : std_logic;
SIGNAL \inst4|Add1~1\ : std_logic;
SIGNAL \inst4|Add1~3\ : std_logic;
SIGNAL \inst4|Add1~5_combout\ : std_logic;
SIGNAL \inst4|Add1~62_combout\ : std_logic;
SIGNAL \inst4|Add1~6\ : std_logic;
SIGNAL \inst4|Add1~8\ : std_logic;
SIGNAL \inst4|Add1~10\ : std_logic;
SIGNAL \inst4|Add1~12\ : std_logic;
SIGNAL \inst4|Add1~13_combout\ : std_logic;
SIGNAL \inst4|Add1~79_combout\ : std_logic;
SIGNAL \inst4|Add1~14\ : std_logic;
SIGNAL \inst4|Add1~16\ : std_logic;
SIGNAL \inst4|Add1~18\ : std_logic;
SIGNAL \inst4|Add1~20\ : std_logic;
SIGNAL \inst4|Add1~21_combout\ : std_logic;
SIGNAL \inst4|Add1~64_combout\ : std_logic;
SIGNAL \inst4|Add1~17_combout\ : std_logic;
SIGNAL \inst4|Add1~63_combout\ : std_logic;
SIGNAL \inst4|Add1~65_combout\ : std_logic;
SIGNAL \inst4|Equal2~2_combout\ : std_logic;
SIGNAL \inst4|Add1~46\ : std_logic;
SIGNAL \inst4|Add1~47_combout\ : std_logic;
SIGNAL \inst4|Add1~58_combout\ : std_logic;
SIGNAL \inst4|Add1~48\ : std_logic;
SIGNAL \inst4|Add1~49_combout\ : std_logic;
SIGNAL \inst4|Add1~57_combout\ : std_logic;
SIGNAL \inst4|Add1~50\ : std_logic;
SIGNAL \inst4|Add1~52\ : std_logic;
SIGNAL \inst4|Add1~54_combout\ : std_logic;
SIGNAL \inst4|Add1~56_combout\ : std_logic;
SIGNAL \inst4|Equal2~0_combout\ : std_logic;
SIGNAL \inst4|Equal2~3_combout\ : std_logic;
SIGNAL \inst4|Add1~22\ : std_logic;
SIGNAL \inst4|Add1~23_combout\ : std_logic;
SIGNAL \inst4|Add1~76_combout\ : std_logic;
SIGNAL \inst4|Add1~24\ : std_logic;
SIGNAL \inst4|Add1~25_combout\ : std_logic;
SIGNAL \inst4|Add1~75_combout\ : std_logic;
SIGNAL \inst4|Add1~26\ : std_logic;
SIGNAL \inst4|Add1~27_combout\ : std_logic;
SIGNAL \inst4|Add1~78_combout\ : std_logic;
SIGNAL \inst4|Add1~28\ : std_logic;
SIGNAL \inst4|Add1~29_combout\ : std_logic;
SIGNAL \inst4|Add1~77_combout\ : std_logic;
SIGNAL \inst4|Equal2~6_combout\ : std_logic;
SIGNAL \inst4|Equal2~7_combout\ : std_logic;
SIGNAL \inst4|Equal2~8_combout\ : std_logic;
SIGNAL \inst4|Add1~74_combout\ : std_logic;
SIGNAL \inst4|Add1~30\ : std_logic;
SIGNAL \inst4|Add1~32\ : std_logic;
SIGNAL \inst4|Add1~33_combout\ : std_logic;
SIGNAL \inst4|Add1~73_combout\ : std_logic;
SIGNAL \inst4|Add1~35_combout\ : std_logic;
SIGNAL \inst4|Add1~71_combout\ : std_logic;
SIGNAL \inst4|LessThan0~6_combout\ : std_logic;
SIGNAL \inst4|Add1~7_combout\ : std_logic;
SIGNAL \inst4|Add1~61_combout\ : std_logic;
SIGNAL \inst4|Add1~60_combout\ : std_logic;
SIGNAL \inst4|Equal2~1_combout\ : std_logic;
SIGNAL \inst4|LessThan0~4_combout\ : std_logic;
SIGNAL \inst4|LessThan0~5_combout\ : std_logic;
SIGNAL \inst4|Add1~37_combout\ : std_logic;
SIGNAL \inst4|Add1~72_combout\ : std_logic;
SIGNAL \inst4|LessThan0~1_combout\ : std_logic;
SIGNAL \inst4|LessThan0~2_combout\ : std_logic;
SIGNAL \inst4|LessThan0~7_combout\ : std_logic;
SIGNAL \inst4|process_2~3_combout\ : std_logic;
SIGNAL \inst4|Selector4~12_combout\ : std_logic;
SIGNAL \inst4|floor~17_combout\ : std_logic;
SIGNAL \inst4|floor~28_combout\ : std_logic;
SIGNAL \inst4|floor~16_combout\ : std_logic;
SIGNAL \inst4|floor~18_combout\ : std_logic;
SIGNAL \inst4|Selector4~4_combout\ : std_logic;
SIGNAL \inst4|floor~13_combout\ : std_logic;
SIGNAL \inst4|floor~27_combout\ : std_logic;
SIGNAL \inst4|floor~14_combout\ : std_logic;
SIGNAL \inst4|process_2~2_combout\ : std_logic;
SIGNAL \inst4|floor~15_combout\ : std_logic;
SIGNAL \inst4|Selector4~2_combout\ : std_logic;
SIGNAL \inst4|Selector4~5_combout\ : std_logic;
SIGNAL \inst4|Selector4~8_combout\ : std_logic;
SIGNAL \inst4|Selector4~11_combout\ : std_logic;
SIGNAL \inst4|state~16_combout\ : std_logic;
SIGNAL \inst4|Selector5~6_combout\ : std_logic;
SIGNAL \inst4|Selector5~3_combout\ : std_logic;
SIGNAL \inst4|Selector5~0_combout\ : std_logic;
SIGNAL \inst4|floor~22_combout\ : std_logic;
SIGNAL \inst4|num~11_combout\ : std_logic;
SIGNAL \inst4|process_2~4_combout\ : std_logic;
SIGNAL \inst4|floor~19_combout\ : std_logic;
SIGNAL \inst4|floor~20_combout\ : std_logic;
SIGNAL \inst4|floor~29_combout\ : std_logic;
SIGNAL \inst4|floor~21_combout\ : std_logic;
SIGNAL \inst4|floor~23_combout\ : std_logic;
SIGNAL \inst4|Selector5~1_combout\ : std_logic;
SIGNAL \inst4|floor~24_combout\ : std_logic;
SIGNAL \inst4|floor~30_combout\ : std_logic;
SIGNAL \inst4|floor~25_combout\ : std_logic;
SIGNAL \inst4|floor~26_combout\ : std_logic;
SIGNAL \inst4|Selector5~2_combout\ : std_logic;
SIGNAL \inst4|Selector5~4_combout\ : std_logic;
SIGNAL \inst4|Selector5~5_combout\ : std_logic;
SIGNAL \inst4|Selector5~7_combout\ : std_logic;
SIGNAL \inst4|Selector4~3_combout\ : std_logic;
SIGNAL \inst4|down_latch~0_combout\ : std_logic;
SIGNAL \inst4|direction~3_combout\ : std_logic;
SIGNAL \inst4|Selector1~2_combout\ : std_logic;
SIGNAL \inst4|Selector1~3_combout\ : std_logic;
SIGNAL \inst4|Selector1~11_combout\ : std_logic;
SIGNAL \inst4|Selector1~12_combout\ : std_logic;
SIGNAL \inst4|Selector1~13_combout\ : std_logic;
SIGNAL \inst5|Mux0~0_combout\ : std_logic;
SIGNAL \inst4|Selector1~15_combout\ : std_logic;
SIGNAL \inst4|direction~1_combout\ : std_logic;
SIGNAL \inst5|Mux0~1_combout\ : std_logic;
SIGNAL \inst4|Selector1~7_combout\ : std_logic;
SIGNAL \inst4|Selector1~8_combout\ : std_logic;
SIGNAL \inst4|Selector1~4_combout\ : std_logic;
SIGNAL \inst4|Selector1~6_combout\ : std_logic;
SIGNAL \inst4|Selector1~10_combout\ : std_logic;
SIGNAL \inst4|Selector1~14_combout\ : std_logic;
SIGNAL \inst4|num~13_combout\ : std_logic;
SIGNAL \inst4|num~10_combout\ : std_logic;
SIGNAL \inst4|Selector8~1_combout\ : std_logic;
SIGNAL \inst4|Selector2~1_combout\ : std_logic;
SIGNAL \inst5|Mux0~2_combout\ : std_logic;
SIGNAL \inst4|Selector8~2_combout\ : std_logic;
SIGNAL \inst4|Selector8~4_combout\ : std_logic;
SIGNAL \inst4|state.s2~q\ : std_logic;
SIGNAL \inst4|Selector0~11_combout\ : std_logic;
SIGNAL \inst4|Selector0~8_combout\ : std_logic;
SIGNAL \inst4|direction~0_combout\ : std_logic;
SIGNAL \inst4|Selector0~9_combout\ : std_logic;
SIGNAL \inst4|Selector0~6_combout\ : std_logic;
SIGNAL \inst4|Selector0~4_combout\ : std_logic;
SIGNAL \inst4|Selector0~5_combout\ : std_logic;
SIGNAL \inst4|Selector0~7_combout\ : std_logic;
SIGNAL \inst4|Selector0~10_combout\ : std_logic;
SIGNAL \inst4|Selector0~12_combout\ : std_logic;
SIGNAL \inst4|num~12_combout\ : std_logic;
SIGNAL \inst4|Selector2~6_combout\ : std_logic;
SIGNAL \inst4|Selector2~4_combout\ : std_logic;
SIGNAL \inst4|Selector2~5_combout\ : std_logic;
SIGNAL \inst4|Selector2~0_combout\ : std_logic;
SIGNAL \inst4|Selector2~2_combout\ : std_logic;
SIGNAL \inst4|Selector2~3_combout\ : std_logic;
SIGNAL \inst4|Selector2~7_combout\ : std_logic;
SIGNAL \inst4|door~q\ : std_logic;
SIGNAL \inst16|data_24~20_combout\ : std_logic;
SIGNAL \inst16|Add0~0_combout\ : std_logic;
SIGNAL \inst16|Add0~2_combout\ : std_logic;
SIGNAL \inst16|Add0~1\ : std_logic;
SIGNAL \inst16|Add0~4\ : std_logic;
SIGNAL \inst16|Add0~6_combout\ : std_logic;
SIGNAL \inst16|Add0~8_combout\ : std_logic;
SIGNAL \inst16|Add0~7\ : std_logic;
SIGNAL \inst16|Add0~9_combout\ : std_logic;
SIGNAL \inst16|Add0~11_combout\ : std_logic;
SIGNAL \inst16|Add0~10\ : std_logic;
SIGNAL \inst16|Add0~12_combout\ : std_logic;
SIGNAL \inst16|Add0~14_combout\ : std_logic;
SIGNAL \inst16|Equal0~0_combout\ : std_logic;
SIGNAL \inst16|count[3]~0_combout\ : std_logic;
SIGNAL \inst16|count[3]~1_combout\ : std_logic;
SIGNAL \inst16|state~15_combout\ : std_logic;
SIGNAL \inst16|state.t2~q\ : std_logic;
SIGNAL \dout~input_o\ : std_logic;
SIGNAL \inst16|state~13_combout\ : std_logic;
SIGNAL \inst16|state.t0~q\ : std_logic;
SIGNAL \inst16|Selector30~0_combout\ : std_logic;
SIGNAL \inst16|state.t1~q\ : std_logic;
SIGNAL \inst16|state~14_combout\ : std_logic;
SIGNAL \inst16|state.t3~q\ : std_logic;
SIGNAL \inst16|data_24[7]~1_combout\ : std_logic;
SIGNAL \inst16|Selector5~0_combout\ : std_logic;
SIGNAL \inst16|state~12_combout\ : std_logic;
SIGNAL \inst16|Selector6~0_combout\ : std_logic;
SIGNAL \inst16|Selector6~1_combout\ : std_logic;
SIGNAL \inst16|data_24~22_combout\ : std_logic;
SIGNAL \inst16|Decoder0~15_combout\ : std_logic;
SIGNAL \inst16|Selector5~1_combout\ : std_logic;
SIGNAL \inst16|Selector5~2_combout\ : std_logic;
SIGNAL \inst16|data_24~21_combout\ : std_logic;
SIGNAL \inst16|Add0~3_combout\ : std_logic;
SIGNAL \inst16|Add0~5_combout\ : std_logic;
SIGNAL \inst16|Decoder0~12_combout\ : std_logic;
SIGNAL \inst16|Selector7~0_combout\ : std_logic;
SIGNAL \inst16|Selector7~1_combout\ : std_logic;
SIGNAL \inst16|data_24~23_combout\ : std_logic;
SIGNAL \inst16|LessThan0~6_combout\ : std_logic;
SIGNAL \inst16|Decoder0~5_combout\ : std_logic;
SIGNAL \inst16|Selector15~0_combout\ : std_logic;
SIGNAL \inst16|Selector14~0_combout\ : std_logic;
SIGNAL \inst16|Selector15~1_combout\ : std_logic;
SIGNAL \inst16|data_24~6_combout\ : std_logic;
SIGNAL \inst16|data_24~4_combout\ : std_logic;
SIGNAL \inst16|data_24~3_combout\ : std_logic;
SIGNAL \inst16|Decoder0~0_combout\ : std_logic;
SIGNAL \inst16|Selector10~0_combout\ : std_logic;
SIGNAL \inst16|Selector10~1_combout\ : std_logic;
SIGNAL \inst16|data_24~0_combout\ : std_logic;
SIGNAL \inst16|LessThan0~0_combout\ : std_logic;
SIGNAL \inst16|Selector20~0_combout\ : std_logic;
SIGNAL \inst16|Selector20~1_combout\ : std_logic;
SIGNAL \inst16|data_24~12_combout\ : std_logic;
SIGNAL \inst16|Decoder0~7_combout\ : std_logic;
SIGNAL \inst16|Selector16~0_combout\ : std_logic;
SIGNAL \inst16|Selector16~1_combout\ : std_logic;
SIGNAL \inst16|data_24~8_combout\ : std_logic;
SIGNAL \inst16|data_24~11_combout\ : std_logic;
SIGNAL \inst16|Decoder0~9_combout\ : std_logic;
SIGNAL \inst16|Selector18~0_combout\ : std_logic;
SIGNAL \inst16|Selector18~1_combout\ : std_logic;
SIGNAL \inst16|data_24~10_combout\ : std_logic;
SIGNAL \inst16|LessThan0~1_combout\ : std_logic;
SIGNAL \inst16|Selector21~0_combout\ : std_logic;
SIGNAL \inst16|Selector21~1_combout\ : std_logic;
SIGNAL \inst16|data_24~19_combout\ : std_logic;
SIGNAL \inst16|Decoder0~2_combout\ : std_logic;
SIGNAL \inst16|Selector28~1_combout\ : std_logic;
SIGNAL \inst16|data_24~14_combout\ : std_logic;
SIGNAL \inst16|Decoder0~14_combout\ : std_logic;
SIGNAL \inst16|Selector25~0_combout\ : std_logic;
SIGNAL \inst16|Selector25~1_combout\ : std_logic;
SIGNAL \inst16|data_24~16_combout\ : std_logic;
SIGNAL \inst16|Selector26~1_combout\ : std_logic;
SIGNAL \inst16|data_24~17_combout\ : std_logic;
SIGNAL \inst16|Decoder0~1_combout\ : std_logic;
SIGNAL \inst16|Selector27~1_combout\ : std_logic;
SIGNAL \inst16|data_24~18_combout\ : std_logic;
SIGNAL \inst16|LessThan0~2_combout\ : std_logic;
SIGNAL \inst16|LessThan0~3_combout\ : std_logic;
SIGNAL \inst16|LessThan0~4_combout\ : std_logic;
SIGNAL \inst16|LessThan0~5_combout\ : std_logic;
SIGNAL \inst16|beep~0_combout\ : std_logic;
SIGNAL \inst16|beep~q\ : std_logic;
SIGNAL \inst16|pd_sck~0_combout\ : std_logic;
SIGNAL \inst16|pd_sck~q\ : std_logic;
SIGNAL \inst5|clk2~feeder_combout\ : std_logic;
SIGNAL \inst5|clk2~q\ : std_logic;
SIGNAL \inst5|clk2~clkctrl_outclk\ : std_logic;
SIGNAL \inst5|flag~0_combout\ : std_logic;
SIGNAL \inst5|flag~q\ : std_logic;
SIGNAL \inst5|sel1~feeder_combout\ : std_logic;
SIGNAL \inst5|sel1~q\ : std_logic;
SIGNAL \inst5|sel2~0_combout\ : std_logic;
SIGNAL \inst5|sel2~q\ : std_logic;
SIGNAL \inst7|count~6_combout\ : std_logic;
SIGNAL \inst7|count~8_combout\ : std_logic;
SIGNAL \inst7|Add0~9\ : std_logic;
SIGNAL \inst7|Add0~11\ : std_logic;
SIGNAL \inst7|Add0~12_combout\ : std_logic;
SIGNAL \inst7|Add0~13\ : std_logic;
SIGNAL \inst7|Add0~15\ : std_logic;
SIGNAL \inst7|Add0~16_combout\ : std_logic;
SIGNAL \inst7|Add0~17\ : std_logic;
SIGNAL \inst7|Add0~19\ : std_logic;
SIGNAL \inst7|Add0~21\ : std_logic;
SIGNAL \inst7|Add0~22_combout\ : std_logic;
SIGNAL \inst7|count~7_combout\ : std_logic;
SIGNAL \inst7|Add0~18_combout\ : std_logic;
SIGNAL \inst7|Add0~20_combout\ : std_logic;
SIGNAL \inst7|count~2_combout\ : std_logic;
SIGNAL \inst7|count~3_combout\ : std_logic;
SIGNAL \inst7|Add0~1\ : std_logic;
SIGNAL \inst7|Add0~3\ : std_logic;
SIGNAL \inst7|Add0~4_combout\ : std_logic;
SIGNAL \inst7|Add0~5\ : std_logic;
SIGNAL \inst7|Add0~6_combout\ : std_logic;
SIGNAL \inst7|count~4_combout\ : std_logic;
SIGNAL \inst7|Add0~7\ : std_logic;
SIGNAL \inst7|Add0~8_combout\ : std_logic;
SIGNAL \inst7|Add0~14_combout\ : std_logic;
SIGNAL \inst7|Equal0~1_combout\ : std_logic;
SIGNAL \inst7|count~0_combout\ : std_logic;
SIGNAL \inst7|count~1_combout\ : std_logic;
SIGNAL \inst7|Add0~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~0_combout\ : std_logic;
SIGNAL \inst7|Equal0~2_combout\ : std_logic;
SIGNAL \inst7|clk_s~0_combout\ : std_logic;
SIGNAL \inst7|clk_s~feeder_combout\ : std_logic;
SIGNAL \inst7|clk_s~q\ : std_logic;
SIGNAL \inst7|clk_s~clkctrl_outclk\ : std_logic;
SIGNAL \inst7|Add1~0_combout\ : std_logic;
SIGNAL \inst7|Add1~1\ : std_logic;
SIGNAL \inst7|Add1~3\ : std_logic;
SIGNAL \inst7|Add1~4_combout\ : std_logic;
SIGNAL \inst7|cnt~6_combout\ : std_logic;
SIGNAL \inst7|Add1~7\ : std_logic;
SIGNAL \inst7|Add1~8_combout\ : std_logic;
SIGNAL \inst7|Add1~9\ : std_logic;
SIGNAL \inst7|Add1~10_combout\ : std_logic;
SIGNAL \inst7|Add1~11\ : std_logic;
SIGNAL \inst7|Add1~12_combout\ : std_logic;
SIGNAL \inst7|Equal4~1_combout\ : std_logic;
SIGNAL \inst7|cnt~2_combout\ : std_logic;
SIGNAL \inst7|Add1~5\ : std_logic;
SIGNAL \inst7|Add1~6_combout\ : std_logic;
SIGNAL \inst7|Equal4~0_combout\ : std_logic;
SIGNAL \inst7|Selector1~1_combout\ : std_logic;
SIGNAL \inst7|Selector1~2_combout\ : std_logic;
SIGNAL \inst7|state.s1~q\ : std_logic;
SIGNAL \inst7|cnt~8_combout\ : std_logic;
SIGNAL \inst7|cnt~9_combout\ : std_logic;
SIGNAL \inst7|cnt~3_combout\ : std_logic;
SIGNAL \inst7|cnt~4_combout\ : std_logic;
SIGNAL \inst7|cnt~7_combout\ : std_logic;
SIGNAL \inst7|Mux0~19_combout\ : std_logic;
SIGNAL \inst7|state~7_combout\ : std_logic;
SIGNAL \inst7|Selector2~0_combout\ : std_logic;
SIGNAL \inst7|Selector2~1_combout\ : std_logic;
SIGNAL \inst7|state.s2~q\ : std_logic;
SIGNAL \inst7|Selector0~0_combout\ : std_logic;
SIGNAL \inst7|state.s0~q\ : std_logic;
SIGNAL \inst7|Mux0~22_combout\ : std_logic;
SIGNAL \inst7|Mux0~23_combout\ : std_logic;
SIGNAL \inst7|Mux0~20_combout\ : std_logic;
SIGNAL \inst7|Mux0~21_combout\ : std_logic;
SIGNAL \inst7|cnt~5_combout\ : std_logic;
SIGNAL \inst7|Mux0~16_combout\ : std_logic;
SIGNAL \inst7|Mux0~17_combout\ : std_logic;
SIGNAL \inst7|process_1~0_combout\ : std_logic;
SIGNAL \inst7|process_1~1_combout\ : std_logic;
SIGNAL \inst7|data~0_combout\ : std_logic;
SIGNAL \inst7|Mux0~6_combout\ : std_logic;
SIGNAL \inst7|Mux0~7_combout\ : std_logic;
SIGNAL \inst7|Mux0~4_combout\ : std_logic;
SIGNAL \inst7|Mux0~5_combout\ : std_logic;
SIGNAL \inst7|Mux0~8_combout\ : std_logic;
SIGNAL \inst7|data~1_combout\ : std_logic;
SIGNAL \inst7|Mux0~9_combout\ : std_logic;
SIGNAL \busy~input_o\ : std_logic;
SIGNAL \inst7|state~8_combout\ : std_logic;
SIGNAL \inst7|Mux0~11_combout\ : std_logic;
SIGNAL \inst7|Mux0~12_combout\ : std_logic;
SIGNAL \inst7|Mux0~10_combout\ : std_logic;
SIGNAL \inst7|Mux0~13_combout\ : std_logic;
SIGNAL \inst7|Mux0~14_combout\ : std_logic;
SIGNAL \inst7|Mux0~15_combout\ : std_logic;
SIGNAL \inst7|Mux0~18_combout\ : std_logic;
SIGNAL \inst7|txd~0_combout\ : std_logic;
SIGNAL \inst7|txd~q\ : std_logic;
SIGNAL \inst7|led~0_combout\ : std_logic;
SIGNAL \inst7|led~q\ : std_logic;
SIGNAL \inst5|y~0_combout\ : std_logic;
SIGNAL \inst5|y~1_combout\ : std_logic;
SIGNAL \inst5|y~2_combout\ : std_logic;
SIGNAL \inst5|y~3_combout\ : std_logic;
SIGNAL \inst5|y~4_combout\ : std_logic;
SIGNAL \inst5|y~5_combout\ : std_logic;
SIGNAL \inst5|y~6_combout\ : std_logic;
SIGNAL \inst1|Selector23~0_combout\ : std_logic;
SIGNAL \inst1|pre_step.s1~q\ : std_logic;
SIGNAL \inst1|Selector35~0_combout\ : std_logic;
SIGNAL \inst1|Selector35~1_combout\ : std_logic;
SIGNAL \inst1|direction.d0~q\ : std_logic;
SIGNAL \inst1|Selector22~0_combout\ : std_logic;
SIGNAL \inst1|pre_step.s0~q\ : std_logic;
SIGNAL \inst1|Selector57~0_combout\ : std_logic;
SIGNAL \inst1|Selector57~1_combout\ : std_logic;
SIGNAL \inst1|Selector30~0_combout\ : std_logic;
SIGNAL \inst1|pre_step.s8~q\ : std_logic;
SIGNAL \inst1|Selector26~0_combout\ : std_logic;
SIGNAL \inst1|pre_step.s4~q\ : std_logic;
SIGNAL \inst1|Selector54~0_combout\ : std_logic;
SIGNAL \inst1|Selector27~0_combout\ : std_logic;
SIGNAL \inst1|pre_step.s5~q\ : std_logic;
SIGNAL \inst1|Selector55~0_combout\ : std_logic;
SIGNAL \inst1|Selector28~0_combout\ : std_logic;
SIGNAL \inst1|pre_step.s6~q\ : std_logic;
SIGNAL \inst1|Selector56~0_combout\ : std_logic;
SIGNAL \inst1|Selector29~0_combout\ : std_logic;
SIGNAL \inst1|pre_step.s7~q\ : std_logic;
SIGNAL \inst1|WideOr0~0_combout\ : std_logic;
SIGNAL \inst1|WideOr1~0_combout\ : std_logic;
SIGNAL \inst1|Selector24~0_combout\ : std_logic;
SIGNAL \inst1|pre_step.s2~q\ : std_logic;
SIGNAL \inst1|Selector25~0_combout\ : std_logic;
SIGNAL \inst1|pre_step.s3~q\ : std_logic;
SIGNAL \inst1|WideOr2~0_combout\ : std_logic;
SIGNAL \inst1|WideOr3~0_combout\ : std_logic;
SIGNAL \inst7|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst7|count\ : std_logic_vector(11 DOWNTO 0);
SIGNAL \inst7|data\ : std_logic_vector(99 DOWNTO 0);
SIGNAL \inst5|cnt\ : std_logic_vector(17 DOWNTO 0);
SIGNAL \inst5|y\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst3|count1\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst3|count2\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst3|count3\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst3|counta\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst3|countb\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst3|countc\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst3|countd\ : std_logic_vector(25 DOWNTO 0);
SIGNAL \inst17|cnt\ : std_logic_vector(15 DOWNTO 0);
SIGNAL \inst1|count\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|delay\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|mark\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst1|target\ : std_logic_vector(10 DOWNTO 0);
SIGNAL \inst4|cnt\ : std_logic_vector(26 DOWNTO 0);
SIGNAL \inst4|direction\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|down_latch\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|floor\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|key_latch\ : std_logic_vector(2 DOWNTO 0);
SIGNAL \inst4|num\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst4|up_latch\ : std_logic_vector(1 DOWNTO 0);
SIGNAL \inst|cnt\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \inst16|count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \inst16|data\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst16|data_24\ : std_logic_vector(23 DOWNTO 0);
SIGNAL \inst16|ALT_INV_beep~q\ : std_logic;
SIGNAL \inst5|ALT_INV_sel2~q\ : std_logic;
SIGNAL \inst7|ALT_INV_txd~q\ : std_logic;
SIGNAL \inst7|ALT_INV_led~q\ : std_logic;
SIGNAL \inst4|ALT_INV_door~q\ : std_logic;
SIGNAL \inst7|ALT_INV_state.s0~q\ : std_logic;

BEGIN

beep <= ww_beep;
ww_clk <= clk;
ww_rst <= rst;
ww_key_open <= key_open;
ww_key_close <= key_close;
ww_din1 <= din1;
ww_din2 <= din2;
ww_din3 <= din3;
ww_dina <= dina;
ww_dinb <= dinb;
ww_dinc <= dinc;
ww_dind <= dind;
ww_dout <= dout;
pdsck <= ww_pdsck;
sel1 <= ww_sel1;
sel2 <= ww_sel2;
txd <= ww_txd;
ww_busy <= busy;
ww_rxd <= rxd;
led <= ww_led;
Q <= ww_Q;
y <= ww_y;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\inst5|clk2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst5|clk2~q\);

\inst|y~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst|y~q\);

\inst7|clk_s~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst7|clk_s~q\);

\inst17|y~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \inst17|y~q\);

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);
\inst16|ALT_INV_beep~q\ <= NOT \inst16|beep~q\;
\inst5|ALT_INV_sel2~q\ <= NOT \inst5|sel2~q\;
\inst7|ALT_INV_txd~q\ <= NOT \inst7|txd~q\;
\inst7|ALT_INV_led~q\ <= NOT \inst7|led~q\;
\inst4|ALT_INV_door~q\ <= NOT \inst4|door~q\;
\inst7|ALT_INV_state.s0~q\ <= NOT \inst7|state.s0~q\;

-- Location: LCCOMB_X26_Y20_N0
\inst1|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~0_combout\ = \inst1|target\(0) $ (GND)
-- \inst1|Add1~1\ = CARRY(!\inst1|target\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(0),
	datad => VCC,
	combout => \inst1|Add1~0_combout\,
	cout => \inst1|Add1~1\);

-- Location: LCCOMB_X26_Y20_N4
\inst1|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~4_combout\ = (\inst1|target\(2) & ((GND) # (!\inst1|Add1~3\))) # (!\inst1|target\(2) & (\inst1|Add1~3\ $ (GND)))
-- \inst1|Add1~5\ = CARRY((\inst1|target\(2)) # (!\inst1|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(2),
	datad => VCC,
	cin => \inst1|Add1~3\,
	combout => \inst1|Add1~4_combout\,
	cout => \inst1|Add1~5\);

-- Location: LCCOMB_X26_Y20_N6
\inst1|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~6_combout\ = (\inst1|target\(3) & (\inst1|Add1~5\ & VCC)) # (!\inst1|target\(3) & (!\inst1|Add1~5\))
-- \inst1|Add1~7\ = CARRY((!\inst1|target\(3) & !\inst1|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|target\(3),
	datad => VCC,
	cin => \inst1|Add1~5\,
	combout => \inst1|Add1~6_combout\,
	cout => \inst1|Add1~7\);

-- Location: LCCOMB_X26_Y20_N20
\inst1|Add1~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~20_combout\ = (\inst1|target\(10) & (\inst1|Add1~19\ $ (GND))) # (!\inst1|target\(10) & ((GND) # (!\inst1|Add1~19\)))
-- \inst1|Add1~21\ = CARRY((!\inst1|Add1~19\) # (!\inst1|target\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|target\(10),
	datad => VCC,
	cin => \inst1|Add1~19\,
	combout => \inst1|Add1~20_combout\,
	cout => \inst1|Add1~21\);

-- Location: FF_X21_Y21_N19
\inst16|data[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector11~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(17));

-- Location: FF_X21_Y21_N13
\inst16|data[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector12~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(16));

-- Location: FF_X21_Y21_N31
\inst16|data[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector13~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(15));

-- Location: FF_X22_Y18_N25
\inst16|data[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector14~2_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(14));

-- Location: FF_X23_Y18_N9
\inst16|data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector22~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(6));

-- Location: FF_X23_Y21_N19
\inst16|data[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector17~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(11));

-- Location: FF_X23_Y21_N31
\inst16|data[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector19~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(9));

-- Location: FF_X23_Y18_N27
\inst16|data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector23~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(5));

-- Location: FF_X23_Y20_N3
\inst16|data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector24~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(4));

-- Location: FF_X22_Y18_N31
\inst16|data[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector9~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(19));

-- Location: FF_X23_Y18_N25
\inst16|data[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector8~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(20));

-- Location: LCCOMB_X22_Y19_N12
\inst7|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~2_combout\ = (\inst7|cnt\(1) & (\inst7|Add1~1\ & VCC)) # (!\inst7|cnt\(1) & (!\inst7|Add1~1\))
-- \inst7|Add1~3\ = CARRY((!\inst7|cnt\(1) & !\inst7|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(1),
	datad => VCC,
	cin => \inst7|Add1~1\,
	combout => \inst7|Add1~2_combout\,
	cout => \inst7|Add1~3\);

-- Location: LCCOMB_X21_Y22_N2
\inst7|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~2_combout\ = (\inst7|count\(1) & (!\inst7|Add0~1\)) # (!\inst7|count\(1) & ((\inst7|Add0~1\) # (GND)))
-- \inst7|Add0~3\ = CARRY((!\inst7|Add0~1\) # (!\inst7|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|count\(1),
	datad => VCC,
	cin => \inst7|Add0~1\,
	combout => \inst7|Add0~2_combout\,
	cout => \inst7|Add0~3\);

-- Location: LCCOMB_X21_Y22_N10
\inst7|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~10_combout\ = (\inst7|count\(5) & (!\inst7|Add0~9\)) # (!\inst7|count\(5) & ((\inst7|Add0~9\) # (GND)))
-- \inst7|Add0~11\ = CARRY((!\inst7|Add0~9\) # (!\inst7|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|count\(5),
	datad => VCC,
	cin => \inst7|Add0~9\,
	combout => \inst7|Add0~10_combout\,
	cout => \inst7|Add0~11\);

-- Location: LCCOMB_X26_Y21_N6
\inst1|Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~2_combout\ = (\inst1|count\(1) & (!\inst1|Add3~1\)) # (!\inst1|count\(1) & ((\inst1|Add3~1\) # (GND)))
-- \inst1|Add3~3\ = CARRY((!\inst1|Add3~1\) # (!\inst1|count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datad => VCC,
	cin => \inst1|Add3~1\,
	combout => \inst1|Add3~2_combout\,
	cout => \inst1|Add3~3\);

-- Location: FF_X12_Y20_N1
\inst3|douc\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|douc~feeder_combout\,
	asdata => VCC,
	sload => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|douc~q\);

-- Location: FF_X8_Y21_N9
\inst3|doua\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|doua~feeder_combout\,
	asdata => VCC,
	sload => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|doua~q\);

-- Location: FF_X30_Y19_N9
\inst3|dou3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|dou3~feeder_combout\,
	asdata => VCC,
	sload => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|dou3~q\);

-- Location: LCCOMB_X2_Y8_N8
\inst|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~2_combout\ = (\inst|cnt\(1) & (!\inst|Add0~1\)) # (!\inst|cnt\(1) & ((\inst|Add0~1\) # (GND)))
-- \inst|Add0~3\ = CARRY((!\inst|Add0~1\) # (!\inst|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(1),
	datad => VCC,
	cin => \inst|Add0~1\,
	combout => \inst|Add0~2_combout\,
	cout => \inst|Add0~3\);

-- Location: LCCOMB_X2_Y8_N16
\inst|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~10_combout\ = (\inst|cnt\(5) & (!\inst|Add0~9\)) # (!\inst|cnt\(5) & ((\inst|Add0~9\) # (GND)))
-- \inst|Add0~11\ = CARRY((!\inst|Add0~9\) # (!\inst|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(5),
	datad => VCC,
	cin => \inst|Add0~9\,
	combout => \inst|Add0~10_combout\,
	cout => \inst|Add0~11\);

-- Location: LCCOMB_X2_Y8_N18
\inst|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~12_combout\ = \inst|cnt\(6) $ (!\inst|Add0~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(6),
	cin => \inst|Add0~11\,
	combout => \inst|Add0~12_combout\);

-- Location: LCCOMB_X19_Y14_N14
\inst5|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~0_combout\ = \inst5|cnt\(0) $ (VCC)
-- \inst5|Add0~1\ = CARRY(\inst5|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(0),
	datad => VCC,
	combout => \inst5|Add0~0_combout\,
	cout => \inst5|Add0~1\);

-- Location: LCCOMB_X19_Y14_N16
\inst5|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~2_combout\ = (\inst5|cnt\(1) & (!\inst5|Add0~1\)) # (!\inst5|cnt\(1) & ((\inst5|Add0~1\) # (GND)))
-- \inst5|Add0~3\ = CARRY((!\inst5|Add0~1\) # (!\inst5|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(1),
	datad => VCC,
	cin => \inst5|Add0~1\,
	combout => \inst5|Add0~2_combout\,
	cout => \inst5|Add0~3\);

-- Location: LCCOMB_X19_Y14_N18
\inst5|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~4_combout\ = (\inst5|cnt\(2) & (\inst5|Add0~3\ $ (GND))) # (!\inst5|cnt\(2) & (!\inst5|Add0~3\ & VCC))
-- \inst5|Add0~5\ = CARRY((\inst5|cnt\(2) & !\inst5|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(2),
	datad => VCC,
	cin => \inst5|Add0~3\,
	combout => \inst5|Add0~4_combout\,
	cout => \inst5|Add0~5\);

-- Location: LCCOMB_X19_Y14_N20
\inst5|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~6_combout\ = (\inst5|cnt\(3) & (!\inst5|Add0~5\)) # (!\inst5|cnt\(3) & ((\inst5|Add0~5\) # (GND)))
-- \inst5|Add0~7\ = CARRY((!\inst5|Add0~5\) # (!\inst5|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(3),
	datad => VCC,
	cin => \inst5|Add0~5\,
	combout => \inst5|Add0~6_combout\,
	cout => \inst5|Add0~7\);

-- Location: LCCOMB_X19_Y14_N22
\inst5|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~8_combout\ = (\inst5|cnt\(4) & (\inst5|Add0~7\ $ (GND))) # (!\inst5|cnt\(4) & (!\inst5|Add0~7\ & VCC))
-- \inst5|Add0~9\ = CARRY((\inst5|cnt\(4) & !\inst5|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(4),
	datad => VCC,
	cin => \inst5|Add0~7\,
	combout => \inst5|Add0~8_combout\,
	cout => \inst5|Add0~9\);

-- Location: LCCOMB_X19_Y14_N24
\inst5|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~10_combout\ = (\inst5|cnt\(5) & (!\inst5|Add0~9\)) # (!\inst5|cnt\(5) & ((\inst5|Add0~9\) # (GND)))
-- \inst5|Add0~11\ = CARRY((!\inst5|Add0~9\) # (!\inst5|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(5),
	datad => VCC,
	cin => \inst5|Add0~9\,
	combout => \inst5|Add0~10_combout\,
	cout => \inst5|Add0~11\);

-- Location: LCCOMB_X19_Y14_N26
\inst5|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~12_combout\ = (\inst5|cnt\(6) & (\inst5|Add0~11\ $ (GND))) # (!\inst5|cnt\(6) & (!\inst5|Add0~11\ & VCC))
-- \inst5|Add0~13\ = CARRY((\inst5|cnt\(6) & !\inst5|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(6),
	datad => VCC,
	cin => \inst5|Add0~11\,
	combout => \inst5|Add0~12_combout\,
	cout => \inst5|Add0~13\);

-- Location: LCCOMB_X19_Y14_N28
\inst5|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~14_combout\ = (\inst5|cnt\(7) & (!\inst5|Add0~13\)) # (!\inst5|cnt\(7) & ((\inst5|Add0~13\) # (GND)))
-- \inst5|Add0~15\ = CARRY((!\inst5|Add0~13\) # (!\inst5|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(7),
	datad => VCC,
	cin => \inst5|Add0~13\,
	combout => \inst5|Add0~14_combout\,
	cout => \inst5|Add0~15\);

-- Location: LCCOMB_X19_Y14_N30
\inst5|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~16_combout\ = (\inst5|cnt\(8) & (\inst5|Add0~15\ $ (GND))) # (!\inst5|cnt\(8) & (!\inst5|Add0~15\ & VCC))
-- \inst5|Add0~17\ = CARRY((\inst5|cnt\(8) & !\inst5|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(8),
	datad => VCC,
	cin => \inst5|Add0~15\,
	combout => \inst5|Add0~16_combout\,
	cout => \inst5|Add0~17\);

-- Location: LCCOMB_X19_Y13_N0
\inst5|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~18_combout\ = (\inst5|cnt\(9) & (!\inst5|Add0~17\)) # (!\inst5|cnt\(9) & ((\inst5|Add0~17\) # (GND)))
-- \inst5|Add0~19\ = CARRY((!\inst5|Add0~17\) # (!\inst5|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(9),
	datad => VCC,
	cin => \inst5|Add0~17\,
	combout => \inst5|Add0~18_combout\,
	cout => \inst5|Add0~19\);

-- Location: LCCOMB_X19_Y13_N2
\inst5|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~20_combout\ = (\inst5|cnt\(10) & (\inst5|Add0~19\ $ (GND))) # (!\inst5|cnt\(10) & (!\inst5|Add0~19\ & VCC))
-- \inst5|Add0~21\ = CARRY((\inst5|cnt\(10) & !\inst5|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(10),
	datad => VCC,
	cin => \inst5|Add0~19\,
	combout => \inst5|Add0~20_combout\,
	cout => \inst5|Add0~21\);

-- Location: LCCOMB_X19_Y13_N4
\inst5|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~22_combout\ = (\inst5|cnt\(11) & (!\inst5|Add0~21\)) # (!\inst5|cnt\(11) & ((\inst5|Add0~21\) # (GND)))
-- \inst5|Add0~23\ = CARRY((!\inst5|Add0~21\) # (!\inst5|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(11),
	datad => VCC,
	cin => \inst5|Add0~21\,
	combout => \inst5|Add0~22_combout\,
	cout => \inst5|Add0~23\);

-- Location: LCCOMB_X19_Y13_N6
\inst5|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~24_combout\ = (\inst5|cnt\(12) & (\inst5|Add0~23\ $ (GND))) # (!\inst5|cnt\(12) & (!\inst5|Add0~23\ & VCC))
-- \inst5|Add0~25\ = CARRY((\inst5|cnt\(12) & !\inst5|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(12),
	datad => VCC,
	cin => \inst5|Add0~23\,
	combout => \inst5|Add0~24_combout\,
	cout => \inst5|Add0~25\);

-- Location: LCCOMB_X19_Y13_N8
\inst5|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~26_combout\ = (\inst5|cnt\(13) & (!\inst5|Add0~25\)) # (!\inst5|cnt\(13) & ((\inst5|Add0~25\) # (GND)))
-- \inst5|Add0~27\ = CARRY((!\inst5|Add0~25\) # (!\inst5|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(13),
	datad => VCC,
	cin => \inst5|Add0~25\,
	combout => \inst5|Add0~26_combout\,
	cout => \inst5|Add0~27\);

-- Location: LCCOMB_X19_Y13_N10
\inst5|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~28_combout\ = (\inst5|cnt\(14) & (\inst5|Add0~27\ $ (GND))) # (!\inst5|cnt\(14) & (!\inst5|Add0~27\ & VCC))
-- \inst5|Add0~29\ = CARRY((\inst5|cnt\(14) & !\inst5|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(14),
	datad => VCC,
	cin => \inst5|Add0~27\,
	combout => \inst5|Add0~28_combout\,
	cout => \inst5|Add0~29\);

-- Location: LCCOMB_X19_Y13_N12
\inst5|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~30_combout\ = (\inst5|cnt\(15) & (!\inst5|Add0~29\)) # (!\inst5|cnt\(15) & ((\inst5|Add0~29\) # (GND)))
-- \inst5|Add0~31\ = CARRY((!\inst5|Add0~29\) # (!\inst5|cnt\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(15),
	datad => VCC,
	cin => \inst5|Add0~29\,
	combout => \inst5|Add0~30_combout\,
	cout => \inst5|Add0~31\);

-- Location: LCCOMB_X19_Y13_N14
\inst5|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~32_combout\ = (\inst5|cnt\(16) & (\inst5|Add0~31\ $ (GND))) # (!\inst5|cnt\(16) & (!\inst5|Add0~31\ & VCC))
-- \inst5|Add0~33\ = CARRY((\inst5|cnt\(16) & !\inst5|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst5|cnt\(16),
	datad => VCC,
	cin => \inst5|Add0~31\,
	combout => \inst5|Add0~32_combout\,
	cout => \inst5|Add0~33\);

-- Location: LCCOMB_X19_Y13_N16
\inst5|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Add0~34_combout\ = \inst5|cnt\(17) $ (\inst5|Add0~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(17),
	cin => \inst5|Add0~33\,
	combout => \inst5|Add0~34_combout\);

-- Location: LCCOMB_X23_Y16_N8
\inst4|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~2_combout\ = (\inst4|cnt\(1) & (\inst4|Add1~1\ & VCC)) # (!\inst4|cnt\(1) & (!\inst4|Add1~1\))
-- \inst4|Add1~3\ = CARRY((!\inst4|cnt\(1) & !\inst4|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(1),
	datad => VCC,
	cin => \inst4|Add1~1\,
	combout => \inst4|Add1~2_combout\,
	cout => \inst4|Add1~3\);

-- Location: LCCOMB_X23_Y16_N14
\inst4|Add1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~9_combout\ = (\inst4|cnt\(4) & ((GND) # (!\inst4|Add1~8\))) # (!\inst4|cnt\(4) & (\inst4|Add1~8\ $ (GND)))
-- \inst4|Add1~10\ = CARRY((\inst4|cnt\(4)) # (!\inst4|Add1~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(4),
	datad => VCC,
	cin => \inst4|Add1~8\,
	combout => \inst4|Add1~9_combout\,
	cout => \inst4|Add1~10\);

-- Location: LCCOMB_X23_Y16_N16
\inst4|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~11_combout\ = (\inst4|cnt\(5) & (\inst4|Add1~10\ & VCC)) # (!\inst4|cnt\(5) & (!\inst4|Add1~10\))
-- \inst4|Add1~12\ = CARRY((!\inst4|cnt\(5) & !\inst4|Add1~10\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(5),
	datad => VCC,
	cin => \inst4|Add1~10\,
	combout => \inst4|Add1~11_combout\,
	cout => \inst4|Add1~12\);

-- Location: LCCOMB_X23_Y16_N20
\inst4|Add1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~15_combout\ = (\inst4|cnt\(7) & (\inst4|Add1~14\ & VCC)) # (!\inst4|cnt\(7) & (!\inst4|Add1~14\))
-- \inst4|Add1~16\ = CARRY((!\inst4|cnt\(7) & !\inst4|Add1~14\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(7),
	datad => VCC,
	cin => \inst4|Add1~14\,
	combout => \inst4|Add1~15_combout\,
	cout => \inst4|Add1~16\);

-- Location: LCCOMB_X23_Y16_N24
\inst4|Add1~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~19_combout\ = (\inst4|cnt\(9) & (\inst4|Add1~18\ & VCC)) # (!\inst4|cnt\(9) & (!\inst4|Add1~18\))
-- \inst4|Add1~20\ = CARRY((!\inst4|cnt\(9) & !\inst4|Add1~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(9),
	datad => VCC,
	cin => \inst4|Add1~18\,
	combout => \inst4|Add1~19_combout\,
	cout => \inst4|Add1~20\);

-- Location: LCCOMB_X23_Y15_N4
\inst4|Add1~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~31_combout\ = (\inst4|cnt\(15) & (!\inst4|Add1~30\)) # (!\inst4|cnt\(15) & (\inst4|Add1~30\ & VCC))
-- \inst4|Add1~32\ = CARRY((\inst4|cnt\(15) & !\inst4|Add1~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(15),
	datad => VCC,
	cin => \inst4|Add1~30\,
	combout => \inst4|Add1~31_combout\,
	cout => \inst4|Add1~32\);

-- Location: LCCOMB_X23_Y15_N14
\inst4|Add1~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~41_combout\ = (\inst4|cnt\(20) & (\inst4|Add1~40\ $ (GND))) # (!\inst4|cnt\(20) & ((GND) # (!\inst4|Add1~40\)))
-- \inst4|Add1~42\ = CARRY((!\inst4|Add1~40\) # (!\inst4|cnt\(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(20),
	datad => VCC,
	cin => \inst4|Add1~40\,
	combout => \inst4|Add1~41_combout\,
	cout => \inst4|Add1~42\);

-- Location: LCCOMB_X23_Y15_N24
\inst4|Add1~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~51_combout\ = (\inst4|cnt\(25) & (\inst4|Add1~50\ & VCC)) # (!\inst4|cnt\(25) & (!\inst4|Add1~50\))
-- \inst4|Add1~52\ = CARRY((!\inst4|cnt\(25) & !\inst4|Add1~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(25),
	datad => VCC,
	cin => \inst4|Add1~50\,
	combout => \inst4|Add1~51_combout\,
	cout => \inst4|Add1~52\);

-- Location: LCCOMB_X26_Y17_N2
\inst1|Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~2_combout\ = (\inst1|delay\(2) & (!\inst1|Add2~1\)) # (!\inst1|delay\(2) & ((\inst1|Add2~1\) # (GND)))
-- \inst1|Add2~3\ = CARRY((!\inst1|Add2~1\) # (!\inst1|delay\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|delay\(2),
	datad => VCC,
	cin => \inst1|Add2~1\,
	combout => \inst1|Add2~2_combout\,
	cout => \inst1|Add2~3\);

-- Location: LCCOMB_X26_Y17_N10
\inst1|Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~10_combout\ = (\inst1|delay\(6) & (!\inst1|Add2~9\)) # (!\inst1|delay\(6) & ((\inst1|Add2~9\) # (GND)))
-- \inst1|Add2~11\ = CARRY((!\inst1|Add2~9\) # (!\inst1|delay\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|delay\(6),
	datad => VCC,
	cin => \inst1|Add2~9\,
	combout => \inst1|Add2~10_combout\,
	cout => \inst1|Add2~11\);

-- Location: LCCOMB_X26_Y17_N12
\inst1|Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~12_combout\ = (\inst1|delay\(7) & (\inst1|Add2~11\ $ (GND))) # (!\inst1|delay\(7) & (!\inst1|Add2~11\ & VCC))
-- \inst1|Add2~13\ = CARRY((\inst1|delay\(7) & !\inst1|Add2~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|delay\(7),
	datad => VCC,
	cin => \inst1|Add2~11\,
	combout => \inst1|Add2~12_combout\,
	cout => \inst1|Add2~13\);

-- Location: LCCOMB_X25_Y17_N10
\inst1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~2_combout\ = (\inst1|delay\(1) & (!\inst1|Add0~1\)) # (!\inst1|delay\(1) & ((\inst1|Add0~1\) # (GND)))
-- \inst1|Add0~3\ = CARRY((!\inst1|Add0~1\) # (!\inst1|delay\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|delay\(1),
	datad => VCC,
	cin => \inst1|Add0~1\,
	combout => \inst1|Add0~2_combout\,
	cout => \inst1|Add0~3\);

-- Location: LCCOMB_X25_Y17_N12
\inst1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~4_combout\ = (\inst1|delay\(2) & (\inst1|Add0~3\ $ (GND))) # (!\inst1|delay\(2) & (!\inst1|Add0~3\ & VCC))
-- \inst1|Add0~5\ = CARRY((\inst1|delay\(2) & !\inst1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|delay\(2),
	datad => VCC,
	cin => \inst1|Add0~3\,
	combout => \inst1|Add0~4_combout\,
	cout => \inst1|Add0~5\);

-- Location: LCCOMB_X25_Y17_N20
\inst1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~12_combout\ = (\inst1|delay\(6) & (\inst1|Add0~11\ $ (GND))) # (!\inst1|delay\(6) & (!\inst1|Add0~11\ & VCC))
-- \inst1|Add0~13\ = CARRY((\inst1|delay\(6) & !\inst1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|delay\(6),
	datad => VCC,
	cin => \inst1|Add0~11\,
	combout => \inst1|Add0~12_combout\,
	cout => \inst1|Add0~13\);

-- Location: LCCOMB_X25_Y17_N24
\inst1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~16_combout\ = (\inst1|delay\(8) & (\inst1|Add0~15\ $ (GND))) # (!\inst1|delay\(8) & (!\inst1|Add0~15\ & VCC))
-- \inst1|Add0~17\ = CARRY((\inst1|delay\(8) & !\inst1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|delay\(8),
	datad => VCC,
	cin => \inst1|Add0~15\,
	combout => \inst1|Add0~16_combout\,
	cout => \inst1|Add0~17\);

-- Location: LCCOMB_X25_Y17_N26
\inst1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~18_combout\ = (\inst1|delay\(9) & (!\inst1|Add0~17\)) # (!\inst1|delay\(9) & ((\inst1|Add0~17\) # (GND)))
-- \inst1|Add0~19\ = CARRY((!\inst1|Add0~17\) # (!\inst1|delay\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|delay\(9),
	datad => VCC,
	cin => \inst1|Add0~17\,
	combout => \inst1|Add0~18_combout\,
	cout => \inst1|Add0~19\);

-- Location: LCCOMB_X32_Y19_N0
\inst17|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Add0~0_combout\ = \inst17|cnt\(0) $ (VCC)
-- \inst17|Add0~1\ = CARRY(\inst17|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt\(0),
	datad => VCC,
	combout => \inst17|Add0~0_combout\,
	cout => \inst17|Add0~1\);

-- Location: LCCOMB_X32_Y19_N2
\inst17|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Add0~2_combout\ = (\inst17|cnt\(1) & (!\inst17|Add0~1\)) # (!\inst17|cnt\(1) & ((\inst17|Add0~1\) # (GND)))
-- \inst17|Add0~3\ = CARRY((!\inst17|Add0~1\) # (!\inst17|cnt\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt\(1),
	datad => VCC,
	cin => \inst17|Add0~1\,
	combout => \inst17|Add0~2_combout\,
	cout => \inst17|Add0~3\);

-- Location: LCCOMB_X32_Y19_N4
\inst17|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Add0~4_combout\ = (\inst17|cnt\(2) & (\inst17|Add0~3\ $ (GND))) # (!\inst17|cnt\(2) & (!\inst17|Add0~3\ & VCC))
-- \inst17|Add0~5\ = CARRY((\inst17|cnt\(2) & !\inst17|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt\(2),
	datad => VCC,
	cin => \inst17|Add0~3\,
	combout => \inst17|Add0~4_combout\,
	cout => \inst17|Add0~5\);

-- Location: LCCOMB_X32_Y19_N6
\inst17|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Add0~6_combout\ = (\inst17|cnt\(3) & (!\inst17|Add0~5\)) # (!\inst17|cnt\(3) & ((\inst17|Add0~5\) # (GND)))
-- \inst17|Add0~7\ = CARRY((!\inst17|Add0~5\) # (!\inst17|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt\(3),
	datad => VCC,
	cin => \inst17|Add0~5\,
	combout => \inst17|Add0~6_combout\,
	cout => \inst17|Add0~7\);

-- Location: LCCOMB_X32_Y19_N8
\inst17|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Add0~8_combout\ = (\inst17|cnt\(4) & (\inst17|Add0~7\ $ (GND))) # (!\inst17|cnt\(4) & (!\inst17|Add0~7\ & VCC))
-- \inst17|Add0~9\ = CARRY((\inst17|cnt\(4) & !\inst17|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt\(4),
	datad => VCC,
	cin => \inst17|Add0~7\,
	combout => \inst17|Add0~8_combout\,
	cout => \inst17|Add0~9\);

-- Location: LCCOMB_X32_Y19_N10
\inst17|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Add0~10_combout\ = (\inst17|cnt\(5) & (!\inst17|Add0~9\)) # (!\inst17|cnt\(5) & ((\inst17|Add0~9\) # (GND)))
-- \inst17|Add0~11\ = CARRY((!\inst17|Add0~9\) # (!\inst17|cnt\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt\(5),
	datad => VCC,
	cin => \inst17|Add0~9\,
	combout => \inst17|Add0~10_combout\,
	cout => \inst17|Add0~11\);

-- Location: LCCOMB_X32_Y19_N12
\inst17|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Add0~12_combout\ = (\inst17|cnt\(6) & (\inst17|Add0~11\ $ (GND))) # (!\inst17|cnt\(6) & (!\inst17|Add0~11\ & VCC))
-- \inst17|Add0~13\ = CARRY((\inst17|cnt\(6) & !\inst17|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt\(6),
	datad => VCC,
	cin => \inst17|Add0~11\,
	combout => \inst17|Add0~12_combout\,
	cout => \inst17|Add0~13\);

-- Location: LCCOMB_X32_Y19_N14
\inst17|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Add0~14_combout\ = (\inst17|cnt\(7) & (!\inst17|Add0~13\)) # (!\inst17|cnt\(7) & ((\inst17|Add0~13\) # (GND)))
-- \inst17|Add0~15\ = CARRY((!\inst17|Add0~13\) # (!\inst17|cnt\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt\(7),
	datad => VCC,
	cin => \inst17|Add0~13\,
	combout => \inst17|Add0~14_combout\,
	cout => \inst17|Add0~15\);

-- Location: LCCOMB_X32_Y19_N16
\inst17|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Add0~16_combout\ = (\inst17|cnt\(8) & (\inst17|Add0~15\ $ (GND))) # (!\inst17|cnt\(8) & (!\inst17|Add0~15\ & VCC))
-- \inst17|Add0~17\ = CARRY((\inst17|cnt\(8) & !\inst17|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt\(8),
	datad => VCC,
	cin => \inst17|Add0~15\,
	combout => \inst17|Add0~16_combout\,
	cout => \inst17|Add0~17\);

-- Location: LCCOMB_X32_Y19_N18
\inst17|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Add0~18_combout\ = (\inst17|cnt\(9) & (!\inst17|Add0~17\)) # (!\inst17|cnt\(9) & ((\inst17|Add0~17\) # (GND)))
-- \inst17|Add0~19\ = CARRY((!\inst17|Add0~17\) # (!\inst17|cnt\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt\(9),
	datad => VCC,
	cin => \inst17|Add0~17\,
	combout => \inst17|Add0~18_combout\,
	cout => \inst17|Add0~19\);

-- Location: LCCOMB_X32_Y19_N20
\inst17|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Add0~20_combout\ = (\inst17|cnt\(10) & (\inst17|Add0~19\ $ (GND))) # (!\inst17|cnt\(10) & (!\inst17|Add0~19\ & VCC))
-- \inst17|Add0~21\ = CARRY((\inst17|cnt\(10) & !\inst17|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt\(10),
	datad => VCC,
	cin => \inst17|Add0~19\,
	combout => \inst17|Add0~20_combout\,
	cout => \inst17|Add0~21\);

-- Location: LCCOMB_X32_Y19_N22
\inst17|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Add0~22_combout\ = (\inst17|cnt\(11) & (!\inst17|Add0~21\)) # (!\inst17|cnt\(11) & ((\inst17|Add0~21\) # (GND)))
-- \inst17|Add0~23\ = CARRY((!\inst17|Add0~21\) # (!\inst17|cnt\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt\(11),
	datad => VCC,
	cin => \inst17|Add0~21\,
	combout => \inst17|Add0~22_combout\,
	cout => \inst17|Add0~23\);

-- Location: LCCOMB_X32_Y19_N24
\inst17|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Add0~24_combout\ = (\inst17|cnt\(12) & (\inst17|Add0~23\ $ (GND))) # (!\inst17|cnt\(12) & (!\inst17|Add0~23\ & VCC))
-- \inst17|Add0~25\ = CARRY((\inst17|cnt\(12) & !\inst17|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst17|cnt\(12),
	datad => VCC,
	cin => \inst17|Add0~23\,
	combout => \inst17|Add0~24_combout\,
	cout => \inst17|Add0~25\);

-- Location: LCCOMB_X32_Y19_N26
\inst17|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Add0~26_combout\ = (\inst17|cnt\(13) & (!\inst17|Add0~25\)) # (!\inst17|cnt\(13) & ((\inst17|Add0~25\) # (GND)))
-- \inst17|Add0~27\ = CARRY((!\inst17|Add0~25\) # (!\inst17|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt\(13),
	datad => VCC,
	cin => \inst17|Add0~25\,
	combout => \inst17|Add0~26_combout\,
	cout => \inst17|Add0~27\);

-- Location: LCCOMB_X32_Y19_N28
\inst17|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Add0~28_combout\ = (\inst17|cnt\(14) & (\inst17|Add0~27\ $ (GND))) # (!\inst17|cnt\(14) & (!\inst17|Add0~27\ & VCC))
-- \inst17|Add0~29\ = CARRY((\inst17|cnt\(14) & !\inst17|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt\(14),
	datad => VCC,
	cin => \inst17|Add0~27\,
	combout => \inst17|Add0~28_combout\,
	cout => \inst17|Add0~29\);

-- Location: LCCOMB_X32_Y19_N30
\inst17|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Add0~30_combout\ = \inst17|Add0~29\ $ (\inst17|cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst17|cnt\(15),
	cin => \inst17|Add0~29\,
	combout => \inst17|Add0~30_combout\);

-- Location: FF_X24_Y19_N7
\inst3|count2[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[0]~26_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(0));

-- Location: FF_X24_Y19_N11
\inst3|count2[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[2]~30_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(2));

-- Location: FF_X24_Y19_N13
\inst3|count2[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[3]~32_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(3));

-- Location: FF_X24_Y19_N23
\inst3|count2[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[8]~42_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(8));

-- Location: FF_X24_Y19_N27
\inst3|count2[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[10]~46_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(10));

-- Location: FF_X24_Y19_N31
\inst3|count2[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[12]~50_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(12));

-- Location: FF_X24_Y18_N11
\inst3|count2[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[18]~62_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(18));

-- Location: FF_X12_Y22_N7
\inst3|countc[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[0]~26_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(0));

-- Location: FF_X12_Y22_N9
\inst3|countc[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[1]~28_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(1));

-- Location: FF_X12_Y22_N11
\inst3|countc[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[2]~30_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(2));

-- Location: FF_X12_Y22_N13
\inst3|countc[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[3]~32_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(3));

-- Location: FF_X12_Y22_N19
\inst3|countc[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[6]~38_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(6));

-- Location: FF_X12_Y22_N15
\inst3|countc[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[4]~34_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(4));

-- Location: FF_X12_Y22_N17
\inst3|countc[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[5]~36_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(5));

-- Location: FF_X12_Y22_N21
\inst3|countc[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[7]~40_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(7));

-- Location: FF_X12_Y22_N25
\inst3|countc[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[9]~44_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(9));

-- Location: FF_X12_Y22_N23
\inst3|countc[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[8]~42_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(8));

-- Location: FF_X12_Y22_N27
\inst3|countc[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[10]~46_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(10));

-- Location: FF_X12_Y22_N29
\inst3|countc[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[11]~48_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(11));

-- Location: FF_X12_Y21_N3
\inst3|countc[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[14]~54_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(14));

-- Location: FF_X12_Y22_N31
\inst3|countc[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[12]~50_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(12));

-- Location: FF_X12_Y21_N1
\inst3|countc[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[13]~52_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(13));

-- Location: FF_X12_Y21_N5
\inst3|countc[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[15]~56_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(15));

-- Location: FF_X12_Y21_N7
\inst3|countc[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[16]~58_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(16));

-- Location: FF_X12_Y21_N9
\inst3|countc[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[17]~60_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(17));

-- Location: FF_X12_Y21_N11
\inst3|countc[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[18]~62_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(18));

-- Location: FF_X12_Y21_N13
\inst3|countc[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[19]~64_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(19));

-- Location: FF_X12_Y21_N15
\inst3|countc[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[20]~66_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(20));

-- Location: FF_X12_Y21_N17
\inst3|countc[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[21]~68_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(21));

-- Location: FF_X12_Y21_N19
\inst3|countc[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[22]~70_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(22));

-- Location: FF_X12_Y21_N21
\inst3|countc[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[23]~72_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(23));

-- Location: FF_X12_Y21_N23
\inst3|countc[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[24]~74_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(24));

-- Location: FF_X12_Y21_N25
\inst3|countc[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countc[25]~76_combout\,
	sclr => \dinc~input_o\,
	ena => \inst3|douc~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countc\(25));

-- Location: FF_X13_Y22_N7
\inst3|countb[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[0]~26_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(0));

-- Location: FF_X13_Y22_N11
\inst3|countb[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[2]~30_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(2));

-- Location: FF_X13_Y22_N13
\inst3|countb[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[3]~32_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(3));

-- Location: FF_X13_Y22_N23
\inst3|countb[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[8]~42_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(8));

-- Location: FF_X13_Y22_N27
\inst3|countb[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[10]~46_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(10));

-- Location: FF_X13_Y22_N31
\inst3|countb[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[12]~50_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(12));

-- Location: FF_X13_Y21_N11
\inst3|countb[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[18]~62_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(18));

-- Location: FF_X7_Y22_N7
\inst3|count1[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[0]~27_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(0));

-- Location: FF_X7_Y22_N11
\inst3|count1[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[2]~31_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(2));

-- Location: FF_X7_Y22_N13
\inst3|count1[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[3]~33_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(3));

-- Location: FF_X7_Y22_N23
\inst3|count1[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[8]~43_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(8));

-- Location: FF_X7_Y22_N27
\inst3|count1[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[10]~47_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(10));

-- Location: FF_X7_Y22_N31
\inst3|count1[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[12]~51_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(12));

-- Location: FF_X7_Y21_N13
\inst3|count1[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[19]~65_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(19));

-- Location: FF_X9_Y22_N7
\inst3|counta[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[0]~26_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(0));

-- Location: FF_X9_Y22_N9
\inst3|counta[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[1]~28_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(1));

-- Location: FF_X9_Y22_N11
\inst3|counta[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[2]~30_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(2));

-- Location: FF_X9_Y22_N13
\inst3|counta[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[3]~32_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(3));

-- Location: FF_X9_Y22_N19
\inst3|counta[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[6]~38_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(6));

-- Location: FF_X9_Y22_N15
\inst3|counta[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[4]~34_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(4));

-- Location: FF_X9_Y22_N17
\inst3|counta[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[5]~36_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(5));

-- Location: FF_X9_Y22_N21
\inst3|counta[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[7]~40_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(7));

-- Location: FF_X9_Y22_N25
\inst3|counta[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[9]~44_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(9));

-- Location: FF_X9_Y22_N23
\inst3|counta[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[8]~42_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(8));

-- Location: FF_X9_Y22_N27
\inst3|counta[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[10]~46_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(10));

-- Location: FF_X9_Y22_N29
\inst3|counta[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[11]~48_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(11));

-- Location: FF_X9_Y21_N3
\inst3|counta[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[14]~54_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(14));

-- Location: FF_X9_Y22_N31
\inst3|counta[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[12]~50_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(12));

-- Location: FF_X9_Y21_N1
\inst3|counta[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[13]~52_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(13));

-- Location: FF_X9_Y21_N5
\inst3|counta[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[15]~56_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(15));

-- Location: FF_X9_Y21_N7
\inst3|counta[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[16]~58_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(16));

-- Location: FF_X9_Y21_N9
\inst3|counta[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[17]~60_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(17));

-- Location: FF_X9_Y21_N11
\inst3|counta[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[18]~62_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(18));

-- Location: FF_X9_Y21_N13
\inst3|counta[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[19]~64_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(19));

-- Location: FF_X9_Y21_N15
\inst3|counta[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[20]~66_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(20));

-- Location: FF_X9_Y21_N17
\inst3|counta[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[21]~68_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(21));

-- Location: FF_X9_Y21_N19
\inst3|counta[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[22]~70_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(22));

-- Location: FF_X9_Y21_N21
\inst3|counta[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[23]~72_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(23));

-- Location: FF_X9_Y21_N23
\inst3|counta[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[24]~74_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(24));

-- Location: FF_X9_Y21_N25
\inst3|counta[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|counta[25]~76_combout\,
	sclr => \dina~input_o\,
	ena => \inst3|doua~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|counta\(25));

-- Location: FF_X29_Y20_N7
\inst3|count3[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[0]~26_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(0));

-- Location: FF_X29_Y20_N9
\inst3|count3[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[1]~28_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(1));

-- Location: FF_X29_Y20_N11
\inst3|count3[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[2]~30_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(2));

-- Location: FF_X29_Y20_N13
\inst3|count3[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[3]~32_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(3));

-- Location: FF_X29_Y20_N19
\inst3|count3[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[6]~38_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(6));

-- Location: FF_X29_Y20_N15
\inst3|count3[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[4]~34_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(4));

-- Location: FF_X29_Y20_N17
\inst3|count3[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[5]~36_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(5));

-- Location: FF_X29_Y20_N21
\inst3|count3[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[7]~40_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(7));

-- Location: FF_X29_Y20_N25
\inst3|count3[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[9]~44_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(9));

-- Location: FF_X29_Y20_N23
\inst3|count3[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[8]~42_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(8));

-- Location: FF_X29_Y20_N27
\inst3|count3[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[10]~46_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(10));

-- Location: FF_X29_Y20_N29
\inst3|count3[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[11]~48_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(11));

-- Location: FF_X29_Y19_N3
\inst3|count3[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[14]~54_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(14));

-- Location: FF_X29_Y20_N31
\inst3|count3[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[12]~50_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(12));

-- Location: FF_X29_Y19_N1
\inst3|count3[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[13]~52_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(13));

-- Location: FF_X29_Y19_N5
\inst3|count3[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[15]~56_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(15));

-- Location: FF_X29_Y19_N7
\inst3|count3[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[16]~58_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(16));

-- Location: FF_X29_Y19_N9
\inst3|count3[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[17]~60_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(17));

-- Location: FF_X29_Y19_N11
\inst3|count3[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[18]~62_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(18));

-- Location: FF_X29_Y19_N13
\inst3|count3[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[19]~64_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(19));

-- Location: FF_X29_Y19_N15
\inst3|count3[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[20]~66_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(20));

-- Location: FF_X29_Y19_N17
\inst3|count3[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[21]~68_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(21));

-- Location: FF_X29_Y19_N19
\inst3|count3[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[22]~70_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(22));

-- Location: FF_X29_Y19_N21
\inst3|count3[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[23]~72_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(23));

-- Location: FF_X29_Y19_N23
\inst3|count3[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[24]~74_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(24));

-- Location: FF_X29_Y19_N25
\inst3|count3[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count3[25]~76_combout\,
	sclr => \din3~input_o\,
	ena => \inst3|dou3~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count3\(25));

-- Location: FF_X11_Y22_N11
\inst3|countd[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[2]~30_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(2));

-- Location: FF_X11_Y22_N27
\inst3|countd[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[10]~46_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(10));

-- Location: FF_X11_Y22_N31
\inst3|countd[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[12]~50_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(12));

-- Location: FF_X11_Y21_N11
\inst3|countd[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[18]~62_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(18));

-- Location: FF_X11_Y21_N23
\inst3|countd[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[24]~74_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(24));

-- Location: FF_X11_Y21_N25
\inst3|countd[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[25]~76_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(25));

-- Location: LCCOMB_X24_Y19_N6
\inst3|count2[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[0]~26_combout\ = \inst3|count2\(0) $ (VCC)
-- \inst3|count2[0]~27\ = CARRY(\inst3|count2\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count2\(0),
	datad => VCC,
	combout => \inst3|count2[0]~26_combout\,
	cout => \inst3|count2[0]~27\);

-- Location: LCCOMB_X24_Y19_N10
\inst3|count2[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[2]~30_combout\ = (\inst3|count2\(2) & (\inst3|count2[1]~29\ $ (GND))) # (!\inst3|count2\(2) & (!\inst3|count2[1]~29\ & VCC))
-- \inst3|count2[2]~31\ = CARRY((\inst3|count2\(2) & !\inst3|count2[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count2\(2),
	datad => VCC,
	cin => \inst3|count2[1]~29\,
	combout => \inst3|count2[2]~30_combout\,
	cout => \inst3|count2[2]~31\);

-- Location: LCCOMB_X24_Y19_N12
\inst3|count2[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[3]~32_combout\ = (\inst3|count2\(3) & (!\inst3|count2[2]~31\)) # (!\inst3|count2\(3) & ((\inst3|count2[2]~31\) # (GND)))
-- \inst3|count2[3]~33\ = CARRY((!\inst3|count2[2]~31\) # (!\inst3|count2\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count2\(3),
	datad => VCC,
	cin => \inst3|count2[2]~31\,
	combout => \inst3|count2[3]~32_combout\,
	cout => \inst3|count2[3]~33\);

-- Location: LCCOMB_X24_Y19_N22
\inst3|count2[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[8]~42_combout\ = (\inst3|count2\(8) & (\inst3|count2[7]~41\ $ (GND))) # (!\inst3|count2\(8) & (!\inst3|count2[7]~41\ & VCC))
-- \inst3|count2[8]~43\ = CARRY((\inst3|count2\(8) & !\inst3|count2[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count2\(8),
	datad => VCC,
	cin => \inst3|count2[7]~41\,
	combout => \inst3|count2[8]~42_combout\,
	cout => \inst3|count2[8]~43\);

-- Location: LCCOMB_X24_Y19_N26
\inst3|count2[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[10]~46_combout\ = (\inst3|count2\(10) & (\inst3|count2[9]~45\ $ (GND))) # (!\inst3|count2\(10) & (!\inst3|count2[9]~45\ & VCC))
-- \inst3|count2[10]~47\ = CARRY((\inst3|count2\(10) & !\inst3|count2[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count2\(10),
	datad => VCC,
	cin => \inst3|count2[9]~45\,
	combout => \inst3|count2[10]~46_combout\,
	cout => \inst3|count2[10]~47\);

-- Location: LCCOMB_X24_Y19_N30
\inst3|count2[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[12]~50_combout\ = (\inst3|count2\(12) & (\inst3|count2[11]~49\ $ (GND))) # (!\inst3|count2\(12) & (!\inst3|count2[11]~49\ & VCC))
-- \inst3|count2[12]~51\ = CARRY((\inst3|count2\(12) & !\inst3|count2[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count2\(12),
	datad => VCC,
	cin => \inst3|count2[11]~49\,
	combout => \inst3|count2[12]~50_combout\,
	cout => \inst3|count2[12]~51\);

-- Location: LCCOMB_X24_Y18_N10
\inst3|count2[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[18]~62_combout\ = (\inst3|count2\(18) & (\inst3|count2[17]~61\ $ (GND))) # (!\inst3|count2\(18) & (!\inst3|count2[17]~61\ & VCC))
-- \inst3|count2[18]~63\ = CARRY((\inst3|count2\(18) & !\inst3|count2[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count2\(18),
	datad => VCC,
	cin => \inst3|count2[17]~61\,
	combout => \inst3|count2[18]~62_combout\,
	cout => \inst3|count2[18]~63\);

-- Location: LCCOMB_X12_Y22_N6
\inst3|countc[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[0]~26_combout\ = \inst3|countc\(0) $ (VCC)
-- \inst3|countc[0]~27\ = CARRY(\inst3|countc\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countc\(0),
	datad => VCC,
	combout => \inst3|countc[0]~26_combout\,
	cout => \inst3|countc[0]~27\);

-- Location: LCCOMB_X12_Y22_N8
\inst3|countc[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[1]~28_combout\ = (\inst3|countc\(1) & (!\inst3|countc[0]~27\)) # (!\inst3|countc\(1) & ((\inst3|countc[0]~27\) # (GND)))
-- \inst3|countc[1]~29\ = CARRY((!\inst3|countc[0]~27\) # (!\inst3|countc\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countc\(1),
	datad => VCC,
	cin => \inst3|countc[0]~27\,
	combout => \inst3|countc[1]~28_combout\,
	cout => \inst3|countc[1]~29\);

-- Location: LCCOMB_X12_Y22_N10
\inst3|countc[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[2]~30_combout\ = (\inst3|countc\(2) & (\inst3|countc[1]~29\ $ (GND))) # (!\inst3|countc\(2) & (!\inst3|countc[1]~29\ & VCC))
-- \inst3|countc[2]~31\ = CARRY((\inst3|countc\(2) & !\inst3|countc[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countc\(2),
	datad => VCC,
	cin => \inst3|countc[1]~29\,
	combout => \inst3|countc[2]~30_combout\,
	cout => \inst3|countc[2]~31\);

-- Location: LCCOMB_X12_Y22_N12
\inst3|countc[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[3]~32_combout\ = (\inst3|countc\(3) & (!\inst3|countc[2]~31\)) # (!\inst3|countc\(3) & ((\inst3|countc[2]~31\) # (GND)))
-- \inst3|countc[3]~33\ = CARRY((!\inst3|countc[2]~31\) # (!\inst3|countc\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countc\(3),
	datad => VCC,
	cin => \inst3|countc[2]~31\,
	combout => \inst3|countc[3]~32_combout\,
	cout => \inst3|countc[3]~33\);

-- Location: LCCOMB_X12_Y22_N14
\inst3|countc[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[4]~34_combout\ = (\inst3|countc\(4) & (\inst3|countc[3]~33\ $ (GND))) # (!\inst3|countc\(4) & (!\inst3|countc[3]~33\ & VCC))
-- \inst3|countc[4]~35\ = CARRY((\inst3|countc\(4) & !\inst3|countc[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countc\(4),
	datad => VCC,
	cin => \inst3|countc[3]~33\,
	combout => \inst3|countc[4]~34_combout\,
	cout => \inst3|countc[4]~35\);

-- Location: LCCOMB_X12_Y22_N16
\inst3|countc[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[5]~36_combout\ = (\inst3|countc\(5) & (!\inst3|countc[4]~35\)) # (!\inst3|countc\(5) & ((\inst3|countc[4]~35\) # (GND)))
-- \inst3|countc[5]~37\ = CARRY((!\inst3|countc[4]~35\) # (!\inst3|countc\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countc\(5),
	datad => VCC,
	cin => \inst3|countc[4]~35\,
	combout => \inst3|countc[5]~36_combout\,
	cout => \inst3|countc[5]~37\);

-- Location: LCCOMB_X12_Y22_N18
\inst3|countc[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[6]~38_combout\ = (\inst3|countc\(6) & (\inst3|countc[5]~37\ $ (GND))) # (!\inst3|countc\(6) & (!\inst3|countc[5]~37\ & VCC))
-- \inst3|countc[6]~39\ = CARRY((\inst3|countc\(6) & !\inst3|countc[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countc\(6),
	datad => VCC,
	cin => \inst3|countc[5]~37\,
	combout => \inst3|countc[6]~38_combout\,
	cout => \inst3|countc[6]~39\);

-- Location: LCCOMB_X12_Y22_N20
\inst3|countc[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[7]~40_combout\ = (\inst3|countc\(7) & (!\inst3|countc[6]~39\)) # (!\inst3|countc\(7) & ((\inst3|countc[6]~39\) # (GND)))
-- \inst3|countc[7]~41\ = CARRY((!\inst3|countc[6]~39\) # (!\inst3|countc\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countc\(7),
	datad => VCC,
	cin => \inst3|countc[6]~39\,
	combout => \inst3|countc[7]~40_combout\,
	cout => \inst3|countc[7]~41\);

-- Location: LCCOMB_X12_Y22_N22
\inst3|countc[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[8]~42_combout\ = (\inst3|countc\(8) & (\inst3|countc[7]~41\ $ (GND))) # (!\inst3|countc\(8) & (!\inst3|countc[7]~41\ & VCC))
-- \inst3|countc[8]~43\ = CARRY((\inst3|countc\(8) & !\inst3|countc[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countc\(8),
	datad => VCC,
	cin => \inst3|countc[7]~41\,
	combout => \inst3|countc[8]~42_combout\,
	cout => \inst3|countc[8]~43\);

-- Location: LCCOMB_X12_Y22_N24
\inst3|countc[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[9]~44_combout\ = (\inst3|countc\(9) & (!\inst3|countc[8]~43\)) # (!\inst3|countc\(9) & ((\inst3|countc[8]~43\) # (GND)))
-- \inst3|countc[9]~45\ = CARRY((!\inst3|countc[8]~43\) # (!\inst3|countc\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countc\(9),
	datad => VCC,
	cin => \inst3|countc[8]~43\,
	combout => \inst3|countc[9]~44_combout\,
	cout => \inst3|countc[9]~45\);

-- Location: LCCOMB_X12_Y22_N26
\inst3|countc[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[10]~46_combout\ = (\inst3|countc\(10) & (\inst3|countc[9]~45\ $ (GND))) # (!\inst3|countc\(10) & (!\inst3|countc[9]~45\ & VCC))
-- \inst3|countc[10]~47\ = CARRY((\inst3|countc\(10) & !\inst3|countc[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countc\(10),
	datad => VCC,
	cin => \inst3|countc[9]~45\,
	combout => \inst3|countc[10]~46_combout\,
	cout => \inst3|countc[10]~47\);

-- Location: LCCOMB_X12_Y22_N28
\inst3|countc[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[11]~48_combout\ = (\inst3|countc\(11) & (!\inst3|countc[10]~47\)) # (!\inst3|countc\(11) & ((\inst3|countc[10]~47\) # (GND)))
-- \inst3|countc[11]~49\ = CARRY((!\inst3|countc[10]~47\) # (!\inst3|countc\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countc\(11),
	datad => VCC,
	cin => \inst3|countc[10]~47\,
	combout => \inst3|countc[11]~48_combout\,
	cout => \inst3|countc[11]~49\);

-- Location: LCCOMB_X12_Y22_N30
\inst3|countc[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[12]~50_combout\ = (\inst3|countc\(12) & (\inst3|countc[11]~49\ $ (GND))) # (!\inst3|countc\(12) & (!\inst3|countc[11]~49\ & VCC))
-- \inst3|countc[12]~51\ = CARRY((\inst3|countc\(12) & !\inst3|countc[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countc\(12),
	datad => VCC,
	cin => \inst3|countc[11]~49\,
	combout => \inst3|countc[12]~50_combout\,
	cout => \inst3|countc[12]~51\);

-- Location: LCCOMB_X12_Y21_N0
\inst3|countc[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[13]~52_combout\ = (\inst3|countc\(13) & (!\inst3|countc[12]~51\)) # (!\inst3|countc\(13) & ((\inst3|countc[12]~51\) # (GND)))
-- \inst3|countc[13]~53\ = CARRY((!\inst3|countc[12]~51\) # (!\inst3|countc\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countc\(13),
	datad => VCC,
	cin => \inst3|countc[12]~51\,
	combout => \inst3|countc[13]~52_combout\,
	cout => \inst3|countc[13]~53\);

-- Location: LCCOMB_X12_Y21_N2
\inst3|countc[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[14]~54_combout\ = (\inst3|countc\(14) & (\inst3|countc[13]~53\ $ (GND))) # (!\inst3|countc\(14) & (!\inst3|countc[13]~53\ & VCC))
-- \inst3|countc[14]~55\ = CARRY((\inst3|countc\(14) & !\inst3|countc[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countc\(14),
	datad => VCC,
	cin => \inst3|countc[13]~53\,
	combout => \inst3|countc[14]~54_combout\,
	cout => \inst3|countc[14]~55\);

-- Location: LCCOMB_X12_Y21_N4
\inst3|countc[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[15]~56_combout\ = (\inst3|countc\(15) & (!\inst3|countc[14]~55\)) # (!\inst3|countc\(15) & ((\inst3|countc[14]~55\) # (GND)))
-- \inst3|countc[15]~57\ = CARRY((!\inst3|countc[14]~55\) # (!\inst3|countc\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countc\(15),
	datad => VCC,
	cin => \inst3|countc[14]~55\,
	combout => \inst3|countc[15]~56_combout\,
	cout => \inst3|countc[15]~57\);

-- Location: LCCOMB_X12_Y21_N6
\inst3|countc[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[16]~58_combout\ = (\inst3|countc\(16) & (\inst3|countc[15]~57\ $ (GND))) # (!\inst3|countc\(16) & (!\inst3|countc[15]~57\ & VCC))
-- \inst3|countc[16]~59\ = CARRY((\inst3|countc\(16) & !\inst3|countc[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countc\(16),
	datad => VCC,
	cin => \inst3|countc[15]~57\,
	combout => \inst3|countc[16]~58_combout\,
	cout => \inst3|countc[16]~59\);

-- Location: LCCOMB_X12_Y21_N8
\inst3|countc[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[17]~60_combout\ = (\inst3|countc\(17) & (!\inst3|countc[16]~59\)) # (!\inst3|countc\(17) & ((\inst3|countc[16]~59\) # (GND)))
-- \inst3|countc[17]~61\ = CARRY((!\inst3|countc[16]~59\) # (!\inst3|countc\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countc\(17),
	datad => VCC,
	cin => \inst3|countc[16]~59\,
	combout => \inst3|countc[17]~60_combout\,
	cout => \inst3|countc[17]~61\);

-- Location: LCCOMB_X12_Y21_N10
\inst3|countc[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[18]~62_combout\ = (\inst3|countc\(18) & (\inst3|countc[17]~61\ $ (GND))) # (!\inst3|countc\(18) & (!\inst3|countc[17]~61\ & VCC))
-- \inst3|countc[18]~63\ = CARRY((\inst3|countc\(18) & !\inst3|countc[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countc\(18),
	datad => VCC,
	cin => \inst3|countc[17]~61\,
	combout => \inst3|countc[18]~62_combout\,
	cout => \inst3|countc[18]~63\);

-- Location: LCCOMB_X12_Y21_N12
\inst3|countc[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[19]~64_combout\ = (\inst3|countc\(19) & (!\inst3|countc[18]~63\)) # (!\inst3|countc\(19) & ((\inst3|countc[18]~63\) # (GND)))
-- \inst3|countc[19]~65\ = CARRY((!\inst3|countc[18]~63\) # (!\inst3|countc\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countc\(19),
	datad => VCC,
	cin => \inst3|countc[18]~63\,
	combout => \inst3|countc[19]~64_combout\,
	cout => \inst3|countc[19]~65\);

-- Location: LCCOMB_X12_Y21_N14
\inst3|countc[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[20]~66_combout\ = (\inst3|countc\(20) & (\inst3|countc[19]~65\ $ (GND))) # (!\inst3|countc\(20) & (!\inst3|countc[19]~65\ & VCC))
-- \inst3|countc[20]~67\ = CARRY((\inst3|countc\(20) & !\inst3|countc[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countc\(20),
	datad => VCC,
	cin => \inst3|countc[19]~65\,
	combout => \inst3|countc[20]~66_combout\,
	cout => \inst3|countc[20]~67\);

-- Location: LCCOMB_X12_Y21_N16
\inst3|countc[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[21]~68_combout\ = (\inst3|countc\(21) & (!\inst3|countc[20]~67\)) # (!\inst3|countc\(21) & ((\inst3|countc[20]~67\) # (GND)))
-- \inst3|countc[21]~69\ = CARRY((!\inst3|countc[20]~67\) # (!\inst3|countc\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countc\(21),
	datad => VCC,
	cin => \inst3|countc[20]~67\,
	combout => \inst3|countc[21]~68_combout\,
	cout => \inst3|countc[21]~69\);

-- Location: LCCOMB_X12_Y21_N18
\inst3|countc[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[22]~70_combout\ = (\inst3|countc\(22) & (\inst3|countc[21]~69\ $ (GND))) # (!\inst3|countc\(22) & (!\inst3|countc[21]~69\ & VCC))
-- \inst3|countc[22]~71\ = CARRY((\inst3|countc\(22) & !\inst3|countc[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countc\(22),
	datad => VCC,
	cin => \inst3|countc[21]~69\,
	combout => \inst3|countc[22]~70_combout\,
	cout => \inst3|countc[22]~71\);

-- Location: LCCOMB_X12_Y21_N20
\inst3|countc[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[23]~72_combout\ = (\inst3|countc\(23) & (!\inst3|countc[22]~71\)) # (!\inst3|countc\(23) & ((\inst3|countc[22]~71\) # (GND)))
-- \inst3|countc[23]~73\ = CARRY((!\inst3|countc[22]~71\) # (!\inst3|countc\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countc\(23),
	datad => VCC,
	cin => \inst3|countc[22]~71\,
	combout => \inst3|countc[23]~72_combout\,
	cout => \inst3|countc[23]~73\);

-- Location: LCCOMB_X12_Y21_N22
\inst3|countc[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[24]~74_combout\ = (\inst3|countc\(24) & (\inst3|countc[23]~73\ $ (GND))) # (!\inst3|countc\(24) & (!\inst3|countc[23]~73\ & VCC))
-- \inst3|countc[24]~75\ = CARRY((\inst3|countc\(24) & !\inst3|countc[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countc\(24),
	datad => VCC,
	cin => \inst3|countc[23]~73\,
	combout => \inst3|countc[24]~74_combout\,
	cout => \inst3|countc[24]~75\);

-- Location: LCCOMB_X12_Y21_N24
\inst3|countc[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countc[25]~76_combout\ = \inst3|countc[24]~75\ $ (\inst3|countc\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|countc\(25),
	cin => \inst3|countc[24]~75\,
	combout => \inst3|countc[25]~76_combout\);

-- Location: LCCOMB_X13_Y22_N6
\inst3|countb[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[0]~26_combout\ = \inst3|countb\(0) $ (VCC)
-- \inst3|countb[0]~27\ = CARRY(\inst3|countb\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countb\(0),
	datad => VCC,
	combout => \inst3|countb[0]~26_combout\,
	cout => \inst3|countb[0]~27\);

-- Location: LCCOMB_X13_Y22_N10
\inst3|countb[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[2]~30_combout\ = (\inst3|countb\(2) & (\inst3|countb[1]~29\ $ (GND))) # (!\inst3|countb\(2) & (!\inst3|countb[1]~29\ & VCC))
-- \inst3|countb[2]~31\ = CARRY((\inst3|countb\(2) & !\inst3|countb[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countb\(2),
	datad => VCC,
	cin => \inst3|countb[1]~29\,
	combout => \inst3|countb[2]~30_combout\,
	cout => \inst3|countb[2]~31\);

-- Location: LCCOMB_X13_Y22_N12
\inst3|countb[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[3]~32_combout\ = (\inst3|countb\(3) & (!\inst3|countb[2]~31\)) # (!\inst3|countb\(3) & ((\inst3|countb[2]~31\) # (GND)))
-- \inst3|countb[3]~33\ = CARRY((!\inst3|countb[2]~31\) # (!\inst3|countb\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countb\(3),
	datad => VCC,
	cin => \inst3|countb[2]~31\,
	combout => \inst3|countb[3]~32_combout\,
	cout => \inst3|countb[3]~33\);

-- Location: LCCOMB_X13_Y22_N22
\inst3|countb[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[8]~42_combout\ = (\inst3|countb\(8) & (\inst3|countb[7]~41\ $ (GND))) # (!\inst3|countb\(8) & (!\inst3|countb[7]~41\ & VCC))
-- \inst3|countb[8]~43\ = CARRY((\inst3|countb\(8) & !\inst3|countb[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countb\(8),
	datad => VCC,
	cin => \inst3|countb[7]~41\,
	combout => \inst3|countb[8]~42_combout\,
	cout => \inst3|countb[8]~43\);

-- Location: LCCOMB_X13_Y22_N26
\inst3|countb[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[10]~46_combout\ = (\inst3|countb\(10) & (\inst3|countb[9]~45\ $ (GND))) # (!\inst3|countb\(10) & (!\inst3|countb[9]~45\ & VCC))
-- \inst3|countb[10]~47\ = CARRY((\inst3|countb\(10) & !\inst3|countb[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countb\(10),
	datad => VCC,
	cin => \inst3|countb[9]~45\,
	combout => \inst3|countb[10]~46_combout\,
	cout => \inst3|countb[10]~47\);

-- Location: LCCOMB_X13_Y22_N30
\inst3|countb[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[12]~50_combout\ = (\inst3|countb\(12) & (\inst3|countb[11]~49\ $ (GND))) # (!\inst3|countb\(12) & (!\inst3|countb[11]~49\ & VCC))
-- \inst3|countb[12]~51\ = CARRY((\inst3|countb\(12) & !\inst3|countb[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countb\(12),
	datad => VCC,
	cin => \inst3|countb[11]~49\,
	combout => \inst3|countb[12]~50_combout\,
	cout => \inst3|countb[12]~51\);

-- Location: LCCOMB_X13_Y21_N10
\inst3|countb[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[18]~62_combout\ = (\inst3|countb\(18) & (\inst3|countb[17]~61\ $ (GND))) # (!\inst3|countb\(18) & (!\inst3|countb[17]~61\ & VCC))
-- \inst3|countb[18]~63\ = CARRY((\inst3|countb\(18) & !\inst3|countb[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countb\(18),
	datad => VCC,
	cin => \inst3|countb[17]~61\,
	combout => \inst3|countb[18]~62_combout\,
	cout => \inst3|countb[18]~63\);

-- Location: LCCOMB_X7_Y22_N6
\inst3|count1[0]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[0]~27_combout\ = \inst3|count1\(0) $ (VCC)
-- \inst3|count1[0]~28\ = CARRY(\inst3|count1\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count1\(0),
	datad => VCC,
	combout => \inst3|count1[0]~27_combout\,
	cout => \inst3|count1[0]~28\);

-- Location: LCCOMB_X7_Y22_N10
\inst3|count1[2]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[2]~31_combout\ = (\inst3|count1\(2) & (\inst3|count1[1]~30\ $ (GND))) # (!\inst3|count1\(2) & (!\inst3|count1[1]~30\ & VCC))
-- \inst3|count1[2]~32\ = CARRY((\inst3|count1\(2) & !\inst3|count1[1]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count1\(2),
	datad => VCC,
	cin => \inst3|count1[1]~30\,
	combout => \inst3|count1[2]~31_combout\,
	cout => \inst3|count1[2]~32\);

-- Location: LCCOMB_X7_Y22_N12
\inst3|count1[3]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[3]~33_combout\ = (\inst3|count1\(3) & (!\inst3|count1[2]~32\)) # (!\inst3|count1\(3) & ((\inst3|count1[2]~32\) # (GND)))
-- \inst3|count1[3]~34\ = CARRY((!\inst3|count1[2]~32\) # (!\inst3|count1\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count1\(3),
	datad => VCC,
	cin => \inst3|count1[2]~32\,
	combout => \inst3|count1[3]~33_combout\,
	cout => \inst3|count1[3]~34\);

-- Location: LCCOMB_X7_Y22_N22
\inst3|count1[8]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[8]~43_combout\ = (\inst3|count1\(8) & (\inst3|count1[7]~42\ $ (GND))) # (!\inst3|count1\(8) & (!\inst3|count1[7]~42\ & VCC))
-- \inst3|count1[8]~44\ = CARRY((\inst3|count1\(8) & !\inst3|count1[7]~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count1\(8),
	datad => VCC,
	cin => \inst3|count1[7]~42\,
	combout => \inst3|count1[8]~43_combout\,
	cout => \inst3|count1[8]~44\);

-- Location: LCCOMB_X7_Y22_N26
\inst3|count1[10]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[10]~47_combout\ = (\inst3|count1\(10) & (\inst3|count1[9]~46\ $ (GND))) # (!\inst3|count1\(10) & (!\inst3|count1[9]~46\ & VCC))
-- \inst3|count1[10]~48\ = CARRY((\inst3|count1\(10) & !\inst3|count1[9]~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count1\(10),
	datad => VCC,
	cin => \inst3|count1[9]~46\,
	combout => \inst3|count1[10]~47_combout\,
	cout => \inst3|count1[10]~48\);

-- Location: LCCOMB_X7_Y22_N30
\inst3|count1[12]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[12]~51_combout\ = (\inst3|count1\(12) & (\inst3|count1[11]~50\ $ (GND))) # (!\inst3|count1\(12) & (!\inst3|count1[11]~50\ & VCC))
-- \inst3|count1[12]~52\ = CARRY((\inst3|count1\(12) & !\inst3|count1[11]~50\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count1\(12),
	datad => VCC,
	cin => \inst3|count1[11]~50\,
	combout => \inst3|count1[12]~51_combout\,
	cout => \inst3|count1[12]~52\);

-- Location: LCCOMB_X7_Y21_N12
\inst3|count1[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[19]~65_combout\ = (\inst3|count1\(19) & (!\inst3|count1[18]~64\)) # (!\inst3|count1\(19) & ((\inst3|count1[18]~64\) # (GND)))
-- \inst3|count1[19]~66\ = CARRY((!\inst3|count1[18]~64\) # (!\inst3|count1\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count1\(19),
	datad => VCC,
	cin => \inst3|count1[18]~64\,
	combout => \inst3|count1[19]~65_combout\,
	cout => \inst3|count1[19]~66\);

-- Location: LCCOMB_X9_Y22_N6
\inst3|counta[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[0]~26_combout\ = \inst3|counta\(0) $ (VCC)
-- \inst3|counta[0]~27\ = CARRY(\inst3|counta\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counta\(0),
	datad => VCC,
	combout => \inst3|counta[0]~26_combout\,
	cout => \inst3|counta[0]~27\);

-- Location: LCCOMB_X9_Y22_N8
\inst3|counta[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[1]~28_combout\ = (\inst3|counta\(1) & (!\inst3|counta[0]~27\)) # (!\inst3|counta\(1) & ((\inst3|counta[0]~27\) # (GND)))
-- \inst3|counta[1]~29\ = CARRY((!\inst3|counta[0]~27\) # (!\inst3|counta\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counta\(1),
	datad => VCC,
	cin => \inst3|counta[0]~27\,
	combout => \inst3|counta[1]~28_combout\,
	cout => \inst3|counta[1]~29\);

-- Location: LCCOMB_X9_Y22_N10
\inst3|counta[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[2]~30_combout\ = (\inst3|counta\(2) & (\inst3|counta[1]~29\ $ (GND))) # (!\inst3|counta\(2) & (!\inst3|counta[1]~29\ & VCC))
-- \inst3|counta[2]~31\ = CARRY((\inst3|counta\(2) & !\inst3|counta[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counta\(2),
	datad => VCC,
	cin => \inst3|counta[1]~29\,
	combout => \inst3|counta[2]~30_combout\,
	cout => \inst3|counta[2]~31\);

-- Location: LCCOMB_X9_Y22_N12
\inst3|counta[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[3]~32_combout\ = (\inst3|counta\(3) & (!\inst3|counta[2]~31\)) # (!\inst3|counta\(3) & ((\inst3|counta[2]~31\) # (GND)))
-- \inst3|counta[3]~33\ = CARRY((!\inst3|counta[2]~31\) # (!\inst3|counta\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counta\(3),
	datad => VCC,
	cin => \inst3|counta[2]~31\,
	combout => \inst3|counta[3]~32_combout\,
	cout => \inst3|counta[3]~33\);

-- Location: LCCOMB_X9_Y22_N14
\inst3|counta[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[4]~34_combout\ = (\inst3|counta\(4) & (\inst3|counta[3]~33\ $ (GND))) # (!\inst3|counta\(4) & (!\inst3|counta[3]~33\ & VCC))
-- \inst3|counta[4]~35\ = CARRY((\inst3|counta\(4) & !\inst3|counta[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counta\(4),
	datad => VCC,
	cin => \inst3|counta[3]~33\,
	combout => \inst3|counta[4]~34_combout\,
	cout => \inst3|counta[4]~35\);

-- Location: LCCOMB_X9_Y22_N16
\inst3|counta[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[5]~36_combout\ = (\inst3|counta\(5) & (!\inst3|counta[4]~35\)) # (!\inst3|counta\(5) & ((\inst3|counta[4]~35\) # (GND)))
-- \inst3|counta[5]~37\ = CARRY((!\inst3|counta[4]~35\) # (!\inst3|counta\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counta\(5),
	datad => VCC,
	cin => \inst3|counta[4]~35\,
	combout => \inst3|counta[5]~36_combout\,
	cout => \inst3|counta[5]~37\);

-- Location: LCCOMB_X9_Y22_N18
\inst3|counta[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[6]~38_combout\ = (\inst3|counta\(6) & (\inst3|counta[5]~37\ $ (GND))) # (!\inst3|counta\(6) & (!\inst3|counta[5]~37\ & VCC))
-- \inst3|counta[6]~39\ = CARRY((\inst3|counta\(6) & !\inst3|counta[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counta\(6),
	datad => VCC,
	cin => \inst3|counta[5]~37\,
	combout => \inst3|counta[6]~38_combout\,
	cout => \inst3|counta[6]~39\);

-- Location: LCCOMB_X9_Y22_N20
\inst3|counta[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[7]~40_combout\ = (\inst3|counta\(7) & (!\inst3|counta[6]~39\)) # (!\inst3|counta\(7) & ((\inst3|counta[6]~39\) # (GND)))
-- \inst3|counta[7]~41\ = CARRY((!\inst3|counta[6]~39\) # (!\inst3|counta\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counta\(7),
	datad => VCC,
	cin => \inst3|counta[6]~39\,
	combout => \inst3|counta[7]~40_combout\,
	cout => \inst3|counta[7]~41\);

-- Location: LCCOMB_X9_Y22_N22
\inst3|counta[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[8]~42_combout\ = (\inst3|counta\(8) & (\inst3|counta[7]~41\ $ (GND))) # (!\inst3|counta\(8) & (!\inst3|counta[7]~41\ & VCC))
-- \inst3|counta[8]~43\ = CARRY((\inst3|counta\(8) & !\inst3|counta[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counta\(8),
	datad => VCC,
	cin => \inst3|counta[7]~41\,
	combout => \inst3|counta[8]~42_combout\,
	cout => \inst3|counta[8]~43\);

-- Location: LCCOMB_X9_Y22_N24
\inst3|counta[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[9]~44_combout\ = (\inst3|counta\(9) & (!\inst3|counta[8]~43\)) # (!\inst3|counta\(9) & ((\inst3|counta[8]~43\) # (GND)))
-- \inst3|counta[9]~45\ = CARRY((!\inst3|counta[8]~43\) # (!\inst3|counta\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counta\(9),
	datad => VCC,
	cin => \inst3|counta[8]~43\,
	combout => \inst3|counta[9]~44_combout\,
	cout => \inst3|counta[9]~45\);

-- Location: LCCOMB_X9_Y22_N26
\inst3|counta[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[10]~46_combout\ = (\inst3|counta\(10) & (\inst3|counta[9]~45\ $ (GND))) # (!\inst3|counta\(10) & (!\inst3|counta[9]~45\ & VCC))
-- \inst3|counta[10]~47\ = CARRY((\inst3|counta\(10) & !\inst3|counta[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counta\(10),
	datad => VCC,
	cin => \inst3|counta[9]~45\,
	combout => \inst3|counta[10]~46_combout\,
	cout => \inst3|counta[10]~47\);

-- Location: LCCOMB_X9_Y22_N28
\inst3|counta[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[11]~48_combout\ = (\inst3|counta\(11) & (!\inst3|counta[10]~47\)) # (!\inst3|counta\(11) & ((\inst3|counta[10]~47\) # (GND)))
-- \inst3|counta[11]~49\ = CARRY((!\inst3|counta[10]~47\) # (!\inst3|counta\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counta\(11),
	datad => VCC,
	cin => \inst3|counta[10]~47\,
	combout => \inst3|counta[11]~48_combout\,
	cout => \inst3|counta[11]~49\);

-- Location: LCCOMB_X9_Y22_N30
\inst3|counta[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[12]~50_combout\ = (\inst3|counta\(12) & (\inst3|counta[11]~49\ $ (GND))) # (!\inst3|counta\(12) & (!\inst3|counta[11]~49\ & VCC))
-- \inst3|counta[12]~51\ = CARRY((\inst3|counta\(12) & !\inst3|counta[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counta\(12),
	datad => VCC,
	cin => \inst3|counta[11]~49\,
	combout => \inst3|counta[12]~50_combout\,
	cout => \inst3|counta[12]~51\);

-- Location: LCCOMB_X9_Y21_N0
\inst3|counta[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[13]~52_combout\ = (\inst3|counta\(13) & (!\inst3|counta[12]~51\)) # (!\inst3|counta\(13) & ((\inst3|counta[12]~51\) # (GND)))
-- \inst3|counta[13]~53\ = CARRY((!\inst3|counta[12]~51\) # (!\inst3|counta\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counta\(13),
	datad => VCC,
	cin => \inst3|counta[12]~51\,
	combout => \inst3|counta[13]~52_combout\,
	cout => \inst3|counta[13]~53\);

-- Location: LCCOMB_X9_Y21_N2
\inst3|counta[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[14]~54_combout\ = (\inst3|counta\(14) & (\inst3|counta[13]~53\ $ (GND))) # (!\inst3|counta\(14) & (!\inst3|counta[13]~53\ & VCC))
-- \inst3|counta[14]~55\ = CARRY((\inst3|counta\(14) & !\inst3|counta[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counta\(14),
	datad => VCC,
	cin => \inst3|counta[13]~53\,
	combout => \inst3|counta[14]~54_combout\,
	cout => \inst3|counta[14]~55\);

-- Location: LCCOMB_X9_Y21_N4
\inst3|counta[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[15]~56_combout\ = (\inst3|counta\(15) & (!\inst3|counta[14]~55\)) # (!\inst3|counta\(15) & ((\inst3|counta[14]~55\) # (GND)))
-- \inst3|counta[15]~57\ = CARRY((!\inst3|counta[14]~55\) # (!\inst3|counta\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counta\(15),
	datad => VCC,
	cin => \inst3|counta[14]~55\,
	combout => \inst3|counta[15]~56_combout\,
	cout => \inst3|counta[15]~57\);

-- Location: LCCOMB_X9_Y21_N6
\inst3|counta[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[16]~58_combout\ = (\inst3|counta\(16) & (\inst3|counta[15]~57\ $ (GND))) # (!\inst3|counta\(16) & (!\inst3|counta[15]~57\ & VCC))
-- \inst3|counta[16]~59\ = CARRY((\inst3|counta\(16) & !\inst3|counta[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counta\(16),
	datad => VCC,
	cin => \inst3|counta[15]~57\,
	combout => \inst3|counta[16]~58_combout\,
	cout => \inst3|counta[16]~59\);

-- Location: LCCOMB_X9_Y21_N8
\inst3|counta[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[17]~60_combout\ = (\inst3|counta\(17) & (!\inst3|counta[16]~59\)) # (!\inst3|counta\(17) & ((\inst3|counta[16]~59\) # (GND)))
-- \inst3|counta[17]~61\ = CARRY((!\inst3|counta[16]~59\) # (!\inst3|counta\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counta\(17),
	datad => VCC,
	cin => \inst3|counta[16]~59\,
	combout => \inst3|counta[17]~60_combout\,
	cout => \inst3|counta[17]~61\);

-- Location: LCCOMB_X9_Y21_N10
\inst3|counta[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[18]~62_combout\ = (\inst3|counta\(18) & (\inst3|counta[17]~61\ $ (GND))) # (!\inst3|counta\(18) & (!\inst3|counta[17]~61\ & VCC))
-- \inst3|counta[18]~63\ = CARRY((\inst3|counta\(18) & !\inst3|counta[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counta\(18),
	datad => VCC,
	cin => \inst3|counta[17]~61\,
	combout => \inst3|counta[18]~62_combout\,
	cout => \inst3|counta[18]~63\);

-- Location: LCCOMB_X9_Y21_N12
\inst3|counta[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[19]~64_combout\ = (\inst3|counta\(19) & (!\inst3|counta[18]~63\)) # (!\inst3|counta\(19) & ((\inst3|counta[18]~63\) # (GND)))
-- \inst3|counta[19]~65\ = CARRY((!\inst3|counta[18]~63\) # (!\inst3|counta\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counta\(19),
	datad => VCC,
	cin => \inst3|counta[18]~63\,
	combout => \inst3|counta[19]~64_combout\,
	cout => \inst3|counta[19]~65\);

-- Location: LCCOMB_X9_Y21_N14
\inst3|counta[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[20]~66_combout\ = (\inst3|counta\(20) & (\inst3|counta[19]~65\ $ (GND))) # (!\inst3|counta\(20) & (!\inst3|counta[19]~65\ & VCC))
-- \inst3|counta[20]~67\ = CARRY((\inst3|counta\(20) & !\inst3|counta[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counta\(20),
	datad => VCC,
	cin => \inst3|counta[19]~65\,
	combout => \inst3|counta[20]~66_combout\,
	cout => \inst3|counta[20]~67\);

-- Location: LCCOMB_X9_Y21_N16
\inst3|counta[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[21]~68_combout\ = (\inst3|counta\(21) & (!\inst3|counta[20]~67\)) # (!\inst3|counta\(21) & ((\inst3|counta[20]~67\) # (GND)))
-- \inst3|counta[21]~69\ = CARRY((!\inst3|counta[20]~67\) # (!\inst3|counta\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counta\(21),
	datad => VCC,
	cin => \inst3|counta[20]~67\,
	combout => \inst3|counta[21]~68_combout\,
	cout => \inst3|counta[21]~69\);

-- Location: LCCOMB_X9_Y21_N18
\inst3|counta[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[22]~70_combout\ = (\inst3|counta\(22) & (\inst3|counta[21]~69\ $ (GND))) # (!\inst3|counta\(22) & (!\inst3|counta[21]~69\ & VCC))
-- \inst3|counta[22]~71\ = CARRY((\inst3|counta\(22) & !\inst3|counta[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counta\(22),
	datad => VCC,
	cin => \inst3|counta[21]~69\,
	combout => \inst3|counta[22]~70_combout\,
	cout => \inst3|counta[22]~71\);

-- Location: LCCOMB_X9_Y21_N20
\inst3|counta[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[23]~72_combout\ = (\inst3|counta\(23) & (!\inst3|counta[22]~71\)) # (!\inst3|counta\(23) & ((\inst3|counta[22]~71\) # (GND)))
-- \inst3|counta[23]~73\ = CARRY((!\inst3|counta[22]~71\) # (!\inst3|counta\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|counta\(23),
	datad => VCC,
	cin => \inst3|counta[22]~71\,
	combout => \inst3|counta[23]~72_combout\,
	cout => \inst3|counta[23]~73\);

-- Location: LCCOMB_X9_Y21_N22
\inst3|counta[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[24]~74_combout\ = (\inst3|counta\(24) & (\inst3|counta[23]~73\ $ (GND))) # (!\inst3|counta\(24) & (!\inst3|counta[23]~73\ & VCC))
-- \inst3|counta[24]~75\ = CARRY((\inst3|counta\(24) & !\inst3|counta[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counta\(24),
	datad => VCC,
	cin => \inst3|counta[23]~73\,
	combout => \inst3|counta[24]~74_combout\,
	cout => \inst3|counta[24]~75\);

-- Location: LCCOMB_X9_Y21_N24
\inst3|counta[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|counta[25]~76_combout\ = \inst3|counta[24]~75\ $ (\inst3|counta\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|counta\(25),
	cin => \inst3|counta[24]~75\,
	combout => \inst3|counta[25]~76_combout\);

-- Location: LCCOMB_X29_Y20_N6
\inst3|count3[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[0]~26_combout\ = \inst3|count3\(0) $ (VCC)
-- \inst3|count3[0]~27\ = CARRY(\inst3|count3\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count3\(0),
	datad => VCC,
	combout => \inst3|count3[0]~26_combout\,
	cout => \inst3|count3[0]~27\);

-- Location: LCCOMB_X29_Y20_N8
\inst3|count3[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[1]~28_combout\ = (\inst3|count3\(1) & (!\inst3|count3[0]~27\)) # (!\inst3|count3\(1) & ((\inst3|count3[0]~27\) # (GND)))
-- \inst3|count3[1]~29\ = CARRY((!\inst3|count3[0]~27\) # (!\inst3|count3\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count3\(1),
	datad => VCC,
	cin => \inst3|count3[0]~27\,
	combout => \inst3|count3[1]~28_combout\,
	cout => \inst3|count3[1]~29\);

-- Location: LCCOMB_X29_Y20_N10
\inst3|count3[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[2]~30_combout\ = (\inst3|count3\(2) & (\inst3|count3[1]~29\ $ (GND))) # (!\inst3|count3\(2) & (!\inst3|count3[1]~29\ & VCC))
-- \inst3|count3[2]~31\ = CARRY((\inst3|count3\(2) & !\inst3|count3[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count3\(2),
	datad => VCC,
	cin => \inst3|count3[1]~29\,
	combout => \inst3|count3[2]~30_combout\,
	cout => \inst3|count3[2]~31\);

-- Location: LCCOMB_X29_Y20_N12
\inst3|count3[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[3]~32_combout\ = (\inst3|count3\(3) & (!\inst3|count3[2]~31\)) # (!\inst3|count3\(3) & ((\inst3|count3[2]~31\) # (GND)))
-- \inst3|count3[3]~33\ = CARRY((!\inst3|count3[2]~31\) # (!\inst3|count3\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count3\(3),
	datad => VCC,
	cin => \inst3|count3[2]~31\,
	combout => \inst3|count3[3]~32_combout\,
	cout => \inst3|count3[3]~33\);

-- Location: LCCOMB_X29_Y20_N14
\inst3|count3[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[4]~34_combout\ = (\inst3|count3\(4) & (\inst3|count3[3]~33\ $ (GND))) # (!\inst3|count3\(4) & (!\inst3|count3[3]~33\ & VCC))
-- \inst3|count3[4]~35\ = CARRY((\inst3|count3\(4) & !\inst3|count3[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count3\(4),
	datad => VCC,
	cin => \inst3|count3[3]~33\,
	combout => \inst3|count3[4]~34_combout\,
	cout => \inst3|count3[4]~35\);

-- Location: LCCOMB_X29_Y20_N16
\inst3|count3[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[5]~36_combout\ = (\inst3|count3\(5) & (!\inst3|count3[4]~35\)) # (!\inst3|count3\(5) & ((\inst3|count3[4]~35\) # (GND)))
-- \inst3|count3[5]~37\ = CARRY((!\inst3|count3[4]~35\) # (!\inst3|count3\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count3\(5),
	datad => VCC,
	cin => \inst3|count3[4]~35\,
	combout => \inst3|count3[5]~36_combout\,
	cout => \inst3|count3[5]~37\);

-- Location: LCCOMB_X29_Y20_N18
\inst3|count3[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[6]~38_combout\ = (\inst3|count3\(6) & (\inst3|count3[5]~37\ $ (GND))) # (!\inst3|count3\(6) & (!\inst3|count3[5]~37\ & VCC))
-- \inst3|count3[6]~39\ = CARRY((\inst3|count3\(6) & !\inst3|count3[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count3\(6),
	datad => VCC,
	cin => \inst3|count3[5]~37\,
	combout => \inst3|count3[6]~38_combout\,
	cout => \inst3|count3[6]~39\);

-- Location: LCCOMB_X29_Y20_N20
\inst3|count3[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[7]~40_combout\ = (\inst3|count3\(7) & (!\inst3|count3[6]~39\)) # (!\inst3|count3\(7) & ((\inst3|count3[6]~39\) # (GND)))
-- \inst3|count3[7]~41\ = CARRY((!\inst3|count3[6]~39\) # (!\inst3|count3\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count3\(7),
	datad => VCC,
	cin => \inst3|count3[6]~39\,
	combout => \inst3|count3[7]~40_combout\,
	cout => \inst3|count3[7]~41\);

-- Location: LCCOMB_X29_Y20_N22
\inst3|count3[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[8]~42_combout\ = (\inst3|count3\(8) & (\inst3|count3[7]~41\ $ (GND))) # (!\inst3|count3\(8) & (!\inst3|count3[7]~41\ & VCC))
-- \inst3|count3[8]~43\ = CARRY((\inst3|count3\(8) & !\inst3|count3[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count3\(8),
	datad => VCC,
	cin => \inst3|count3[7]~41\,
	combout => \inst3|count3[8]~42_combout\,
	cout => \inst3|count3[8]~43\);

-- Location: LCCOMB_X29_Y20_N24
\inst3|count3[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[9]~44_combout\ = (\inst3|count3\(9) & (!\inst3|count3[8]~43\)) # (!\inst3|count3\(9) & ((\inst3|count3[8]~43\) # (GND)))
-- \inst3|count3[9]~45\ = CARRY((!\inst3|count3[8]~43\) # (!\inst3|count3\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count3\(9),
	datad => VCC,
	cin => \inst3|count3[8]~43\,
	combout => \inst3|count3[9]~44_combout\,
	cout => \inst3|count3[9]~45\);

-- Location: LCCOMB_X29_Y20_N26
\inst3|count3[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[10]~46_combout\ = (\inst3|count3\(10) & (\inst3|count3[9]~45\ $ (GND))) # (!\inst3|count3\(10) & (!\inst3|count3[9]~45\ & VCC))
-- \inst3|count3[10]~47\ = CARRY((\inst3|count3\(10) & !\inst3|count3[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count3\(10),
	datad => VCC,
	cin => \inst3|count3[9]~45\,
	combout => \inst3|count3[10]~46_combout\,
	cout => \inst3|count3[10]~47\);

-- Location: LCCOMB_X29_Y20_N28
\inst3|count3[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[11]~48_combout\ = (\inst3|count3\(11) & (!\inst3|count3[10]~47\)) # (!\inst3|count3\(11) & ((\inst3|count3[10]~47\) # (GND)))
-- \inst3|count3[11]~49\ = CARRY((!\inst3|count3[10]~47\) # (!\inst3|count3\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count3\(11),
	datad => VCC,
	cin => \inst3|count3[10]~47\,
	combout => \inst3|count3[11]~48_combout\,
	cout => \inst3|count3[11]~49\);

-- Location: LCCOMB_X29_Y20_N30
\inst3|count3[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[12]~50_combout\ = (\inst3|count3\(12) & (\inst3|count3[11]~49\ $ (GND))) # (!\inst3|count3\(12) & (!\inst3|count3[11]~49\ & VCC))
-- \inst3|count3[12]~51\ = CARRY((\inst3|count3\(12) & !\inst3|count3[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count3\(12),
	datad => VCC,
	cin => \inst3|count3[11]~49\,
	combout => \inst3|count3[12]~50_combout\,
	cout => \inst3|count3[12]~51\);

-- Location: LCCOMB_X29_Y19_N0
\inst3|count3[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[13]~52_combout\ = (\inst3|count3\(13) & (!\inst3|count3[12]~51\)) # (!\inst3|count3\(13) & ((\inst3|count3[12]~51\) # (GND)))
-- \inst3|count3[13]~53\ = CARRY((!\inst3|count3[12]~51\) # (!\inst3|count3\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count3\(13),
	datad => VCC,
	cin => \inst3|count3[12]~51\,
	combout => \inst3|count3[13]~52_combout\,
	cout => \inst3|count3[13]~53\);

-- Location: LCCOMB_X29_Y19_N2
\inst3|count3[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[14]~54_combout\ = (\inst3|count3\(14) & (\inst3|count3[13]~53\ $ (GND))) # (!\inst3|count3\(14) & (!\inst3|count3[13]~53\ & VCC))
-- \inst3|count3[14]~55\ = CARRY((\inst3|count3\(14) & !\inst3|count3[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count3\(14),
	datad => VCC,
	cin => \inst3|count3[13]~53\,
	combout => \inst3|count3[14]~54_combout\,
	cout => \inst3|count3[14]~55\);

-- Location: LCCOMB_X29_Y19_N4
\inst3|count3[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[15]~56_combout\ = (\inst3|count3\(15) & (!\inst3|count3[14]~55\)) # (!\inst3|count3\(15) & ((\inst3|count3[14]~55\) # (GND)))
-- \inst3|count3[15]~57\ = CARRY((!\inst3|count3[14]~55\) # (!\inst3|count3\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count3\(15),
	datad => VCC,
	cin => \inst3|count3[14]~55\,
	combout => \inst3|count3[15]~56_combout\,
	cout => \inst3|count3[15]~57\);

-- Location: LCCOMB_X29_Y19_N6
\inst3|count3[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[16]~58_combout\ = (\inst3|count3\(16) & (\inst3|count3[15]~57\ $ (GND))) # (!\inst3|count3\(16) & (!\inst3|count3[15]~57\ & VCC))
-- \inst3|count3[16]~59\ = CARRY((\inst3|count3\(16) & !\inst3|count3[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count3\(16),
	datad => VCC,
	cin => \inst3|count3[15]~57\,
	combout => \inst3|count3[16]~58_combout\,
	cout => \inst3|count3[16]~59\);

-- Location: LCCOMB_X29_Y19_N8
\inst3|count3[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[17]~60_combout\ = (\inst3|count3\(17) & (!\inst3|count3[16]~59\)) # (!\inst3|count3\(17) & ((\inst3|count3[16]~59\) # (GND)))
-- \inst3|count3[17]~61\ = CARRY((!\inst3|count3[16]~59\) # (!\inst3|count3\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count3\(17),
	datad => VCC,
	cin => \inst3|count3[16]~59\,
	combout => \inst3|count3[17]~60_combout\,
	cout => \inst3|count3[17]~61\);

-- Location: LCCOMB_X29_Y19_N10
\inst3|count3[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[18]~62_combout\ = (\inst3|count3\(18) & (\inst3|count3[17]~61\ $ (GND))) # (!\inst3|count3\(18) & (!\inst3|count3[17]~61\ & VCC))
-- \inst3|count3[18]~63\ = CARRY((\inst3|count3\(18) & !\inst3|count3[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count3\(18),
	datad => VCC,
	cin => \inst3|count3[17]~61\,
	combout => \inst3|count3[18]~62_combout\,
	cout => \inst3|count3[18]~63\);

-- Location: LCCOMB_X29_Y19_N12
\inst3|count3[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[19]~64_combout\ = (\inst3|count3\(19) & (!\inst3|count3[18]~63\)) # (!\inst3|count3\(19) & ((\inst3|count3[18]~63\) # (GND)))
-- \inst3|count3[19]~65\ = CARRY((!\inst3|count3[18]~63\) # (!\inst3|count3\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count3\(19),
	datad => VCC,
	cin => \inst3|count3[18]~63\,
	combout => \inst3|count3[19]~64_combout\,
	cout => \inst3|count3[19]~65\);

-- Location: LCCOMB_X29_Y19_N14
\inst3|count3[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[20]~66_combout\ = (\inst3|count3\(20) & (\inst3|count3[19]~65\ $ (GND))) # (!\inst3|count3\(20) & (!\inst3|count3[19]~65\ & VCC))
-- \inst3|count3[20]~67\ = CARRY((\inst3|count3\(20) & !\inst3|count3[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count3\(20),
	datad => VCC,
	cin => \inst3|count3[19]~65\,
	combout => \inst3|count3[20]~66_combout\,
	cout => \inst3|count3[20]~67\);

-- Location: LCCOMB_X29_Y19_N16
\inst3|count3[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[21]~68_combout\ = (\inst3|count3\(21) & (!\inst3|count3[20]~67\)) # (!\inst3|count3\(21) & ((\inst3|count3[20]~67\) # (GND)))
-- \inst3|count3[21]~69\ = CARRY((!\inst3|count3[20]~67\) # (!\inst3|count3\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count3\(21),
	datad => VCC,
	cin => \inst3|count3[20]~67\,
	combout => \inst3|count3[21]~68_combout\,
	cout => \inst3|count3[21]~69\);

-- Location: LCCOMB_X29_Y19_N18
\inst3|count3[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[22]~70_combout\ = (\inst3|count3\(22) & (\inst3|count3[21]~69\ $ (GND))) # (!\inst3|count3\(22) & (!\inst3|count3[21]~69\ & VCC))
-- \inst3|count3[22]~71\ = CARRY((\inst3|count3\(22) & !\inst3|count3[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count3\(22),
	datad => VCC,
	cin => \inst3|count3[21]~69\,
	combout => \inst3|count3[22]~70_combout\,
	cout => \inst3|count3[22]~71\);

-- Location: LCCOMB_X29_Y19_N20
\inst3|count3[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[23]~72_combout\ = (\inst3|count3\(23) & (!\inst3|count3[22]~71\)) # (!\inst3|count3\(23) & ((\inst3|count3[22]~71\) # (GND)))
-- \inst3|count3[23]~73\ = CARRY((!\inst3|count3[22]~71\) # (!\inst3|count3\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count3\(23),
	datad => VCC,
	cin => \inst3|count3[22]~71\,
	combout => \inst3|count3[23]~72_combout\,
	cout => \inst3|count3[23]~73\);

-- Location: LCCOMB_X29_Y19_N22
\inst3|count3[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[24]~74_combout\ = (\inst3|count3\(24) & (\inst3|count3[23]~73\ $ (GND))) # (!\inst3|count3\(24) & (!\inst3|count3[23]~73\ & VCC))
-- \inst3|count3[24]~75\ = CARRY((\inst3|count3\(24) & !\inst3|count3[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count3\(24),
	datad => VCC,
	cin => \inst3|count3[23]~73\,
	combout => \inst3|count3[24]~74_combout\,
	cout => \inst3|count3[24]~75\);

-- Location: LCCOMB_X29_Y19_N24
\inst3|count3[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count3[25]~76_combout\ = \inst3|count3[24]~75\ $ (\inst3|count3\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|count3\(25),
	cin => \inst3|count3[24]~75\,
	combout => \inst3|count3[25]~76_combout\);

-- Location: LCCOMB_X11_Y22_N10
\inst3|countd[2]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[2]~30_combout\ = (\inst3|countd\(2) & (\inst3|countd[1]~29\ $ (GND))) # (!\inst3|countd\(2) & (!\inst3|countd[1]~29\ & VCC))
-- \inst3|countd[2]~31\ = CARRY((\inst3|countd\(2) & !\inst3|countd[1]~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countd\(2),
	datad => VCC,
	cin => \inst3|countd[1]~29\,
	combout => \inst3|countd[2]~30_combout\,
	cout => \inst3|countd[2]~31\);

-- Location: LCCOMB_X11_Y22_N26
\inst3|countd[10]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[10]~46_combout\ = (\inst3|countd\(10) & (\inst3|countd[9]~45\ $ (GND))) # (!\inst3|countd\(10) & (!\inst3|countd[9]~45\ & VCC))
-- \inst3|countd[10]~47\ = CARRY((\inst3|countd\(10) & !\inst3|countd[9]~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countd\(10),
	datad => VCC,
	cin => \inst3|countd[9]~45\,
	combout => \inst3|countd[10]~46_combout\,
	cout => \inst3|countd[10]~47\);

-- Location: LCCOMB_X11_Y22_N30
\inst3|countd[12]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[12]~50_combout\ = (\inst3|countd\(12) & (\inst3|countd[11]~49\ $ (GND))) # (!\inst3|countd\(12) & (!\inst3|countd[11]~49\ & VCC))
-- \inst3|countd[12]~51\ = CARRY((\inst3|countd\(12) & !\inst3|countd[11]~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countd\(12),
	datad => VCC,
	cin => \inst3|countd[11]~49\,
	combout => \inst3|countd[12]~50_combout\,
	cout => \inst3|countd[12]~51\);

-- Location: LCCOMB_X11_Y21_N10
\inst3|countd[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[18]~62_combout\ = (\inst3|countd\(18) & (\inst3|countd[17]~61\ $ (GND))) # (!\inst3|countd\(18) & (!\inst3|countd[17]~61\ & VCC))
-- \inst3|countd[18]~63\ = CARRY((\inst3|countd\(18) & !\inst3|countd[17]~61\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countd\(18),
	datad => VCC,
	cin => \inst3|countd[17]~61\,
	combout => \inst3|countd[18]~62_combout\,
	cout => \inst3|countd[18]~63\);

-- Location: LCCOMB_X11_Y21_N20
\inst3|countd[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[23]~72_combout\ = (\inst3|countd\(23) & (!\inst3|countd[22]~71\)) # (!\inst3|countd\(23) & ((\inst3|countd[22]~71\) # (GND)))
-- \inst3|countd[23]~73\ = CARRY((!\inst3|countd[22]~71\) # (!\inst3|countd\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countd\(23),
	datad => VCC,
	cin => \inst3|countd[22]~71\,
	combout => \inst3|countd[23]~72_combout\,
	cout => \inst3|countd[23]~73\);

-- Location: LCCOMB_X11_Y21_N22
\inst3|countd[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[24]~74_combout\ = (\inst3|countd\(24) & (\inst3|countd[23]~73\ $ (GND))) # (!\inst3|countd\(24) & (!\inst3|countd[23]~73\ & VCC))
-- \inst3|countd[24]~75\ = CARRY((\inst3|countd\(24) & !\inst3|countd[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countd\(24),
	datad => VCC,
	cin => \inst3|countd[23]~73\,
	combout => \inst3|countd[24]~74_combout\,
	cout => \inst3|countd[24]~75\);

-- Location: LCCOMB_X11_Y21_N24
\inst3|countd[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[25]~76_combout\ = \inst3|countd[24]~75\ $ (\inst3|countd\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|countd\(25),
	cin => \inst3|countd[24]~75\,
	combout => \inst3|countd[25]~76_combout\);

-- Location: FF_X21_Y21_N11
\inst16|data_24[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~2_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(17));

-- Location: FF_X21_Y21_N27
\inst16|data_24[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~5_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(14));

-- Location: FF_X22_Y21_N11
\inst16|data_24[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~7_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(6));

-- Location: FF_X23_Y21_N11
\inst16|data_24[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~9_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(11));

-- Location: FF_X22_Y21_N31
\inst16|data_24[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~13_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(5));

-- Location: FF_X22_Y21_N27
\inst16|data_24[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~15_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(4));

-- Location: FF_X23_Y18_N31
\inst16|data_24[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~24_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(20));

-- Location: FF_X21_Y19_N27
\inst7|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	d => \inst7|cnt~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(1));

-- Location: LCCOMB_X22_Y19_N24
\inst7|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~0_combout\ = (\inst7|cnt\(5) & (\inst7|data\(98) & ((\inst7|cnt\(0))))) # (!\inst7|cnt\(5) & (((\inst7|cnt\(2) & !\inst7|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|data\(98),
	datab => \inst7|cnt\(2),
	datac => \inst7|cnt\(5),
	datad => \inst7|cnt\(0),
	combout => \inst7|Mux0~0_combout\);

-- Location: LCCOMB_X22_Y19_N2
\inst7|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~1_combout\ = (\inst7|data\(98) & ((\inst7|cnt\(2) & ((\inst7|cnt\(0)))) # (!\inst7|cnt\(2) & (\inst7|cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|data\(98),
	datab => \inst7|cnt\(2),
	datac => \inst7|cnt\(5),
	datad => \inst7|cnt\(0),
	combout => \inst7|Mux0~1_combout\);

-- Location: LCCOMB_X22_Y19_N4
\inst7|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~2_combout\ = (\inst7|cnt\(1) & (((\inst7|Mux0~1_combout\)))) # (!\inst7|cnt\(1) & (\inst7|Mux0~0_combout\ & ((\inst7|data\(47)) # (\inst7|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(1),
	datab => \inst7|Mux0~0_combout\,
	datac => \inst7|data\(47),
	datad => \inst7|Mux0~1_combout\,
	combout => \inst7|Mux0~2_combout\);

-- Location: LCCOMB_X19_Y19_N16
\inst7|Mux0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~3_combout\ = (\inst7|cnt\(1) & ((\inst7|cnt\(0) & (\inst7|data\(42))) # (!\inst7|cnt\(0) & ((\inst7|data\(98)))))) # (!\inst7|cnt\(1) & (((\inst7|data\(98) & \inst7|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|data\(42),
	datab => \inst7|data\(98),
	datac => \inst7|cnt\(1),
	datad => \inst7|cnt\(0),
	combout => \inst7|Mux0~3_combout\);

-- Location: FF_X26_Y17_N29
\inst1|direction.d2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector37~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|direction.d2~q\);

-- Location: FF_X26_Y20_N31
\inst1|target[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|target[2]~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|target\(2));

-- Location: FF_X26_Y21_N1
\inst1|target[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|target[4]~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|target\(4));

-- Location: LCCOMB_X25_Y21_N14
\inst1|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~2_combout\ = (\inst1|target\(5) & (\inst1|count\(5) & (\inst1|target\(4) $ (!\inst1|count\(4))))) # (!\inst1|target\(5) & (!\inst1|count\(5) & (\inst1|target\(4) $ (!\inst1|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(5),
	datab => \inst1|target\(4),
	datac => \inst1|count\(4),
	datad => \inst1|count\(5),
	combout => \inst1|Equal2~2_combout\);

-- Location: FF_X24_Y20_N1
\inst1|mark[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector10~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mark\(0));

-- Location: FF_X24_Y20_N27
\inst1|mark[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector9~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mark\(1));

-- Location: LCCOMB_X24_Y20_N12
\inst1|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal3~0_combout\ = (\inst1|count\(1) & (!\inst1|mark\(1) & (\inst1|mark\(0) $ (!\inst1|count\(0))))) # (!\inst1|count\(1) & (\inst1|mark\(1) & (\inst1|mark\(0) $ (!\inst1|count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(1),
	datab => \inst1|mark\(0),
	datac => \inst1|mark\(1),
	datad => \inst1|count\(0),
	combout => \inst1|Equal3~0_combout\);

-- Location: FF_X24_Y20_N7
\inst1|mark[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector7~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mark\(3));

-- Location: FF_X24_Y20_N23
\inst1|mark[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector6~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mark\(4));

-- Location: FF_X24_Y20_N11
\inst1|mark[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector3~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mark\(7));

-- Location: FF_X24_Y20_N21
\inst1|mark[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mark\(10));

-- Location: LCCOMB_X25_Y19_N26
\inst1|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~1_combout\ = (\inst1|count\(3) & (\inst1|Add1~6_combout\ & (\inst1|count\(2) $ (!\inst1|Add1~4_combout\)))) # (!\inst1|count\(3) & (!\inst1|Add1~6_combout\ & (\inst1|count\(2) $ (!\inst1|Add1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(3),
	datab => \inst1|count\(2),
	datac => \inst1|Add1~4_combout\,
	datad => \inst1|Add1~6_combout\,
	combout => \inst1|Equal1~1_combout\);

-- Location: LCCOMB_X25_Y19_N10
\inst1|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~5_combout\ = (\inst1|count\(8) & (\inst1|Add1~16_combout\ & (\inst1|count\(9) $ (!\inst1|Add1~18_combout\)))) # (!\inst1|count\(8) & (!\inst1|Add1~16_combout\ & (\inst1|count\(9) $ (!\inst1|Add1~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(8),
	datab => \inst1|count\(9),
	datac => \inst1|Add1~16_combout\,
	datad => \inst1|Add1~18_combout\,
	combout => \inst1|Equal1~5_combout\);

-- Location: FF_X33_Y19_N19
\inst17|y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|y~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|y~q\);

-- Location: LCCOMB_X24_Y22_N30
\inst1|Selector53~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector53~0_combout\ = (\inst1|direction.d1~q\ & (((\inst1|pre_step.s3~q\)))) # (!\inst1|direction.d1~q\ & (\inst1|direction.d2~q\ & ((\inst1|pre_step.s5~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d2~q\,
	datab => \inst1|direction.d1~q\,
	datac => \inst1|pre_step.s3~q\,
	datad => \inst1|pre_step.s5~q\,
	combout => \inst1|Selector53~0_combout\);

-- Location: LCCOMB_X24_Y21_N12
\inst1|Selector51~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector51~0_combout\ = (\inst1|direction.d1~q\ & (((\inst1|pre_step.s1~q\)))) # (!\inst1|direction.d1~q\ & (\inst1|direction.d2~q\ & (\inst1|pre_step.s3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d2~q\,
	datab => \inst1|direction.d1~q\,
	datac => \inst1|pre_step.s3~q\,
	datad => \inst1|pre_step.s1~q\,
	combout => \inst1|Selector51~0_combout\);

-- Location: LCCOMB_X24_Y22_N10
\inst1|Selector52~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector52~0_combout\ = (\inst1|direction.d1~q\ & (((\inst1|pre_step.s2~q\)))) # (!\inst1|direction.d1~q\ & (\inst1|direction.d2~q\ & ((\inst1|pre_step.s4~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d2~q\,
	datab => \inst1|direction.d1~q\,
	datac => \inst1|pre_step.s2~q\,
	datad => \inst1|pre_step.s4~q\,
	combout => \inst1|Selector52~0_combout\);

-- Location: LCCOMB_X24_Y22_N20
\inst1|Selector50~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector50~0_combout\ = (!\inst1|direction.d1~q\ & (\inst1|pre_step.s2~q\ & \inst1|direction.d2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|direction.d1~q\,
	datac => \inst1|pre_step.s2~q\,
	datad => \inst1|direction.d2~q\,
	combout => \inst1|Selector50~0_combout\);

-- Location: LCCOMB_X24_Y22_N14
\inst1|Selector50~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector50~1_combout\ = (\inst1|Selector50~0_combout\) # ((\inst1|direction.d1~q\ & ((\inst1|pre_step.s8~q\) # (!\inst1|pre_step.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pre_step.s0~q\,
	datab => \inst1|pre_step.s8~q\,
	datac => \inst1|direction.d1~q\,
	datad => \inst1|Selector50~0_combout\,
	combout => \inst1|Selector50~1_combout\);

-- Location: LCCOMB_X21_Y21_N10
\inst16|data_24~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~2_combout\ = (\inst16|data\(17) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|data\(17),
	datac => \inst4|door~q\,
	combout => \inst16|data_24~2_combout\);

-- Location: LCCOMB_X21_Y21_N26
\inst16|data_24~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~5_combout\ = (\inst4|door~q\ & \inst16|data\(14))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|door~q\,
	datad => \inst16|data\(14),
	combout => \inst16|data_24~5_combout\);

-- Location: LCCOMB_X22_Y21_N10
\inst16|data_24~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~7_combout\ = (\inst16|data\(6) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|data\(6),
	datad => \inst4|door~q\,
	combout => \inst16|data_24~7_combout\);

-- Location: LCCOMB_X23_Y21_N10
\inst16|data_24~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~9_combout\ = (\inst4|door~q\ & \inst16|data\(11))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|door~q\,
	datad => \inst16|data\(11),
	combout => \inst16|data_24~9_combout\);

-- Location: LCCOMB_X22_Y21_N30
\inst16|data_24~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~13_combout\ = (\inst4|door~q\ & \inst16|data\(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|door~q\,
	datad => \inst16|data\(5),
	combout => \inst16|data_24~13_combout\);

-- Location: LCCOMB_X22_Y21_N26
\inst16|data_24~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~15_combout\ = (\inst16|data\(4) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|data\(4),
	datad => \inst4|door~q\,
	combout => \inst16|data_24~15_combout\);

-- Location: LCCOMB_X23_Y18_N30
\inst16|data_24~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~24_combout\ = (\inst16|data\(20) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|data\(20),
	datad => \inst4|door~q\,
	combout => \inst16|data_24~24_combout\);

-- Location: LCCOMB_X24_Y15_N28
\inst4|door~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|door~0_combout\ = (!\inst4|num\(0) & ((\inst4|num\(1) & ((!\inst4|process_2~1_combout\))) # (!\inst4|num\(1) & (!\inst4|process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_2~0_combout\,
	datab => \inst4|num\(1),
	datac => \inst4|process_2~1_combout\,
	datad => \inst4|num\(0),
	combout => \inst4|door~0_combout\);

-- Location: FF_X2_Y8_N1
\inst|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(6));

-- Location: FF_X2_Y8_N27
\inst|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(1));

-- Location: FF_X19_Y14_N17
\inst5|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(1));

-- Location: FF_X19_Y14_N5
\inst5|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cnt~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(0));

-- Location: FF_X19_Y13_N27
\inst5|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cnt~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(17));

-- Location: FF_X19_Y13_N29
\inst5|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cnt~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(16));

-- Location: FF_X19_Y13_N23
\inst5|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cnt~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(15));

-- Location: FF_X19_Y13_N25
\inst5|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cnt~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(14));

-- Location: LCCOMB_X19_Y13_N18
\inst5|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~0_combout\ = (\inst5|cnt\(17) & (\inst5|cnt\(16) & (\inst5|cnt\(15) & \inst5|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(17),
	datab => \inst5|cnt\(16),
	datac => \inst5|cnt\(15),
	datad => \inst5|cnt\(14),
	combout => \inst5|Equal0~0_combout\);

-- Location: FF_X19_Y13_N21
\inst5|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cnt~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(12));

-- Location: FF_X19_Y13_N9
\inst5|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~26_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(13));

-- Location: FF_X19_Y13_N5
\inst5|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~22_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(11));

-- Location: FF_X19_Y13_N3
\inst5|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~20_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(10));

-- Location: LCCOMB_X19_Y13_N30
\inst5|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~1_combout\ = (!\inst5|cnt\(13) & (\inst5|cnt\(12) & (!\inst5|cnt\(11) & !\inst5|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(13),
	datab => \inst5|cnt\(12),
	datac => \inst5|cnt\(11),
	datad => \inst5|cnt\(10),
	combout => \inst5|Equal0~1_combout\);

-- Location: FF_X18_Y14_N17
\inst5|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cnt~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(7));

-- Location: FF_X19_Y13_N1
\inst5|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~18_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(9));

-- Location: FF_X19_Y14_N31
\inst5|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(8));

-- Location: FF_X19_Y14_N27
\inst5|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(6));

-- Location: LCCOMB_X19_Y14_N2
\inst5|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~2_combout\ = (\inst5|cnt\(7) & (!\inst5|cnt\(6) & (!\inst5|cnt\(8) & !\inst5|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(7),
	datab => \inst5|cnt\(6),
	datac => \inst5|cnt\(8),
	datad => \inst5|cnt\(9),
	combout => \inst5|Equal0~2_combout\);

-- Location: FF_X19_Y14_N7
\inst5|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|cnt~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(4));

-- Location: FF_X19_Y14_N25
\inst5|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(5));

-- Location: FF_X19_Y14_N21
\inst5|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(3));

-- Location: FF_X19_Y14_N19
\inst5|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|Add0~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|cnt\(2));

-- Location: LCCOMB_X19_Y14_N12
\inst5|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~3_combout\ = (\inst5|cnt\(4) & (!\inst5|cnt\(3) & (!\inst5|cnt\(2) & !\inst5|cnt\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(4),
	datab => \inst5|cnt\(3),
	datac => \inst5|cnt\(2),
	datad => \inst5|cnt\(5),
	combout => \inst5|Equal0~3_combout\);

-- Location: LCCOMB_X19_Y14_N0
\inst5|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Equal0~4_combout\ = (\inst5|Equal0~3_combout\ & (\inst5|Equal0~2_combout\ & (\inst5|Equal0~1_combout\ & \inst5|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Equal0~3_combout\,
	datab => \inst5|Equal0~2_combout\,
	datac => \inst5|Equal0~1_combout\,
	datad => \inst5|Equal0~0_combout\,
	combout => \inst5|Equal0~4_combout\);

-- Location: LCCOMB_X19_Y14_N10
\inst5|clk2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|clk2~0_combout\ = \inst5|clk2~q\ $ (((!\inst5|cnt\(0) & (!\inst5|cnt\(1) & \inst5|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|clk2~q\,
	datab => \inst5|cnt\(0),
	datac => \inst5|cnt\(1),
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|clk2~0_combout\);

-- Location: LCCOMB_X23_Y17_N22
\inst4|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~0_combout\ = (\inst4|state.s2~q\ & ((\inst4|direction~0_combout\) # ((!\inst4|state~16_combout\) # (!\inst4|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|direction~0_combout\,
	datab => \inst4|num\(0),
	datac => \inst4|state.s2~q\,
	datad => \inst4|state~16_combout\,
	combout => \inst4|Selector0~0_combout\);

-- Location: LCCOMB_X26_Y15_N26
\inst4|Selector0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~1_combout\ = (!\inst4|num\(0) & (((!\inst4|Selector6~4_combout\) # (!\inst4|process_2~1_combout\)) # (!\inst4|process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_2~0_combout\,
	datab => \inst4|process_2~1_combout\,
	datac => \inst4|num\(0),
	datad => \inst4|Selector6~4_combout\,
	combout => \inst4|Selector0~1_combout\);

-- Location: LCCOMB_X24_Y14_N14
\inst4|Selector0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~2_combout\ = (\inst4|Selector0~1_combout\) # ((!\inst4|up_latch\(1) & (\inst4|num\(0) & \inst4|direction~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|up_latch\(1),
	datab => \inst4|num\(0),
	datac => \inst4|direction~1_combout\,
	datad => \inst4|Selector0~1_combout\,
	combout => \inst4|Selector0~2_combout\);

-- Location: LCCOMB_X25_Y15_N22
\inst4|Selector0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~3_combout\ = (\inst4|num\(1) & ((\inst4|Selector0~0_combout\) # ((!\inst4|state.s0~q\ & \inst4|Selector0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s0~q\,
	datab => \inst4|Selector0~0_combout\,
	datac => \inst4|num\(1),
	datad => \inst4|Selector0~2_combout\,
	combout => \inst4|Selector0~3_combout\);

-- Location: LCCOMB_X26_Y16_N26
\inst4|direction~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|direction~2_combout\ = (\inst4|num\(0) & (\inst4|direction\(1))) # (!\inst4|num\(0) & ((\inst4|num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|direction\(1),
	datac => \inst4|num\(1),
	datad => \inst4|num\(0),
	combout => \inst4|direction~2_combout\);

-- Location: LCCOMB_X24_Y17_N6
\inst4|Selector1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~5_combout\ = (\inst4|direction\(0) & (!\inst5|Mux0~2_combout\ & ((\inst4|Selector1~4_combout\) # (\inst4|state.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|direction\(0),
	datab => \inst4|Selector1~4_combout\,
	datac => \inst4|state.s3~q\,
	datad => \inst5|Mux0~2_combout\,
	combout => \inst4|Selector1~5_combout\);

-- Location: LCCOMB_X24_Y17_N22
\inst4|Selector1~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~9_combout\ = (\inst4|Equal7~0_combout\ & (\inst4|floor\(0) & (\inst4|floor\(1)))) # (!\inst4|Equal7~0_combout\ & (((\inst4|direction\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|floor\(0),
	datab => \inst4|floor\(1),
	datac => \inst4|direction\(0),
	datad => \inst4|Equal7~0_combout\,
	combout => \inst4|Selector1~9_combout\);

-- Location: LCCOMB_X21_Y19_N26
\inst7|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt~1_combout\ = (\inst7|Add1~2_combout\ & \inst7|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add1~2_combout\,
	datad => \inst7|state.s1~q\,
	combout => \inst7|cnt~1_combout\);

-- Location: LCCOMB_X23_Y19_N2
\inst7|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Selector1~0_combout\ = (!\busy~input_o\ & !\inst7|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~input_o\,
	datad => \inst7|state.s0~q\,
	combout => \inst7|Selector1~0_combout\);

-- Location: FF_X22_Y22_N5
\inst7|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|count~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|count\(5));

-- Location: FF_X21_Y22_N9
\inst7|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|count\(4));

-- Location: FF_X21_Y22_N15
\inst7|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~14_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|count\(7));

-- Location: FF_X21_Y22_N21
\inst7|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~20_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|count\(10));

-- Location: FF_X24_Y16_N13
\inst4|cnt[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~53_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(25));

-- Location: FF_X24_Y16_N21
\inst4|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~59_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(5));

-- Location: FF_X22_Y15_N9
\inst4|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~66_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(7));

-- Location: FF_X22_Y15_N17
\inst4|cnt[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~70_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(20));

-- Location: LCCOMB_X22_Y16_N24
\inst4|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal2~5_combout\ = ((\inst4|cnt\(17)) # ((!\inst4|cnt\(18)) # (!\inst4|cnt\(16)))) # (!\inst4|cnt\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(15),
	datab => \inst4|cnt\(17),
	datac => \inst4|cnt\(16),
	datad => \inst4|cnt\(18),
	combout => \inst4|Equal2~5_combout\);

-- Location: LCCOMB_X26_Y17_N30
\inst1|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_0~0_combout\ = (\inst16|overweight~q\) # (!\key_open~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \key_open~input_o\,
	datad => \inst16|overweight~q\,
	combout => \inst1|process_0~0_combout\);

-- Location: LCCOMB_X26_Y17_N28
\inst1|Selector37~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector37~1_combout\ = (\inst1|Selector37~0_combout\) # ((!\inst1|process_0~0_combout\ & (\inst1|state.c3~q\ & \inst1|delay\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_0~0_combout\,
	datab => \inst1|state.c3~q\,
	datac => \inst1|delay\(10),
	datad => \inst1|Selector37~0_combout\,
	combout => \inst1|Selector37~1_combout\);

-- Location: FF_X28_Y17_N23
\inst1|delay[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector43~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|delay\(6));

-- Location: FF_X22_Y17_N25
\inst1|delay[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector47~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|delay\(2));

-- Location: LCCOMB_X26_Y20_N30
\inst1|target[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|target[2]~5_combout\ = (\inst1|Add3~4_combout\ & ((\inst1|target[9]~0_combout\) # ((!\inst1|target[0]~1_combout\ & \inst1|target\(2))))) # (!\inst1|Add3~4_combout\ & (!\inst1|target[0]~1_combout\ & (\inst1|target\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~4_combout\,
	datab => \inst1|target[0]~1_combout\,
	datac => \inst1|target\(2),
	datad => \inst1|target[9]~0_combout\,
	combout => \inst1|target[2]~5_combout\);

-- Location: LCCOMB_X26_Y21_N0
\inst1|target[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|target[4]~7_combout\ = (\inst1|Add3~8_combout\ & ((\inst1|target[9]~0_combout\) # ((\inst1|target\(4) & !\inst1|target[0]~1_combout\)))) # (!\inst1|Add3~8_combout\ & (((\inst1|target\(4) & !\inst1|target[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~8_combout\,
	datab => \inst1|target[9]~0_combout\,
	datac => \inst1|target\(4),
	datad => \inst1|target[0]~1_combout\,
	combout => \inst1|target[4]~7_combout\);

-- Location: LCCOMB_X24_Y20_N0
\inst1|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector10~0_combout\ = (!\inst1|target\(0) & ((\inst1|Selector1~0_combout\) # ((\inst1|direction.d1~q\ & \inst1|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(0),
	datab => \inst1|direction.d1~q\,
	datac => \inst1|Equal1~7_combout\,
	datad => \inst1|Selector1~0_combout\,
	combout => \inst1|Selector10~0_combout\);

-- Location: LCCOMB_X26_Y17_N24
\inst1|mark[1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|mark[1]~0_combout\ = (!\inst1|state.c3~q\ & (\inst1|state.c0~q\ & !\inst1|direction.d2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.c3~q\,
	datac => \inst1|state.c0~q\,
	datad => \inst1|direction.d2~q\,
	combout => \inst1|mark[1]~0_combout\);

-- Location: LCCOMB_X26_Y17_N26
\inst1|mark[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|mark[1]~1_combout\ = (!\inst1|state.c3~q\ & (\inst1|state.c0~q\ & !\inst1|process_1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.c3~q\,
	datac => \inst1|state.c0~q\,
	datad => \inst1|process_1~2_combout\,
	combout => \inst1|mark[1]~1_combout\);

-- Location: LCCOMB_X25_Y20_N28
\inst1|mark[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|mark[1]~2_combout\ = (\inst1|direction.d2~q\ & (\inst1|Add1~22_combout\ & (!\inst1|LessThan0~20_combout\ & \inst1|mark[1]~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d2~q\,
	datab => \inst1|Add1~22_combout\,
	datac => \inst1|LessThan0~20_combout\,
	datad => \inst1|mark[1]~1_combout\,
	combout => \inst1|mark[1]~2_combout\);

-- Location: LCCOMB_X24_Y20_N26
\inst1|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector9~0_combout\ = (!\inst1|target\(1) & ((\inst1|mark[1]~2_combout\) # ((\inst1|mark[1]~0_combout\ & \inst1|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(1),
	datab => \inst1|mark[1]~0_combout\,
	datac => \inst1|Equal1~7_combout\,
	datad => \inst1|mark[1]~2_combout\,
	combout => \inst1|Selector9~0_combout\);

-- Location: LCCOMB_X24_Y20_N6
\inst1|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector7~0_combout\ = (\inst1|target\(3) & ((\inst1|Selector1~0_combout\) # ((\inst1|direction.d1~q\ & \inst1|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(3),
	datab => \inst1|direction.d1~q\,
	datac => \inst1|Equal1~7_combout\,
	datad => \inst1|Selector1~0_combout\,
	combout => \inst1|Selector7~0_combout\);

-- Location: LCCOMB_X24_Y20_N22
\inst1|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector6~0_combout\ = (\inst1|target\(4) & ((\inst1|Selector1~0_combout\) # ((\inst1|direction.d1~q\ & \inst1|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(4),
	datab => \inst1|direction.d1~q\,
	datac => \inst1|Equal1~7_combout\,
	datad => \inst1|Selector1~0_combout\,
	combout => \inst1|Selector6~0_combout\);

-- Location: LCCOMB_X24_Y20_N10
\inst1|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector3~0_combout\ = (\inst1|target\(7) & ((\inst1|Selector1~0_combout\) # ((\inst1|direction.d1~q\ & \inst1|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(7),
	datab => \inst1|direction.d1~q\,
	datac => \inst1|Equal1~7_combout\,
	datad => \inst1|Selector1~0_combout\,
	combout => \inst1|Selector3~0_combout\);

-- Location: LCCOMB_X24_Y20_N20
\inst1|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector0~0_combout\ = (\inst1|target\(10) & ((\inst1|mark[1]~2_combout\) # ((\inst1|mark[1]~0_combout\ & \inst1|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mark[1]~0_combout\,
	datab => \inst1|target\(10),
	datac => \inst1|Equal1~7_combout\,
	datad => \inst1|mark[1]~2_combout\,
	combout => \inst1|Selector0~0_combout\);

-- Location: FF_X33_Y19_N21
\inst17|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|cnt~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(15));

-- Location: FF_X33_Y19_N5
\inst17|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|cnt~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(14));

-- Location: FF_X32_Y19_N27
\inst17|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~26_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(13));

-- Location: FF_X32_Y19_N25
\inst17|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~24_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(12));

-- Location: LCCOMB_X33_Y19_N16
\inst17|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Equal0~0_combout\ = (!\inst17|cnt\(13) & (!\inst17|cnt\(12) & (\inst17|cnt\(14) & \inst17|cnt\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt\(13),
	datab => \inst17|cnt\(12),
	datac => \inst17|cnt\(14),
	datad => \inst17|cnt\(15),
	combout => \inst17|Equal0~0_combout\);

-- Location: FF_X33_Y19_N31
\inst17|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|cnt~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(9));

-- Location: FF_X33_Y19_N25
\inst17|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|cnt~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(8));

-- Location: FF_X32_Y19_N23
\inst17|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~22_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(11));

-- Location: FF_X32_Y19_N21
\inst17|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~20_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(10));

-- Location: LCCOMB_X33_Y19_N28
\inst17|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Equal0~1_combout\ = (\inst17|cnt\(8) & (!\inst17|cnt\(11) & (\inst17|cnt\(9) & !\inst17|cnt\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt\(8),
	datab => \inst17|cnt\(11),
	datac => \inst17|cnt\(9),
	datad => \inst17|cnt\(10),
	combout => \inst17|Equal0~1_combout\);

-- Location: FF_X33_Y19_N7
\inst17|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|cnt~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(6));

-- Location: FF_X33_Y19_N15
\inst17|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|cnt~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(4));

-- Location: FF_X32_Y19_N15
\inst17|cnt[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~14_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(7));

-- Location: FF_X32_Y19_N11
\inst17|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(5));

-- Location: LCCOMB_X33_Y19_N10
\inst17|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Equal0~2_combout\ = (!\inst17|cnt\(5) & (\inst17|cnt\(6) & (\inst17|cnt\(4) & !\inst17|cnt\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt\(5),
	datab => \inst17|cnt\(6),
	datac => \inst17|cnt\(4),
	datad => \inst17|cnt\(7),
	combout => \inst17|Equal0~2_combout\);

-- Location: FF_X32_Y19_N7
\inst17|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(3));

-- Location: FF_X32_Y19_N5
\inst17|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(2));

-- Location: FF_X32_Y19_N3
\inst17|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|Add0~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(1));

-- Location: FF_X33_Y19_N3
\inst17|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst17|cnt~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst17|cnt\(0));

-- Location: LCCOMB_X33_Y19_N26
\inst17|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Equal0~3_combout\ = (!\inst17|cnt\(1) & (!\inst17|cnt\(3) & (!\inst17|cnt\(2) & !\inst17|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|cnt\(1),
	datab => \inst17|cnt\(3),
	datac => \inst17|cnt\(2),
	datad => \inst17|cnt\(0),
	combout => \inst17|Equal0~3_combout\);

-- Location: LCCOMB_X33_Y19_N12
\inst17|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|Equal0~4_combout\ = (\inst17|Equal0~2_combout\ & (\inst17|Equal0~1_combout\ & (\inst17|Equal0~3_combout\ & \inst17|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Equal0~2_combout\,
	datab => \inst17|Equal0~1_combout\,
	datac => \inst17|Equal0~3_combout\,
	datad => \inst17|Equal0~0_combout\,
	combout => \inst17|Equal0~4_combout\);

-- Location: LCCOMB_X33_Y19_N22
\inst17|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|y~0_combout\ = \inst17|y~q\ $ (\inst17|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|y~q\,
	datad => \inst17|Equal0~4_combout\,
	combout => \inst17|y~0_combout\);

-- Location: LCCOMB_X21_Y21_N24
\inst16|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector11~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((\inst16|count\(4)) # (!\inst16|Decoder0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(4),
	datab => \inst16|state~12_combout\,
	datac => \inst16|state.t2~q\,
	datad => \inst16|Decoder0~1_combout\,
	combout => \inst16|Selector11~0_combout\);

-- Location: LCCOMB_X21_Y21_N18
\inst16|Selector11~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector11~1_combout\ = (\inst16|Decoder0~1_combout\ & ((\inst16|Selector5~0_combout\) # ((\inst16|data\(17) & \inst16|Selector11~0_combout\)))) # (!\inst16|Decoder0~1_combout\ & (((\inst16|data\(17) & \inst16|Selector11~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~1_combout\,
	datab => \inst16|Selector5~0_combout\,
	datac => \inst16|data\(17),
	datad => \inst16|Selector11~0_combout\,
	combout => \inst16|Selector11~1_combout\);

-- Location: LCCOMB_X21_Y21_N2
\inst16|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector12~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((\inst16|count\(4)) # (!\inst16|Decoder0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(4),
	datab => \inst16|state~12_combout\,
	datac => \inst16|state.t2~q\,
	datad => \inst16|Decoder0~2_combout\,
	combout => \inst16|Selector12~0_combout\);

-- Location: LCCOMB_X21_Y21_N12
\inst16|Selector12~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector12~1_combout\ = (\inst16|Decoder0~2_combout\ & ((\inst16|Selector5~0_combout\) # ((\inst16|data\(16) & \inst16|Selector12~0_combout\)))) # (!\inst16|Decoder0~2_combout\ & (((\inst16|data\(16) & \inst16|Selector12~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~2_combout\,
	datab => \inst16|Selector5~0_combout\,
	datac => \inst16|data\(16),
	datad => \inst16|Selector12~0_combout\,
	combout => \inst16|Selector12~1_combout\);

-- Location: LCCOMB_X21_Y21_N28
\inst16|Decoder0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Decoder0~3_combout\ = (!\inst16|count\(0) & (!\inst16|count\(1) & (\inst16|count\(3) & !\inst16|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(0),
	datab => \inst16|count\(1),
	datac => \inst16|count\(3),
	datad => \inst16|count\(2),
	combout => \inst16|Decoder0~3_combout\);

-- Location: LCCOMB_X21_Y21_N22
\inst16|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector13~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((\inst16|count\(4)) # (!\inst16|Decoder0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(4),
	datab => \inst16|state~12_combout\,
	datac => \inst16|state.t2~q\,
	datad => \inst16|Decoder0~3_combout\,
	combout => \inst16|Selector13~0_combout\);

-- Location: LCCOMB_X21_Y21_N30
\inst16|Selector13~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector13~1_combout\ = (\inst16|Selector13~0_combout\ & ((\inst16|data\(15)) # ((\inst16|Decoder0~3_combout\ & \inst16|Selector5~0_combout\)))) # (!\inst16|Selector13~0_combout\ & (\inst16|Decoder0~3_combout\ & ((\inst16|Selector5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Selector13~0_combout\,
	datab => \inst16|Decoder0~3_combout\,
	datac => \inst16|data\(15),
	datad => \inst16|Selector5~0_combout\,
	combout => \inst16|Selector13~1_combout\);

-- Location: LCCOMB_X22_Y18_N8
\inst16|Decoder0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Decoder0~4_combout\ = (\inst16|count\(1) & (\inst16|count\(0) & (!\inst16|count\(3) & \inst16|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(1),
	datab => \inst16|count\(0),
	datac => \inst16|count\(3),
	datad => \inst16|count\(2),
	combout => \inst16|Decoder0~4_combout\);

-- Location: LCCOMB_X22_Y18_N12
\inst16|Selector14~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector14~1_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((!\inst16|Decoder0~4_combout\) # (!\inst16|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|state.t2~q\,
	datab => \inst16|count\(4),
	datac => \inst16|Decoder0~4_combout\,
	datad => \inst16|state~12_combout\,
	combout => \inst16|Selector14~1_combout\);

-- Location: LCCOMB_X22_Y18_N24
\inst16|Selector14~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector14~2_combout\ = (\inst16|Decoder0~4_combout\ & ((\inst16|Selector14~0_combout\) # ((\inst16|data\(14) & \inst16|Selector14~1_combout\)))) # (!\inst16|Decoder0~4_combout\ & (((\inst16|data\(14) & \inst16|Selector14~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~4_combout\,
	datab => \inst16|Selector14~0_combout\,
	datac => \inst16|data\(14),
	datad => \inst16|Selector14~1_combout\,
	combout => \inst16|Selector14~2_combout\);

-- Location: LCCOMB_X23_Y18_N10
\inst16|Decoder0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Decoder0~6_combout\ = (\inst16|count\(3) & (\inst16|count\(0) & (\inst16|count\(2) & \inst16|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(3),
	datab => \inst16|count\(0),
	datac => \inst16|count\(2),
	datad => \inst16|count\(1),
	combout => \inst16|Decoder0~6_combout\);

-- Location: LCCOMB_X23_Y18_N20
\inst16|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector22~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((!\inst16|count\(4)) # (!\inst16|Decoder0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~6_combout\,
	datab => \inst16|count\(4),
	datac => \inst16|state.t2~q\,
	datad => \inst16|state~12_combout\,
	combout => \inst16|Selector22~0_combout\);

-- Location: LCCOMB_X23_Y18_N8
\inst16|Selector22~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector22~1_combout\ = (\inst16|Decoder0~6_combout\ & ((\inst16|Selector14~0_combout\) # ((\inst16|data\(6) & \inst16|Selector22~0_combout\)))) # (!\inst16|Decoder0~6_combout\ & (((\inst16|data\(6) & \inst16|Selector22~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~6_combout\,
	datab => \inst16|Selector14~0_combout\,
	datac => \inst16|data\(6),
	datad => \inst16|Selector22~0_combout\,
	combout => \inst16|Selector22~1_combout\);

-- Location: LCCOMB_X23_Y21_N14
\inst16|Decoder0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Decoder0~8_combout\ = (\inst16|count\(2) & (!\inst16|count\(3) & (!\inst16|count\(1) & !\inst16|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(2),
	datab => \inst16|count\(3),
	datac => \inst16|count\(1),
	datad => \inst16|count\(0),
	combout => \inst16|Decoder0~8_combout\);

-- Location: LCCOMB_X23_Y21_N0
\inst16|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector17~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((!\inst16|Decoder0~8_combout\) # (!\inst16|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(4),
	datab => \inst16|state.t2~q\,
	datac => \inst16|Decoder0~8_combout\,
	datad => \inst16|state~12_combout\,
	combout => \inst16|Selector17~0_combout\);

-- Location: LCCOMB_X23_Y21_N18
\inst16|Selector17~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector17~1_combout\ = (\inst16|Decoder0~8_combout\ & ((\inst16|Selector14~0_combout\) # ((\inst16|Selector17~0_combout\ & \inst16|data\(11))))) # (!\inst16|Decoder0~8_combout\ & (\inst16|Selector17~0_combout\ & (\inst16|data\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~8_combout\,
	datab => \inst16|Selector17~0_combout\,
	datac => \inst16|data\(11),
	datad => \inst16|Selector14~0_combout\,
	combout => \inst16|Selector17~1_combout\);

-- Location: LCCOMB_X23_Y20_N28
\inst16|Decoder0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Decoder0~10_combout\ = (!\inst16|count\(2) & (!\inst16|count\(0) & (\inst16|count\(1) & !\inst16|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(2),
	datab => \inst16|count\(0),
	datac => \inst16|count\(1),
	datad => \inst16|count\(3),
	combout => \inst16|Decoder0~10_combout\);

-- Location: LCCOMB_X23_Y21_N6
\inst16|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector19~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((!\inst16|Decoder0~10_combout\) # (!\inst16|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(4),
	datab => \inst16|state~12_combout\,
	datac => \inst16|state.t2~q\,
	datad => \inst16|Decoder0~10_combout\,
	combout => \inst16|Selector19~0_combout\);

-- Location: LCCOMB_X23_Y21_N30
\inst16|Selector19~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector19~1_combout\ = (\inst16|Decoder0~10_combout\ & ((\inst16|Selector14~0_combout\) # ((\inst16|data\(9) & \inst16|Selector19~0_combout\)))) # (!\inst16|Decoder0~10_combout\ & (((\inst16|data\(9) & \inst16|Selector19~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~10_combout\,
	datab => \inst16|Selector14~0_combout\,
	datac => \inst16|data\(9),
	datad => \inst16|Selector19~0_combout\,
	combout => \inst16|Selector19~1_combout\);

-- Location: LCCOMB_X23_Y20_N6
\inst16|Decoder0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Decoder0~11_combout\ = (!\inst16|count\(2) & (\inst16|count\(0) & (!\inst16|count\(1) & !\inst16|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(2),
	datab => \inst16|count\(0),
	datac => \inst16|count\(1),
	datad => \inst16|count\(3),
	combout => \inst16|Decoder0~11_combout\);

-- Location: LCCOMB_X23_Y18_N16
\inst16|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector23~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((!\inst16|Decoder0~12_combout\) # (!\inst16|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|state.t2~q\,
	datab => \inst16|count\(4),
	datac => \inst16|Decoder0~12_combout\,
	datad => \inst16|state~12_combout\,
	combout => \inst16|Selector23~0_combout\);

-- Location: LCCOMB_X23_Y18_N26
\inst16|Selector23~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector23~1_combout\ = (\inst16|Decoder0~12_combout\ & ((\inst16|Selector14~0_combout\) # ((\inst16|data\(5) & \inst16|Selector23~0_combout\)))) # (!\inst16|Decoder0~12_combout\ & (((\inst16|data\(5) & \inst16|Selector23~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~12_combout\,
	datab => \inst16|Selector14~0_combout\,
	datac => \inst16|data\(5),
	datad => \inst16|Selector23~0_combout\,
	combout => \inst16|Selector23~1_combout\);

-- Location: LCCOMB_X21_Y20_N10
\inst16|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector28~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((!\inst16|Decoder0~2_combout\) # (!\inst16|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(4),
	datab => \inst16|state.t2~q\,
	datac => \inst16|Decoder0~2_combout\,
	datad => \inst16|state~12_combout\,
	combout => \inst16|Selector28~0_combout\);

-- Location: LCCOMB_X23_Y20_N26
\inst16|Decoder0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Decoder0~13_combout\ = (\inst16|count\(3) & (\inst16|count\(0) & (!\inst16|count\(1) & \inst16|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(3),
	datab => \inst16|count\(0),
	datac => \inst16|count\(1),
	datad => \inst16|count\(2),
	combout => \inst16|Decoder0~13_combout\);

-- Location: LCCOMB_X23_Y20_N12
\inst16|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector24~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((!\inst16|Decoder0~13_combout\) # (!\inst16|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|state.t2~q\,
	datab => \inst16|count\(4),
	datac => \inst16|Decoder0~13_combout\,
	datad => \inst16|state~12_combout\,
	combout => \inst16|Selector24~0_combout\);

-- Location: LCCOMB_X23_Y20_N2
\inst16|Selector24~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector24~1_combout\ = (\inst16|Decoder0~13_combout\ & ((\inst16|Selector14~0_combout\) # ((\inst16|data\(4) & \inst16|Selector24~0_combout\)))) # (!\inst16|Decoder0~13_combout\ & (((\inst16|data\(4) & \inst16|Selector24~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~13_combout\,
	datab => \inst16|Selector14~0_combout\,
	datac => \inst16|data\(4),
	datad => \inst16|Selector24~0_combout\,
	combout => \inst16|Selector24~1_combout\);

-- Location: LCCOMB_X21_Y20_N12
\inst16|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector26~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((!\inst16|Decoder0~0_combout\) # (!\inst16|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(4),
	datab => \inst16|state.t2~q\,
	datac => \inst16|Decoder0~0_combout\,
	datad => \inst16|state~12_combout\,
	combout => \inst16|Selector26~0_combout\);

-- Location: LCCOMB_X21_Y20_N30
\inst16|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector27~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((!\inst16|Decoder0~1_combout\) # (!\inst16|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(4),
	datab => \inst16|state~12_combout\,
	datac => \inst16|state.t2~q\,
	datad => \inst16|Decoder0~1_combout\,
	combout => \inst16|Selector27~0_combout\);

-- Location: LCCOMB_X22_Y18_N28
\inst16|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector9~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((\inst16|count\(4)) # (!\inst16|Decoder0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|state.t2~q\,
	datab => \inst16|count\(4),
	datac => \inst16|Decoder0~14_combout\,
	datad => \inst16|state~12_combout\,
	combout => \inst16|Selector9~0_combout\);

-- Location: LCCOMB_X22_Y18_N30
\inst16|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector9~1_combout\ = (\inst16|Selector5~0_combout\ & ((\inst16|Decoder0~14_combout\) # ((\inst16|data\(19) & \inst16|Selector9~0_combout\)))) # (!\inst16|Selector5~0_combout\ & (((\inst16|data\(19) & \inst16|Selector9~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Selector5~0_combout\,
	datab => \inst16|Decoder0~14_combout\,
	datac => \inst16|data\(19),
	datad => \inst16|Selector9~0_combout\,
	combout => \inst16|Selector9~1_combout\);

-- Location: LCCOMB_X23_Y18_N6
\inst16|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector8~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((\inst16|count\(4)) # (!\inst16|Decoder0~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|state.t2~q\,
	datab => \inst16|count\(4),
	datac => \inst16|Decoder0~13_combout\,
	datad => \inst16|state~12_combout\,
	combout => \inst16|Selector8~0_combout\);

-- Location: LCCOMB_X23_Y18_N24
\inst16|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector8~1_combout\ = (\inst16|Decoder0~13_combout\ & ((\inst16|Selector5~0_combout\) # ((\inst16|data\(20) & \inst16|Selector8~0_combout\)))) # (!\inst16|Decoder0~13_combout\ & (((\inst16|data\(20) & \inst16|Selector8~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~13_combout\,
	datab => \inst16|Selector5~0_combout\,
	datac => \inst16|data\(20),
	datad => \inst16|Selector8~0_combout\,
	combout => \inst16|Selector8~1_combout\);

-- Location: LCCOMB_X26_Y15_N14
\inst4|floor~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~12_combout\ = (\inst4|up_latch\(1)) # ((\inst4|down_latch\(1)) # (\inst4|key_latch\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|up_latch\(1),
	datac => \inst4|down_latch\(1),
	datad => \inst4|key_latch\(2),
	combout => \inst4|floor~12_combout\);

-- Location: LCCOMB_X24_Y14_N30
\inst4|Selector4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector4~6_combout\ = \inst4|num\(1) $ (((\inst4|floor\(1) & \inst4|num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|floor\(1),
	datab => \inst4|num\(1),
	datad => \inst4|num\(0),
	combout => \inst4|Selector4~6_combout\);

-- Location: LCCOMB_X24_Y14_N16
\inst4|Selector4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector4~7_combout\ = (\inst4|state.s1~q\ & (((\inst4|Selector4~6_combout\) # (\inst4|floor\(1))))) # (!\inst4|state.s1~q\ & (\inst4|state.s2~q\ & (\inst4|Selector4~6_combout\ & \inst4|floor\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s2~q\,
	datab => \inst4|state.s1~q\,
	datac => \inst4|Selector4~6_combout\,
	datad => \inst4|floor\(1),
	combout => \inst4|Selector4~7_combout\);

-- Location: LCCOMB_X22_Y16_N22
\inst4|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~0_combout\ = (\inst4|cnt\(25)) # (((!\inst4|cnt\(23) & !\inst4|cnt\(24))) # (!\inst4|cnt\(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(25),
	datab => \inst4|cnt\(26),
	datac => \inst4|cnt\(23),
	datad => \inst4|cnt\(24),
	combout => \inst4|LessThan0~0_combout\);

-- Location: LCCOMB_X22_Y16_N26
\inst4|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~3_combout\ = (\inst4|cnt\(12) & (!\inst4|cnt\(16) & (!\inst4|cnt\(13) & !\inst4|cnt\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(12),
	datab => \inst4|cnt\(16),
	datac => \inst4|cnt\(13),
	datad => \inst4|cnt\(14),
	combout => \inst4|LessThan0~3_combout\);

-- Location: LCCOMB_X22_Y16_N30
\inst4|Selector4~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector4~9_combout\ = (\inst4|LessThan0~7_combout\ & ((!\inst3|doub~q\) # (!\inst3|dou2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dou2~q\,
	datac => \inst3|doub~q\,
	datad => \inst4|LessThan0~7_combout\,
	combout => \inst4|Selector4~9_combout\);

-- Location: LCCOMB_X23_Y17_N12
\inst4|Selector9~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector9~3_combout\ = (!\inst4|state.s0~q\ & ((\inst4|door~0_combout\) # ((\inst5|Mux0~0_combout\ & !\inst4|Selector6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s0~q\,
	datab => \inst5|Mux0~0_combout\,
	datac => \inst4|Selector6~4_combout\,
	datad => \inst4|door~0_combout\,
	combout => \inst4|Selector9~3_combout\);

-- Location: LCCOMB_X24_Y17_N30
\inst4|Selector6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector6~7_combout\ = (!\inst4|floor\(0) & !\inst4|floor\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|floor\(0),
	datad => \inst4|floor\(1),
	combout => \inst4|Selector6~7_combout\);

-- Location: LCCOMB_X24_Y14_N12
\inst4|Selector7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector7~2_combout\ = (!\inst4|direction~1_combout\ & (\inst5|Mux0~0_combout\ & (\inst4|process_2~4_combout\ & !\inst5|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|direction~1_combout\,
	datab => \inst5|Mux0~0_combout\,
	datac => \inst4|process_2~4_combout\,
	datad => \inst5|Mux0~1_combout\,
	combout => \inst4|Selector7~2_combout\);

-- Location: LCCOMB_X24_Y14_N6
\inst4|Selector7~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector7~3_combout\ = (!\inst4|state.s0~q\ & ((\inst4|Selector7~2_combout\) # ((\inst5|Mux0~1_combout\ & \inst4|state~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~1_combout\,
	datab => \inst4|state.s0~q\,
	datac => \inst4|state~19_combout\,
	datad => \inst4|Selector7~2_combout\,
	combout => \inst4|Selector7~3_combout\);

-- Location: LCCOMB_X24_Y15_N26
\inst4|Selector8~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector8~3_combout\ = (\inst4|Selector6~4_combout\ & (!\inst4|process_2~0_combout\ & ((\inst4|process_2~1_combout\) # (\inst4|num\(0))))) # (!\inst4|Selector6~4_combout\ & (((\inst4|process_2~1_combout\ & !\inst4|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010001110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_2~0_combout\,
	datab => \inst4|Selector6~4_combout\,
	datac => \inst4|process_2~1_combout\,
	datad => \inst4|num\(0),
	combout => \inst4|Selector8~3_combout\);

-- Location: LCCOMB_X2_Y8_N0
\inst|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt~0_combout\ = (!\inst|Equal0~1_combout\ & \inst|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~1_combout\,
	datad => \inst|Add0~12_combout\,
	combout => \inst|cnt~0_combout\);

-- Location: LCCOMB_X2_Y8_N26
\inst|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt~5_combout\ = (\inst|Add0~2_combout\ & !\inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~2_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|cnt~5_combout\);

-- Location: LCCOMB_X19_Y14_N4
\inst5|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|cnt~0_combout\ = (\inst5|Add0~0_combout\ & ((\inst5|cnt\(1)) # ((\inst5|cnt\(0)) # (!\inst5|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(1),
	datab => \inst5|Add0~0_combout\,
	datac => \inst5|cnt\(0),
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|cnt~0_combout\);

-- Location: LCCOMB_X19_Y13_N26
\inst5|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|cnt~1_combout\ = (\inst5|Add0~34_combout\ & ((\inst5|cnt\(0)) # ((\inst5|cnt\(1)) # (!\inst5|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(0),
	datab => \inst5|Equal0~4_combout\,
	datac => \inst5|cnt\(1),
	datad => \inst5|Add0~34_combout\,
	combout => \inst5|cnt~1_combout\);

-- Location: LCCOMB_X19_Y13_N28
\inst5|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|cnt~2_combout\ = (\inst5|Add0~32_combout\ & ((\inst5|cnt\(0)) # ((\inst5|cnt\(1)) # (!\inst5|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(0),
	datab => \inst5|cnt\(1),
	datac => \inst5|Add0~32_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|cnt~2_combout\);

-- Location: LCCOMB_X19_Y13_N22
\inst5|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|cnt~3_combout\ = (\inst5|Add0~30_combout\ & ((\inst5|cnt\(0)) # ((\inst5|cnt\(1)) # (!\inst5|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(0),
	datab => \inst5|Equal0~4_combout\,
	datac => \inst5|cnt\(1),
	datad => \inst5|Add0~30_combout\,
	combout => \inst5|cnt~3_combout\);

-- Location: LCCOMB_X19_Y13_N24
\inst5|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|cnt~4_combout\ = (\inst5|Add0~28_combout\ & ((\inst5|cnt\(0)) # ((\inst5|cnt\(1)) # (!\inst5|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(0),
	datab => \inst5|Equal0~4_combout\,
	datac => \inst5|cnt\(1),
	datad => \inst5|Add0~28_combout\,
	combout => \inst5|cnt~4_combout\);

-- Location: LCCOMB_X19_Y13_N20
\inst5|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|cnt~5_combout\ = (\inst5|Add0~24_combout\ & ((\inst5|cnt\(0)) # ((\inst5|cnt\(1)) # (!\inst5|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(0),
	datab => \inst5|Equal0~4_combout\,
	datac => \inst5|cnt\(1),
	datad => \inst5|Add0~24_combout\,
	combout => \inst5|cnt~5_combout\);

-- Location: LCCOMB_X18_Y14_N16
\inst5|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|cnt~6_combout\ = (\inst5|Add0~14_combout\ & ((\inst5|cnt\(0)) # ((\inst5|cnt\(1)) # (!\inst5|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(0),
	datab => \inst5|cnt\(1),
	datac => \inst5|Equal0~4_combout\,
	datad => \inst5|Add0~14_combout\,
	combout => \inst5|cnt~6_combout\);

-- Location: LCCOMB_X19_Y14_N6
\inst5|cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|cnt~7_combout\ = (\inst5|Add0~8_combout\ & ((\inst5|cnt\(1)) # ((\inst5|cnt\(0)) # (!\inst5|Equal0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|cnt\(1),
	datab => \inst5|cnt\(0),
	datac => \inst5|Add0~8_combout\,
	datad => \inst5|Equal0~4_combout\,
	combout => \inst5|cnt~7_combout\);

-- Location: LCCOMB_X22_Y22_N4
\inst7|count~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|count~5_combout\ = (\inst7|Add0~10_combout\ & (((!\inst7|count~2_combout\) # (!\inst7|Equal0~0_combout\)) # (!\inst7|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~10_combout\,
	datab => \inst7|Add0~18_combout\,
	datac => \inst7|Equal0~0_combout\,
	datad => \inst7|count~2_combout\,
	combout => \inst7|count~5_combout\);

-- Location: LCCOMB_X24_Y16_N12
\inst4|Add1~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~53_combout\ = (\inst4|Equal2~8_combout\ & (\inst4|stop~q\ & \inst4|Add1~51_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Equal2~8_combout\,
	datac => \inst4|stop~q\,
	datad => \inst4|Add1~51_combout\,
	combout => \inst4|Add1~53_combout\);

-- Location: LCCOMB_X24_Y16_N20
\inst4|Add1~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~59_combout\ = (\inst4|stop~q\ & (\inst4|Add1~11_combout\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|stop~q\,
	datac => \inst4|Add1~11_combout\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~59_combout\);

-- Location: LCCOMB_X22_Y15_N8
\inst4|Add1~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~66_combout\ = (\inst4|Add1~15_combout\ & (\inst4|stop~q\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add1~15_combout\,
	datac => \inst4|stop~q\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~66_combout\);

-- Location: LCCOMB_X22_Y15_N16
\inst4|Add1~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~70_combout\ = (\inst4|stop~q\ & (!\inst4|Add1~41_combout\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|stop~q\,
	datac => \inst4|Add1~41_combout\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~70_combout\);

-- Location: LCCOMB_X24_Y15_N20
\inst4|Selector3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector3~2_combout\ = (\inst4|num\(1) & (((!\inst4|num\(0)) # (!\inst4|state~16_combout\)))) # (!\inst4|num\(1) & (\inst4|stop~q\ & ((\inst4|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|stop~q\,
	datab => \inst4|num\(1),
	datac => \inst4|state~16_combout\,
	datad => \inst4|num\(0),
	combout => \inst4|Selector3~2_combout\);

-- Location: LCCOMB_X24_Y14_N10
\inst4|Selector3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector3~3_combout\ = (\inst4|Selector3~2_combout\ & (((!\inst4|num\(0) & \inst4|state.s1~q\)))) # (!\inst4|Selector3~2_combout\ & ((\inst4|state.s2~q\) # ((\inst4|num\(0) & \inst4|state.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s2~q\,
	datab => \inst4|num\(0),
	datac => \inst4|state.s1~q\,
	datad => \inst4|Selector3~2_combout\,
	combout => \inst4|Selector3~3_combout\);

-- Location: LCCOMB_X24_Y15_N30
\inst4|stop~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|stop~4_combout\ = (\inst4|num\(0) & ((\inst4|num\(1) & ((!\inst4|floor~30_combout\))) # (!\inst4|num\(1) & (!\inst4|stop~q\)))) # (!\inst4|num\(0) & (((\inst4|num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|stop~q\,
	datab => \inst4|num\(0),
	datac => \inst4|num\(1),
	datad => \inst4|floor~30_combout\,
	combout => \inst4|stop~4_combout\);

-- Location: LCCOMB_X28_Y17_N12
\inst1|Add2~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~23_combout\ = (!\key_close~input_o\ & (\inst1|Add2~20_combout\ & \inst1|Add2~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_close~input_o\,
	datab => \inst1|Add2~20_combout\,
	datad => \inst1|Add2~12_combout\,
	combout => \inst1|Add2~23_combout\);

-- Location: LCCOMB_X28_Y17_N24
\inst1|Selector43~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector43~0_combout\ = (\inst1|Add2~20_combout\ & ((\key_close~input_o\ & ((\inst1|Add0~12_combout\))) # (!\key_close~input_o\ & (\inst1|Add2~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_close~input_o\,
	datab => \inst1|Add2~10_combout\,
	datac => \inst1|Add0~12_combout\,
	datad => \inst1|Add2~20_combout\,
	combout => \inst1|Selector43~0_combout\);

-- Location: LCCOMB_X28_Y17_N22
\inst1|Selector43~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector43~1_combout\ = (\inst1|Selector43~0_combout\) # ((\inst1|Add0~12_combout\ & \inst1|Selector49~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Selector43~0_combout\,
	datac => \inst1|Add0~12_combout\,
	datad => \inst1|Selector49~0_combout\,
	combout => \inst1|Selector43~1_combout\);

-- Location: LCCOMB_X22_Y17_N0
\inst1|Selector47~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector47~0_combout\ = (\inst1|Add2~20_combout\ & ((\key_close~input_o\ & ((\inst1|Add0~4_combout\))) # (!\key_close~input_o\ & (\inst1|Add2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~20_combout\,
	datab => \key_close~input_o\,
	datac => \inst1|Add2~2_combout\,
	datad => \inst1|Add0~4_combout\,
	combout => \inst1|Selector47~0_combout\);

-- Location: LCCOMB_X22_Y17_N24
\inst1|Selector47~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector47~1_combout\ = (\inst1|Selector47~0_combout\) # ((\inst1|Add0~4_combout\ & \inst1|Selector49~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~4_combout\,
	datac => \inst1|Selector49~0_combout\,
	datad => \inst1|Selector47~0_combout\,
	combout => \inst1|Selector47~1_combout\);

-- Location: LCCOMB_X33_Y19_N20
\inst17|cnt~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|cnt~0_combout\ = (!\inst17|Equal0~4_combout\ & \inst17|Add0~30_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Equal0~4_combout\,
	datad => \inst17|Add0~30_combout\,
	combout => \inst17|cnt~0_combout\);

-- Location: LCCOMB_X33_Y19_N4
\inst17|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|cnt~1_combout\ = (!\inst17|Equal0~4_combout\ & \inst17|Add0~28_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Equal0~4_combout\,
	datad => \inst17|Add0~28_combout\,
	combout => \inst17|cnt~1_combout\);

-- Location: LCCOMB_X33_Y19_N30
\inst17|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|cnt~2_combout\ = (!\inst17|Equal0~4_combout\ & \inst17|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Equal0~4_combout\,
	datad => \inst17|Add0~18_combout\,
	combout => \inst17|cnt~2_combout\);

-- Location: LCCOMB_X33_Y19_N24
\inst17|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|cnt~3_combout\ = (\inst17|Add0~16_combout\ & !\inst17|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Add0~16_combout\,
	datad => \inst17|Equal0~4_combout\,
	combout => \inst17|cnt~3_combout\);

-- Location: LCCOMB_X33_Y19_N6
\inst17|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|cnt~4_combout\ = (!\inst17|Equal0~4_combout\ & \inst17|Add0~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Equal0~4_combout\,
	datad => \inst17|Add0~12_combout\,
	combout => \inst17|cnt~4_combout\);

-- Location: LCCOMB_X33_Y19_N14
\inst17|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|cnt~5_combout\ = (!\inst17|Equal0~4_combout\ & \inst17|Add0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst17|Equal0~4_combout\,
	datad => \inst17|Add0~8_combout\,
	combout => \inst17|cnt~5_combout\);

-- Location: LCCOMB_X33_Y19_N2
\inst17|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|cnt~6_combout\ = (\inst17|Add0~0_combout\ & !\inst17|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst17|Add0~0_combout\,
	datad => \inst17|Equal0~4_combout\,
	combout => \inst17|cnt~6_combout\);

-- Location: LCCOMB_X24_Y19_N0
\inst3|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~0_combout\ = (!\inst3|count2\(2) & (!\inst3|count2\(3) & (!\inst3|count2\(1) & !\inst3|count2\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count2\(2),
	datab => \inst3|count2\(3),
	datac => \inst3|count2\(1),
	datad => \inst3|count2\(0),
	combout => \inst3|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y19_N2
\inst3|Equal1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~1_combout\ = (!\inst3|count2\(7) & (!\inst3|count2\(5) & (!\inst3|count2\(4) & \inst3|count2\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count2\(7),
	datab => \inst3|count2\(5),
	datac => \inst3|count2\(4),
	datad => \inst3|count2\(6),
	combout => \inst3|Equal1~1_combout\);

-- Location: LCCOMB_X24_Y19_N4
\inst3|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~2_combout\ = (!\inst3|count2\(8) & (!\inst3|count2\(11) & (!\inst3|count2\(10) & \inst3|count2\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count2\(8),
	datab => \inst3|count2\(11),
	datac => \inst3|count2\(10),
	datad => \inst3|count2\(9),
	combout => \inst3|Equal1~2_combout\);

-- Location: LCCOMB_X25_Y18_N2
\inst3|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~3_combout\ = (!\inst3|count2\(13) & (\inst3|count2\(14) & (!\inst3|count2\(15) & !\inst3|count2\(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count2\(13),
	datab => \inst3|count2\(14),
	datac => \inst3|count2\(15),
	datad => \inst3|count2\(12),
	combout => \inst3|Equal1~3_combout\);

-- Location: LCCOMB_X25_Y18_N12
\inst3|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~4_combout\ = (\inst3|Equal1~2_combout\ & (\inst3|Equal1~0_combout\ & (\inst3|Equal1~1_combout\ & \inst3|Equal1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~2_combout\,
	datab => \inst3|Equal1~0_combout\,
	datac => \inst3|Equal1~1_combout\,
	datad => \inst3|Equal1~3_combout\,
	combout => \inst3|Equal1~4_combout\);

-- Location: LCCOMB_X12_Y22_N0
\inst3|Equal5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal5~0_combout\ = (!\inst3|countc\(2) & (!\inst3|countc\(3) & (!\inst3|countc\(1) & !\inst3|countc\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countc\(2),
	datab => \inst3|countc\(3),
	datac => \inst3|countc\(1),
	datad => \inst3|countc\(0),
	combout => \inst3|Equal5~0_combout\);

-- Location: LCCOMB_X12_Y22_N2
\inst3|Equal5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal5~1_combout\ = (!\inst3|countc\(7) & (!\inst3|countc\(5) & (!\inst3|countc\(4) & \inst3|countc\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countc\(7),
	datab => \inst3|countc\(5),
	datac => \inst3|countc\(4),
	datad => \inst3|countc\(6),
	combout => \inst3|Equal5~1_combout\);

-- Location: LCCOMB_X12_Y22_N4
\inst3|Equal5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal5~2_combout\ = (!\inst3|countc\(8) & (!\inst3|countc\(11) & (!\inst3|countc\(10) & \inst3|countc\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countc\(8),
	datab => \inst3|countc\(11),
	datac => \inst3|countc\(10),
	datad => \inst3|countc\(9),
	combout => \inst3|Equal5~2_combout\);

-- Location: LCCOMB_X12_Y20_N2
\inst3|Equal5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal5~3_combout\ = (!\inst3|countc\(12) & (!\inst3|countc\(13) & (!\inst3|countc\(15) & \inst3|countc\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countc\(12),
	datab => \inst3|countc\(13),
	datac => \inst3|countc\(15),
	datad => \inst3|countc\(14),
	combout => \inst3|Equal5~3_combout\);

-- Location: LCCOMB_X12_Y20_N12
\inst3|Equal5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal5~4_combout\ = (\inst3|Equal5~1_combout\ & (\inst3|Equal5~3_combout\ & (\inst3|Equal5~2_combout\ & \inst3|Equal5~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal5~1_combout\,
	datab => \inst3|Equal5~3_combout\,
	datac => \inst3|Equal5~2_combout\,
	datad => \inst3|Equal5~0_combout\,
	combout => \inst3|Equal5~4_combout\);

-- Location: LCCOMB_X12_Y21_N26
\inst3|Equal5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal5~5_combout\ = (\inst3|countc\(19) & (\inst3|countc\(16) & (\inst3|countc\(17) & \inst3|countc\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countc\(19),
	datab => \inst3|countc\(16),
	datac => \inst3|countc\(17),
	datad => \inst3|countc\(18),
	combout => \inst3|Equal5~5_combout\);

-- Location: LCCOMB_X12_Y21_N28
\inst3|Equal5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal5~6_combout\ = (!\inst3|countc\(23) & (!\inst3|countc\(22) & (!\inst3|countc\(20) & !\inst3|countc\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countc\(23),
	datab => \inst3|countc\(22),
	datac => \inst3|countc\(20),
	datad => \inst3|countc\(21),
	combout => \inst3|Equal5~6_combout\);

-- Location: LCCOMB_X12_Y21_N30
\inst3|Equal5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal5~7_combout\ = (!\inst3|countc\(24) & !\inst3|countc\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|countc\(24),
	datad => \inst3|countc\(25),
	combout => \inst3|Equal5~7_combout\);

-- Location: LCCOMB_X12_Y20_N6
\inst3|Equal5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal5~8_combout\ = (((!\inst3|Equal5~4_combout\) # (!\inst3|Equal5~6_combout\)) # (!\inst3|Equal5~5_combout\)) # (!\inst3|Equal5~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal5~7_combout\,
	datab => \inst3|Equal5~5_combout\,
	datac => \inst3|Equal5~6_combout\,
	datad => \inst3|Equal5~4_combout\,
	combout => \inst3|Equal5~8_combout\);

-- Location: LCCOMB_X10_Y21_N16
\inst3|douc~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|douc~0_combout\ = (\inst3|doud~0_combout\ & (\dinb~input_o\ & ((\dind~input_o\) # (!\dinc~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|doud~0_combout\,
	datab => \dinb~input_o\,
	datac => \dinc~input_o\,
	datad => \dind~input_o\,
	combout => \inst3|douc~0_combout\);

-- Location: LCCOMB_X13_Y22_N0
\inst3|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~0_combout\ = (!\inst3|countb\(2) & (!\inst3|countb\(3) & (!\inst3|countb\(1) & !\inst3|countb\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countb\(2),
	datab => \inst3|countb\(3),
	datac => \inst3|countb\(1),
	datad => \inst3|countb\(0),
	combout => \inst3|Equal4~0_combout\);

-- Location: LCCOMB_X13_Y22_N2
\inst3|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~1_combout\ = (!\inst3|countb\(5) & (!\inst3|countb\(7) & (!\inst3|countb\(4) & \inst3|countb\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countb\(5),
	datab => \inst3|countb\(7),
	datac => \inst3|countb\(4),
	datad => \inst3|countb\(6),
	combout => \inst3|Equal4~1_combout\);

-- Location: LCCOMB_X13_Y22_N4
\inst3|Equal4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~2_combout\ = (!\inst3|countb\(10) & (!\inst3|countb\(11) & (!\inst3|countb\(8) & \inst3|countb\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countb\(10),
	datab => \inst3|countb\(11),
	datac => \inst3|countb\(8),
	datad => \inst3|countb\(9),
	combout => \inst3|Equal4~2_combout\);

-- Location: LCCOMB_X13_Y20_N2
\inst3|Equal4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~3_combout\ = (!\inst3|countb\(12) & (!\inst3|countb\(13) & (!\inst3|countb\(15) & \inst3|countb\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countb\(12),
	datab => \inst3|countb\(13),
	datac => \inst3|countb\(15),
	datad => \inst3|countb\(14),
	combout => \inst3|Equal4~3_combout\);

-- Location: LCCOMB_X13_Y20_N12
\inst3|Equal4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~4_combout\ = (\inst3|Equal4~1_combout\ & (\inst3|Equal4~3_combout\ & (\inst3|Equal4~2_combout\ & \inst3|Equal4~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal4~1_combout\,
	datab => \inst3|Equal4~3_combout\,
	datac => \inst3|Equal4~2_combout\,
	datad => \inst3|Equal4~0_combout\,
	combout => \inst3|Equal4~4_combout\);

-- Location: LCCOMB_X7_Y22_N0
\inst3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~0_combout\ = (!\inst3|count1\(2) & (!\inst3|count1\(3) & (!\inst3|count1\(1) & !\inst3|count1\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count1\(2),
	datab => \inst3|count1\(3),
	datac => \inst3|count1\(1),
	datad => \inst3|count1\(0),
	combout => \inst3|Equal0~0_combout\);

-- Location: LCCOMB_X7_Y22_N2
\inst3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~1_combout\ = (\inst3|count1\(6) & (!\inst3|count1\(5) & (!\inst3|count1\(4) & !\inst3|count1\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count1\(6),
	datab => \inst3|count1\(5),
	datac => \inst3|count1\(4),
	datad => \inst3|count1\(7),
	combout => \inst3|Equal0~1_combout\);

-- Location: LCCOMB_X7_Y22_N4
\inst3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~2_combout\ = (!\inst3|count1\(8) & (!\inst3|count1\(11) & (!\inst3|count1\(10) & \inst3|count1\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count1\(8),
	datab => \inst3|count1\(11),
	datac => \inst3|count1\(10),
	datad => \inst3|count1\(9),
	combout => \inst3|Equal0~2_combout\);

-- Location: LCCOMB_X6_Y21_N2
\inst3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~3_combout\ = (\inst3|count1\(14) & (!\inst3|count1\(13) & (!\inst3|count1\(12) & !\inst3|count1\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count1\(14),
	datab => \inst3|count1\(13),
	datac => \inst3|count1\(12),
	datad => \inst3|count1\(15),
	combout => \inst3|Equal0~3_combout\);

-- Location: LCCOMB_X6_Y21_N12
\inst3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~4_combout\ = (\inst3|Equal0~1_combout\ & (\inst3|Equal0~3_combout\ & (\inst3|Equal0~2_combout\ & \inst3|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~1_combout\,
	datab => \inst3|Equal0~3_combout\,
	datac => \inst3|Equal0~2_combout\,
	datad => \inst3|Equal0~0_combout\,
	combout => \inst3|Equal0~4_combout\);

-- Location: LCCOMB_X9_Y22_N0
\inst3|Equal3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~0_combout\ = (!\inst3|counta\(3) & (!\inst3|counta\(2) & (!\inst3|counta\(1) & !\inst3|counta\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counta\(3),
	datab => \inst3|counta\(2),
	datac => \inst3|counta\(1),
	datad => \inst3|counta\(0),
	combout => \inst3|Equal3~0_combout\);

-- Location: LCCOMB_X9_Y22_N2
\inst3|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~1_combout\ = (!\inst3|counta\(7) & (!\inst3|counta\(5) & (!\inst3|counta\(4) & \inst3|counta\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counta\(7),
	datab => \inst3|counta\(5),
	datac => \inst3|counta\(4),
	datad => \inst3|counta\(6),
	combout => \inst3|Equal3~1_combout\);

-- Location: LCCOMB_X9_Y22_N4
\inst3|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~2_combout\ = (!\inst3|counta\(8) & (!\inst3|counta\(11) & (!\inst3|counta\(10) & \inst3|counta\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counta\(8),
	datab => \inst3|counta\(11),
	datac => \inst3|counta\(10),
	datad => \inst3|counta\(9),
	combout => \inst3|Equal3~2_combout\);

-- Location: LCCOMB_X8_Y21_N2
\inst3|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~3_combout\ = (!\inst3|counta\(15) & (!\inst3|counta\(13) & (!\inst3|counta\(12) & \inst3|counta\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counta\(15),
	datab => \inst3|counta\(13),
	datac => \inst3|counta\(12),
	datad => \inst3|counta\(14),
	combout => \inst3|Equal3~3_combout\);

-- Location: LCCOMB_X8_Y21_N12
\inst3|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~4_combout\ = (\inst3|Equal3~2_combout\ & (\inst3|Equal3~3_combout\ & (\inst3|Equal3~1_combout\ & \inst3|Equal3~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal3~2_combout\,
	datab => \inst3|Equal3~3_combout\,
	datac => \inst3|Equal3~1_combout\,
	datad => \inst3|Equal3~0_combout\,
	combout => \inst3|Equal3~4_combout\);

-- Location: LCCOMB_X9_Y21_N26
\inst3|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~5_combout\ = (\inst3|counta\(18) & (\inst3|counta\(19) & (\inst3|counta\(17) & \inst3|counta\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counta\(18),
	datab => \inst3|counta\(19),
	datac => \inst3|counta\(17),
	datad => \inst3|counta\(16),
	combout => \inst3|Equal3~5_combout\);

-- Location: LCCOMB_X9_Y21_N28
\inst3|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~6_combout\ = (!\inst3|counta\(23) & (!\inst3|counta\(22) & (!\inst3|counta\(20) & !\inst3|counta\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|counta\(23),
	datab => \inst3|counta\(22),
	datac => \inst3|counta\(20),
	datad => \inst3|counta\(21),
	combout => \inst3|Equal3~6_combout\);

-- Location: LCCOMB_X9_Y21_N30
\inst3|Equal3~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~7_combout\ = (!\inst3|counta\(24) & !\inst3|counta\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|counta\(24),
	datad => \inst3|counta\(25),
	combout => \inst3|Equal3~7_combout\);

-- Location: LCCOMB_X8_Y21_N6
\inst3|Equal3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal3~8_combout\ = (((!\inst3|Equal3~6_combout\) # (!\inst3|Equal3~7_combout\)) # (!\inst3|Equal3~5_combout\)) # (!\inst3|Equal3~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal3~4_combout\,
	datab => \inst3|Equal3~5_combout\,
	datac => \inst3|Equal3~7_combout\,
	datad => \inst3|Equal3~6_combout\,
	combout => \inst3|Equal3~8_combout\);

-- Location: LCCOMB_X10_Y21_N30
\inst3|doua~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|doua~0_combout\ = ((\dinb~input_o\ & (\dinc~input_o\ & \dind~input_o\))) # (!\dina~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dina~input_o\,
	datab => \dinb~input_o\,
	datac => \dinc~input_o\,
	datad => \dind~input_o\,
	combout => \inst3|doua~0_combout\);

-- Location: LCCOMB_X10_Y21_N0
\inst3|doua~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|doua~1_combout\ = (\din1~input_o\ & (\din3~input_o\ & (\inst3|doua~0_combout\ & \din2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din1~input_o\,
	datab => \din3~input_o\,
	datac => \inst3|doua~0_combout\,
	datad => \din2~input_o\,
	combout => \inst3|doua~1_combout\);

-- Location: LCCOMB_X29_Y20_N0
\inst3|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~0_combout\ = (!\inst3|count3\(3) & (!\inst3|count3\(2) & (!\inst3|count3\(1) & !\inst3|count3\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count3\(3),
	datab => \inst3|count3\(2),
	datac => \inst3|count3\(1),
	datad => \inst3|count3\(0),
	combout => \inst3|Equal2~0_combout\);

-- Location: LCCOMB_X29_Y20_N2
\inst3|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~1_combout\ = (!\inst3|count3\(7) & (!\inst3|count3\(5) & (!\inst3|count3\(4) & \inst3|count3\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count3\(7),
	datab => \inst3|count3\(5),
	datac => \inst3|count3\(4),
	datad => \inst3|count3\(6),
	combout => \inst3|Equal2~1_combout\);

-- Location: LCCOMB_X29_Y20_N4
\inst3|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~2_combout\ = (!\inst3|count3\(10) & (!\inst3|count3\(11) & (!\inst3|count3\(8) & \inst3|count3\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count3\(10),
	datab => \inst3|count3\(11),
	datac => \inst3|count3\(8),
	datad => \inst3|count3\(9),
	combout => \inst3|Equal2~2_combout\);

-- Location: LCCOMB_X30_Y19_N2
\inst3|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~3_combout\ = (!\inst3|count3\(13) & (!\inst3|count3\(15) & (!\inst3|count3\(12) & \inst3|count3\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count3\(13),
	datab => \inst3|count3\(15),
	datac => \inst3|count3\(12),
	datad => \inst3|count3\(14),
	combout => \inst3|Equal2~3_combout\);

-- Location: LCCOMB_X30_Y19_N12
\inst3|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~4_combout\ = (\inst3|Equal2~2_combout\ & (\inst3|Equal2~1_combout\ & (\inst3|Equal2~0_combout\ & \inst3|Equal2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal2~2_combout\,
	datab => \inst3|Equal2~1_combout\,
	datac => \inst3|Equal2~0_combout\,
	datad => \inst3|Equal2~3_combout\,
	combout => \inst3|Equal2~4_combout\);

-- Location: LCCOMB_X29_Y19_N26
\inst3|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~5_combout\ = (\inst3|count3\(19) & (\inst3|count3\(18) & (\inst3|count3\(17) & \inst3|count3\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count3\(19),
	datab => \inst3|count3\(18),
	datac => \inst3|count3\(17),
	datad => \inst3|count3\(16),
	combout => \inst3|Equal2~5_combout\);

-- Location: LCCOMB_X29_Y19_N28
\inst3|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~6_combout\ = (!\inst3|count3\(23) & (!\inst3|count3\(22) & (!\inst3|count3\(20) & !\inst3|count3\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count3\(23),
	datab => \inst3|count3\(22),
	datac => \inst3|count3\(20),
	datad => \inst3|count3\(21),
	combout => \inst3|Equal2~6_combout\);

-- Location: LCCOMB_X29_Y19_N30
\inst3|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~7_combout\ = (!\inst3|count3\(24) & !\inst3|count3\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|count3\(24),
	datad => \inst3|count3\(25),
	combout => \inst3|Equal2~7_combout\);

-- Location: LCCOMB_X30_Y19_N6
\inst3|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal2~8_combout\ = (((!\inst3|Equal2~6_combout\) # (!\inst3|Equal2~5_combout\)) # (!\inst3|Equal2~7_combout\)) # (!\inst3|Equal2~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal2~4_combout\,
	datab => \inst3|Equal2~7_combout\,
	datac => \inst3|Equal2~5_combout\,
	datad => \inst3|Equal2~6_combout\,
	combout => \inst3|Equal2~8_combout\);

-- Location: LCCOMB_X10_Y21_N26
\inst3|dou3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|dou3~0_combout\ = (\din2~input_o\ & (\din1~input_o\ & ((\inst3|dou2~0_combout\) # (!\din3~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din2~input_o\,
	datab => \din3~input_o\,
	datac => \din1~input_o\,
	datad => \inst3|dou2~0_combout\,
	combout => \inst3|dou3~0_combout\);

-- Location: LCCOMB_X10_Y21_N12
\inst3|Equal6~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal6~3_combout\ = (!\inst3|countd\(15) & (!\inst3|countd\(13) & (!\inst3|countd\(12) & \inst3|countd\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countd\(15),
	datab => \inst3|countd\(13),
	datac => \inst3|countd\(12),
	datad => \inst3|countd\(14),
	combout => \inst3|Equal6~3_combout\);

-- Location: LCCOMB_X11_Y21_N30
\inst3|Equal6~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal6~7_combout\ = (!\inst3|countd\(24) & !\inst3|countd\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|countd\(24),
	datad => \inst3|countd\(25),
	combout => \inst3|Equal6~7_combout\);

-- Location: IOIBUF_X0_Y11_N8
\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G7
\inst17|y~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst17|y~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst17|y~clkctrl_outclk\);

-- Location: CLKCTRL_G2
\clk~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X33_Y19_N18
\inst17|y~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst17|y~feeder_combout\ = \inst17|y~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst17|y~0_combout\,
	combout => \inst17|y~feeder_combout\);

-- Location: LCCOMB_X12_Y20_N0
\inst3|douc~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|douc~feeder_combout\ = \inst3|Equal5~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Equal5~8_combout\,
	combout => \inst3|douc~feeder_combout\);

-- Location: LCCOMB_X8_Y21_N8
\inst3|doua~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|doua~feeder_combout\ = \inst3|Equal3~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Equal3~8_combout\,
	combout => \inst3|doua~feeder_combout\);

-- Location: LCCOMB_X30_Y19_N8
\inst3|dou3~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|dou3~feeder_combout\ = \inst3|Equal2~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Equal2~8_combout\,
	combout => \inst3|dou3~feeder_combout\);

-- Location: IOOBUF_X23_Y24_N2
\beep~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|ALT_INV_beep~q\,
	devoe => ww_devoe,
	o => \beep~output_o\);

-- Location: IOOBUF_X28_Y0_N16
\pdsck~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst16|pd_sck~q\,
	devoe => ww_devoe,
	o => \pdsck~output_o\);

-- Location: IOOBUF_X21_Y0_N16
\sel1~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|sel1~q\,
	devoe => ww_devoe,
	o => \sel1~output_o\);

-- Location: IOOBUF_X25_Y0_N2
\sel2~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|ALT_INV_sel2~q\,
	devoe => ww_devoe,
	o => \sel2~output_o\);

-- Location: IOOBUF_X16_Y0_N9
\txd~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_txd~q\,
	devoe => ww_devoe,
	o => \txd~output_o\);

-- Location: IOOBUF_X18_Y24_N16
\led~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst7|ALT_INV_led~q\,
	devoe => ww_devoe,
	o => \led~output_o\);

-- Location: IOOBUF_X34_Y7_N16
\Q[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|y\(6),
	devoe => ww_devoe,
	o => \Q[6]~output_o\);

-- Location: IOOBUF_X32_Y0_N2
\Q[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|y\(5),
	devoe => ww_devoe,
	o => \Q[5]~output_o\);

-- Location: IOOBUF_X34_Y4_N16
\Q[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|y\(4),
	devoe => ww_devoe,
	o => \Q[4]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\Q[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|y\(3),
	devoe => ww_devoe,
	o => \Q[3]~output_o\);

-- Location: IOOBUF_X34_Y5_N23
\Q[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|y\(2),
	devoe => ww_devoe,
	o => \Q[2]~output_o\);

-- Location: IOOBUF_X34_Y7_N23
\Q[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|y\(1),
	devoe => ww_devoe,
	o => \Q[1]~output_o\);

-- Location: IOOBUF_X30_Y0_N2
\Q[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst5|y\(0),
	devoe => ww_devoe,
	o => \Q[0]~output_o\);

-- Location: IOOBUF_X25_Y24_N2
\y[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|WideOr0~0_combout\,
	devoe => ww_devoe,
	o => \y[3]~output_o\);

-- Location: IOOBUF_X25_Y24_N16
\y[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|WideOr1~0_combout\,
	devoe => ww_devoe,
	o => \y[2]~output_o\);

-- Location: IOOBUF_X21_Y24_N9
\y[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|WideOr2~0_combout\,
	devoe => ww_devoe,
	o => \y[1]~output_o\);

-- Location: IOOBUF_X16_Y24_N2
\y[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|WideOr3~0_combout\,
	devoe => ww_devoe,
	o => \y[0]~output_o\);

-- Location: LCCOMB_X2_Y8_N6
\inst|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~0_combout\ = \inst|cnt\(0) $ (VCC)
-- \inst|Add0~1\ = CARRY(\inst|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(0),
	datad => VCC,
	combout => \inst|Add0~0_combout\,
	cout => \inst|Add0~1\);

-- Location: LCCOMB_X2_Y8_N10
\inst|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~4_combout\ = (\inst|cnt\(2) & (\inst|Add0~3\ $ (GND))) # (!\inst|cnt\(2) & (!\inst|Add0~3\ & VCC))
-- \inst|Add0~5\ = CARRY((\inst|cnt\(2) & !\inst|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(2),
	datad => VCC,
	cin => \inst|Add0~3\,
	combout => \inst|Add0~4_combout\,
	cout => \inst|Add0~5\);

-- Location: LCCOMB_X2_Y8_N24
\inst|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt~4_combout\ = (!\inst|Equal0~1_combout\ & \inst|Add0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~1_combout\,
	datad => \inst|Add0~4_combout\,
	combout => \inst|cnt~4_combout\);

-- Location: IOIBUF_X34_Y2_N22
\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

-- Location: FF_X2_Y8_N25
\inst|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(2));

-- Location: LCCOMB_X2_Y8_N12
\inst|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~6_combout\ = (\inst|cnt\(3) & (!\inst|Add0~5\)) # (!\inst|cnt\(3) & ((\inst|Add0~5\) # (GND)))
-- \inst|Add0~7\ = CARRY((!\inst|Add0~5\) # (!\inst|cnt\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(3),
	datad => VCC,
	cin => \inst|Add0~5\,
	combout => \inst|Add0~6_combout\,
	cout => \inst|Add0~7\);

-- Location: LCCOMB_X2_Y8_N28
\inst|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt~3_combout\ = (!\inst|Equal0~1_combout\ & \inst|Add0~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~1_combout\,
	datad => \inst|Add0~6_combout\,
	combout => \inst|cnt~3_combout\);

-- Location: FF_X2_Y8_N29
\inst|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(3));

-- Location: LCCOMB_X2_Y8_N14
\inst|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Add0~8_combout\ = (\inst|cnt\(4) & (\inst|Add0~7\ $ (GND))) # (!\inst|cnt\(4) & (!\inst|Add0~7\ & VCC))
-- \inst|Add0~9\ = CARRY((\inst|cnt\(4) & !\inst|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst|cnt\(4),
	datad => VCC,
	cin => \inst|Add0~7\,
	combout => \inst|Add0~8_combout\,
	cout => \inst|Add0~9\);

-- Location: LCCOMB_X2_Y8_N4
\inst|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt~2_combout\ = (\inst|Add0~8_combout\ & !\inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst|Add0~8_combout\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|cnt~2_combout\);

-- Location: FF_X2_Y8_N5
\inst|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(4));

-- Location: LCCOMB_X2_Y8_N2
\inst|cnt~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|cnt~1_combout\ = (!\inst|Equal0~1_combout\ & \inst|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|Equal0~1_combout\,
	datad => \inst|Add0~10_combout\,
	combout => \inst|cnt~1_combout\);

-- Location: FF_X2_Y8_N3
\inst|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|cnt~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(5));

-- Location: LCCOMB_X2_Y8_N30
\inst|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~0_combout\ = (\inst|cnt\(6) & (\inst|cnt\(5) & (\inst|cnt\(4) & \inst|cnt\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(6),
	datab => \inst|cnt\(5),
	datac => \inst|cnt\(4),
	datad => \inst|cnt\(3),
	combout => \inst|Equal0~0_combout\);

-- Location: FF_X2_Y8_N7
\inst|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|Add0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|cnt\(0));

-- Location: LCCOMB_X2_Y8_N20
\inst|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|Equal0~1_combout\ = (!\inst|cnt\(1) & (\inst|cnt\(2) & (\inst|Equal0~0_combout\ & \inst|cnt\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst|cnt\(1),
	datab => \inst|cnt\(2),
	datac => \inst|Equal0~0_combout\,
	datad => \inst|cnt\(0),
	combout => \inst|Equal0~1_combout\);

-- Location: LCCOMB_X2_Y8_N22
\inst|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~0_combout\ = \inst|y~q\ $ (\inst|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y~q\,
	datad => \inst|Equal0~1_combout\,
	combout => \inst|y~0_combout\);

-- Location: LCCOMB_X1_Y8_N14
\inst|y~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst|y~feeder_combout\ = \inst|y~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst|y~0_combout\,
	combout => \inst|y~feeder_combout\);

-- Location: FF_X1_Y8_N15
\inst|y\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst|y~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst|y~q\);

-- Location: CLKCTRL_G3
\inst|y~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst|y~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst|y~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y15_N2
\inst4|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal1~0_combout\ = (!\inst4|direction\(0) & \inst4|direction\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|direction\(0),
	datad => \inst4|direction\(1),
	combout => \inst4|Equal1~0_combout\);

-- Location: LCCOMB_X24_Y14_N8
\inst4|Selector7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector7~4_combout\ = (\inst4|floor\(1) & ((\inst4|floor\(0)) # ((!\inst4|num\(1) & !\inst4|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|floor\(1),
	datab => \inst4|floor\(0),
	datac => \inst4|num\(1),
	datad => \inst4|num\(0),
	combout => \inst4|Selector7~4_combout\);

-- Location: LCCOMB_X24_Y14_N22
\inst4|Selector7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector7~6_combout\ = (!\inst4|Selector4~3_combout\ & (\inst4|state.s1~q\ & ((\inst4|num\(0)) # (!\inst4|num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(1),
	datab => \inst4|Selector4~3_combout\,
	datac => \inst4|state.s1~q\,
	datad => \inst4|num\(0),
	combout => \inst4|Selector7~6_combout\);

-- Location: LCCOMB_X26_Y16_N0
\inst4|Equal7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal7~0_combout\ = (\inst4|floor\(1) & ((\inst4|floor\(0) $ (!\inst4|num\(0))) # (!\inst4|num\(1)))) # (!\inst4|floor\(1) & ((\inst4|num\(1)) # (\inst4|floor\(0) $ (!\inst4|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|floor\(1),
	datab => \inst4|floor\(0),
	datac => \inst4|num\(1),
	datad => \inst4|num\(0),
	combout => \inst4|Equal7~0_combout\);

-- Location: LCCOMB_X23_Y17_N16
\inst4|Selector9~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector9~1_combout\ = (!\inst4|num\(0) & ((\inst4|num\(1) & (\inst4|state.s1~q\)) # (!\inst4|num\(1) & ((\inst4|state.s2~q\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s1~q\,
	datab => \inst4|num\(0),
	datac => \inst4|num\(1),
	datad => \inst4|state.s2~q\,
	combout => \inst4|Selector9~1_combout\);

-- Location: LCCOMB_X24_Y15_N14
\inst4|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state~18_combout\ = (\inst4|num\(1) & (!\inst4|floor\(0) & (\inst4|floor\(1)))) # (!\inst4|num\(1) & (((\inst4|state.s3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|floor\(0),
	datab => \inst4|floor\(1),
	datac => \inst4|num\(1),
	datad => \inst4|state.s3~q\,
	combout => \inst4|state~18_combout\);

-- Location: LCCOMB_X23_Y17_N30
\inst4|Selector9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector9~0_combout\ = (\inst4|num\(0) & (\inst4|state~18_combout\ & ((\inst4|state.s1~q\) # (\inst4|state.s2~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s1~q\,
	datab => \inst4|state.s2~q\,
	datac => \inst4|num\(0),
	datad => \inst4|state~18_combout\,
	combout => \inst4|Selector9~0_combout\);

-- Location: LCCOMB_X26_Y21_N4
\inst1|Add3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~0_combout\ = \inst1|count\(0) $ (VCC)
-- \inst1|Add3~1\ = CARRY(\inst1|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(0),
	datad => VCC,
	combout => \inst1|Add3~0_combout\,
	cout => \inst1|Add3~1\);

-- Location: IOIBUF_X34_Y12_N22
\key_open~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_open,
	o => \key_open~input_o\);

-- Location: LCCOMB_X26_Y21_N26
\inst1|target[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|target[7]~8_combout\ = (\inst1|target[0]~1_combout\ & (\inst1|Add3~14_combout\ & ((\inst1|target[9]~0_combout\)))) # (!\inst1|target[0]~1_combout\ & ((\inst1|target\(7)) # ((\inst1|Add3~14_combout\ & \inst1|target[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target[0]~1_combout\,
	datab => \inst1|Add3~14_combout\,
	datac => \inst1|target\(7),
	datad => \inst1|target[9]~0_combout\,
	combout => \inst1|target[7]~8_combout\);

-- Location: FF_X26_Y21_N27
\inst1|target[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|target[7]~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|target\(7));

-- Location: LCCOMB_X25_Y21_N4
\inst1|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~3_combout\ = (\inst1|target\(6) & (\inst1|count\(6) & (\inst1|target\(7) $ (!\inst1|count\(7))))) # (!\inst1|target\(6) & (!\inst1|count\(6) & (\inst1|target\(7) $ (!\inst1|count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(6),
	datab => \inst1|target\(7),
	datac => \inst1|count\(7),
	datad => \inst1|count\(6),
	combout => \inst1|Equal2~3_combout\);

-- Location: LCCOMB_X26_Y20_N28
\inst1|target[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|target[3]~4_combout\ = (\inst1|Add3~6_combout\ & ((\inst1|target[9]~0_combout\) # ((!\inst1|target[0]~1_combout\ & \inst1|target\(3))))) # (!\inst1|Add3~6_combout\ & (!\inst1|target[0]~1_combout\ & (\inst1|target\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~6_combout\,
	datab => \inst1|target[0]~1_combout\,
	datac => \inst1|target\(3),
	datad => \inst1|target[9]~0_combout\,
	combout => \inst1|target[3]~4_combout\);

-- Location: FF_X26_Y20_N29
\inst1|target[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|target[3]~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|target\(3));

-- Location: LCCOMB_X26_Y21_N10
\inst1|Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~6_combout\ = (\inst1|count\(3) & (!\inst1|Add3~5\)) # (!\inst1|count\(3) & ((\inst1|Add3~5\) # (GND)))
-- \inst1|Add3~7\ = CARRY((!\inst1|Add3~5\) # (!\inst1|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(3),
	datad => VCC,
	cin => \inst1|Add3~5\,
	combout => \inst1|Add3~6_combout\,
	cout => \inst1|Add3~7\);

-- Location: LCCOMB_X26_Y21_N20
\inst1|Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~16_combout\ = (\inst1|count\(8) & (\inst1|Add3~15\ $ (GND))) # (!\inst1|count\(8) & (!\inst1|Add3~15\ & VCC))
-- \inst1|Add3~17\ = CARRY((\inst1|count\(8) & !\inst1|Add3~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(8),
	datad => VCC,
	cin => \inst1|Add3~15\,
	combout => \inst1|Add3~16_combout\,
	cout => \inst1|Add3~17\);

-- Location: LCCOMB_X26_Y21_N28
\inst1|target[8]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|target[8]~10_combout\ = (\inst1|target[0]~1_combout\ & (\inst1|Add3~16_combout\ & ((\inst1|target[9]~0_combout\)))) # (!\inst1|target[0]~1_combout\ & ((\inst1|target\(8)) # ((\inst1|Add3~16_combout\ & \inst1|target[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target[0]~1_combout\,
	datab => \inst1|Add3~16_combout\,
	datac => \inst1|target\(8),
	datad => \inst1|target[9]~0_combout\,
	combout => \inst1|target[8]~10_combout\);

-- Location: FF_X26_Y21_N29
\inst1|target[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|target[8]~10_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|target\(8));

-- Location: LCCOMB_X26_Y21_N2
\inst1|target[6]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|target[6]~9_combout\ = (\inst1|target[0]~1_combout\ & (\inst1|Add3~12_combout\ & ((\inst1|target[9]~0_combout\)))) # (!\inst1|target[0]~1_combout\ & ((\inst1|target\(6)) # ((\inst1|Add3~12_combout\ & \inst1|target[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target[0]~1_combout\,
	datab => \inst1|Add3~12_combout\,
	datac => \inst1|target\(6),
	datad => \inst1|target[9]~0_combout\,
	combout => \inst1|target[6]~9_combout\);

-- Location: FF_X26_Y21_N3
\inst1|target[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|target[6]~9_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|target\(6));

-- Location: LCCOMB_X26_Y21_N14
\inst1|Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~10_combout\ = (\inst1|count\(5) & (!\inst1|Add3~9\)) # (!\inst1|count\(5) & ((\inst1|Add3~9\) # (GND)))
-- \inst1|Add3~11\ = CARRY((!\inst1|Add3~9\) # (!\inst1|count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(5),
	datad => VCC,
	cin => \inst1|Add3~9\,
	combout => \inst1|Add3~10_combout\,
	cout => \inst1|Add3~11\);

-- Location: LCCOMB_X25_Y21_N20
\inst1|target[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|target[5]~6_combout\ = (\inst1|target[0]~1_combout\ & (\inst1|Add3~10_combout\ & ((\inst1|target[9]~0_combout\)))) # (!\inst1|target[0]~1_combout\ & ((\inst1|target\(5)) # ((\inst1|Add3~10_combout\ & \inst1|target[9]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target[0]~1_combout\,
	datab => \inst1|Add3~10_combout\,
	datac => \inst1|target\(5),
	datad => \inst1|target[9]~0_combout\,
	combout => \inst1|target[5]~6_combout\);

-- Location: FF_X25_Y21_N21
\inst1|target[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|target[5]~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|target\(5));

-- Location: LCCOMB_X26_Y20_N24
\inst1|target[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|target[1]~2_combout\ = (\inst1|Add3~2_combout\ & ((\inst1|target[9]~0_combout\) # ((!\inst1|target[0]~1_combout\ & \inst1|target\(1))))) # (!\inst1|Add3~2_combout\ & (!\inst1|target[0]~1_combout\ & (\inst1|target\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~2_combout\,
	datab => \inst1|target[0]~1_combout\,
	datac => \inst1|target\(1),
	datad => \inst1|target[9]~0_combout\,
	combout => \inst1|target[1]~2_combout\);

-- Location: FF_X26_Y20_N25
\inst1|target[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|target[1]~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|target\(1));

-- Location: LCCOMB_X26_Y20_N2
\inst1|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~2_combout\ = (\inst1|target\(1) & (\inst1|Add1~1\ & VCC)) # (!\inst1|target\(1) & (!\inst1|Add1~1\))
-- \inst1|Add1~3\ = CARRY((!\inst1|target\(1) & !\inst1|Add1~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|target\(1),
	datad => VCC,
	cin => \inst1|Add1~1\,
	combout => \inst1|Add1~2_combout\,
	cout => \inst1|Add1~3\);

-- Location: LCCOMB_X26_Y20_N8
\inst1|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~8_combout\ = (\inst1|target\(4) & ((GND) # (!\inst1|Add1~7\))) # (!\inst1|target\(4) & (\inst1|Add1~7\ $ (GND)))
-- \inst1|Add1~9\ = CARRY((\inst1|target\(4)) # (!\inst1|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(4),
	datad => VCC,
	cin => \inst1|Add1~7\,
	combout => \inst1|Add1~8_combout\,
	cout => \inst1|Add1~9\);

-- Location: LCCOMB_X26_Y20_N10
\inst1|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~10_combout\ = (\inst1|target\(5) & (\inst1|Add1~9\ & VCC)) # (!\inst1|target\(5) & (!\inst1|Add1~9\))
-- \inst1|Add1~11\ = CARRY((!\inst1|target\(5) & !\inst1|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|target\(5),
	datad => VCC,
	cin => \inst1|Add1~9\,
	combout => \inst1|Add1~10_combout\,
	cout => \inst1|Add1~11\);

-- Location: LCCOMB_X26_Y20_N12
\inst1|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~12_combout\ = (\inst1|target\(6) & ((GND) # (!\inst1|Add1~11\))) # (!\inst1|target\(6) & (\inst1|Add1~11\ $ (GND)))
-- \inst1|Add1~13\ = CARRY((\inst1|target\(6)) # (!\inst1|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|target\(6),
	datad => VCC,
	cin => \inst1|Add1~11\,
	combout => \inst1|Add1~12_combout\,
	cout => \inst1|Add1~13\);

-- Location: LCCOMB_X26_Y20_N14
\inst1|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~14_combout\ = (\inst1|target\(7) & (\inst1|Add1~13\ & VCC)) # (!\inst1|target\(7) & (!\inst1|Add1~13\))
-- \inst1|Add1~15\ = CARRY((!\inst1|target\(7) & !\inst1|Add1~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|target\(7),
	datad => VCC,
	cin => \inst1|Add1~13\,
	combout => \inst1|Add1~14_combout\,
	cout => \inst1|Add1~15\);

-- Location: LCCOMB_X26_Y20_N16
\inst1|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~16_combout\ = (\inst1|target\(8) & ((GND) # (!\inst1|Add1~15\))) # (!\inst1|target\(8) & (\inst1|Add1~15\ $ (GND)))
-- \inst1|Add1~17\ = CARRY((\inst1|target\(8)) # (!\inst1|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|target\(8),
	datad => VCC,
	cin => \inst1|Add1~15\,
	combout => \inst1|Add1~16_combout\,
	cout => \inst1|Add1~17\);

-- Location: LCCOMB_X26_Y20_N18
\inst1|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~18_combout\ = (\inst1|target\(9) & (\inst1|Add1~17\ & VCC)) # (!\inst1|target\(9) & (!\inst1|Add1~17\))
-- \inst1|Add1~19\ = CARRY((!\inst1|target\(9) & !\inst1|Add1~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(9),
	datad => VCC,
	cin => \inst1|Add1~17\,
	combout => \inst1|Add1~18_combout\,
	cout => \inst1|Add1~19\);

-- Location: LCCOMB_X25_Y17_N8
\inst1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~0_combout\ = \inst1|delay\(0) $ (VCC)
-- \inst1|Add0~1\ = CARRY(\inst1|delay\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|delay\(0),
	datad => VCC,
	combout => \inst1|Add0~0_combout\,
	cout => \inst1|Add0~1\);

-- Location: IOIBUF_X34_Y12_N8
\key_close~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_key_close,
	o => \key_close~input_o\);

-- Location: LCCOMB_X22_Y17_N12
\inst1|Selector49~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector49~1_combout\ = (\inst1|Add2~20_combout\ & ((\key_close~input_o\ & ((\inst1|Add0~0_combout\))) # (!\key_close~input_o\ & (\inst1|delay\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|delay\(0),
	datab => \key_close~input_o\,
	datac => \inst1|Add2~20_combout\,
	datad => \inst1|Add0~0_combout\,
	combout => \inst1|Selector49~1_combout\);

-- Location: LCCOMB_X22_Y17_N20
\inst1|Selector49~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector49~2_combout\ = (\inst1|Selector49~1_combout\) # ((\inst1|Add0~0_combout\ & \inst1|Selector49~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~0_combout\,
	datac => \inst1|Selector49~0_combout\,
	datad => \inst1|Selector49~1_combout\,
	combout => \inst1|Selector49~2_combout\);

-- Location: FF_X22_Y17_N21
\inst1|delay[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector49~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|delay\(0));

-- Location: LCCOMB_X25_Y17_N14
\inst1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~6_combout\ = (\inst1|delay\(3) & (!\inst1|Add0~5\)) # (!\inst1|delay\(3) & ((\inst1|Add0~5\) # (GND)))
-- \inst1|Add0~7\ = CARRY((!\inst1|Add0~5\) # (!\inst1|delay\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|delay\(3),
	datad => VCC,
	cin => \inst1|Add0~5\,
	combout => \inst1|Add0~6_combout\,
	cout => \inst1|Add0~7\);

-- Location: LCCOMB_X26_Y17_N4
\inst1|Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~4_combout\ = (\inst1|delay\(3) & (\inst1|Add2~3\ $ (GND))) # (!\inst1|delay\(3) & (!\inst1|Add2~3\ & VCC))
-- \inst1|Add2~5\ = CARRY((\inst1|delay\(3) & !\inst1|Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|delay\(3),
	datad => VCC,
	cin => \inst1|Add2~3\,
	combout => \inst1|Add2~4_combout\,
	cout => \inst1|Add2~5\);

-- Location: LCCOMB_X28_Y17_N14
\inst1|Selector46~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector46~0_combout\ = (\inst1|Add2~20_combout\ & ((\key_close~input_o\ & (\inst1|Add0~6_combout\)) # (!\key_close~input_o\ & ((\inst1|Add2~4_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_close~input_o\,
	datab => \inst1|Add0~6_combout\,
	datac => \inst1|Add2~4_combout\,
	datad => \inst1|Add2~20_combout\,
	combout => \inst1|Selector46~0_combout\);

-- Location: LCCOMB_X28_Y17_N20
\inst1|Selector46~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector46~1_combout\ = (\inst1|Selector46~0_combout\) # ((\inst1|Add0~6_combout\ & \inst1|Selector49~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add0~6_combout\,
	datac => \inst1|Selector46~0_combout\,
	datad => \inst1|Selector49~0_combout\,
	combout => \inst1|Selector46~1_combout\);

-- Location: FF_X28_Y17_N21
\inst1|delay[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector46~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|delay\(3));

-- Location: LCCOMB_X26_Y17_N6
\inst1|Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~6_combout\ = (\inst1|delay\(4) & (\inst1|Add2~5\ & VCC)) # (!\inst1|delay\(4) & (!\inst1|Add2~5\))
-- \inst1|Add2~7\ = CARRY((!\inst1|delay\(4) & !\inst1|Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|delay\(4),
	datad => VCC,
	cin => \inst1|Add2~5\,
	combout => \inst1|Add2~6_combout\,
	cout => \inst1|Add2~7\);

-- Location: LCCOMB_X25_Y17_N16
\inst1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~8_combout\ = (\inst1|delay\(4) & (\inst1|Add0~7\ $ (GND))) # (!\inst1|delay\(4) & (!\inst1|Add0~7\ & VCC))
-- \inst1|Add0~9\ = CARRY((\inst1|delay\(4) & !\inst1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|delay\(4),
	datad => VCC,
	cin => \inst1|Add0~7\,
	combout => \inst1|Add0~8_combout\,
	cout => \inst1|Add0~9\);

-- Location: LCCOMB_X28_Y17_N4
\inst1|Selector45~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector45~0_combout\ = (\inst1|Add2~20_combout\ & ((\key_close~input_o\ & ((\inst1|Add0~8_combout\))) # (!\key_close~input_o\ & (\inst1|Add2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_close~input_o\,
	datab => \inst1|Add2~6_combout\,
	datac => \inst1|Add0~8_combout\,
	datad => \inst1|Add2~20_combout\,
	combout => \inst1|Selector45~0_combout\);

-- Location: LCCOMB_X28_Y17_N10
\inst1|Selector45~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector45~1_combout\ = (\inst1|Selector45~0_combout\) # ((\inst1|Add0~8_combout\ & \inst1|Selector49~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~8_combout\,
	datac => \inst1|Selector45~0_combout\,
	datad => \inst1|Selector49~0_combout\,
	combout => \inst1|Selector45~1_combout\);

-- Location: FF_X28_Y17_N11
\inst1|delay[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector45~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|delay\(4));

-- Location: LCCOMB_X25_Y17_N6
\inst1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~1_combout\ = (\inst1|delay\(6)) # ((\inst1|delay\(5)) # ((\inst1|delay\(3)) # (\inst1|delay\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|delay\(6),
	datab => \inst1|delay\(5),
	datac => \inst1|delay\(3),
	datad => \inst1|delay\(4),
	combout => \inst1|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y17_N6
\inst1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~2_combout\ = (\inst1|delay\(2)) # ((\inst1|delay\(0)) # ((\inst1|delay\(1)) # (\inst1|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|delay\(2),
	datab => \inst1|delay\(0),
	datac => \inst1|delay\(1),
	datad => \inst1|Equal0~1_combout\,
	combout => \inst1|Equal0~2_combout\);

-- Location: LCCOMB_X25_Y19_N18
\inst1|Selector49~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector49~0_combout\ = (\inst4|door~q\ & (!\inst1|state.c0~q\ & ((\inst1|Equal0~0_combout\) # (\inst1|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|door~q\,
	datab => \inst1|state.c0~q\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|Selector49~0_combout\);

-- Location: LCCOMB_X26_Y17_N0
\inst1|Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~0_combout\ = \inst1|delay\(1) $ (VCC)
-- \inst1|Add2~1\ = CARRY(\inst1|delay\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|delay\(1),
	datad => VCC,
	combout => \inst1|Add2~0_combout\,
	cout => \inst1|Add2~1\);

-- Location: LCCOMB_X22_Y17_N2
\inst1|Selector48~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector48~0_combout\ = (\inst1|Add2~20_combout\ & ((\key_close~input_o\ & (\inst1|Add0~2_combout\)) # (!\key_close~input_o\ & ((\inst1|Add2~0_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~2_combout\,
	datab => \inst1|Add2~0_combout\,
	datac => \inst1|Add2~20_combout\,
	datad => \key_close~input_o\,
	combout => \inst1|Selector48~0_combout\);

-- Location: LCCOMB_X22_Y17_N26
\inst1|Selector48~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector48~1_combout\ = (\inst1|Selector48~0_combout\) # ((\inst1|Add0~2_combout\ & \inst1|Selector49~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~2_combout\,
	datac => \inst1|Selector49~0_combout\,
	datad => \inst1|Selector48~0_combout\,
	combout => \inst1|Selector48~1_combout\);

-- Location: FF_X22_Y17_N27
\inst1|delay[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector48~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|delay\(1));

-- Location: LCCOMB_X26_Y17_N8
\inst1|Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~8_combout\ = (\inst1|delay\(5) & ((GND) # (!\inst1|Add2~7\))) # (!\inst1|delay\(5) & (\inst1|Add2~7\ $ (GND)))
-- \inst1|Add2~9\ = CARRY((\inst1|delay\(5)) # (!\inst1|Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|delay\(5),
	datad => VCC,
	cin => \inst1|Add2~7\,
	combout => \inst1|Add2~8_combout\,
	cout => \inst1|Add2~9\);

-- Location: LCCOMB_X25_Y17_N18
\inst1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~10_combout\ = (\inst1|delay\(5) & (!\inst1|Add0~9\)) # (!\inst1|delay\(5) & ((\inst1|Add0~9\) # (GND)))
-- \inst1|Add0~11\ = CARRY((!\inst1|Add0~9\) # (!\inst1|delay\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|delay\(5),
	datad => VCC,
	cin => \inst1|Add0~9\,
	combout => \inst1|Add0~10_combout\,
	cout => \inst1|Add0~11\);

-- Location: LCCOMB_X28_Y17_N18
\inst1|Selector44~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector44~0_combout\ = (\inst1|Add2~20_combout\ & ((\key_close~input_o\ & ((\inst1|Add0~10_combout\))) # (!\key_close~input_o\ & (\inst1|Add2~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_close~input_o\,
	datab => \inst1|Add2~20_combout\,
	datac => \inst1|Add2~8_combout\,
	datad => \inst1|Add0~10_combout\,
	combout => \inst1|Selector44~0_combout\);

-- Location: LCCOMB_X28_Y17_N8
\inst1|Selector44~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector44~1_combout\ = (\inst1|Selector44~0_combout\) # ((\inst1|Add0~10_combout\ & \inst1|Selector49~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~10_combout\,
	datab => \inst1|Selector44~0_combout\,
	datad => \inst1|Selector49~0_combout\,
	combout => \inst1|Selector44~1_combout\);

-- Location: FF_X28_Y17_N9
\inst1|delay[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector44~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|delay\(5));

-- Location: LCCOMB_X26_Y17_N14
\inst1|Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~14_combout\ = (\inst1|delay\(8) & (!\inst1|Add2~13\)) # (!\inst1|delay\(8) & ((\inst1|Add2~13\) # (GND)))
-- \inst1|Add2~15\ = CARRY((!\inst1|Add2~13\) # (!\inst1|delay\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|delay\(8),
	datad => VCC,
	cin => \inst1|Add2~13\,
	combout => \inst1|Add2~14_combout\,
	cout => \inst1|Add2~15\);

-- Location: LCCOMB_X26_Y17_N16
\inst1|Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~16_combout\ = (\inst1|delay\(9) & (\inst1|Add2~15\ $ (GND))) # (!\inst1|delay\(9) & (!\inst1|Add2~15\ & VCC))
-- \inst1|Add2~17\ = CARRY((\inst1|delay\(9) & !\inst1|Add2~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|delay\(9),
	datad => VCC,
	cin => \inst1|Add2~15\,
	combout => \inst1|Add2~16_combout\,
	cout => \inst1|Add2~17\);

-- Location: LCCOMB_X28_Y17_N30
\inst1|Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~24_combout\ = (!\key_close~input_o\ & (\inst1|Add2~16_combout\ & \inst1|Add2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_close~input_o\,
	datac => \inst1|Add2~16_combout\,
	datad => \inst1|Add2~20_combout\,
	combout => \inst1|Add2~24_combout\);

-- Location: LCCOMB_X28_Y17_N28
\inst1|Selector40~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector40~0_combout\ = (\inst1|Add2~24_combout\) # ((\inst1|Add0~18_combout\ & ((\inst1|Selector39~0_combout\) # (\inst1|Selector49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~18_combout\,
	datab => \inst1|Selector39~0_combout\,
	datac => \inst1|Add2~24_combout\,
	datad => \inst1|Selector49~0_combout\,
	combout => \inst1|Selector40~0_combout\);

-- Location: FF_X28_Y17_N29
\inst1|delay[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector40~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|delay\(9));

-- Location: LCCOMB_X25_Y17_N22
\inst1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~14_combout\ = (\inst1|delay\(7) & (!\inst1|Add0~13\)) # (!\inst1|delay\(7) & ((\inst1|Add0~13\) # (GND)))
-- \inst1|Add0~15\ = CARRY((!\inst1|Add0~13\) # (!\inst1|delay\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|delay\(7),
	datad => VCC,
	cin => \inst1|Add0~13\,
	combout => \inst1|Add0~14_combout\,
	cout => \inst1|Add0~15\);

-- Location: LCCOMB_X25_Y17_N28
\inst1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add0~20_combout\ = \inst1|delay\(10) $ (!\inst1|Add0~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|delay\(10),
	cin => \inst1|Add0~19\,
	combout => \inst1|Add0~20_combout\);

-- Location: LCCOMB_X26_Y17_N18
\inst1|Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~18_combout\ = \inst1|delay\(10) $ (\inst1|Add2~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|delay\(10),
	cin => \inst1|Add2~17\,
	combout => \inst1|Add2~18_combout\);

-- Location: LCCOMB_X28_Y17_N6
\inst1|Add2~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~21_combout\ = (!\key_close~input_o\ & (\inst1|Add2~18_combout\ & \inst1|Add2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_close~input_o\,
	datac => \inst1|Add2~18_combout\,
	datad => \inst1|Add2~20_combout\,
	combout => \inst1|Add2~21_combout\);

-- Location: LCCOMB_X25_Y17_N4
\inst1|Selector39~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector39~1_combout\ = (\inst1|Add2~21_combout\) # ((\inst1|Add0~20_combout\ & ((\inst1|Selector49~0_combout\) # (\inst1|Selector39~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector49~0_combout\,
	datab => \inst1|Add0~20_combout\,
	datac => \inst1|Add2~21_combout\,
	datad => \inst1|Selector39~0_combout\,
	combout => \inst1|Selector39~1_combout\);

-- Location: FF_X25_Y17_N5
\inst1|delay[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector39~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|delay\(10));

-- Location: LCCOMB_X22_Y21_N12
\inst16|overweight~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|overweight~feeder_combout\ = \inst16|beep~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst16|beep~0_combout\,
	combout => \inst16|overweight~feeder_combout\);

-- Location: FF_X22_Y21_N13
\inst16|overweight\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|overweight~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|overweight~q\);

-- Location: LCCOMB_X26_Y17_N22
\inst1|Selector34~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector34~0_combout\ = (\inst1|state.c3~q\ & (((\inst16|overweight~q\) # (!\inst1|delay\(10))) # (!\key_open~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_open~input_o\,
	datab => \inst1|state.c3~q\,
	datac => \inst1|delay\(10),
	datad => \inst16|overweight~q\,
	combout => \inst1|Selector34~0_combout\);

-- Location: LCCOMB_X25_Y17_N30
\inst1|Selector34~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector34~1_combout\ = (\inst1|Selector34~0_combout\) # ((\inst1|direction.d1~q\ & \inst1|pre_step~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d1~q\,
	datab => \inst1|Selector34~0_combout\,
	datad => \inst1|pre_step~13_combout\,
	combout => \inst1|Selector34~1_combout\);

-- Location: FF_X25_Y17_N31
\inst1|state.c3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector34~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.c3~q\);

-- Location: LCCOMB_X26_Y17_N20
\inst1|Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~20_combout\ = (\key_open~input_o\ & (\inst1|state.c3~q\ & (!\inst1|delay\(10) & !\inst16|overweight~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_open~input_o\,
	datab => \inst1|state.c3~q\,
	datac => \inst1|delay\(10),
	datad => \inst16|overweight~q\,
	combout => \inst1|Add2~20_combout\);

-- Location: LCCOMB_X28_Y17_N16
\inst1|Selector39~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector39~0_combout\ = (\key_close~input_o\ & \inst1|Add2~20_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_close~input_o\,
	datad => \inst1|Add2~20_combout\,
	combout => \inst1|Selector39~0_combout\);

-- Location: LCCOMB_X28_Y17_N26
\inst1|Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add2~22_combout\ = (!\key_close~input_o\ & (\inst1|Add2~14_combout\ & \inst1|Add2~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \key_close~input_o\,
	datac => \inst1|Add2~14_combout\,
	datad => \inst1|Add2~20_combout\,
	combout => \inst1|Add2~22_combout\);

-- Location: LCCOMB_X28_Y17_N0
\inst1|Selector41~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector41~0_combout\ = (\inst1|Add2~22_combout\) # ((\inst1|Add0~16_combout\ & ((\inst1|Selector39~0_combout\) # (\inst1|Selector49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add0~16_combout\,
	datab => \inst1|Selector39~0_combout\,
	datac => \inst1|Add2~22_combout\,
	datad => \inst1|Selector49~0_combout\,
	combout => \inst1|Selector41~0_combout\);

-- Location: FF_X28_Y17_N1
\inst1|delay[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector41~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|delay\(8));

-- Location: LCCOMB_X28_Y17_N2
\inst1|Selector42~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector42~0_combout\ = (\inst1|Add2~23_combout\) # ((\inst1|Add0~14_combout\ & ((\inst1|Selector39~0_combout\) # (\inst1|Selector49~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add2~23_combout\,
	datab => \inst1|Selector39~0_combout\,
	datac => \inst1|Add0~14_combout\,
	datad => \inst1|Selector49~0_combout\,
	combout => \inst1|Selector42~0_combout\);

-- Location: FF_X28_Y17_N3
\inst1|delay[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector42~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|delay\(7));

-- Location: LCCOMB_X26_Y19_N0
\inst1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal0~0_combout\ = ((\inst1|delay\(8)) # ((\inst1|delay\(7)) # (\inst1|delay\(10)))) # (!\inst1|delay\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|delay\(9),
	datab => \inst1|delay\(8),
	datac => \inst1|delay\(7),
	datad => \inst1|delay\(10),
	combout => \inst1|Equal0~0_combout\);

-- Location: LCCOMB_X25_Y19_N12
\inst1|direction~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|direction~11_combout\ = (!\inst1|Equal0~0_combout\ & (\inst4|door~q\ & !\inst1|Equal0~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Equal0~0_combout\,
	datac => \inst4|door~q\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|direction~11_combout\);

-- Location: LCCOMB_X25_Y19_N2
\inst1|Selector31~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector31~4_combout\ = (!\inst1|Selector31~3_combout\ & ((\inst1|state.c0~q\) # (\inst1|direction~11_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector31~3_combout\,
	datac => \inst1|state.c0~q\,
	datad => \inst1|direction~11_combout\,
	combout => \inst1|Selector31~4_combout\);

-- Location: FF_X25_Y19_N3
\inst1|state.c0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector31~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|state.c0~q\);

-- Location: LCCOMB_X25_Y19_N20
\inst1|direction~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|direction~10_combout\ = (\inst4|door~q\ & (!\inst1|state.c0~q\ & (!\inst1|Equal0~0_combout\ & !\inst1|Equal0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|door~q\,
	datab => \inst1|state.c0~q\,
	datac => \inst1|Equal0~0_combout\,
	datad => \inst1|Equal0~2_combout\,
	combout => \inst1|direction~10_combout\);

-- Location: LCCOMB_X24_Y21_N10
\inst1|Selector36~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector36~0_combout\ = (\inst1|process_1~2_combout\) # ((\inst1|direction~10_combout\) # ((\inst1|direction.d1~q\ & !\inst1|pre_step~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~2_combout\,
	datab => \inst1|direction~10_combout\,
	datac => \inst1|direction.d1~q\,
	datad => \inst1|pre_step~13_combout\,
	combout => \inst1|Selector36~0_combout\);

-- Location: FF_X24_Y21_N11
\inst1|direction.d1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector36~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|direction.d1~q\);

-- Location: LCCOMB_X25_Y17_N0
\inst1|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector20~0_combout\ = (\inst1|Add3~2_combout\ & ((\inst1|Selector37~0_combout\) # ((\inst1|direction.d1~q\ & !\inst1|pre_step~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~2_combout\,
	datab => \inst1|direction.d1~q\,
	datac => \inst1|Selector37~0_combout\,
	datad => \inst1|pre_step~13_combout\,
	combout => \inst1|Selector20~0_combout\);

-- Location: FF_X25_Y17_N1
\inst1|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector20~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(1));

-- Location: LCCOMB_X25_Y20_N2
\inst1|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~1_cout\ = CARRY((!\inst1|Add1~0_combout\ & \inst1|count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~0_combout\,
	datab => \inst1|count\(0),
	datad => VCC,
	cout => \inst1|LessThan0~1_cout\);

-- Location: LCCOMB_X25_Y20_N4
\inst1|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~3_cout\ = CARRY((\inst1|Add1~2_combout\ & ((!\inst1|LessThan0~1_cout\) # (!\inst1|count\(1)))) # (!\inst1|Add1~2_combout\ & (!\inst1|count\(1) & !\inst1|LessThan0~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~2_combout\,
	datab => \inst1|count\(1),
	datad => VCC,
	cin => \inst1|LessThan0~1_cout\,
	cout => \inst1|LessThan0~3_cout\);

-- Location: LCCOMB_X25_Y20_N6
\inst1|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~5_cout\ = CARRY((\inst1|Add1~4_combout\ & (\inst1|count\(2) & !\inst1|LessThan0~3_cout\)) # (!\inst1|Add1~4_combout\ & ((\inst1|count\(2)) # (!\inst1|LessThan0~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~4_combout\,
	datab => \inst1|count\(2),
	datad => VCC,
	cin => \inst1|LessThan0~3_cout\,
	cout => \inst1|LessThan0~5_cout\);

-- Location: LCCOMB_X25_Y20_N8
\inst1|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~7_cout\ = CARRY((\inst1|Add1~6_combout\ & ((!\inst1|LessThan0~5_cout\) # (!\inst1|count\(3)))) # (!\inst1|Add1~6_combout\ & (!\inst1|count\(3) & !\inst1|LessThan0~5_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~6_combout\,
	datab => \inst1|count\(3),
	datad => VCC,
	cin => \inst1|LessThan0~5_cout\,
	cout => \inst1|LessThan0~7_cout\);

-- Location: LCCOMB_X25_Y20_N10
\inst1|LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~9_cout\ = CARRY((\inst1|count\(4) & ((!\inst1|LessThan0~7_cout\) # (!\inst1|Add1~8_combout\))) # (!\inst1|count\(4) & (!\inst1|Add1~8_combout\ & !\inst1|LessThan0~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(4),
	datab => \inst1|Add1~8_combout\,
	datad => VCC,
	cin => \inst1|LessThan0~7_cout\,
	cout => \inst1|LessThan0~9_cout\);

-- Location: LCCOMB_X25_Y20_N12
\inst1|LessThan0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~11_cout\ = CARRY((\inst1|count\(5) & (\inst1|Add1~10_combout\ & !\inst1|LessThan0~9_cout\)) # (!\inst1|count\(5) & ((\inst1|Add1~10_combout\) # (!\inst1|LessThan0~9_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(5),
	datab => \inst1|Add1~10_combout\,
	datad => VCC,
	cin => \inst1|LessThan0~9_cout\,
	cout => \inst1|LessThan0~11_cout\);

-- Location: LCCOMB_X25_Y20_N14
\inst1|LessThan0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~13_cout\ = CARRY((\inst1|count\(6) & ((!\inst1|LessThan0~11_cout\) # (!\inst1|Add1~12_combout\))) # (!\inst1|count\(6) & (!\inst1|Add1~12_combout\ & !\inst1|LessThan0~11_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(6),
	datab => \inst1|Add1~12_combout\,
	datad => VCC,
	cin => \inst1|LessThan0~11_cout\,
	cout => \inst1|LessThan0~13_cout\);

-- Location: LCCOMB_X25_Y20_N16
\inst1|LessThan0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~15_cout\ = CARRY((\inst1|count\(7) & (\inst1|Add1~14_combout\ & !\inst1|LessThan0~13_cout\)) # (!\inst1|count\(7) & ((\inst1|Add1~14_combout\) # (!\inst1|LessThan0~13_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(7),
	datab => \inst1|Add1~14_combout\,
	datad => VCC,
	cin => \inst1|LessThan0~13_cout\,
	cout => \inst1|LessThan0~15_cout\);

-- Location: LCCOMB_X25_Y20_N18
\inst1|LessThan0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~17_cout\ = CARRY((\inst1|count\(8) & ((!\inst1|LessThan0~15_cout\) # (!\inst1|Add1~16_combout\))) # (!\inst1|count\(8) & (!\inst1|Add1~16_combout\ & !\inst1|LessThan0~15_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(8),
	datab => \inst1|Add1~16_combout\,
	datad => VCC,
	cin => \inst1|LessThan0~15_cout\,
	cout => \inst1|LessThan0~17_cout\);

-- Location: LCCOMB_X25_Y20_N20
\inst1|LessThan0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~19_cout\ = CARRY((\inst1|count\(9) & (\inst1|Add1~18_combout\ & !\inst1|LessThan0~17_cout\)) # (!\inst1|count\(9) & ((\inst1|Add1~18_combout\) # (!\inst1|LessThan0~17_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(9),
	datab => \inst1|Add1~18_combout\,
	datad => VCC,
	cin => \inst1|LessThan0~17_cout\,
	cout => \inst1|LessThan0~19_cout\);

-- Location: LCCOMB_X25_Y20_N22
\inst1|LessThan0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|LessThan0~20_combout\ = (\inst1|Add1~20_combout\ & (!\inst1|LessThan0~19_cout\ & \inst1|count\(10))) # (!\inst1|Add1~20_combout\ & ((\inst1|count\(10)) # (!\inst1|LessThan0~19_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~20_combout\,
	datad => \inst1|count\(10),
	cin => \inst1|LessThan0~19_cout\,
	combout => \inst1|LessThan0~20_combout\);

-- Location: LCCOMB_X24_Y21_N30
\inst1|Selector13~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector13~0_combout\ = (\inst1|Add3~16_combout\ & ((\inst1|Selector37~0_combout\) # ((\inst1|direction.d1~q\ & !\inst1|pre_step~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~16_combout\,
	datab => \inst1|direction.d1~q\,
	datac => \inst1|Selector37~0_combout\,
	datad => \inst1|pre_step~13_combout\,
	combout => \inst1|Selector13~0_combout\);

-- Location: FF_X24_Y21_N31
\inst1|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector13~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(8));

-- Location: LCCOMB_X26_Y21_N22
\inst1|Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~18_combout\ = (\inst1|count\(9) & (!\inst1|Add3~17\)) # (!\inst1|count\(9) & ((\inst1|Add3~17\) # (GND)))
-- \inst1|Add3~19\ = CARRY((!\inst1|Add3~17\) # (!\inst1|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(9),
	datad => VCC,
	cin => \inst1|Add3~17\,
	combout => \inst1|Add3~18_combout\,
	cout => \inst1|Add3~19\);

-- Location: LCCOMB_X24_Y21_N28
\inst1|Selector12~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector12~0_combout\ = (\inst1|Add3~18_combout\ & ((\inst1|Selector37~0_combout\) # ((\inst1|direction.d1~q\ & !\inst1|pre_step~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d1~q\,
	datab => \inst1|Add3~18_combout\,
	datac => \inst1|Selector37~0_combout\,
	datad => \inst1|pre_step~13_combout\,
	combout => \inst1|Selector12~0_combout\);

-- Location: FF_X24_Y21_N29
\inst1|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector12~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(9));

-- Location: LCCOMB_X24_Y21_N8
\inst1|Equal2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~5_combout\ = (\inst1|target\(8) & (\inst1|count\(8) & (\inst1|target\(9) $ (!\inst1|count\(9))))) # (!\inst1|target\(8) & (!\inst1|count\(8) & (\inst1|target\(9) $ (!\inst1|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(8),
	datab => \inst1|target\(9),
	datac => \inst1|count\(8),
	datad => \inst1|count\(9),
	combout => \inst1|Equal2~5_combout\);

-- Location: LCCOMB_X24_Y21_N6
\inst1|Selector31~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector31~5_combout\ = (\inst1|Equal2~5_combout\ & (\inst1|Equal2~4_combout\ & (\inst1|target\(10) $ (\inst1|count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(10),
	datab => \inst1|count\(10),
	datac => \inst1|Equal2~5_combout\,
	datad => \inst1|Equal2~4_combout\,
	combout => \inst1|Selector31~5_combout\);

-- Location: LCCOMB_X25_Y20_N24
\inst1|Selector31~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector31~2_combout\ = (\inst1|direction.d2~q\ & ((\inst1|Selector31~5_combout\) # ((!\inst16|overweight~q\ & \key_open~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d2~q\,
	datab => \inst16|overweight~q\,
	datac => \key_open~input_o\,
	datad => \inst1|Selector31~5_combout\,
	combout => \inst1|Selector31~2_combout\);

-- Location: LCCOMB_X25_Y20_N0
\inst1|Selector37~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector37~0_combout\ = (\inst1|Selector31~2_combout\ & (((\inst1|Add1~22_combout\ & !\inst1|LessThan0~20_combout\)) # (!\inst1|Equal3~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~6_combout\,
	datab => \inst1|Add1~22_combout\,
	datac => \inst1|LessThan0~20_combout\,
	datad => \inst1|Selector31~2_combout\,
	combout => \inst1|Selector37~0_combout\);

-- Location: LCCOMB_X25_Y17_N2
\inst1|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector18~0_combout\ = (\inst1|Add3~6_combout\ & ((\inst1|Selector37~0_combout\) # ((\inst1|direction.d1~q\ & !\inst1|pre_step~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d1~q\,
	datab => \inst1|Add3~6_combout\,
	datac => \inst1|Selector37~0_combout\,
	datad => \inst1|pre_step~13_combout\,
	combout => \inst1|Selector18~0_combout\);

-- Location: FF_X25_Y17_N3
\inst1|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector18~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(3));

-- Location: LCCOMB_X25_Y21_N30
\inst1|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~1_combout\ = (\inst1|target\(2) & (\inst1|count\(2) & (\inst1|target\(3) $ (!\inst1|count\(3))))) # (!\inst1|target\(2) & (!\inst1|count\(2) & (\inst1|target\(3) $ (!\inst1|count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(2),
	datab => \inst1|count\(2),
	datac => \inst1|target\(3),
	datad => \inst1|count\(3),
	combout => \inst1|Equal2~1_combout\);

-- Location: LCCOMB_X26_Y20_N26
\inst1|target[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|target[0]~3_combout\ = (\inst1|target[0]~1_combout\ & (!\inst1|Add3~0_combout\ & (\inst1|process_1~2_combout\))) # (!\inst1|target[0]~1_combout\ & (((\inst1|target\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~0_combout\,
	datab => \inst1|process_1~2_combout\,
	datac => \inst1|target\(0),
	datad => \inst1|target[0]~1_combout\,
	combout => \inst1|target[0]~3_combout\);

-- Location: FF_X26_Y20_N27
\inst1|target[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|target[0]~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|target\(0));

-- Location: LCCOMB_X25_Y21_N2
\inst1|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~0_combout\ = (\inst1|target\(1) & (\inst1|count\(1) & (\inst1|count\(0) $ (\inst1|target\(0))))) # (!\inst1|target\(1) & (!\inst1|count\(1) & (\inst1|count\(0) $ (\inst1|target\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(1),
	datab => \inst1|count\(0),
	datac => \inst1|target\(0),
	datad => \inst1|count\(1),
	combout => \inst1|Equal2~0_combout\);

-- Location: LCCOMB_X25_Y21_N6
\inst1|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~4_combout\ = (\inst1|Equal2~2_combout\ & (\inst1|Equal2~3_combout\ & (\inst1|Equal2~1_combout\ & \inst1|Equal2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~2_combout\,
	datab => \inst1|Equal2~3_combout\,
	datac => \inst1|Equal2~1_combout\,
	datad => \inst1|Equal2~0_combout\,
	combout => \inst1|Equal2~4_combout\);

-- Location: LCCOMB_X25_Y21_N22
\inst1|process_1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_1~3_combout\ = ((\inst1|count\(10) $ (!\inst1|target\(10))) # (!\inst1|Equal2~4_combout\)) # (!\inst1|Equal2~5_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~5_combout\,
	datab => \inst1|count\(10),
	datac => \inst1|target\(10),
	datad => \inst1|Equal2~4_combout\,
	combout => \inst1|process_1~3_combout\);

-- Location: LCCOMB_X25_Y21_N16
\inst1|process_1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|process_1~2_combout\ = (\inst1|direction.d2~q\ & (\inst1|process_1~3_combout\ & ((\inst16|overweight~q\) # (!\key_open~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d2~q\,
	datab => \key_open~input_o\,
	datac => \inst1|process_1~3_combout\,
	datad => \inst16|overweight~q\,
	combout => \inst1|process_1~2_combout\);

-- Location: LCCOMB_X25_Y21_N18
\inst1|target[9]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|target[9]~0_combout\ = (\inst4|door~q\ & \inst1|process_1~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|door~q\,
	datad => \inst1|process_1~2_combout\,
	combout => \inst1|target[9]~0_combout\);

-- Location: LCCOMB_X26_Y21_N30
\inst1|target[9]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|target[9]~11_combout\ = (\inst1|Add3~18_combout\ & ((\inst1|target[9]~0_combout\) # ((\inst1|target\(9) & !\inst1|target[0]~1_combout\)))) # (!\inst1|Add3~18_combout\ & (((\inst1|target\(9) & !\inst1|target[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add3~18_combout\,
	datab => \inst1|target[9]~0_combout\,
	datac => \inst1|target\(9),
	datad => \inst1|target[0]~1_combout\,
	combout => \inst1|target[9]~11_combout\);

-- Location: FF_X26_Y21_N31
\inst1|target[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|target[9]~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|target\(9));

-- Location: LCCOMB_X25_Y20_N26
\inst1|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector1~0_combout\ = (\inst1|Add1~22_combout\ & (!\inst1|LessThan0~20_combout\ & \inst1|Selector31~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|Add1~22_combout\,
	datac => \inst1|LessThan0~20_combout\,
	datad => \inst1|Selector31~2_combout\,
	combout => \inst1|Selector1~0_combout\);

-- Location: LCCOMB_X25_Y19_N4
\inst1|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~6_combout\ = (\inst1|Add1~22_combout\ & (\inst1|Add1~20_combout\ $ (!\inst1|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~20_combout\,
	datac => \inst1|count\(10),
	datad => \inst1|Add1~22_combout\,
	combout => \inst1|Equal1~6_combout\);

-- Location: LCCOMB_X25_Y19_N8
\inst1|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~0_combout\ = (\inst1|Add1~0_combout\ & (\inst1|count\(0) & (\inst1|Add1~2_combout\ $ (!\inst1|count\(1))))) # (!\inst1|Add1~0_combout\ & (!\inst1|count\(0) & (\inst1|Add1~2_combout\ $ (!\inst1|count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000000001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Add1~0_combout\,
	datab => \inst1|count\(0),
	datac => \inst1|Add1~2_combout\,
	datad => \inst1|count\(1),
	combout => \inst1|Equal1~0_combout\);

-- Location: LCCOMB_X25_Y19_N22
\inst1|Equal1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~3_combout\ = (\inst1|count\(6) & (\inst1|Add1~12_combout\ & (\inst1|count\(7) $ (!\inst1|Add1~14_combout\)))) # (!\inst1|count\(6) & (!\inst1|Add1~12_combout\ & (\inst1|count\(7) $ (!\inst1|Add1~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(6),
	datab => \inst1|count\(7),
	datac => \inst1|Add1~12_combout\,
	datad => \inst1|Add1~14_combout\,
	combout => \inst1|Equal1~3_combout\);

-- Location: LCCOMB_X25_Y19_N28
\inst1|Equal1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~2_combout\ = (\inst1|count\(5) & (\inst1|Add1~10_combout\ & (\inst1|Add1~8_combout\ $ (!\inst1|count\(4))))) # (!\inst1|count\(5) & (!\inst1|Add1~10_combout\ & (\inst1|Add1~8_combout\ $ (!\inst1|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(5),
	datab => \inst1|Add1~8_combout\,
	datac => \inst1|count\(4),
	datad => \inst1|Add1~10_combout\,
	combout => \inst1|Equal1~2_combout\);

-- Location: LCCOMB_X25_Y19_N16
\inst1|Equal1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~4_combout\ = (\inst1|Equal1~1_combout\ & (\inst1|Equal1~0_combout\ & (\inst1|Equal1~3_combout\ & \inst1|Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~1_combout\,
	datab => \inst1|Equal1~0_combout\,
	datac => \inst1|Equal1~3_combout\,
	datad => \inst1|Equal1~2_combout\,
	combout => \inst1|Equal1~4_combout\);

-- Location: LCCOMB_X25_Y19_N14
\inst1|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal1~7_combout\ = (\inst1|Equal1~5_combout\ & (\inst1|Equal1~6_combout\ & \inst1|Equal1~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~5_combout\,
	datac => \inst1|Equal1~6_combout\,
	datad => \inst1|Equal1~4_combout\,
	combout => \inst1|Equal1~7_combout\);

-- Location: LCCOMB_X24_Y21_N24
\inst1|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector1~1_combout\ = (\inst1|target\(9) & ((\inst1|Selector1~0_combout\) # ((\inst1|direction.d1~q\ & \inst1|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d1~q\,
	datab => \inst1|target\(9),
	datac => \inst1|Selector1~0_combout\,
	datad => \inst1|Equal1~7_combout\,
	combout => \inst1|Selector1~1_combout\);

-- Location: FF_X24_Y21_N25
\inst1|mark[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector1~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mark\(9));

-- Location: LCCOMB_X24_Y21_N18
\inst1|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector2~0_combout\ = (\inst1|target\(8) & ((\inst1|Selector1~0_combout\) # ((\inst1|direction.d1~q\ & \inst1|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010100010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(8),
	datab => \inst1|direction.d1~q\,
	datac => \inst1|Selector1~0_combout\,
	datad => \inst1|Equal1~7_combout\,
	combout => \inst1|Selector2~0_combout\);

-- Location: FF_X24_Y21_N19
\inst1|mark[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector2~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mark\(8));

-- Location: LCCOMB_X24_Y20_N18
\inst1|Equal3~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal3~5_combout\ = (\inst1|count\(8) & (\inst1|mark\(8) & (\inst1|mark\(9) $ (!\inst1|count\(9))))) # (!\inst1|count\(8) & (!\inst1|mark\(8) & (\inst1|mark\(9) $ (!\inst1|count\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010000100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|count\(8),
	datab => \inst1|mark\(9),
	datac => \inst1|mark\(8),
	datad => \inst1|count\(9),
	combout => \inst1|Equal3~5_combout\);

-- Location: LCCOMB_X24_Y20_N4
\inst1|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector5~0_combout\ = (\inst1|target\(5) & ((\inst1|Selector1~0_combout\) # ((\inst1|direction.d1~q\ & \inst1|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(5),
	datab => \inst1|direction.d1~q\,
	datac => \inst1|Equal1~7_combout\,
	datad => \inst1|Selector1~0_combout\,
	combout => \inst1|Selector5~0_combout\);

-- Location: FF_X24_Y20_N5
\inst1|mark[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector5~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mark\(5));

-- Location: LCCOMB_X25_Y21_N10
\inst1|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector16~0_combout\ = (\inst1|Add3~10_combout\ & ((\inst1|Selector37~0_combout\) # ((\inst1|direction.d1~q\ & !\inst1|pre_step~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d1~q\,
	datab => \inst1|Add3~10_combout\,
	datac => \inst1|pre_step~13_combout\,
	datad => \inst1|Selector37~0_combout\,
	combout => \inst1|Selector16~0_combout\);

-- Location: FF_X25_Y21_N11
\inst1|count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector16~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(5));

-- Location: LCCOMB_X24_Y20_N8
\inst1|Equal3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal3~2_combout\ = (\inst1|mark\(4) & (\inst1|count\(4) & (\inst1|mark\(5) $ (!\inst1|count\(5))))) # (!\inst1|mark\(4) & (!\inst1|count\(4) & (\inst1|mark\(5) $ (!\inst1|count\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mark\(4),
	datab => \inst1|mark\(5),
	datac => \inst1|count\(5),
	datad => \inst1|count\(4),
	combout => \inst1|Equal3~2_combout\);

-- Location: LCCOMB_X24_Y20_N28
\inst1|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector4~0_combout\ = (\inst1|target\(6) & ((\inst1|Selector1~0_combout\) # ((\inst1|direction.d1~q\ & \inst1|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(6),
	datab => \inst1|direction.d1~q\,
	datac => \inst1|Equal1~7_combout\,
	datad => \inst1|Selector1~0_combout\,
	combout => \inst1|Selector4~0_combout\);

-- Location: FF_X24_Y20_N29
\inst1|mark[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector4~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mark\(6));

-- Location: LCCOMB_X24_Y20_N14
\inst1|Equal3~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal3~3_combout\ = (\inst1|mark\(7) & (\inst1|count\(7) & (\inst1|mark\(6) $ (!\inst1|count\(6))))) # (!\inst1|mark\(7) & (!\inst1|count\(7) & (\inst1|mark\(6) $ (!\inst1|count\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mark\(7),
	datab => \inst1|mark\(6),
	datac => \inst1|count\(6),
	datad => \inst1|count\(7),
	combout => \inst1|Equal3~3_combout\);

-- Location: LCCOMB_X24_Y20_N16
\inst1|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector8~0_combout\ = (\inst1|target\(2) & ((\inst1|Selector1~0_combout\) # ((\inst1|direction.d1~q\ & \inst1|Equal1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(2),
	datab => \inst1|direction.d1~q\,
	datac => \inst1|Equal1~7_combout\,
	datad => \inst1|Selector1~0_combout\,
	combout => \inst1|Selector8~0_combout\);

-- Location: FF_X24_Y20_N17
\inst1|mark[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector8~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|mark\(2));

-- Location: LCCOMB_X24_Y20_N2
\inst1|Equal3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal3~1_combout\ = (\inst1|mark\(3) & (\inst1|count\(3) & (\inst1|mark\(2) $ (!\inst1|count\(2))))) # (!\inst1|mark\(3) & (!\inst1|count\(3) & (\inst1|mark\(2) $ (!\inst1|count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001001000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mark\(3),
	datab => \inst1|mark\(2),
	datac => \inst1|count\(2),
	datad => \inst1|count\(3),
	combout => \inst1|Equal3~1_combout\);

-- Location: LCCOMB_X24_Y20_N24
\inst1|Equal3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal3~4_combout\ = (\inst1|Equal3~0_combout\ & (\inst1|Equal3~2_combout\ & (\inst1|Equal3~3_combout\ & \inst1|Equal3~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~0_combout\,
	datab => \inst1|Equal3~2_combout\,
	datac => \inst1|Equal3~3_combout\,
	datad => \inst1|Equal3~1_combout\,
	combout => \inst1|Equal3~4_combout\);

-- Location: LCCOMB_X24_Y20_N30
\inst1|Equal3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal3~6_combout\ = (\inst1|Equal3~5_combout\ & (\inst1|Equal3~4_combout\ & (\inst1|mark\(10) $ (\inst1|count\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|mark\(10),
	datab => \inst1|Equal3~5_combout\,
	datac => \inst1|count\(10),
	datad => \inst1|Equal3~4_combout\,
	combout => \inst1|Equal3~6_combout\);

-- Location: LCCOMB_X25_Y19_N6
\inst1|pre_step~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|pre_step~13_combout\ = (\inst1|Equal3~6_combout\ & (((!\inst1|Equal1~4_combout\) # (!\inst1|Equal1~6_combout\)) # (!\inst1|Equal1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal1~5_combout\,
	datab => \inst1|Equal3~6_combout\,
	datac => \inst1|Equal1~6_combout\,
	datad => \inst1|Equal1~4_combout\,
	combout => \inst1|pre_step~13_combout\);

-- Location: LCCOMB_X25_Y21_N0
\inst1|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector21~0_combout\ = (\inst1|Add3~0_combout\ & ((\inst1|Selector37~0_combout\) # ((\inst1|direction.d1~q\ & !\inst1|pre_step~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d1~q\,
	datab => \inst1|Add3~0_combout\,
	datac => \inst1|pre_step~13_combout\,
	datad => \inst1|Selector37~0_combout\,
	combout => \inst1|Selector21~0_combout\);

-- Location: FF_X25_Y21_N1
\inst1|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector21~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(0));

-- Location: LCCOMB_X26_Y21_N8
\inst1|Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~4_combout\ = (\inst1|count\(2) & (\inst1|Add3~3\ $ (GND))) # (!\inst1|count\(2) & (!\inst1|Add3~3\ & VCC))
-- \inst1|Add3~5\ = CARRY((\inst1|count\(2) & !\inst1|Add3~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(2),
	datad => VCC,
	cin => \inst1|Add3~3\,
	combout => \inst1|Add3~4_combout\,
	cout => \inst1|Add3~5\);

-- Location: LCCOMB_X25_Y21_N28
\inst1|Selector19~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector19~0_combout\ = (\inst1|Add3~4_combout\ & ((\inst1|Selector37~0_combout\) # ((\inst1|direction.d1~q\ & !\inst1|pre_step~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d1~q\,
	datab => \inst1|Add3~4_combout\,
	datac => \inst1|pre_step~13_combout\,
	datad => \inst1|Selector37~0_combout\,
	combout => \inst1|Selector19~0_combout\);

-- Location: FF_X25_Y21_N29
\inst1|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector19~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(2));

-- Location: LCCOMB_X26_Y21_N12
\inst1|Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~8_combout\ = (\inst1|count\(4) & (\inst1|Add3~7\ $ (GND))) # (!\inst1|count\(4) & (!\inst1|Add3~7\ & VCC))
-- \inst1|Add3~9\ = CARRY((\inst1|count\(4) & !\inst1|Add3~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(4),
	datad => VCC,
	cin => \inst1|Add3~7\,
	combout => \inst1|Add3~8_combout\,
	cout => \inst1|Add3~9\);

-- Location: LCCOMB_X25_Y21_N8
\inst1|Selector17~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector17~0_combout\ = (\inst1|Add3~8_combout\ & ((\inst1|Selector37~0_combout\) # ((\inst1|direction.d1~q\ & !\inst1|pre_step~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d1~q\,
	datab => \inst1|Add3~8_combout\,
	datac => \inst1|pre_step~13_combout\,
	datad => \inst1|Selector37~0_combout\,
	combout => \inst1|Selector17~0_combout\);

-- Location: FF_X25_Y21_N9
\inst1|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector17~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(4));

-- Location: LCCOMB_X26_Y21_N16
\inst1|Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~12_combout\ = (\inst1|count\(6) & (\inst1|Add3~11\ $ (GND))) # (!\inst1|count\(6) & (!\inst1|Add3~11\ & VCC))
-- \inst1|Add3~13\ = CARRY((\inst1|count\(6) & !\inst1|Add3~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(6),
	datad => VCC,
	cin => \inst1|Add3~11\,
	combout => \inst1|Add3~12_combout\,
	cout => \inst1|Add3~13\);

-- Location: LCCOMB_X25_Y21_N24
\inst1|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector15~0_combout\ = (\inst1|Add3~12_combout\ & ((\inst1|Selector37~0_combout\) # ((\inst1|direction.d1~q\ & !\inst1|pre_step~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d1~q\,
	datab => \inst1|Add3~12_combout\,
	datac => \inst1|pre_step~13_combout\,
	datad => \inst1|Selector37~0_combout\,
	combout => \inst1|Selector15~0_combout\);

-- Location: FF_X25_Y21_N25
\inst1|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector15~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(6));

-- Location: LCCOMB_X26_Y21_N18
\inst1|Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~14_combout\ = (\inst1|count\(7) & (!\inst1|Add3~13\)) # (!\inst1|count\(7) & ((\inst1|Add3~13\) # (GND)))
-- \inst1|Add3~15\ = CARRY((!\inst1|Add3~13\) # (!\inst1|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst1|count\(7),
	datad => VCC,
	cin => \inst1|Add3~13\,
	combout => \inst1|Add3~14_combout\,
	cout => \inst1|Add3~15\);

-- Location: LCCOMB_X25_Y21_N26
\inst1|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector14~0_combout\ = (\inst1|Add3~14_combout\ & ((\inst1|Selector37~0_combout\) # ((\inst1|direction.d1~q\ & !\inst1|pre_step~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d1~q\,
	datab => \inst1|Add3~14_combout\,
	datac => \inst1|pre_step~13_combout\,
	datad => \inst1|Selector37~0_combout\,
	combout => \inst1|Selector14~0_combout\);

-- Location: FF_X25_Y21_N27
\inst1|count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector14~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(7));

-- Location: LCCOMB_X26_Y21_N24
\inst1|Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add3~20_combout\ = \inst1|Add3~19\ $ (!\inst1|count\(10))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst1|count\(10),
	cin => \inst1|Add3~19\,
	combout => \inst1|Add3~20_combout\);

-- Location: LCCOMB_X24_Y21_N4
\inst1|Selector11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector11~0_combout\ = (\inst1|Add3~20_combout\ & ((\inst1|Selector37~0_combout\) # ((\inst1|direction.d1~q\ & !\inst1|pre_step~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d1~q\,
	datab => \inst1|Add3~20_combout\,
	datac => \inst1|Selector37~0_combout\,
	datad => \inst1|pre_step~13_combout\,
	combout => \inst1|Selector11~0_combout\);

-- Location: FF_X24_Y21_N5
\inst1|count[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector11~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|count\(10));

-- Location: LCCOMB_X24_Y21_N14
\inst1|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Equal2~6_combout\ = (\inst1|Equal2~5_combout\ & (\inst1|target\(10) $ (\inst1|count\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|target\(10),
	datab => \inst1|count\(10),
	datac => \inst1|Equal2~5_combout\,
	combout => \inst1|Equal2~6_combout\);

-- Location: LCCOMB_X25_Y21_N12
\inst1|target[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|target[0]~1_combout\ = (\inst4|door~q\ & ((\inst1|process_1~2_combout\) # ((\inst1|Equal2~4_combout\ & \inst1|Equal2~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal2~4_combout\,
	datab => \inst4|door~q\,
	datac => \inst1|Equal2~6_combout\,
	datad => \inst1|process_1~2_combout\,
	combout => \inst1|target[0]~1_combout\);

-- Location: LCCOMB_X24_Y21_N26
\inst1|target[10]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|target[10]~12_combout\ = (\inst1|target[0]~1_combout\ & (\inst1|process_1~2_combout\ & ((!\inst1|Add3~20_combout\)))) # (!\inst1|target[0]~1_combout\ & (((\inst1|target\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|process_1~2_combout\,
	datab => \inst1|target[0]~1_combout\,
	datac => \inst1|target\(10),
	datad => \inst1|Add3~20_combout\,
	combout => \inst1|target[10]~12_combout\);

-- Location: FF_X24_Y21_N27
\inst1|target[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst1|target[10]~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|target\(10));

-- Location: LCCOMB_X26_Y20_N22
\inst1|Add1~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Add1~22_combout\ = \inst1|Add1~21\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \inst1|Add1~21\,
	combout => \inst1|Add1~22_combout\);

-- Location: LCCOMB_X25_Y20_N30
\inst1|Selector31~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector31~3_combout\ = (\inst1|Equal3~6_combout\ & (\inst1|Selector31~2_combout\ & ((\inst1|LessThan0~20_combout\) # (!\inst1|Add1~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Equal3~6_combout\,
	datab => \inst1|Add1~22_combout\,
	datac => \inst1|LessThan0~20_combout\,
	datad => \inst1|Selector31~2_combout\,
	combout => \inst1|Selector31~3_combout\);

-- Location: LCCOMB_X25_Y19_N24
\inst1|Selector38~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector38~0_combout\ = (!\inst1|Selector31~3_combout\ & ((\inst4|door~q\) # (\inst1|state.c0~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|door~q\,
	datac => \inst1|Selector31~3_combout\,
	datad => \inst1|state.c0~q\,
	combout => \inst1|Selector38~0_combout\);

-- Location: FF_X25_Y19_N25
\inst1|en\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector38~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|en~q\);

-- Location: LCCOMB_X24_Y17_N10
\inst4|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state~17_combout\ = (\inst4|Equal7~0_combout\ & !\inst1|en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Equal7~0_combout\,
	datad => \inst1|en~q\,
	combout => \inst4|state~17_combout\);

-- Location: LCCOMB_X23_Y17_N10
\inst4|Selector9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector9~2_combout\ = (\inst4|state.s3~q\ & (((\inst4|state~16_combout\ & \inst4|num\(0))) # (!\inst4|state~17_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s3~q\,
	datab => \inst4|state~16_combout\,
	datac => \inst4|state~17_combout\,
	datad => \inst4|num\(0),
	combout => \inst4|Selector9~2_combout\);

-- Location: LCCOMB_X23_Y17_N18
\inst4|Selector9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector9~4_combout\ = (\inst4|Selector9~3_combout\) # ((\inst4|Selector9~1_combout\) # ((\inst4|Selector9~0_combout\) # (\inst4|Selector9~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector9~3_combout\,
	datab => \inst4|Selector9~1_combout\,
	datac => \inst4|Selector9~0_combout\,
	datad => \inst4|Selector9~2_combout\,
	combout => \inst4|Selector9~4_combout\);

-- Location: FF_X23_Y17_N19
\inst4|state.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Selector9~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.s3~q\);

-- Location: LCCOMB_X24_Y17_N16
\inst4|Selector8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector8~0_combout\ = (!\inst4|Selector6~7_combout\ & (\inst4|Equal7~0_combout\ & (\inst4|state.s3~q\ & !\inst1|en~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector6~7_combout\,
	datab => \inst4|Equal7~0_combout\,
	datac => \inst4|state.s3~q\,
	datad => \inst1|en~q\,
	combout => \inst4|Selector8~0_combout\);

-- Location: LCCOMB_X24_Y14_N4
\inst4|Selector7~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector7~5_combout\ = (\inst4|Selector7~3_combout\) # ((\inst4|Selector7~6_combout\) # ((\inst4|Selector7~4_combout\ & \inst4|Selector8~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector7~3_combout\,
	datab => \inst4|Selector7~4_combout\,
	datac => \inst4|Selector7~6_combout\,
	datad => \inst4|Selector8~0_combout\,
	combout => \inst4|Selector7~5_combout\);

-- Location: FF_X24_Y14_N5
\inst4|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Selector7~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.s1~q\);

-- Location: LCCOMB_X25_Y16_N6
\inst4|Selector4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector4~10_combout\ = (\inst4|state.s1~q\ & (((\inst4|floor\(1)) # (\inst4|num\(1))) # (!\inst4|num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(0),
	datab => \inst4|floor\(1),
	datac => \inst4|state.s1~q\,
	datad => \inst4|num\(1),
	combout => \inst4|Selector4~10_combout\);

-- Location: LCCOMB_X24_Y19_N8
\inst3|count2[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[1]~28_combout\ = (\inst3|count2\(1) & (!\inst3|count2[0]~27\)) # (!\inst3|count2\(1) & ((\inst3|count2[0]~27\) # (GND)))
-- \inst3|count2[1]~29\ = CARRY((!\inst3|count2[0]~27\) # (!\inst3|count2\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count2\(1),
	datad => VCC,
	cin => \inst3|count2[0]~27\,
	combout => \inst3|count2[1]~28_combout\,
	cout => \inst3|count2[1]~29\);

-- Location: IOIBUF_X5_Y24_N1
\din2~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din2,
	o => \din2~input_o\);

-- Location: IOIBUF_X3_Y24_N15
\din3~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din3,
	o => \din3~input_o\);

-- Location: IOIBUF_X0_Y22_N15
\din1~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_din1,
	o => \din1~input_o\);

-- Location: IOIBUF_X7_Y24_N15
\dinb~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dinb,
	o => \dinb~input_o\);

-- Location: IOIBUF_X9_Y24_N15
\dinc~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dinc,
	o => \dinc~input_o\);

-- Location: IOIBUF_X11_Y24_N1
\dind~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dind,
	o => \dind~input_o\);

-- Location: LCCOMB_X10_Y21_N18
\inst3|dou2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|dou2~0_combout\ = (\dina~input_o\ & (\dinb~input_o\ & (\dinc~input_o\ & \dind~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dina~input_o\,
	datab => \dinb~input_o\,
	datac => \dinc~input_o\,
	datad => \dind~input_o\,
	combout => \inst3|dou2~0_combout\);

-- Location: LCCOMB_X10_Y21_N20
\inst3|dou2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|dou2~1_combout\ = (\din1~input_o\ & (((\din3~input_o\ & \inst3|dou2~0_combout\)) # (!\din2~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din2~input_o\,
	datab => \din3~input_o\,
	datac => \din1~input_o\,
	datad => \inst3|dou2~0_combout\,
	combout => \inst3|dou2~1_combout\);

-- Location: FF_X24_Y19_N9
\inst3|count2[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[1]~28_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(1));

-- Location: LCCOMB_X24_Y19_N14
\inst3|count2[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[4]~34_combout\ = (\inst3|count2\(4) & (\inst3|count2[3]~33\ $ (GND))) # (!\inst3|count2\(4) & (!\inst3|count2[3]~33\ & VCC))
-- \inst3|count2[4]~35\ = CARRY((\inst3|count2\(4) & !\inst3|count2[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count2\(4),
	datad => VCC,
	cin => \inst3|count2[3]~33\,
	combout => \inst3|count2[4]~34_combout\,
	cout => \inst3|count2[4]~35\);

-- Location: FF_X24_Y19_N15
\inst3|count2[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[4]~34_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(4));

-- Location: LCCOMB_X24_Y19_N16
\inst3|count2[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[5]~36_combout\ = (\inst3|count2\(5) & (!\inst3|count2[4]~35\)) # (!\inst3|count2\(5) & ((\inst3|count2[4]~35\) # (GND)))
-- \inst3|count2[5]~37\ = CARRY((!\inst3|count2[4]~35\) # (!\inst3|count2\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count2\(5),
	datad => VCC,
	cin => \inst3|count2[4]~35\,
	combout => \inst3|count2[5]~36_combout\,
	cout => \inst3|count2[5]~37\);

-- Location: FF_X24_Y19_N17
\inst3|count2[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[5]~36_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(5));

-- Location: LCCOMB_X24_Y19_N18
\inst3|count2[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[6]~38_combout\ = (\inst3|count2\(6) & (\inst3|count2[5]~37\ $ (GND))) # (!\inst3|count2\(6) & (!\inst3|count2[5]~37\ & VCC))
-- \inst3|count2[6]~39\ = CARRY((\inst3|count2\(6) & !\inst3|count2[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count2\(6),
	datad => VCC,
	cin => \inst3|count2[5]~37\,
	combout => \inst3|count2[6]~38_combout\,
	cout => \inst3|count2[6]~39\);

-- Location: FF_X24_Y19_N19
\inst3|count2[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[6]~38_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(6));

-- Location: LCCOMB_X24_Y19_N20
\inst3|count2[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[7]~40_combout\ = (\inst3|count2\(7) & (!\inst3|count2[6]~39\)) # (!\inst3|count2\(7) & ((\inst3|count2[6]~39\) # (GND)))
-- \inst3|count2[7]~41\ = CARRY((!\inst3|count2[6]~39\) # (!\inst3|count2\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count2\(7),
	datad => VCC,
	cin => \inst3|count2[6]~39\,
	combout => \inst3|count2[7]~40_combout\,
	cout => \inst3|count2[7]~41\);

-- Location: FF_X24_Y19_N21
\inst3|count2[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[7]~40_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(7));

-- Location: LCCOMB_X24_Y19_N24
\inst3|count2[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[9]~44_combout\ = (\inst3|count2\(9) & (!\inst3|count2[8]~43\)) # (!\inst3|count2\(9) & ((\inst3|count2[8]~43\) # (GND)))
-- \inst3|count2[9]~45\ = CARRY((!\inst3|count2[8]~43\) # (!\inst3|count2\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count2\(9),
	datad => VCC,
	cin => \inst3|count2[8]~43\,
	combout => \inst3|count2[9]~44_combout\,
	cout => \inst3|count2[9]~45\);

-- Location: FF_X24_Y19_N25
\inst3|count2[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[9]~44_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(9));

-- Location: LCCOMB_X24_Y19_N28
\inst3|count2[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[11]~48_combout\ = (\inst3|count2\(11) & (!\inst3|count2[10]~47\)) # (!\inst3|count2\(11) & ((\inst3|count2[10]~47\) # (GND)))
-- \inst3|count2[11]~49\ = CARRY((!\inst3|count2[10]~47\) # (!\inst3|count2\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count2\(11),
	datad => VCC,
	cin => \inst3|count2[10]~47\,
	combout => \inst3|count2[11]~48_combout\,
	cout => \inst3|count2[11]~49\);

-- Location: FF_X24_Y19_N29
\inst3|count2[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[11]~48_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(11));

-- Location: LCCOMB_X24_Y18_N0
\inst3|count2[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[13]~52_combout\ = (\inst3|count2\(13) & (!\inst3|count2[12]~51\)) # (!\inst3|count2\(13) & ((\inst3|count2[12]~51\) # (GND)))
-- \inst3|count2[13]~53\ = CARRY((!\inst3|count2[12]~51\) # (!\inst3|count2\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count2\(13),
	datad => VCC,
	cin => \inst3|count2[12]~51\,
	combout => \inst3|count2[13]~52_combout\,
	cout => \inst3|count2[13]~53\);

-- Location: FF_X24_Y18_N1
\inst3|count2[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[13]~52_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(13));

-- Location: LCCOMB_X24_Y18_N2
\inst3|count2[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[14]~54_combout\ = (\inst3|count2\(14) & (\inst3|count2[13]~53\ $ (GND))) # (!\inst3|count2\(14) & (!\inst3|count2[13]~53\ & VCC))
-- \inst3|count2[14]~55\ = CARRY((\inst3|count2\(14) & !\inst3|count2[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count2\(14),
	datad => VCC,
	cin => \inst3|count2[13]~53\,
	combout => \inst3|count2[14]~54_combout\,
	cout => \inst3|count2[14]~55\);

-- Location: FF_X24_Y18_N3
\inst3|count2[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[14]~54_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(14));

-- Location: LCCOMB_X24_Y18_N4
\inst3|count2[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[15]~56_combout\ = (\inst3|count2\(15) & (!\inst3|count2[14]~55\)) # (!\inst3|count2\(15) & ((\inst3|count2[14]~55\) # (GND)))
-- \inst3|count2[15]~57\ = CARRY((!\inst3|count2[14]~55\) # (!\inst3|count2\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count2\(15),
	datad => VCC,
	cin => \inst3|count2[14]~55\,
	combout => \inst3|count2[15]~56_combout\,
	cout => \inst3|count2[15]~57\);

-- Location: FF_X24_Y18_N5
\inst3|count2[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[15]~56_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(15));

-- Location: LCCOMB_X24_Y18_N6
\inst3|count2[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[16]~58_combout\ = (\inst3|count2\(16) & (\inst3|count2[15]~57\ $ (GND))) # (!\inst3|count2\(16) & (!\inst3|count2[15]~57\ & VCC))
-- \inst3|count2[16]~59\ = CARRY((\inst3|count2\(16) & !\inst3|count2[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count2\(16),
	datad => VCC,
	cin => \inst3|count2[15]~57\,
	combout => \inst3|count2[16]~58_combout\,
	cout => \inst3|count2[16]~59\);

-- Location: LCCOMB_X24_Y18_N8
\inst3|count2[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[17]~60_combout\ = (\inst3|count2\(17) & (!\inst3|count2[16]~59\)) # (!\inst3|count2\(17) & ((\inst3|count2[16]~59\) # (GND)))
-- \inst3|count2[17]~61\ = CARRY((!\inst3|count2[16]~59\) # (!\inst3|count2\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count2\(17),
	datad => VCC,
	cin => \inst3|count2[16]~59\,
	combout => \inst3|count2[17]~60_combout\,
	cout => \inst3|count2[17]~61\);

-- Location: FF_X24_Y18_N9
\inst3|count2[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[17]~60_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(17));

-- Location: LCCOMB_X24_Y18_N12
\inst3|count2[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[19]~64_combout\ = (\inst3|count2\(19) & (!\inst3|count2[18]~63\)) # (!\inst3|count2\(19) & ((\inst3|count2[18]~63\) # (GND)))
-- \inst3|count2[19]~65\ = CARRY((!\inst3|count2[18]~63\) # (!\inst3|count2\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count2\(19),
	datad => VCC,
	cin => \inst3|count2[18]~63\,
	combout => \inst3|count2[19]~64_combout\,
	cout => \inst3|count2[19]~65\);

-- Location: LCCOMB_X24_Y18_N14
\inst3|count2[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[20]~66_combout\ = (\inst3|count2\(20) & (\inst3|count2[19]~65\ $ (GND))) # (!\inst3|count2\(20) & (!\inst3|count2[19]~65\ & VCC))
-- \inst3|count2[20]~67\ = CARRY((\inst3|count2\(20) & !\inst3|count2[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count2\(20),
	datad => VCC,
	cin => \inst3|count2[19]~65\,
	combout => \inst3|count2[20]~66_combout\,
	cout => \inst3|count2[20]~67\);

-- Location: FF_X24_Y18_N15
\inst3|count2[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[20]~66_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(20));

-- Location: LCCOMB_X24_Y18_N16
\inst3|count2[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[21]~68_combout\ = (\inst3|count2\(21) & (!\inst3|count2[20]~67\)) # (!\inst3|count2\(21) & ((\inst3|count2[20]~67\) # (GND)))
-- \inst3|count2[21]~69\ = CARRY((!\inst3|count2[20]~67\) # (!\inst3|count2\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count2\(21),
	datad => VCC,
	cin => \inst3|count2[20]~67\,
	combout => \inst3|count2[21]~68_combout\,
	cout => \inst3|count2[21]~69\);

-- Location: FF_X24_Y18_N17
\inst3|count2[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[21]~68_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(21));

-- Location: LCCOMB_X24_Y18_N18
\inst3|count2[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[22]~70_combout\ = (\inst3|count2\(22) & (\inst3|count2[21]~69\ $ (GND))) # (!\inst3|count2\(22) & (!\inst3|count2[21]~69\ & VCC))
-- \inst3|count2[22]~71\ = CARRY((\inst3|count2\(22) & !\inst3|count2[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count2\(22),
	datad => VCC,
	cin => \inst3|count2[21]~69\,
	combout => \inst3|count2[22]~70_combout\,
	cout => \inst3|count2[22]~71\);

-- Location: FF_X24_Y18_N19
\inst3|count2[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[22]~70_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(22));

-- Location: LCCOMB_X24_Y18_N28
\inst3|Equal1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~6_combout\ = (!\inst3|count2\(23) & (!\inst3|count2\(22) & (!\inst3|count2\(20) & !\inst3|count2\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count2\(23),
	datab => \inst3|count2\(22),
	datac => \inst3|count2\(20),
	datad => \inst3|count2\(21),
	combout => \inst3|Equal1~6_combout\);

-- Location: FF_X24_Y18_N13
\inst3|count2[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[19]~64_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(19));

-- Location: FF_X24_Y18_N7
\inst3|count2[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[16]~58_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(16));

-- Location: LCCOMB_X24_Y18_N26
\inst3|Equal1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~5_combout\ = (\inst3|count2\(18) & (\inst3|count2\(19) & (\inst3|count2\(17) & \inst3|count2\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count2\(18),
	datab => \inst3|count2\(19),
	datac => \inst3|count2\(17),
	datad => \inst3|count2\(16),
	combout => \inst3|Equal1~5_combout\);

-- Location: LCCOMB_X24_Y18_N20
\inst3|count2[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[23]~72_combout\ = (\inst3|count2\(23) & (!\inst3|count2[22]~71\)) # (!\inst3|count2\(23) & ((\inst3|count2[22]~71\) # (GND)))
-- \inst3|count2[23]~73\ = CARRY((!\inst3|count2[22]~71\) # (!\inst3|count2\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count2\(23),
	datad => VCC,
	cin => \inst3|count2[22]~71\,
	combout => \inst3|count2[23]~72_combout\,
	cout => \inst3|count2[23]~73\);

-- Location: FF_X24_Y18_N21
\inst3|count2[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[23]~72_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(23));

-- Location: LCCOMB_X24_Y18_N22
\inst3|count2[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[24]~74_combout\ = (\inst3|count2\(24) & (\inst3|count2[23]~73\ $ (GND))) # (!\inst3|count2\(24) & (!\inst3|count2[23]~73\ & VCC))
-- \inst3|count2[24]~75\ = CARRY((\inst3|count2\(24) & !\inst3|count2[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count2\(24),
	datad => VCC,
	cin => \inst3|count2[23]~73\,
	combout => \inst3|count2[24]~74_combout\,
	cout => \inst3|count2[24]~75\);

-- Location: FF_X24_Y18_N23
\inst3|count2[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[24]~74_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(24));

-- Location: LCCOMB_X24_Y18_N24
\inst3|count2[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count2[25]~76_combout\ = \inst3|count2[24]~75\ $ (\inst3|count2\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|count2\(25),
	cin => \inst3|count2[24]~75\,
	combout => \inst3|count2[25]~76_combout\);

-- Location: FF_X24_Y18_N25
\inst3|count2[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count2[25]~76_combout\,
	sclr => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count2\(25));

-- Location: LCCOMB_X24_Y18_N30
\inst3|Equal1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~7_combout\ = (!\inst3|count2\(24) & !\inst3|count2\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|count2\(24),
	datad => \inst3|count2\(25),
	combout => \inst3|Equal1~7_combout\);

-- Location: LCCOMB_X25_Y18_N6
\inst3|Equal1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal1~8_combout\ = (((!\inst3|Equal1~7_combout\) # (!\inst3|Equal1~5_combout\)) # (!\inst3|Equal1~6_combout\)) # (!\inst3|Equal1~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal1~4_combout\,
	datab => \inst3|Equal1~6_combout\,
	datac => \inst3|Equal1~5_combout\,
	datad => \inst3|Equal1~7_combout\,
	combout => \inst3|Equal1~8_combout\);

-- Location: LCCOMB_X25_Y18_N8
\inst3|dou2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|dou2~feeder_combout\ = \inst3|Equal1~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Equal1~8_combout\,
	combout => \inst3|dou2~feeder_combout\);

-- Location: FF_X25_Y18_N9
\inst3|dou2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|dou2~feeder_combout\,
	asdata => VCC,
	sload => \din2~input_o\,
	ena => \inst3|dou2~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|dou2~q\);

-- Location: LCCOMB_X7_Y22_N8
\inst3|count1[1]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[1]~29_combout\ = (\inst3|count1\(1) & (!\inst3|count1[0]~28\)) # (!\inst3|count1\(1) & ((\inst3|count1[0]~28\) # (GND)))
-- \inst3|count1[1]~30\ = CARRY((!\inst3|count1[0]~28\) # (!\inst3|count1\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count1\(1),
	datad => VCC,
	cin => \inst3|count1[0]~28\,
	combout => \inst3|count1[1]~29_combout\,
	cout => \inst3|count1[1]~30\);

-- Location: LCCOMB_X10_Y21_N4
\inst3|count1[16]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[16]~26_combout\ = ((\din2~input_o\ & (\din3~input_o\ & \inst3|dou2~0_combout\))) # (!\din1~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din2~input_o\,
	datab => \din3~input_o\,
	datac => \din1~input_o\,
	datad => \inst3|dou2~0_combout\,
	combout => \inst3|count1[16]~26_combout\);

-- Location: FF_X7_Y22_N9
\inst3|count1[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[1]~29_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(1));

-- Location: LCCOMB_X7_Y22_N14
\inst3|count1[4]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[4]~35_combout\ = (\inst3|count1\(4) & (\inst3|count1[3]~34\ $ (GND))) # (!\inst3|count1\(4) & (!\inst3|count1[3]~34\ & VCC))
-- \inst3|count1[4]~36\ = CARRY((\inst3|count1\(4) & !\inst3|count1[3]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count1\(4),
	datad => VCC,
	cin => \inst3|count1[3]~34\,
	combout => \inst3|count1[4]~35_combout\,
	cout => \inst3|count1[4]~36\);

-- Location: FF_X7_Y22_N15
\inst3|count1[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[4]~35_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(4));

-- Location: LCCOMB_X7_Y22_N16
\inst3|count1[5]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[5]~37_combout\ = (\inst3|count1\(5) & (!\inst3|count1[4]~36\)) # (!\inst3|count1\(5) & ((\inst3|count1[4]~36\) # (GND)))
-- \inst3|count1[5]~38\ = CARRY((!\inst3|count1[4]~36\) # (!\inst3|count1\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count1\(5),
	datad => VCC,
	cin => \inst3|count1[4]~36\,
	combout => \inst3|count1[5]~37_combout\,
	cout => \inst3|count1[5]~38\);

-- Location: FF_X7_Y22_N17
\inst3|count1[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[5]~37_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(5));

-- Location: LCCOMB_X7_Y22_N18
\inst3|count1[6]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[6]~39_combout\ = (\inst3|count1\(6) & (\inst3|count1[5]~38\ $ (GND))) # (!\inst3|count1\(6) & (!\inst3|count1[5]~38\ & VCC))
-- \inst3|count1[6]~40\ = CARRY((\inst3|count1\(6) & !\inst3|count1[5]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count1\(6),
	datad => VCC,
	cin => \inst3|count1[5]~38\,
	combout => \inst3|count1[6]~39_combout\,
	cout => \inst3|count1[6]~40\);

-- Location: FF_X7_Y22_N19
\inst3|count1[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[6]~39_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(6));

-- Location: LCCOMB_X7_Y22_N20
\inst3|count1[7]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[7]~41_combout\ = (\inst3|count1\(7) & (!\inst3|count1[6]~40\)) # (!\inst3|count1\(7) & ((\inst3|count1[6]~40\) # (GND)))
-- \inst3|count1[7]~42\ = CARRY((!\inst3|count1[6]~40\) # (!\inst3|count1\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count1\(7),
	datad => VCC,
	cin => \inst3|count1[6]~40\,
	combout => \inst3|count1[7]~41_combout\,
	cout => \inst3|count1[7]~42\);

-- Location: FF_X7_Y22_N21
\inst3|count1[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[7]~41_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(7));

-- Location: LCCOMB_X7_Y22_N24
\inst3|count1[9]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[9]~45_combout\ = (\inst3|count1\(9) & (!\inst3|count1[8]~44\)) # (!\inst3|count1\(9) & ((\inst3|count1[8]~44\) # (GND)))
-- \inst3|count1[9]~46\ = CARRY((!\inst3|count1[8]~44\) # (!\inst3|count1\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count1\(9),
	datad => VCC,
	cin => \inst3|count1[8]~44\,
	combout => \inst3|count1[9]~45_combout\,
	cout => \inst3|count1[9]~46\);

-- Location: FF_X7_Y22_N25
\inst3|count1[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[9]~45_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(9));

-- Location: LCCOMB_X7_Y22_N28
\inst3|count1[11]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[11]~49_combout\ = (\inst3|count1\(11) & (!\inst3|count1[10]~48\)) # (!\inst3|count1\(11) & ((\inst3|count1[10]~48\) # (GND)))
-- \inst3|count1[11]~50\ = CARRY((!\inst3|count1[10]~48\) # (!\inst3|count1\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count1\(11),
	datad => VCC,
	cin => \inst3|count1[10]~48\,
	combout => \inst3|count1[11]~49_combout\,
	cout => \inst3|count1[11]~50\);

-- Location: FF_X7_Y22_N29
\inst3|count1[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[11]~49_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(11));

-- Location: LCCOMB_X7_Y21_N0
\inst3|count1[13]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[13]~53_combout\ = (\inst3|count1\(13) & (!\inst3|count1[12]~52\)) # (!\inst3|count1\(13) & ((\inst3|count1[12]~52\) # (GND)))
-- \inst3|count1[13]~54\ = CARRY((!\inst3|count1[12]~52\) # (!\inst3|count1\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count1\(13),
	datad => VCC,
	cin => \inst3|count1[12]~52\,
	combout => \inst3|count1[13]~53_combout\,
	cout => \inst3|count1[13]~54\);

-- Location: FF_X7_Y21_N1
\inst3|count1[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[13]~53_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(13));

-- Location: LCCOMB_X7_Y21_N2
\inst3|count1[14]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[14]~55_combout\ = (\inst3|count1\(14) & (\inst3|count1[13]~54\ $ (GND))) # (!\inst3|count1\(14) & (!\inst3|count1[13]~54\ & VCC))
-- \inst3|count1[14]~56\ = CARRY((\inst3|count1\(14) & !\inst3|count1[13]~54\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count1\(14),
	datad => VCC,
	cin => \inst3|count1[13]~54\,
	combout => \inst3|count1[14]~55_combout\,
	cout => \inst3|count1[14]~56\);

-- Location: FF_X7_Y21_N3
\inst3|count1[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[14]~55_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(14));

-- Location: LCCOMB_X7_Y21_N4
\inst3|count1[15]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[15]~57_combout\ = (\inst3|count1\(15) & (!\inst3|count1[14]~56\)) # (!\inst3|count1\(15) & ((\inst3|count1[14]~56\) # (GND)))
-- \inst3|count1[15]~58\ = CARRY((!\inst3|count1[14]~56\) # (!\inst3|count1\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count1\(15),
	datad => VCC,
	cin => \inst3|count1[14]~56\,
	combout => \inst3|count1[15]~57_combout\,
	cout => \inst3|count1[15]~58\);

-- Location: FF_X7_Y21_N5
\inst3|count1[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[15]~57_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(15));

-- Location: LCCOMB_X7_Y21_N6
\inst3|count1[16]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[16]~59_combout\ = (\inst3|count1\(16) & (\inst3|count1[15]~58\ $ (GND))) # (!\inst3|count1\(16) & (!\inst3|count1[15]~58\ & VCC))
-- \inst3|count1[16]~60\ = CARRY((\inst3|count1\(16) & !\inst3|count1[15]~58\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count1\(16),
	datad => VCC,
	cin => \inst3|count1[15]~58\,
	combout => \inst3|count1[16]~59_combout\,
	cout => \inst3|count1[16]~60\);

-- Location: LCCOMB_X7_Y21_N8
\inst3|count1[17]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[17]~61_combout\ = (\inst3|count1\(17) & (!\inst3|count1[16]~60\)) # (!\inst3|count1\(17) & ((\inst3|count1[16]~60\) # (GND)))
-- \inst3|count1[17]~62\ = CARRY((!\inst3|count1[16]~60\) # (!\inst3|count1\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count1\(17),
	datad => VCC,
	cin => \inst3|count1[16]~60\,
	combout => \inst3|count1[17]~61_combout\,
	cout => \inst3|count1[17]~62\);

-- Location: FF_X7_Y21_N9
\inst3|count1[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[17]~61_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(17));

-- Location: LCCOMB_X7_Y21_N10
\inst3|count1[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[18]~63_combout\ = (\inst3|count1\(18) & (\inst3|count1[17]~62\ $ (GND))) # (!\inst3|count1\(18) & (!\inst3|count1[17]~62\ & VCC))
-- \inst3|count1[18]~64\ = CARRY((\inst3|count1\(18) & !\inst3|count1[17]~62\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count1\(18),
	datad => VCC,
	cin => \inst3|count1[17]~62\,
	combout => \inst3|count1[18]~63_combout\,
	cout => \inst3|count1[18]~64\);

-- Location: LCCOMB_X7_Y21_N14
\inst3|count1[20]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[20]~67_combout\ = (\inst3|count1\(20) & (\inst3|count1[19]~66\ $ (GND))) # (!\inst3|count1\(20) & (!\inst3|count1[19]~66\ & VCC))
-- \inst3|count1[20]~68\ = CARRY((\inst3|count1\(20) & !\inst3|count1[19]~66\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count1\(20),
	datad => VCC,
	cin => \inst3|count1[19]~66\,
	combout => \inst3|count1[20]~67_combout\,
	cout => \inst3|count1[20]~68\);

-- Location: FF_X7_Y21_N15
\inst3|count1[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[20]~67_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(20));

-- Location: LCCOMB_X7_Y21_N16
\inst3|count1[21]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[21]~69_combout\ = (\inst3|count1\(21) & (!\inst3|count1[20]~68\)) # (!\inst3|count1\(21) & ((\inst3|count1[20]~68\) # (GND)))
-- \inst3|count1[21]~70\ = CARRY((!\inst3|count1[20]~68\) # (!\inst3|count1\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count1\(21),
	datad => VCC,
	cin => \inst3|count1[20]~68\,
	combout => \inst3|count1[21]~69_combout\,
	cout => \inst3|count1[21]~70\);

-- Location: FF_X7_Y21_N17
\inst3|count1[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[21]~69_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(21));

-- Location: LCCOMB_X7_Y21_N18
\inst3|count1[22]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[22]~71_combout\ = (\inst3|count1\(22) & (\inst3|count1[21]~70\ $ (GND))) # (!\inst3|count1\(22) & (!\inst3|count1[21]~70\ & VCC))
-- \inst3|count1[22]~72\ = CARRY((\inst3|count1\(22) & !\inst3|count1[21]~70\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count1\(22),
	datad => VCC,
	cin => \inst3|count1[21]~70\,
	combout => \inst3|count1[22]~71_combout\,
	cout => \inst3|count1[22]~72\);

-- Location: FF_X7_Y21_N19
\inst3|count1[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[22]~71_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(22));

-- Location: LCCOMB_X7_Y21_N20
\inst3|count1[23]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[23]~73_combout\ = (\inst3|count1\(23) & (!\inst3|count1[22]~72\)) # (!\inst3|count1\(23) & ((\inst3|count1[22]~72\) # (GND)))
-- \inst3|count1[23]~74\ = CARRY((!\inst3|count1[22]~72\) # (!\inst3|count1\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|count1\(23),
	datad => VCC,
	cin => \inst3|count1[22]~72\,
	combout => \inst3|count1[23]~73_combout\,
	cout => \inst3|count1[23]~74\);

-- Location: FF_X7_Y21_N21
\inst3|count1[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[23]~73_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(23));

-- Location: LCCOMB_X7_Y21_N22
\inst3|count1[24]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[24]~75_combout\ = (\inst3|count1\(24) & (\inst3|count1[23]~74\ $ (GND))) # (!\inst3|count1\(24) & (!\inst3|count1[23]~74\ & VCC))
-- \inst3|count1[24]~76\ = CARRY((\inst3|count1\(24) & !\inst3|count1[23]~74\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count1\(24),
	datad => VCC,
	cin => \inst3|count1[23]~74\,
	combout => \inst3|count1[24]~75_combout\,
	cout => \inst3|count1[24]~76\);

-- Location: FF_X7_Y21_N23
\inst3|count1[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[24]~75_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(24));

-- Location: LCCOMB_X7_Y21_N24
\inst3|count1[25]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|count1[25]~77_combout\ = \inst3|count1[24]~76\ $ (\inst3|count1\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|count1\(25),
	cin => \inst3|count1[24]~76\,
	combout => \inst3|count1[25]~77_combout\);

-- Location: FF_X7_Y21_N25
\inst3|count1[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[25]~77_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(25));

-- Location: LCCOMB_X7_Y21_N30
\inst3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~7_combout\ = (!\inst3|count1\(24) & !\inst3|count1\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|count1\(24),
	datad => \inst3|count1\(25),
	combout => \inst3|Equal0~7_combout\);

-- Location: LCCOMB_X7_Y21_N28
\inst3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~6_combout\ = (!\inst3|count1\(22) & (!\inst3|count1\(23) & (!\inst3|count1\(20) & !\inst3|count1\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count1\(22),
	datab => \inst3|count1\(23),
	datac => \inst3|count1\(20),
	datad => \inst3|count1\(21),
	combout => \inst3|Equal0~6_combout\);

-- Location: FF_X7_Y21_N11
\inst3|count1[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[18]~63_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(18));

-- Location: FF_X7_Y21_N7
\inst3|count1[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|count1[16]~59_combout\,
	sclr => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|count1\(16));

-- Location: LCCOMB_X7_Y21_N26
\inst3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~5_combout\ = (\inst3|count1\(19) & (\inst3|count1\(18) & (\inst3|count1\(17) & \inst3|count1\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|count1\(19),
	datab => \inst3|count1\(18),
	datac => \inst3|count1\(17),
	datad => \inst3|count1\(16),
	combout => \inst3|Equal0~5_combout\);

-- Location: LCCOMB_X6_Y21_N6
\inst3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal0~8_combout\ = (((!\inst3|Equal0~5_combout\) # (!\inst3|Equal0~6_combout\)) # (!\inst3|Equal0~7_combout\)) # (!\inst3|Equal0~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal0~4_combout\,
	datab => \inst3|Equal0~7_combout\,
	datac => \inst3|Equal0~6_combout\,
	datad => \inst3|Equal0~5_combout\,
	combout => \inst3|Equal0~8_combout\);

-- Location: LCCOMB_X6_Y21_N8
\inst3|dou1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|dou1~feeder_combout\ = \inst3|Equal0~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Equal0~8_combout\,
	combout => \inst3|dou1~feeder_combout\);

-- Location: FF_X6_Y21_N9
\inst3|dou1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|dou1~feeder_combout\,
	asdata => VCC,
	sload => \din1~input_o\,
	ena => \inst3|count1[16]~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|dou1~q\);

-- Location: LCCOMB_X26_Y16_N18
\inst4|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_1~0_combout\ = (!\inst4|floor\(1) & (\inst4|floor\(0) & (!\inst4|num\(1) & !\inst4|num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|floor\(1),
	datab => \inst4|floor\(0),
	datac => \inst4|num\(1),
	datad => \inst4|num\(0),
	combout => \inst4|process_1~0_combout\);

-- Location: LCCOMB_X26_Y16_N12
\inst4|key_latch~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|key_latch~1_combout\ = (!\inst4|process_1~0_combout\ & ((\inst4|key_latch\(0)) # (!\inst3|dou1~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dou1~q\,
	datac => \inst4|key_latch\(0),
	datad => \inst4|process_1~0_combout\,
	combout => \inst4|key_latch~1_combout\);

-- Location: FF_X26_Y16_N13
\inst4|key_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|key_latch~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|key_latch\(0));

-- Location: LCCOMB_X26_Y16_N16
\inst4|key_latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|key_latch~0_combout\ = (!\inst4|Selector4~3_combout\ & ((\inst4|key_latch\(1)) # (!\inst3|dou2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst3|dou2~q\,
	datac => \inst4|key_latch\(1),
	datad => \inst4|Selector4~3_combout\,
	combout => \inst4|key_latch~0_combout\);

-- Location: FF_X26_Y16_N17
\inst4|key_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|key_latch~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|key_latch\(1));

-- Location: LCCOMB_X24_Y16_N24
\inst4|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal0~0_combout\ = (!\inst4|direction\(1) & \inst4|direction\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|direction\(1),
	datad => \inst4|direction\(0),
	combout => \inst4|Equal0~0_combout\);

-- Location: LCCOMB_X13_Y22_N8
\inst3|countb[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[1]~28_combout\ = (\inst3|countb\(1) & (!\inst3|countb[0]~27\)) # (!\inst3|countb\(1) & ((\inst3|countb[0]~27\) # (GND)))
-- \inst3|countb[1]~29\ = CARRY((!\inst3|countb[0]~27\) # (!\inst3|countb\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countb\(1),
	datad => VCC,
	cin => \inst3|countb[0]~27\,
	combout => \inst3|countb[1]~28_combout\,
	cout => \inst3|countb[1]~29\);

-- Location: LCCOMB_X10_Y21_N2
\inst3|doub~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|doub~0_combout\ = (\inst3|doud~0_combout\ & (((\dinc~input_o\ & \dind~input_o\)) # (!\dinb~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|doud~0_combout\,
	datab => \dinb~input_o\,
	datac => \dinc~input_o\,
	datad => \dind~input_o\,
	combout => \inst3|doub~0_combout\);

-- Location: FF_X13_Y22_N9
\inst3|countb[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[1]~28_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(1));

-- Location: LCCOMB_X13_Y22_N14
\inst3|countb[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[4]~34_combout\ = (\inst3|countb\(4) & (\inst3|countb[3]~33\ $ (GND))) # (!\inst3|countb\(4) & (!\inst3|countb[3]~33\ & VCC))
-- \inst3|countb[4]~35\ = CARRY((\inst3|countb\(4) & !\inst3|countb[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countb\(4),
	datad => VCC,
	cin => \inst3|countb[3]~33\,
	combout => \inst3|countb[4]~34_combout\,
	cout => \inst3|countb[4]~35\);

-- Location: FF_X13_Y22_N15
\inst3|countb[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[4]~34_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(4));

-- Location: LCCOMB_X13_Y22_N16
\inst3|countb[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[5]~36_combout\ = (\inst3|countb\(5) & (!\inst3|countb[4]~35\)) # (!\inst3|countb\(5) & ((\inst3|countb[4]~35\) # (GND)))
-- \inst3|countb[5]~37\ = CARRY((!\inst3|countb[4]~35\) # (!\inst3|countb\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countb\(5),
	datad => VCC,
	cin => \inst3|countb[4]~35\,
	combout => \inst3|countb[5]~36_combout\,
	cout => \inst3|countb[5]~37\);

-- Location: FF_X13_Y22_N17
\inst3|countb[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[5]~36_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(5));

-- Location: LCCOMB_X13_Y22_N18
\inst3|countb[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[6]~38_combout\ = (\inst3|countb\(6) & (\inst3|countb[5]~37\ $ (GND))) # (!\inst3|countb\(6) & (!\inst3|countb[5]~37\ & VCC))
-- \inst3|countb[6]~39\ = CARRY((\inst3|countb\(6) & !\inst3|countb[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countb\(6),
	datad => VCC,
	cin => \inst3|countb[5]~37\,
	combout => \inst3|countb[6]~38_combout\,
	cout => \inst3|countb[6]~39\);

-- Location: FF_X13_Y22_N19
\inst3|countb[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[6]~38_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(6));

-- Location: LCCOMB_X13_Y22_N20
\inst3|countb[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[7]~40_combout\ = (\inst3|countb\(7) & (!\inst3|countb[6]~39\)) # (!\inst3|countb\(7) & ((\inst3|countb[6]~39\) # (GND)))
-- \inst3|countb[7]~41\ = CARRY((!\inst3|countb[6]~39\) # (!\inst3|countb\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countb\(7),
	datad => VCC,
	cin => \inst3|countb[6]~39\,
	combout => \inst3|countb[7]~40_combout\,
	cout => \inst3|countb[7]~41\);

-- Location: FF_X13_Y22_N21
\inst3|countb[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[7]~40_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(7));

-- Location: LCCOMB_X13_Y22_N24
\inst3|countb[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[9]~44_combout\ = (\inst3|countb\(9) & (!\inst3|countb[8]~43\)) # (!\inst3|countb\(9) & ((\inst3|countb[8]~43\) # (GND)))
-- \inst3|countb[9]~45\ = CARRY((!\inst3|countb[8]~43\) # (!\inst3|countb\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countb\(9),
	datad => VCC,
	cin => \inst3|countb[8]~43\,
	combout => \inst3|countb[9]~44_combout\,
	cout => \inst3|countb[9]~45\);

-- Location: FF_X13_Y22_N25
\inst3|countb[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[9]~44_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(9));

-- Location: LCCOMB_X13_Y22_N28
\inst3|countb[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[11]~48_combout\ = (\inst3|countb\(11) & (!\inst3|countb[10]~47\)) # (!\inst3|countb\(11) & ((\inst3|countb[10]~47\) # (GND)))
-- \inst3|countb[11]~49\ = CARRY((!\inst3|countb[10]~47\) # (!\inst3|countb\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countb\(11),
	datad => VCC,
	cin => \inst3|countb[10]~47\,
	combout => \inst3|countb[11]~48_combout\,
	cout => \inst3|countb[11]~49\);

-- Location: FF_X13_Y22_N29
\inst3|countb[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[11]~48_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(11));

-- Location: LCCOMB_X13_Y21_N0
\inst3|countb[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[13]~52_combout\ = (\inst3|countb\(13) & (!\inst3|countb[12]~51\)) # (!\inst3|countb\(13) & ((\inst3|countb[12]~51\) # (GND)))
-- \inst3|countb[13]~53\ = CARRY((!\inst3|countb[12]~51\) # (!\inst3|countb\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countb\(13),
	datad => VCC,
	cin => \inst3|countb[12]~51\,
	combout => \inst3|countb[13]~52_combout\,
	cout => \inst3|countb[13]~53\);

-- Location: FF_X13_Y21_N1
\inst3|countb[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[13]~52_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(13));

-- Location: LCCOMB_X13_Y21_N2
\inst3|countb[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[14]~54_combout\ = (\inst3|countb\(14) & (\inst3|countb[13]~53\ $ (GND))) # (!\inst3|countb\(14) & (!\inst3|countb[13]~53\ & VCC))
-- \inst3|countb[14]~55\ = CARRY((\inst3|countb\(14) & !\inst3|countb[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countb\(14),
	datad => VCC,
	cin => \inst3|countb[13]~53\,
	combout => \inst3|countb[14]~54_combout\,
	cout => \inst3|countb[14]~55\);

-- Location: FF_X13_Y21_N3
\inst3|countb[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[14]~54_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(14));

-- Location: LCCOMB_X13_Y21_N4
\inst3|countb[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[15]~56_combout\ = (\inst3|countb\(15) & (!\inst3|countb[14]~55\)) # (!\inst3|countb\(15) & ((\inst3|countb[14]~55\) # (GND)))
-- \inst3|countb[15]~57\ = CARRY((!\inst3|countb[14]~55\) # (!\inst3|countb\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countb\(15),
	datad => VCC,
	cin => \inst3|countb[14]~55\,
	combout => \inst3|countb[15]~56_combout\,
	cout => \inst3|countb[15]~57\);

-- Location: FF_X13_Y21_N5
\inst3|countb[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[15]~56_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(15));

-- Location: LCCOMB_X13_Y21_N6
\inst3|countb[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[16]~58_combout\ = (\inst3|countb\(16) & (\inst3|countb[15]~57\ $ (GND))) # (!\inst3|countb\(16) & (!\inst3|countb[15]~57\ & VCC))
-- \inst3|countb[16]~59\ = CARRY((\inst3|countb\(16) & !\inst3|countb[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countb\(16),
	datad => VCC,
	cin => \inst3|countb[15]~57\,
	combout => \inst3|countb[16]~58_combout\,
	cout => \inst3|countb[16]~59\);

-- Location: LCCOMB_X13_Y21_N8
\inst3|countb[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[17]~60_combout\ = (\inst3|countb\(17) & (!\inst3|countb[16]~59\)) # (!\inst3|countb\(17) & ((\inst3|countb[16]~59\) # (GND)))
-- \inst3|countb[17]~61\ = CARRY((!\inst3|countb[16]~59\) # (!\inst3|countb\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countb\(17),
	datad => VCC,
	cin => \inst3|countb[16]~59\,
	combout => \inst3|countb[17]~60_combout\,
	cout => \inst3|countb[17]~61\);

-- Location: FF_X13_Y21_N9
\inst3|countb[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[17]~60_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(17));

-- Location: LCCOMB_X13_Y21_N12
\inst3|countb[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[19]~64_combout\ = (\inst3|countb\(19) & (!\inst3|countb[18]~63\)) # (!\inst3|countb\(19) & ((\inst3|countb[18]~63\) # (GND)))
-- \inst3|countb[19]~65\ = CARRY((!\inst3|countb[18]~63\) # (!\inst3|countb\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countb\(19),
	datad => VCC,
	cin => \inst3|countb[18]~63\,
	combout => \inst3|countb[19]~64_combout\,
	cout => \inst3|countb[19]~65\);

-- Location: LCCOMB_X13_Y21_N14
\inst3|countb[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[20]~66_combout\ = (\inst3|countb\(20) & (\inst3|countb[19]~65\ $ (GND))) # (!\inst3|countb\(20) & (!\inst3|countb[19]~65\ & VCC))
-- \inst3|countb[20]~67\ = CARRY((\inst3|countb\(20) & !\inst3|countb[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countb\(20),
	datad => VCC,
	cin => \inst3|countb[19]~65\,
	combout => \inst3|countb[20]~66_combout\,
	cout => \inst3|countb[20]~67\);

-- Location: FF_X13_Y21_N15
\inst3|countb[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[20]~66_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(20));

-- Location: LCCOMB_X13_Y21_N16
\inst3|countb[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[21]~68_combout\ = (\inst3|countb\(21) & (!\inst3|countb[20]~67\)) # (!\inst3|countb\(21) & ((\inst3|countb[20]~67\) # (GND)))
-- \inst3|countb[21]~69\ = CARRY((!\inst3|countb[20]~67\) # (!\inst3|countb\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countb\(21),
	datad => VCC,
	cin => \inst3|countb[20]~67\,
	combout => \inst3|countb[21]~68_combout\,
	cout => \inst3|countb[21]~69\);

-- Location: FF_X13_Y21_N17
\inst3|countb[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[21]~68_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(21));

-- Location: LCCOMB_X13_Y21_N18
\inst3|countb[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[22]~70_combout\ = (\inst3|countb\(22) & (\inst3|countb[21]~69\ $ (GND))) # (!\inst3|countb\(22) & (!\inst3|countb[21]~69\ & VCC))
-- \inst3|countb[22]~71\ = CARRY((\inst3|countb\(22) & !\inst3|countb[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countb\(22),
	datad => VCC,
	cin => \inst3|countb[21]~69\,
	combout => \inst3|countb[22]~70_combout\,
	cout => \inst3|countb[22]~71\);

-- Location: FF_X13_Y21_N19
\inst3|countb[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[22]~70_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(22));

-- Location: LCCOMB_X13_Y21_N20
\inst3|countb[23]~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[23]~72_combout\ = (\inst3|countb\(23) & (!\inst3|countb[22]~71\)) # (!\inst3|countb\(23) & ((\inst3|countb[22]~71\) # (GND)))
-- \inst3|countb[23]~73\ = CARRY((!\inst3|countb[22]~71\) # (!\inst3|countb\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countb\(23),
	datad => VCC,
	cin => \inst3|countb[22]~71\,
	combout => \inst3|countb[23]~72_combout\,
	cout => \inst3|countb[23]~73\);

-- Location: FF_X13_Y21_N21
\inst3|countb[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[23]~72_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(23));

-- Location: LCCOMB_X13_Y21_N28
\inst3|Equal4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~6_combout\ = (!\inst3|countb\(21) & (!\inst3|countb\(23) & (!\inst3|countb\(20) & !\inst3|countb\(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countb\(21),
	datab => \inst3|countb\(23),
	datac => \inst3|countb\(20),
	datad => \inst3|countb\(22),
	combout => \inst3|Equal4~6_combout\);

-- Location: LCCOMB_X13_Y21_N22
\inst3|countb[24]~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[24]~74_combout\ = (\inst3|countb\(24) & (\inst3|countb[23]~73\ $ (GND))) # (!\inst3|countb\(24) & (!\inst3|countb[23]~73\ & VCC))
-- \inst3|countb[24]~75\ = CARRY((\inst3|countb\(24) & !\inst3|countb[23]~73\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countb\(24),
	datad => VCC,
	cin => \inst3|countb[23]~73\,
	combout => \inst3|countb[24]~74_combout\,
	cout => \inst3|countb[24]~75\);

-- Location: FF_X13_Y21_N23
\inst3|countb[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[24]~74_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(24));

-- Location: LCCOMB_X13_Y21_N24
\inst3|countb[25]~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countb[25]~76_combout\ = \inst3|countb[24]~75\ $ (\inst3|countb\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst3|countb\(25),
	cin => \inst3|countb[24]~75\,
	combout => \inst3|countb[25]~76_combout\);

-- Location: FF_X13_Y21_N25
\inst3|countb[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[25]~76_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(25));

-- Location: LCCOMB_X13_Y21_N30
\inst3|Equal4~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~7_combout\ = (!\inst3|countb\(24) & !\inst3|countb\(25))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst3|countb\(24),
	datad => \inst3|countb\(25),
	combout => \inst3|Equal4~7_combout\);

-- Location: FF_X13_Y21_N13
\inst3|countb[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[19]~64_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(19));

-- Location: FF_X13_Y21_N7
\inst3|countb[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countb[16]~58_combout\,
	sclr => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countb\(16));

-- Location: LCCOMB_X13_Y21_N26
\inst3|Equal4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~5_combout\ = (\inst3|countb\(18) & (\inst3|countb\(19) & (\inst3|countb\(17) & \inst3|countb\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countb\(18),
	datab => \inst3|countb\(19),
	datac => \inst3|countb\(17),
	datad => \inst3|countb\(16),
	combout => \inst3|Equal4~5_combout\);

-- Location: LCCOMB_X13_Y20_N6
\inst3|Equal4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal4~8_combout\ = (((!\inst3|Equal4~5_combout\) # (!\inst3|Equal4~7_combout\)) # (!\inst3|Equal4~6_combout\)) # (!\inst3|Equal4~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal4~4_combout\,
	datab => \inst3|Equal4~6_combout\,
	datac => \inst3|Equal4~7_combout\,
	datad => \inst3|Equal4~5_combout\,
	combout => \inst3|Equal4~8_combout\);

-- Location: LCCOMB_X13_Y20_N24
\inst3|doub~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|doub~feeder_combout\ = \inst3|Equal4~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Equal4~8_combout\,
	combout => \inst3|doub~feeder_combout\);

-- Location: FF_X13_Y20_N25
\inst3|doub\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|doub~feeder_combout\,
	asdata => VCC,
	sload => \dinb~input_o\,
	ena => \inst3|doub~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|doub~q\);

-- Location: LCCOMB_X26_Y15_N0
\inst4|up_latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|up_latch~0_combout\ = ((\inst4|up_latch\(1) & ((!\inst4|Equal0~0_combout\) # (!\inst4|Selector4~3_combout\)))) # (!\inst3|doub~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector4~3_combout\,
	datab => \inst4|Equal0~0_combout\,
	datac => \inst4|up_latch\(1),
	datad => \inst3|doub~q\,
	combout => \inst4|up_latch~0_combout\);

-- Location: FF_X26_Y15_N1
\inst4|up_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|up_latch~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|up_latch\(1));

-- Location: LCCOMB_X25_Y16_N18
\inst4|Selector6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector6~4_combout\ = (!\inst4|key_latch\(1) & (!\inst4|down_latch\(0) & !\inst4|up_latch\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|key_latch\(1),
	datac => \inst4|down_latch\(0),
	datad => \inst4|up_latch\(1),
	combout => \inst4|Selector6~4_combout\);

-- Location: LCCOMB_X11_Y22_N6
\inst3|countd[0]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[0]~26_combout\ = \inst3|countd\(0) $ (VCC)
-- \inst3|countd[0]~27\ = CARRY(\inst3|countd\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countd\(0),
	datad => VCC,
	combout => \inst3|countd[0]~26_combout\,
	cout => \inst3|countd[0]~27\);

-- Location: LCCOMB_X11_Y22_N8
\inst3|countd[1]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[1]~28_combout\ = (\inst3|countd\(1) & (!\inst3|countd[0]~27\)) # (!\inst3|countd\(1) & ((\inst3|countd[0]~27\) # (GND)))
-- \inst3|countd[1]~29\ = CARRY((!\inst3|countd[0]~27\) # (!\inst3|countd\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countd\(1),
	datad => VCC,
	cin => \inst3|countd[0]~27\,
	combout => \inst3|countd[1]~28_combout\,
	cout => \inst3|countd[1]~29\);

-- Location: IOIBUF_X5_Y24_N15
\dina~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dina,
	o => \dina~input_o\);

-- Location: LCCOMB_X10_Y21_N6
\inst3|doud~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|doud~0_combout\ = (\din2~input_o\ & (\din3~input_o\ & (\din1~input_o\ & \dina~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \din2~input_o\,
	datab => \din3~input_o\,
	datac => \din1~input_o\,
	datad => \dina~input_o\,
	combout => \inst3|doud~0_combout\);

-- Location: LCCOMB_X10_Y21_N10
\inst3|doud~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|doud~1_combout\ = (\dinb~input_o\ & (\dinc~input_o\ & \inst3|doud~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \dinb~input_o\,
	datac => \dinc~input_o\,
	datad => \inst3|doud~0_combout\,
	combout => \inst3|doud~1_combout\);

-- Location: FF_X11_Y22_N9
\inst3|countd[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[1]~28_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(1));

-- Location: LCCOMB_X11_Y22_N12
\inst3|countd[3]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[3]~32_combout\ = (\inst3|countd\(3) & (!\inst3|countd[2]~31\)) # (!\inst3|countd\(3) & ((\inst3|countd[2]~31\) # (GND)))
-- \inst3|countd[3]~33\ = CARRY((!\inst3|countd[2]~31\) # (!\inst3|countd\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countd\(3),
	datad => VCC,
	cin => \inst3|countd[2]~31\,
	combout => \inst3|countd[3]~32_combout\,
	cout => \inst3|countd[3]~33\);

-- Location: LCCOMB_X11_Y22_N14
\inst3|countd[4]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[4]~34_combout\ = (\inst3|countd\(4) & (\inst3|countd[3]~33\ $ (GND))) # (!\inst3|countd\(4) & (!\inst3|countd[3]~33\ & VCC))
-- \inst3|countd[4]~35\ = CARRY((\inst3|countd\(4) & !\inst3|countd[3]~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countd\(4),
	datad => VCC,
	cin => \inst3|countd[3]~33\,
	combout => \inst3|countd[4]~34_combout\,
	cout => \inst3|countd[4]~35\);

-- Location: FF_X11_Y22_N15
\inst3|countd[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[4]~34_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(4));

-- Location: LCCOMB_X11_Y22_N16
\inst3|countd[5]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[5]~36_combout\ = (\inst3|countd\(5) & (!\inst3|countd[4]~35\)) # (!\inst3|countd\(5) & ((\inst3|countd[4]~35\) # (GND)))
-- \inst3|countd[5]~37\ = CARRY((!\inst3|countd[4]~35\) # (!\inst3|countd\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countd\(5),
	datad => VCC,
	cin => \inst3|countd[4]~35\,
	combout => \inst3|countd[5]~36_combout\,
	cout => \inst3|countd[5]~37\);

-- Location: FF_X11_Y22_N17
\inst3|countd[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[5]~36_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(5));

-- Location: LCCOMB_X11_Y22_N18
\inst3|countd[6]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[6]~38_combout\ = (\inst3|countd\(6) & (\inst3|countd[5]~37\ $ (GND))) # (!\inst3|countd\(6) & (!\inst3|countd[5]~37\ & VCC))
-- \inst3|countd[6]~39\ = CARRY((\inst3|countd\(6) & !\inst3|countd[5]~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countd\(6),
	datad => VCC,
	cin => \inst3|countd[5]~37\,
	combout => \inst3|countd[6]~38_combout\,
	cout => \inst3|countd[6]~39\);

-- Location: FF_X11_Y22_N19
\inst3|countd[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[6]~38_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(6));

-- Location: LCCOMB_X11_Y22_N20
\inst3|countd[7]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[7]~40_combout\ = (\inst3|countd\(7) & (!\inst3|countd[6]~39\)) # (!\inst3|countd\(7) & ((\inst3|countd[6]~39\) # (GND)))
-- \inst3|countd[7]~41\ = CARRY((!\inst3|countd[6]~39\) # (!\inst3|countd\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countd\(7),
	datad => VCC,
	cin => \inst3|countd[6]~39\,
	combout => \inst3|countd[7]~40_combout\,
	cout => \inst3|countd[7]~41\);

-- Location: FF_X11_Y22_N21
\inst3|countd[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[7]~40_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(7));

-- Location: LCCOMB_X11_Y22_N22
\inst3|countd[8]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[8]~42_combout\ = (\inst3|countd\(8) & (\inst3|countd[7]~41\ $ (GND))) # (!\inst3|countd\(8) & (!\inst3|countd[7]~41\ & VCC))
-- \inst3|countd[8]~43\ = CARRY((\inst3|countd\(8) & !\inst3|countd[7]~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countd\(8),
	datad => VCC,
	cin => \inst3|countd[7]~41\,
	combout => \inst3|countd[8]~42_combout\,
	cout => \inst3|countd[8]~43\);

-- Location: LCCOMB_X11_Y22_N24
\inst3|countd[9]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[9]~44_combout\ = (\inst3|countd\(9) & (!\inst3|countd[8]~43\)) # (!\inst3|countd\(9) & ((\inst3|countd[8]~43\) # (GND)))
-- \inst3|countd[9]~45\ = CARRY((!\inst3|countd[8]~43\) # (!\inst3|countd\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countd\(9),
	datad => VCC,
	cin => \inst3|countd[8]~43\,
	combout => \inst3|countd[9]~44_combout\,
	cout => \inst3|countd[9]~45\);

-- Location: FF_X11_Y22_N25
\inst3|countd[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[9]~44_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(9));

-- Location: LCCOMB_X11_Y22_N28
\inst3|countd[11]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[11]~48_combout\ = (\inst3|countd\(11) & (!\inst3|countd[10]~47\)) # (!\inst3|countd\(11) & ((\inst3|countd[10]~47\) # (GND)))
-- \inst3|countd[11]~49\ = CARRY((!\inst3|countd[10]~47\) # (!\inst3|countd\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countd\(11),
	datad => VCC,
	cin => \inst3|countd[10]~47\,
	combout => \inst3|countd[11]~48_combout\,
	cout => \inst3|countd[11]~49\);

-- Location: FF_X11_Y22_N29
\inst3|countd[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[11]~48_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(11));

-- Location: LCCOMB_X11_Y21_N0
\inst3|countd[13]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[13]~52_combout\ = (\inst3|countd\(13) & (!\inst3|countd[12]~51\)) # (!\inst3|countd\(13) & ((\inst3|countd[12]~51\) # (GND)))
-- \inst3|countd[13]~53\ = CARRY((!\inst3|countd[12]~51\) # (!\inst3|countd\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countd\(13),
	datad => VCC,
	cin => \inst3|countd[12]~51\,
	combout => \inst3|countd[13]~52_combout\,
	cout => \inst3|countd[13]~53\);

-- Location: FF_X11_Y21_N1
\inst3|countd[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[13]~52_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(13));

-- Location: LCCOMB_X11_Y21_N2
\inst3|countd[14]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[14]~54_combout\ = (\inst3|countd\(14) & (\inst3|countd[13]~53\ $ (GND))) # (!\inst3|countd\(14) & (!\inst3|countd[13]~53\ & VCC))
-- \inst3|countd[14]~55\ = CARRY((\inst3|countd\(14) & !\inst3|countd[13]~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countd\(14),
	datad => VCC,
	cin => \inst3|countd[13]~53\,
	combout => \inst3|countd[14]~54_combout\,
	cout => \inst3|countd[14]~55\);

-- Location: FF_X11_Y21_N3
\inst3|countd[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[14]~54_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(14));

-- Location: LCCOMB_X11_Y21_N4
\inst3|countd[15]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[15]~56_combout\ = (\inst3|countd\(15) & (!\inst3|countd[14]~55\)) # (!\inst3|countd\(15) & ((\inst3|countd[14]~55\) # (GND)))
-- \inst3|countd[15]~57\ = CARRY((!\inst3|countd[14]~55\) # (!\inst3|countd\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countd\(15),
	datad => VCC,
	cin => \inst3|countd[14]~55\,
	combout => \inst3|countd[15]~56_combout\,
	cout => \inst3|countd[15]~57\);

-- Location: FF_X11_Y21_N5
\inst3|countd[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[15]~56_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(15));

-- Location: LCCOMB_X11_Y21_N6
\inst3|countd[16]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[16]~58_combout\ = (\inst3|countd\(16) & (\inst3|countd[15]~57\ $ (GND))) # (!\inst3|countd\(16) & (!\inst3|countd[15]~57\ & VCC))
-- \inst3|countd[16]~59\ = CARRY((\inst3|countd\(16) & !\inst3|countd[15]~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countd\(16),
	datad => VCC,
	cin => \inst3|countd[15]~57\,
	combout => \inst3|countd[16]~58_combout\,
	cout => \inst3|countd[16]~59\);

-- Location: LCCOMB_X11_Y21_N8
\inst3|countd[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[17]~60_combout\ = (\inst3|countd\(17) & (!\inst3|countd[16]~59\)) # (!\inst3|countd\(17) & ((\inst3|countd[16]~59\) # (GND)))
-- \inst3|countd[17]~61\ = CARRY((!\inst3|countd[16]~59\) # (!\inst3|countd\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countd\(17),
	datad => VCC,
	cin => \inst3|countd[16]~59\,
	combout => \inst3|countd[17]~60_combout\,
	cout => \inst3|countd[17]~61\);

-- Location: FF_X11_Y21_N9
\inst3|countd[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[17]~60_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(17));

-- Location: LCCOMB_X11_Y21_N12
\inst3|countd[19]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[19]~64_combout\ = (\inst3|countd\(19) & (!\inst3|countd[18]~63\)) # (!\inst3|countd\(19) & ((\inst3|countd[18]~63\) # (GND)))
-- \inst3|countd[19]~65\ = CARRY((!\inst3|countd[18]~63\) # (!\inst3|countd\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countd\(19),
	datad => VCC,
	cin => \inst3|countd[18]~63\,
	combout => \inst3|countd[19]~64_combout\,
	cout => \inst3|countd[19]~65\);

-- Location: LCCOMB_X11_Y21_N14
\inst3|countd[20]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[20]~66_combout\ = (\inst3|countd\(20) & (\inst3|countd[19]~65\ $ (GND))) # (!\inst3|countd\(20) & (!\inst3|countd[19]~65\ & VCC))
-- \inst3|countd[20]~67\ = CARRY((\inst3|countd\(20) & !\inst3|countd[19]~65\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countd\(20),
	datad => VCC,
	cin => \inst3|countd[19]~65\,
	combout => \inst3|countd[20]~66_combout\,
	cout => \inst3|countd[20]~67\);

-- Location: FF_X11_Y21_N15
\inst3|countd[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[20]~66_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(20));

-- Location: LCCOMB_X11_Y21_N16
\inst3|countd[21]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[21]~68_combout\ = (\inst3|countd\(21) & (!\inst3|countd[20]~67\)) # (!\inst3|countd\(21) & ((\inst3|countd[20]~67\) # (GND)))
-- \inst3|countd[21]~69\ = CARRY((!\inst3|countd[20]~67\) # (!\inst3|countd\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countd\(21),
	datad => VCC,
	cin => \inst3|countd[20]~67\,
	combout => \inst3|countd[21]~68_combout\,
	cout => \inst3|countd[21]~69\);

-- Location: FF_X11_Y21_N17
\inst3|countd[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[21]~68_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(21));

-- Location: LCCOMB_X11_Y21_N18
\inst3|countd[22]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|countd[22]~70_combout\ = (\inst3|countd\(22) & (\inst3|countd[21]~69\ $ (GND))) # (!\inst3|countd\(22) & (!\inst3|countd[21]~69\ & VCC))
-- \inst3|countd[22]~71\ = CARRY((\inst3|countd\(22) & !\inst3|countd[21]~69\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst3|countd\(22),
	datad => VCC,
	cin => \inst3|countd[21]~69\,
	combout => \inst3|countd[22]~70_combout\,
	cout => \inst3|countd[22]~71\);

-- Location: FF_X11_Y21_N19
\inst3|countd[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[22]~70_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(22));

-- Location: FF_X11_Y21_N21
\inst3|countd[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[23]~72_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(23));

-- Location: LCCOMB_X11_Y21_N28
\inst3|Equal6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal6~6_combout\ = (!\inst3|countd\(21) & (!\inst3|countd\(22) & (!\inst3|countd\(20) & !\inst3|countd\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countd\(21),
	datab => \inst3|countd\(22),
	datac => \inst3|countd\(20),
	datad => \inst3|countd\(23),
	combout => \inst3|Equal6~6_combout\);

-- Location: LCCOMB_X11_Y22_N2
\inst3|Equal6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal6~1_combout\ = (!\inst3|countd\(7) & (!\inst3|countd\(5) & (!\inst3|countd\(4) & \inst3|countd\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countd\(7),
	datab => \inst3|countd\(5),
	datac => \inst3|countd\(4),
	datad => \inst3|countd\(6),
	combout => \inst3|Equal6~1_combout\);

-- Location: FF_X11_Y22_N23
\inst3|countd[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[8]~42_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(8));

-- Location: LCCOMB_X11_Y22_N4
\inst3|Equal6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal6~2_combout\ = (!\inst3|countd\(10) & (!\inst3|countd\(11) & (!\inst3|countd\(8) & \inst3|countd\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countd\(10),
	datab => \inst3|countd\(11),
	datac => \inst3|countd\(8),
	datad => \inst3|countd\(9),
	combout => \inst3|Equal6~2_combout\);

-- Location: FF_X11_Y22_N13
\inst3|countd[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[3]~32_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(3));

-- Location: FF_X11_Y22_N7
\inst3|countd[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[0]~26_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(0));

-- Location: LCCOMB_X11_Y22_N0
\inst3|Equal6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal6~0_combout\ = (!\inst3|countd\(2) & (!\inst3|countd\(3) & (!\inst3|countd\(1) & !\inst3|countd\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countd\(2),
	datab => \inst3|countd\(3),
	datac => \inst3|countd\(1),
	datad => \inst3|countd\(0),
	combout => \inst3|Equal6~0_combout\);

-- Location: LCCOMB_X10_Y21_N22
\inst3|Equal6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal6~4_combout\ = (\inst3|Equal6~3_combout\ & (\inst3|Equal6~1_combout\ & (\inst3|Equal6~2_combout\ & \inst3|Equal6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal6~3_combout\,
	datab => \inst3|Equal6~1_combout\,
	datac => \inst3|Equal6~2_combout\,
	datad => \inst3|Equal6~0_combout\,
	combout => \inst3|Equal6~4_combout\);

-- Location: FF_X11_Y21_N13
\inst3|countd[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[19]~64_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(19));

-- Location: FF_X11_Y21_N7
\inst3|countd[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|countd[16]~58_combout\,
	sclr => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|countd\(16));

-- Location: LCCOMB_X11_Y21_N26
\inst3|Equal6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal6~5_combout\ = (\inst3|countd\(18) & (\inst3|countd\(19) & (\inst3|countd\(17) & \inst3|countd\(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|countd\(18),
	datab => \inst3|countd\(19),
	datac => \inst3|countd\(17),
	datad => \inst3|countd\(16),
	combout => \inst3|Equal6~5_combout\);

-- Location: LCCOMB_X10_Y21_N24
\inst3|Equal6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|Equal6~8_combout\ = (((!\inst3|Equal6~5_combout\) # (!\inst3|Equal6~4_combout\)) # (!\inst3|Equal6~6_combout\)) # (!\inst3|Equal6~7_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|Equal6~7_combout\,
	datab => \inst3|Equal6~6_combout\,
	datac => \inst3|Equal6~4_combout\,
	datad => \inst3|Equal6~5_combout\,
	combout => \inst3|Equal6~8_combout\);

-- Location: LCCOMB_X10_Y21_N8
\inst3|doud~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst3|doud~feeder_combout\ = \inst3|Equal6~8_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \inst3|Equal6~8_combout\,
	combout => \inst3|doud~feeder_combout\);

-- Location: FF_X10_Y21_N9
\inst3|doud\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst3|doud~feeder_combout\,
	asdata => VCC,
	sload => \dind~input_o\,
	ena => \inst3|doud~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst3|doud~q\);

-- Location: LCCOMB_X26_Y16_N4
\inst4|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_1~1_combout\ = (\inst4|floor\(1) & (\inst4|floor\(0) & (\inst4|num\(1) & !\inst4|num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|floor\(1),
	datab => \inst4|floor\(0),
	datac => \inst4|num\(1),
	datad => \inst4|num\(0),
	combout => \inst4|process_1~1_combout\);

-- Location: LCCOMB_X26_Y15_N22
\inst4|down_latch~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|down_latch~1_combout\ = ((\inst4|down_latch\(1) & ((!\inst4|process_1~1_combout\) # (!\inst4|Equal1~0_combout\)))) # (!\inst3|doud~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal1~0_combout\,
	datab => \inst3|doud~q\,
	datac => \inst4|down_latch\(1),
	datad => \inst4|process_1~1_combout\,
	combout => \inst4|down_latch~1_combout\);

-- Location: FF_X26_Y15_N23
\inst4|down_latch[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|down_latch~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|down_latch\(1));

-- Location: LCCOMB_X26_Y15_N28
\inst4|key_latch~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|key_latch~2_combout\ = (!\inst4|process_1~1_combout\ & ((\inst4|key_latch\(2)) # (!\inst3|dou3~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|dou3~q\,
	datac => \inst4|key_latch\(2),
	datad => \inst4|process_1~1_combout\,
	combout => \inst4|key_latch~2_combout\);

-- Location: FF_X26_Y15_N29
\inst4|key_latch[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|key_latch~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|key_latch\(2));

-- Location: LCCOMB_X26_Y15_N8
\inst4|process_2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_2~1_combout\ = (!\inst4|down_latch\(1) & !\inst4|key_latch\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|down_latch\(1),
	datad => \inst4|key_latch\(2),
	combout => \inst4|process_2~1_combout\);

-- Location: LCCOMB_X25_Y16_N0
\inst4|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state~19_combout\ = (!\inst4|up_latch\(0) & (!\inst4|key_latch\(0) & ((!\inst4|process_2~1_combout\) # (!\inst4|Selector6~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|up_latch\(0),
	datab => \inst4|key_latch\(0),
	datac => \inst4|Selector6~4_combout\,
	datad => \inst4|process_2~1_combout\,
	combout => \inst4|state~19_combout\);

-- Location: LCCOMB_X26_Y16_N30
\inst4|up_latch~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|up_latch~1_combout\ = ((\inst4|up_latch\(0) & ((!\inst4|process_1~0_combout\) # (!\inst4|Equal0~0_combout\)))) # (!\inst3|doua~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|doua~q\,
	datab => \inst4|Equal0~0_combout\,
	datac => \inst4|up_latch\(0),
	datad => \inst4|process_1~0_combout\,
	combout => \inst4|up_latch~1_combout\);

-- Location: FF_X26_Y16_N31
\inst4|up_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|up_latch~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|up_latch\(0));

-- Location: LCCOMB_X26_Y15_N10
\inst4|process_2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_2~0_combout\ = (!\inst4|up_latch\(0) & !\inst4|key_latch\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|up_latch\(0),
	datad => \inst4|key_latch\(0),
	combout => \inst4|process_2~0_combout\);

-- Location: LCCOMB_X26_Y15_N30
\inst4|stop~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|stop~6_combout\ = (!\inst4|down_latch\(1) & (!\inst4|key_latch\(2) & ((!\inst4|Selector6~4_combout\) # (!\inst4|process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|down_latch\(1),
	datab => \inst4|process_2~0_combout\,
	datac => \inst4|key_latch\(2),
	datad => \inst4|Selector6~4_combout\,
	combout => \inst4|stop~6_combout\);

-- Location: LCCOMB_X24_Y14_N28
\inst4|stop~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|stop~5_combout\ = (\inst4|stop~4_combout\ & (((\inst4|num\(0)) # (!\inst4|stop~6_combout\)))) # (!\inst4|stop~4_combout\ & (!\inst4|state~19_combout\ & ((!\inst4|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000011011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|stop~4_combout\,
	datab => \inst4|state~19_combout\,
	datac => \inst4|stop~6_combout\,
	datad => \inst4|num\(0),
	combout => \inst4|stop~5_combout\);

-- Location: LCCOMB_X24_Y17_N0
\inst4|Selector6~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector6~5_combout\ = (\inst4|state.s3~q\ & !\inst1|en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|state.s3~q\,
	datad => \inst1|en~q\,
	combout => \inst4|Selector6~5_combout\);

-- Location: LCCOMB_X26_Y16_N22
\inst4|Selector6~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector6~9_combout\ = (!\inst4|up_latch\(0) & (\inst4|process_2~1_combout\ & (\inst4|Selector6~4_combout\ & !\inst4|key_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|up_latch\(0),
	datab => \inst4|process_2~1_combout\,
	datac => \inst4|Selector6~4_combout\,
	datad => \inst4|key_latch\(0),
	combout => \inst4|Selector6~9_combout\);

-- Location: LCCOMB_X24_Y17_N12
\inst4|Selector6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector6~6_combout\ = (!\inst4|state.s0~q\ & ((\inst4|Selector6~9_combout\) # ((\inst4|num\(0) & !\inst4|num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(0),
	datab => \inst4|num\(1),
	datac => \inst4|state.s0~q\,
	datad => \inst4|Selector6~9_combout\,
	combout => \inst4|Selector6~6_combout\);

-- Location: LCCOMB_X24_Y17_N8
\inst4|Selector6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector6~8_combout\ = (!\inst4|Selector6~6_combout\ & (((!\inst4|Selector6~5_combout\) # (!\inst4|Equal7~0_combout\)) # (!\inst4|Selector6~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector6~7_combout\,
	datab => \inst4|Equal7~0_combout\,
	datac => \inst4|Selector6~5_combout\,
	datad => \inst4|Selector6~6_combout\,
	combout => \inst4|Selector6~8_combout\);

-- Location: FF_X24_Y17_N9
\inst4|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Selector6~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.s0~q\);

-- Location: LCCOMB_X24_Y17_N2
\inst4|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector3~0_combout\ = (!\inst4|stop~q\ & (!\inst4|floor\(0) & ((\inst4|num\(0)) # (!\inst4|floor\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(0),
	datab => \inst4|stop~q\,
	datac => \inst4|floor\(0),
	datad => \inst4|floor\(1),
	combout => \inst4|Selector3~0_combout\);

-- Location: LCCOMB_X24_Y17_N28
\inst4|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector3~1_combout\ = (\inst4|state.s3~q\ & ((\inst4|Selector6~7_combout\) # ((\inst4|Selector3~0_combout\) # (!\inst4|state~17_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector6~7_combout\,
	datab => \inst4|Selector3~0_combout\,
	datac => \inst4|state.s3~q\,
	datad => \inst4|state~17_combout\,
	combout => \inst4|Selector3~1_combout\);

-- Location: LCCOMB_X24_Y14_N2
\inst4|Selector3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector3~4_combout\ = (!\inst4|Selector3~3_combout\ & (!\inst4|Selector3~1_combout\ & ((\inst4|state.s0~q\) # (!\inst4|stop~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector3~3_combout\,
	datab => \inst4|stop~5_combout\,
	datac => \inst4|state.s0~q\,
	datad => \inst4|Selector3~1_combout\,
	combout => \inst4|Selector3~4_combout\);

-- Location: FF_X24_Y14_N3
\inst4|stop\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Selector3~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|stop~q\);

-- Location: LCCOMB_X23_Y15_N6
\inst4|Add1~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~33_combout\ = (\inst4|cnt\(16) & (\inst4|Add1~32\ $ (GND))) # (!\inst4|cnt\(16) & ((GND) # (!\inst4|Add1~32\)))
-- \inst4|Add1~34\ = CARRY((!\inst4|Add1~32\) # (!\inst4|cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(16),
	datad => VCC,
	cin => \inst4|Add1~32\,
	combout => \inst4|Add1~33_combout\,
	cout => \inst4|Add1~34\);

-- Location: LCCOMB_X23_Y15_N8
\inst4|Add1~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~35_combout\ = (\inst4|cnt\(17) & (\inst4|Add1~34\ & VCC)) # (!\inst4|cnt\(17) & (!\inst4|Add1~34\))
-- \inst4|Add1~36\ = CARRY((!\inst4|cnt\(17) & !\inst4|Add1~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(17),
	datad => VCC,
	cin => \inst4|Add1~34\,
	combout => \inst4|Add1~35_combout\,
	cout => \inst4|Add1~36\);

-- Location: LCCOMB_X23_Y15_N10
\inst4|Add1~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~37_combout\ = (\inst4|cnt\(18) & (\inst4|Add1~36\ $ (GND))) # (!\inst4|cnt\(18) & ((GND) # (!\inst4|Add1~36\)))
-- \inst4|Add1~38\ = CARRY((!\inst4|Add1~36\) # (!\inst4|cnt\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(18),
	datad => VCC,
	cin => \inst4|Add1~36\,
	combout => \inst4|Add1~37_combout\,
	cout => \inst4|Add1~38\);

-- Location: LCCOMB_X23_Y15_N12
\inst4|Add1~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~39_combout\ = (\inst4|cnt\(19) & (\inst4|Add1~38\ & VCC)) # (!\inst4|cnt\(19) & (!\inst4|Add1~38\))
-- \inst4|Add1~40\ = CARRY((!\inst4|cnt\(19) & !\inst4|Add1~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(19),
	datad => VCC,
	cin => \inst4|Add1~38\,
	combout => \inst4|Add1~39_combout\,
	cout => \inst4|Add1~40\);

-- Location: LCCOMB_X23_Y15_N16
\inst4|Add1~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~43_combout\ = (\inst4|cnt\(21) & (!\inst4|Add1~42\)) # (!\inst4|cnt\(21) & (\inst4|Add1~42\ & VCC))
-- \inst4|Add1~44\ = CARRY((\inst4|cnt\(21) & !\inst4|Add1~42\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(21),
	datad => VCC,
	cin => \inst4|Add1~42\,
	combout => \inst4|Add1~43_combout\,
	cout => \inst4|Add1~44\);

-- Location: LCCOMB_X22_Y15_N6
\inst4|Add1~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~69_combout\ = (\inst4|Equal2~8_combout\ & (\inst4|stop~q\ & !\inst4|Add1~43_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal2~8_combout\,
	datac => \inst4|stop~q\,
	datad => \inst4|Add1~43_combout\,
	combout => \inst4|Add1~69_combout\);

-- Location: LCCOMB_X24_Y16_N28
\inst4|cnt[13]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|cnt[13]~0_combout\ = (\inst4|direction\(1) $ (\inst4|direction\(0))) # (!\inst4|stop~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|stop~q\,
	datac => \inst4|direction\(1),
	datad => \inst4|direction\(0),
	combout => \inst4|cnt[13]~0_combout\);

-- Location: FF_X22_Y15_N7
\inst4|cnt[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~69_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(21));

-- Location: LCCOMB_X23_Y15_N18
\inst4|Add1~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~45_combout\ = (\inst4|cnt\(22) & (\inst4|Add1~44\ $ (GND))) # (!\inst4|cnt\(22) & ((GND) # (!\inst4|Add1~44\)))
-- \inst4|Add1~46\ = CARRY((!\inst4|Add1~44\) # (!\inst4|cnt\(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(22),
	datad => VCC,
	cin => \inst4|Add1~44\,
	combout => \inst4|Add1~45_combout\,
	cout => \inst4|Add1~46\);

-- Location: LCCOMB_X22_Y15_N28
\inst4|Add1~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~68_combout\ = (\inst4|Equal2~8_combout\ & (\inst4|stop~q\ & !\inst4|Add1~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal2~8_combout\,
	datac => \inst4|stop~q\,
	datad => \inst4|Add1~45_combout\,
	combout => \inst4|Add1~68_combout\);

-- Location: FF_X22_Y15_N29
\inst4|cnt[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~68_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(22));

-- Location: LCCOMB_X22_Y15_N2
\inst4|Add1~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~67_combout\ = (\inst4|stop~q\ & (\inst4|Add1~39_combout\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|stop~q\,
	datac => \inst4|Add1~39_combout\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~67_combout\);

-- Location: FF_X22_Y15_N3
\inst4|cnt[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~67_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(19));

-- Location: LCCOMB_X23_Y15_N28
\inst4|Equal2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal2~4_combout\ = (((\inst4|cnt\(19)) # (!\inst4|cnt\(21))) # (!\inst4|cnt\(22))) # (!\inst4|cnt\(20))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(20),
	datab => \inst4|cnt\(22),
	datac => \inst4|cnt\(21),
	datad => \inst4|cnt\(19),
	combout => \inst4|Equal2~4_combout\);

-- Location: LCCOMB_X24_Y16_N2
\inst4|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~4_combout\ = (\inst4|Add1~2_combout\ & (\inst4|stop~q\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add1~2_combout\,
	datab => \inst4|stop~q\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~4_combout\);

-- Location: FF_X24_Y16_N3
\inst4|cnt[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~4_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(1));

-- Location: LCCOMB_X23_Y16_N6
\inst4|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~0_combout\ = \inst4|cnt\(0) $ (VCC)
-- \inst4|Add1~1\ = CARRY(\inst4|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(0),
	datad => VCC,
	combout => \inst4|Add1~0_combout\,
	cout => \inst4|Add1~1\);

-- Location: LCCOMB_X26_Y16_N6
\inst4|Add1~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~80_combout\ = (\inst4|stop~q\ & (\inst4|Add1~0_combout\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|stop~q\,
	datac => \inst4|Add1~0_combout\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~80_combout\);

-- Location: FF_X26_Y16_N7
\inst4|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~80_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(0));

-- Location: LCCOMB_X23_Y16_N10
\inst4|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~5_combout\ = (\inst4|cnt\(2) & ((GND) # (!\inst4|Add1~3\))) # (!\inst4|cnt\(2) & (\inst4|Add1~3\ $ (GND)))
-- \inst4|Add1~6\ = CARRY((\inst4|cnt\(2)) # (!\inst4|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(2),
	datad => VCC,
	cin => \inst4|Add1~3\,
	combout => \inst4|Add1~5_combout\,
	cout => \inst4|Add1~6\);

-- Location: LCCOMB_X22_Y15_N26
\inst4|Add1~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~62_combout\ = (\inst4|stop~q\ & (\inst4|Add1~5_combout\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|stop~q\,
	datac => \inst4|Add1~5_combout\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~62_combout\);

-- Location: FF_X22_Y15_N27
\inst4|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~62_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(2));

-- Location: LCCOMB_X23_Y16_N12
\inst4|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~7_combout\ = (\inst4|cnt\(3) & (\inst4|Add1~6\ & VCC)) # (!\inst4|cnt\(3) & (!\inst4|Add1~6\))
-- \inst4|Add1~8\ = CARRY((!\inst4|cnt\(3) & !\inst4|Add1~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(3),
	datad => VCC,
	cin => \inst4|Add1~6\,
	combout => \inst4|Add1~7_combout\,
	cout => \inst4|Add1~8\);

-- Location: LCCOMB_X23_Y16_N18
\inst4|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~13_combout\ = (\inst4|cnt\(6) & ((GND) # (!\inst4|Add1~12\))) # (!\inst4|cnt\(6) & (\inst4|Add1~12\ $ (GND)))
-- \inst4|Add1~14\ = CARRY((\inst4|cnt\(6)) # (!\inst4|Add1~12\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(6),
	datad => VCC,
	cin => \inst4|Add1~12\,
	combout => \inst4|Add1~13_combout\,
	cout => \inst4|Add1~14\);

-- Location: LCCOMB_X22_Y15_N30
\inst4|Add1~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~79_combout\ = (\inst4|Add1~13_combout\ & (\inst4|stop~q\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add1~13_combout\,
	datac => \inst4|stop~q\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~79_combout\);

-- Location: FF_X22_Y15_N31
\inst4|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~79_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(6));

-- Location: LCCOMB_X23_Y16_N22
\inst4|Add1~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~17_combout\ = (\inst4|cnt\(8) & (\inst4|Add1~16\ $ (GND))) # (!\inst4|cnt\(8) & ((GND) # (!\inst4|Add1~16\)))
-- \inst4|Add1~18\ = CARRY((!\inst4|Add1~16\) # (!\inst4|cnt\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(8),
	datad => VCC,
	cin => \inst4|Add1~16\,
	combout => \inst4|Add1~17_combout\,
	cout => \inst4|Add1~18\);

-- Location: LCCOMB_X23_Y16_N26
\inst4|Add1~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~21_combout\ = (\inst4|cnt\(10) & ((GND) # (!\inst4|Add1~20\))) # (!\inst4|cnt\(10) & (\inst4|Add1~20\ $ (GND)))
-- \inst4|Add1~22\ = CARRY((\inst4|cnt\(10)) # (!\inst4|Add1~20\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(10),
	datad => VCC,
	cin => \inst4|Add1~20\,
	combout => \inst4|Add1~21_combout\,
	cout => \inst4|Add1~22\);

-- Location: LCCOMB_X23_Y16_N0
\inst4|Add1~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~64_combout\ = (\inst4|stop~q\ & (\inst4|Add1~21_combout\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|stop~q\,
	datac => \inst4|Add1~21_combout\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~64_combout\);

-- Location: FF_X23_Y16_N1
\inst4|cnt[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~64_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(10));

-- Location: LCCOMB_X22_Y15_N4
\inst4|Add1~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~63_combout\ = (!\inst4|Add1~17_combout\ & (\inst4|stop~q\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add1~17_combout\,
	datac => \inst4|stop~q\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~63_combout\);

-- Location: FF_X22_Y15_N5
\inst4|cnt[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~63_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(8));

-- Location: LCCOMB_X22_Y15_N14
\inst4|Add1~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~65_combout\ = (\inst4|Add1~19_combout\ & (\inst4|stop~q\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add1~19_combout\,
	datac => \inst4|stop~q\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~65_combout\);

-- Location: FF_X22_Y15_N15
\inst4|cnt[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~65_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(9));

-- Location: LCCOMB_X22_Y16_N4
\inst4|Equal2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal2~2_combout\ = (!\inst4|cnt\(7) & (!\inst4|cnt\(10) & (\inst4|cnt\(8) & !\inst4|cnt\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(7),
	datab => \inst4|cnt\(10),
	datac => \inst4|cnt\(8),
	datad => \inst4|cnt\(9),
	combout => \inst4|Equal2~2_combout\);

-- Location: LCCOMB_X23_Y15_N20
\inst4|Add1~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~47_combout\ = (\inst4|cnt\(23) & (!\inst4|Add1~46\)) # (!\inst4|cnt\(23) & (\inst4|Add1~46\ & VCC))
-- \inst4|Add1~48\ = CARRY((\inst4|cnt\(23) & !\inst4|Add1~46\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(23),
	datad => VCC,
	cin => \inst4|Add1~46\,
	combout => \inst4|Add1~47_combout\,
	cout => \inst4|Add1~48\);

-- Location: LCCOMB_X24_Y16_N26
\inst4|Add1~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~58_combout\ = (\inst4|stop~q\ & (\inst4|Equal2~8_combout\ & !\inst4|Add1~47_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|stop~q\,
	datac => \inst4|Equal2~8_combout\,
	datad => \inst4|Add1~47_combout\,
	combout => \inst4|Add1~58_combout\);

-- Location: FF_X24_Y16_N27
\inst4|cnt[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~58_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(23));

-- Location: LCCOMB_X23_Y15_N22
\inst4|Add1~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~49_combout\ = (\inst4|cnt\(24) & (\inst4|Add1~48\ $ (GND))) # (!\inst4|cnt\(24) & ((GND) # (!\inst4|Add1~48\)))
-- \inst4|Add1~50\ = CARRY((!\inst4|Add1~48\) # (!\inst4|cnt\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(24),
	datad => VCC,
	cin => \inst4|Add1~48\,
	combout => \inst4|Add1~49_combout\,
	cout => \inst4|Add1~50\);

-- Location: LCCOMB_X24_Y16_N16
\inst4|Add1~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~57_combout\ = (\inst4|stop~q\ & (\inst4|Equal2~8_combout\ & !\inst4|Add1~49_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|stop~q\,
	datac => \inst4|Equal2~8_combout\,
	datad => \inst4|Add1~49_combout\,
	combout => \inst4|Add1~57_combout\);

-- Location: FF_X24_Y16_N17
\inst4|cnt[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~57_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(24));

-- Location: LCCOMB_X23_Y15_N26
\inst4|Add1~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~54_combout\ = \inst4|cnt\(26) $ (!\inst4|Add1~52\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(26),
	cin => \inst4|Add1~52\,
	combout => \inst4|Add1~54_combout\);

-- Location: LCCOMB_X24_Y16_N30
\inst4|Add1~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~56_combout\ = (\inst4|stop~q\ & (\inst4|Equal2~8_combout\ & !\inst4|Add1~54_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|stop~q\,
	datac => \inst4|Equal2~8_combout\,
	datad => \inst4|Add1~54_combout\,
	combout => \inst4|Add1~56_combout\);

-- Location: FF_X24_Y16_N31
\inst4|cnt[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~56_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(26));

-- Location: LCCOMB_X22_Y16_N0
\inst4|Equal2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal2~0_combout\ = (\inst4|cnt\(25)) # (((!\inst4|cnt\(26)) # (!\inst4|cnt\(23))) # (!\inst4|cnt\(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(25),
	datab => \inst4|cnt\(24),
	datac => \inst4|cnt\(23),
	datad => \inst4|cnt\(26),
	combout => \inst4|Equal2~0_combout\);

-- Location: LCCOMB_X22_Y16_N6
\inst4|Equal2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal2~3_combout\ = ((\inst4|cnt\(1)) # ((\inst4|Equal2~0_combout\) # (!\inst4|Equal2~2_combout\))) # (!\inst4|Equal2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal2~1_combout\,
	datab => \inst4|cnt\(1),
	datac => \inst4|Equal2~2_combout\,
	datad => \inst4|Equal2~0_combout\,
	combout => \inst4|Equal2~3_combout\);

-- Location: LCCOMB_X23_Y16_N28
\inst4|Add1~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~23_combout\ = (\inst4|cnt\(11) & (\inst4|Add1~22\ & VCC)) # (!\inst4|cnt\(11) & (!\inst4|Add1~22\))
-- \inst4|Add1~24\ = CARRY((!\inst4|cnt\(11) & !\inst4|Add1~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(11),
	datad => VCC,
	cin => \inst4|Add1~22\,
	combout => \inst4|Add1~23_combout\,
	cout => \inst4|Add1~24\);

-- Location: LCCOMB_X23_Y16_N4
\inst4|Add1~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~76_combout\ = (\inst4|Add1~23_combout\ & (\inst4|stop~q\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add1~23_combout\,
	datac => \inst4|stop~q\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~76_combout\);

-- Location: FF_X23_Y16_N5
\inst4|cnt[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~76_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(11));

-- Location: LCCOMB_X23_Y16_N30
\inst4|Add1~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~25_combout\ = (\inst4|cnt\(12) & ((GND) # (!\inst4|Add1~24\))) # (!\inst4|cnt\(12) & (\inst4|Add1~24\ $ (GND)))
-- \inst4|Add1~26\ = CARRY((\inst4|cnt\(12)) # (!\inst4|Add1~24\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(12),
	datad => VCC,
	cin => \inst4|Add1~24\,
	combout => \inst4|Add1~25_combout\,
	cout => \inst4|Add1~26\);

-- Location: LCCOMB_X23_Y16_N2
\inst4|Add1~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~75_combout\ = (\inst4|stop~q\ & (\inst4|Add1~25_combout\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|stop~q\,
	datac => \inst4|Add1~25_combout\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~75_combout\);

-- Location: FF_X23_Y16_N3
\inst4|cnt[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~75_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(12));

-- Location: LCCOMB_X23_Y15_N0
\inst4|Add1~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~27_combout\ = (\inst4|cnt\(13) & (!\inst4|Add1~26\)) # (!\inst4|cnt\(13) & (\inst4|Add1~26\ & VCC))
-- \inst4|Add1~28\ = CARRY((\inst4|cnt\(13) & !\inst4|Add1~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(13),
	datad => VCC,
	cin => \inst4|Add1~26\,
	combout => \inst4|Add1~27_combout\,
	cout => \inst4|Add1~28\);

-- Location: LCCOMB_X22_Y15_N20
\inst4|Add1~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~78_combout\ = (\inst4|stop~q\ & (!\inst4|Add1~27_combout\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|stop~q\,
	datac => \inst4|Add1~27_combout\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~78_combout\);

-- Location: FF_X22_Y15_N21
\inst4|cnt[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~78_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(13));

-- Location: LCCOMB_X23_Y15_N2
\inst4|Add1~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~29_combout\ = (\inst4|cnt\(14) & (\inst4|Add1~28\ $ (GND))) # (!\inst4|cnt\(14) & ((GND) # (!\inst4|Add1~28\)))
-- \inst4|Add1~30\ = CARRY((!\inst4|Add1~28\) # (!\inst4|cnt\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(14),
	datad => VCC,
	cin => \inst4|Add1~28\,
	combout => \inst4|Add1~29_combout\,
	cout => \inst4|Add1~30\);

-- Location: LCCOMB_X22_Y15_N18
\inst4|Add1~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~77_combout\ = (!\inst4|Add1~29_combout\ & (\inst4|stop~q\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|Add1~29_combout\,
	datac => \inst4|stop~q\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~77_combout\);

-- Location: FF_X22_Y15_N19
\inst4|cnt[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~77_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(14));

-- Location: LCCOMB_X22_Y16_N2
\inst4|Equal2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal2~6_combout\ = (\inst4|cnt\(12)) # (((\inst4|cnt\(11)) # (!\inst4|cnt\(14))) # (!\inst4|cnt\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(12),
	datab => \inst4|cnt\(13),
	datac => \inst4|cnt\(11),
	datad => \inst4|cnt\(14),
	combout => \inst4|Equal2~6_combout\);

-- Location: LCCOMB_X22_Y16_N28
\inst4|Equal2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal2~7_combout\ = ((\inst4|cnt\(6)) # (\inst4|Equal2~6_combout\)) # (!\inst4|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(0),
	datac => \inst4|cnt\(6),
	datad => \inst4|Equal2~6_combout\,
	combout => \inst4|Equal2~7_combout\);

-- Location: LCCOMB_X26_Y16_N24
\inst4|Equal2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal2~8_combout\ = (\inst4|Equal2~5_combout\) # ((\inst4|Equal2~4_combout\) # ((\inst4|Equal2~3_combout\) # (\inst4|Equal2~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Equal2~5_combout\,
	datab => \inst4|Equal2~4_combout\,
	datac => \inst4|Equal2~3_combout\,
	datad => \inst4|Equal2~7_combout\,
	combout => \inst4|Equal2~8_combout\);

-- Location: LCCOMB_X22_Y15_N24
\inst4|Add1~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~74_combout\ = (!\inst4|Add1~31_combout\ & (\inst4|stop~q\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add1~31_combout\,
	datac => \inst4|stop~q\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~74_combout\);

-- Location: FF_X22_Y15_N25
\inst4|cnt[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~74_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(15));

-- Location: LCCOMB_X22_Y15_N22
\inst4|Add1~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~73_combout\ = (\inst4|stop~q\ & (!\inst4|Add1~33_combout\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|stop~q\,
	datac => \inst4|Add1~33_combout\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~73_combout\);

-- Location: FF_X22_Y15_N23
\inst4|cnt[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~73_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(16));

-- Location: LCCOMB_X22_Y15_N10
\inst4|Add1~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~71_combout\ = (\inst4|stop~q\ & (\inst4|Add1~35_combout\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|stop~q\,
	datac => \inst4|Add1~35_combout\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~71_combout\);

-- Location: FF_X22_Y15_N11
\inst4|cnt[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~71_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(17));

-- Location: LCCOMB_X22_Y16_N8
\inst4|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~6_combout\ = (\inst4|cnt\(17)) # ((!\inst4|cnt\(15) & !\inst4|cnt\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(15),
	datab => \inst4|cnt\(16),
	datad => \inst4|cnt\(17),
	combout => \inst4|LessThan0~6_combout\);

-- Location: LCCOMB_X22_Y15_N0
\inst4|Add1~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~61_combout\ = (\inst4|stop~q\ & (\inst4|Add1~7_combout\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|stop~q\,
	datac => \inst4|Add1~7_combout\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~61_combout\);

-- Location: FF_X22_Y15_N1
\inst4|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~61_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(3));

-- Location: LCCOMB_X24_Y16_N6
\inst4|Add1~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~60_combout\ = (\inst4|Add1~9_combout\ & (\inst4|stop~q\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Add1~9_combout\,
	datab => \inst4|stop~q\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~60_combout\);

-- Location: FF_X24_Y16_N7
\inst4|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~60_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(4));

-- Location: LCCOMB_X22_Y16_N10
\inst4|Equal2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Equal2~1_combout\ = (!\inst4|cnt\(5) & (!\inst4|cnt\(3) & (!\inst4|cnt\(4) & !\inst4|cnt\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(5),
	datab => \inst4|cnt\(3),
	datac => \inst4|cnt\(4),
	datad => \inst4|cnt\(2),
	combout => \inst4|Equal2~1_combout\);

-- Location: LCCOMB_X22_Y16_N20
\inst4|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~4_combout\ = (\inst4|cnt\(6) & ((\inst4|cnt\(0)) # ((\inst4|cnt\(1)) # (!\inst4|Equal2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(0),
	datab => \inst4|cnt\(1),
	datac => \inst4|cnt\(6),
	datad => \inst4|Equal2~1_combout\,
	combout => \inst4|LessThan0~4_combout\);

-- Location: LCCOMB_X22_Y16_N14
\inst4|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~5_combout\ = (\inst4|LessThan0~3_combout\ & (\inst4|cnt\(11) & ((\inst4|LessThan0~4_combout\) # (!\inst4|Equal2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~3_combout\,
	datab => \inst4|cnt\(11),
	datac => \inst4|Equal2~2_combout\,
	datad => \inst4|LessThan0~4_combout\,
	combout => \inst4|LessThan0~5_combout\);

-- Location: LCCOMB_X22_Y15_N12
\inst4|Add1~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Add1~72_combout\ = (\inst4|stop~q\ & (!\inst4|Add1~37_combout\ & \inst4|Equal2~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|stop~q\,
	datac => \inst4|Add1~37_combout\,
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|Add1~72_combout\);

-- Location: FF_X22_Y15_N13
\inst4|cnt[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Add1~72_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|cnt[13]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|cnt\(18));

-- Location: LCCOMB_X23_Y15_N30
\inst4|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~1_combout\ = (!\inst4|cnt\(20) & (!\inst4|cnt\(22) & (!\inst4|cnt\(21) & !\inst4|cnt\(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|cnt\(20),
	datab => \inst4|cnt\(22),
	datac => \inst4|cnt\(21),
	datad => \inst4|cnt\(24),
	combout => \inst4|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y16_N16
\inst4|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~2_combout\ = (\inst4|cnt\(19) & (!\inst4|cnt\(18) & \inst4|LessThan0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|cnt\(19),
	datac => \inst4|cnt\(18),
	datad => \inst4|LessThan0~1_combout\,
	combout => \inst4|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y16_N18
\inst4|LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|LessThan0~7_combout\ = (\inst4|LessThan0~0_combout\) # ((\inst4|LessThan0~2_combout\ & ((\inst4|LessThan0~6_combout\) # (\inst4|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|LessThan0~0_combout\,
	datab => \inst4|LessThan0~6_combout\,
	datac => \inst4|LessThan0~5_combout\,
	datad => \inst4|LessThan0~2_combout\,
	combout => \inst4|LessThan0~7_combout\);

-- Location: LCCOMB_X22_Y16_N12
\inst4|process_2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_2~3_combout\ = (\inst4|LessThan0~7_combout\ & ((!\inst3|dou2~q\) # (!\inst3|douc~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|douc~q\,
	datac => \inst3|dou2~q\,
	datad => \inst4|LessThan0~7_combout\,
	combout => \inst4|process_2~3_combout\);

-- Location: LCCOMB_X25_Y16_N22
\inst4|Selector4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector4~12_combout\ = (\inst4|num\(1) & (!\inst4|num\(0) & (\inst4|state.s2~q\ & \inst4|process_2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(1),
	datab => \inst4|num\(0),
	datac => \inst4|state.s2~q\,
	datad => \inst4|process_2~3_combout\,
	combout => \inst4|Selector4~12_combout\);

-- Location: LCCOMB_X25_Y16_N20
\inst4|floor~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~17_combout\ = (!\inst4|key_latch\(2) & (!\inst4|down_latch\(1) & \inst4|Selector6~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|key_latch\(2),
	datac => \inst4|down_latch\(1),
	datad => \inst4|Selector6~4_combout\,
	combout => \inst4|floor~17_combout\);

-- Location: LCCOMB_X25_Y16_N4
\inst4|floor~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~28_combout\ = ((!\inst4|up_latch\(0) & (!\inst4|key_latch\(0) & !\inst4|process_2~1_combout\))) # (!\inst4|Selector6~4_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|up_latch\(0),
	datab => \inst4|key_latch\(0),
	datac => \inst4|Selector6~4_combout\,
	datad => \inst4|process_2~1_combout\,
	combout => \inst4|floor~28_combout\);

-- Location: LCCOMB_X25_Y16_N10
\inst4|floor~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~16_combout\ = (\inst4|num\(1) & (((!\inst4|num\(0))))) # (!\inst4|num\(1) & ((\inst4|num\(0) & (\inst4|floor\(1))) # (!\inst4|num\(0) & ((\inst4|state~19_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(1),
	datab => \inst4|floor\(1),
	datac => \inst4|num\(0),
	datad => \inst4|state~19_combout\,
	combout => \inst4|floor~16_combout\);

-- Location: LCCOMB_X25_Y16_N30
\inst4|floor~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~18_combout\ = (\inst4|num\(1) & ((\inst4|floor~16_combout\ & (!\inst4|floor~17_combout\)) # (!\inst4|floor~16_combout\ & ((\inst4|floor~28_combout\))))) # (!\inst4|num\(1) & (((\inst4|floor~16_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111011110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(1),
	datab => \inst4|floor~17_combout\,
	datac => \inst4|floor~28_combout\,
	datad => \inst4|floor~16_combout\,
	combout => \inst4|floor~18_combout\);

-- Location: LCCOMB_X25_Y16_N8
\inst4|Selector4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector4~4_combout\ = (\inst4|state.s2~q\ & ((\inst4|Selector4~3_combout\) # ((!\inst4|state.s0~q\ & \inst4|floor~18_combout\)))) # (!\inst4|state.s2~q\ & (!\inst4|state.s0~q\ & (\inst4|floor~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s2~q\,
	datab => \inst4|state.s0~q\,
	datac => \inst4|floor~18_combout\,
	datad => \inst4|Selector4~3_combout\,
	combout => \inst4|Selector4~4_combout\);

-- Location: LCCOMB_X25_Y16_N28
\inst4|floor~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~13_combout\ = (\inst4|key_latch\(1)) # ((\inst4|Equal1~0_combout\ & ((\inst4|down_latch\(0)))) # (!\inst4|Equal1~0_combout\ & (\inst4|floor~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|floor~12_combout\,
	datab => \inst4|key_latch\(1),
	datac => \inst4|down_latch\(0),
	datad => \inst4|Equal1~0_combout\,
	combout => \inst4|floor~13_combout\);

-- Location: LCCOMB_X25_Y16_N2
\inst4|floor~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~27_combout\ = (\inst4|direction\(0) & ((\inst4|direction\(1) & (\inst4|floor\(1))) # (!\inst4|direction\(1) & ((\inst4|floor~13_combout\))))) # (!\inst4|direction\(0) & ((\inst4|direction\(1) & ((\inst4|floor~13_combout\))) # 
-- (!\inst4|direction\(1) & (\inst4|floor\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101111010000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|direction\(0),
	datab => \inst4|floor\(1),
	datac => \inst4|direction\(1),
	datad => \inst4|floor~13_combout\,
	combout => \inst4|floor~27_combout\);

-- Location: LCCOMB_X25_Y16_N14
\inst4|floor~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~14_combout\ = (\inst4|num\(1) & (((\inst4|floor~27_combout\) # (!\inst4|num\(0))))) # (!\inst4|num\(1) & (\inst4|floor\(1) & (\inst4|num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(1),
	datab => \inst4|floor\(1),
	datac => \inst4|num\(0),
	datad => \inst4|floor~27_combout\,
	combout => \inst4|floor~14_combout\);

-- Location: LCCOMB_X26_Y15_N24
\inst4|process_2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_2~2_combout\ = (!\inst4|key_latch\(1) & !\inst4|down_latch\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|key_latch\(1),
	datad => \inst4|down_latch\(0),
	combout => \inst4|process_2~2_combout\);

-- Location: LCCOMB_X26_Y15_N2
\inst4|floor~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~15_combout\ = (((\inst4|up_latch\(1) & \inst4|process_2~0_combout\)) # (!\inst4|process_2~2_combout\)) # (!\inst4|process_2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101010111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_2~1_combout\,
	datab => \inst4|up_latch\(1),
	datac => \inst4|process_2~0_combout\,
	datad => \inst4|process_2~2_combout\,
	combout => \inst4|floor~15_combout\);

-- Location: LCCOMB_X25_Y16_N24
\inst4|Selector4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector4~2_combout\ = (\inst4|num\(0) & (((\inst4|floor~14_combout\)))) # (!\inst4|num\(0) & ((\inst4|floor~14_combout\ & ((\inst4|floor~15_combout\))) # (!\inst4|floor~14_combout\ & (\inst4|state~19_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(0),
	datab => \inst4|state~19_combout\,
	datac => \inst4|floor~14_combout\,
	datad => \inst4|floor~15_combout\,
	combout => \inst4|Selector4~2_combout\);

-- Location: LCCOMB_X25_Y16_N26
\inst4|Selector4~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector4~5_combout\ = (\inst4|Selector4~4_combout\) # ((\inst4|state.s3~q\ & (\inst1|en~q\ & \inst4|Selector4~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s3~q\,
	datab => \inst1|en~q\,
	datac => \inst4|Selector4~4_combout\,
	datad => \inst4|Selector4~2_combout\,
	combout => \inst4|Selector4~5_combout\);

-- Location: LCCOMB_X25_Y16_N12
\inst4|Selector4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector4~8_combout\ = (\inst4|Selector4~7_combout\) # ((\inst4|Selector4~5_combout\) # ((\inst4|floor\(1) & \inst4|Selector6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector4~7_combout\,
	datab => \inst4|floor\(1),
	datac => \inst4|Selector4~5_combout\,
	datad => \inst4|Selector6~5_combout\,
	combout => \inst4|Selector4~8_combout\);

-- Location: LCCOMB_X25_Y16_N16
\inst4|Selector4~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector4~11_combout\ = (\inst4|Selector4~12_combout\) # ((\inst4|Selector4~8_combout\) # ((\inst4|Selector4~9_combout\ & \inst4|Selector4~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector4~9_combout\,
	datab => \inst4|Selector4~10_combout\,
	datac => \inst4|Selector4~12_combout\,
	datad => \inst4|Selector4~8_combout\,
	combout => \inst4|Selector4~11_combout\);

-- Location: FF_X25_Y16_N17
\inst4|floor[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Selector4~11_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|floor\(1));

-- Location: LCCOMB_X24_Y14_N26
\inst4|state~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|state~16_combout\ = (!\inst4|floor\(0) & \inst4|floor\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|floor\(0),
	datad => \inst4|floor\(1),
	combout => \inst4|state~16_combout\);

-- Location: LCCOMB_X23_Y17_N4
\inst4|Selector5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector5~6_combout\ = (\inst4|num\(0) & (!\inst4|state~16_combout\ & ((\inst4|state.s1~q\) # (\inst4|state.s2~q\)))) # (!\inst4|num\(0) & (\inst4|state.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s1~q\,
	datab => \inst4|num\(0),
	datac => \inst4|state.s2~q\,
	datad => \inst4|state~16_combout\,
	combout => \inst4|Selector5~6_combout\);

-- Location: LCCOMB_X24_Y14_N18
\inst4|Selector5~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector5~3_combout\ = (\inst4|state.s1~q\ & (!\inst4|num\(1) & \inst4|floor\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|state.s1~q\,
	datac => \inst4|num\(1),
	datad => \inst4|floor\(0),
	combout => \inst4|Selector5~3_combout\);

-- Location: LCCOMB_X24_Y15_N22
\inst4|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector5~0_combout\ = (\inst4|state.s2~q\ & (!\inst4|num\(1) & ((\inst4|floor\(0)) # (!\inst4|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s2~q\,
	datab => \inst4|num\(1),
	datac => \inst4|floor\(0),
	datad => \inst4|num\(0),
	combout => \inst4|Selector5~0_combout\);

-- Location: LCCOMB_X26_Y15_N16
\inst4|floor~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~22_combout\ = ((!\inst4|down_latch\(0) & (!\inst4|key_latch\(1) & !\inst4|process_2~0_combout\))) # (!\inst4|process_2~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_2~1_combout\,
	datab => \inst4|down_latch\(0),
	datac => \inst4|key_latch\(1),
	datad => \inst4|process_2~0_combout\,
	combout => \inst4|floor~22_combout\);

-- Location: LCCOMB_X24_Y16_N18
\inst4|num~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|num~11_combout\ = \inst4|direction\(1) $ (\inst4|direction\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|direction\(1),
	datad => \inst4|direction\(0),
	combout => \inst4|num~11_combout\);

-- Location: LCCOMB_X26_Y15_N12
\inst4|process_2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|process_2~4_combout\ = (!\inst4|up_latch\(1) & ((\inst4|key_latch\(2)) # (\inst4|down_latch\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|key_latch\(2),
	datac => \inst4|down_latch\(1),
	datad => \inst4|up_latch\(1),
	combout => \inst4|process_2~4_combout\);

-- Location: LCCOMB_X25_Y15_N12
\inst4|floor~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~19_combout\ = (\inst4|Equal1~0_combout\ & (!\inst4|down_latch\(0) & ((!\inst4|process_2~0_combout\)))) # (!\inst4|Equal1~0_combout\ & (((\inst4|process_2~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|down_latch\(0),
	datab => \inst4|process_2~4_combout\,
	datac => \inst4|process_2~0_combout\,
	datad => \inst4|Equal1~0_combout\,
	combout => \inst4|floor~19_combout\);

-- Location: LCCOMB_X25_Y15_N30
\inst4|floor~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~20_combout\ = (\inst4|num~11_combout\ & (!\inst4|key_latch\(1) & ((\inst4|floor~19_combout\)))) # (!\inst4|num~11_combout\ & (((\inst4|floor\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|key_latch\(1),
	datab => \inst4|floor\(0),
	datac => \inst4|num~11_combout\,
	datad => \inst4|floor~19_combout\,
	combout => \inst4|floor~20_combout\);

-- Location: LCCOMB_X26_Y15_N18
\inst4|floor~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~29_combout\ = (\inst4|up_latch\(0)) # ((\inst4|key_latch\(0)) # ((!\inst4|key_latch\(1) & \inst4|process_2~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|up_latch\(0),
	datab => \inst4|key_latch\(0),
	datac => \inst4|key_latch\(1),
	datad => \inst4|process_2~4_combout\,
	combout => \inst4|floor~29_combout\);

-- Location: LCCOMB_X26_Y15_N6
\inst4|floor~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~21_combout\ = (\inst4|num\(1) & (((!\inst4|num\(0))))) # (!\inst4|num\(1) & ((\inst4|num\(0) & (\inst4|floor\(0))) # (!\inst4|num\(0) & ((\inst4|floor~29_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100111101001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(1),
	datab => \inst4|floor\(0),
	datac => \inst4|num\(0),
	datad => \inst4|floor~29_combout\,
	combout => \inst4|floor~21_combout\);

-- Location: LCCOMB_X25_Y15_N8
\inst4|floor~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~23_combout\ = (\inst4|num\(1) & ((\inst4|floor~21_combout\ & (\inst4|floor~22_combout\)) # (!\inst4|floor~21_combout\ & ((\inst4|floor~20_combout\))))) # (!\inst4|num\(1) & (((\inst4|floor~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(1),
	datab => \inst4|floor~22_combout\,
	datac => \inst4|floor~20_combout\,
	datad => \inst4|floor~21_combout\,
	combout => \inst4|floor~23_combout\);

-- Location: LCCOMB_X25_Y15_N26
\inst4|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector5~1_combout\ = (\inst4|state.s3~q\ & ((\inst1|en~q\ & ((\inst4|floor~23_combout\))) # (!\inst1|en~q\ & (\inst4|floor\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s3~q\,
	datab => \inst4|floor\(0),
	datac => \inst4|floor~23_combout\,
	datad => \inst1|en~q\,
	combout => \inst4|Selector5~1_combout\);

-- Location: LCCOMB_X24_Y15_N24
\inst4|floor~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~24_combout\ = (\inst4|Selector6~4_combout\ & (\inst4|process_2~0_combout\ & ((\inst4|process_2~1_combout\)))) # (!\inst4|Selector6~4_combout\ & ((\inst4|num\(1) & ((\inst4|process_2~1_combout\))) # (!\inst4|num\(1) & 
-- (\inst4|process_2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_2~0_combout\,
	datab => \inst4|num\(1),
	datac => \inst4|process_2~1_combout\,
	datad => \inst4|Selector6~4_combout\,
	combout => \inst4|floor~24_combout\);

-- Location: LCCOMB_X26_Y15_N20
\inst4|floor~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~30_combout\ = (\inst4|Selector6~4_combout\ & ((\inst4|key_latch\(0)) # ((\inst4|up_latch\(0)) # (!\inst4|process_2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|key_latch\(0),
	datab => \inst4|process_2~1_combout\,
	datac => \inst4|up_latch\(0),
	datad => \inst4|Selector6~4_combout\,
	combout => \inst4|floor~30_combout\);

-- Location: LCCOMB_X24_Y15_N18
\inst4|floor~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~25_combout\ = (\inst4|num\(1) & ((\inst4|floor~30_combout\))) # (!\inst4|num\(1) & (\inst4|floor\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(1),
	datac => \inst4|floor\(0),
	datad => \inst4|floor~30_combout\,
	combout => \inst4|floor~25_combout\);

-- Location: LCCOMB_X24_Y15_N12
\inst4|floor~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|floor~26_combout\ = (\inst4|num\(0) & ((\inst4|floor~25_combout\))) # (!\inst4|num\(0) & (!\inst4|floor~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|floor~24_combout\,
	datac => \inst4|num\(0),
	datad => \inst4|floor~25_combout\,
	combout => \inst4|floor~26_combout\);

-- Location: LCCOMB_X25_Y15_N28
\inst4|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector5~2_combout\ = (\inst4|Selector5~0_combout\) # ((\inst4|Selector5~1_combout\) # ((!\inst4|state.s0~q\ & \inst4|floor~26_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s0~q\,
	datab => \inst4|Selector5~0_combout\,
	datac => \inst4|Selector5~1_combout\,
	datad => \inst4|floor~26_combout\,
	combout => \inst4|Selector5~2_combout\);

-- Location: LCCOMB_X25_Y15_N14
\inst4|Selector5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector5~4_combout\ = (\inst4|Selector5~2_combout\) # ((\inst4|Selector5~3_combout\ & ((\inst4|num\(0)) # (!\inst4|Selector4~9_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector4~9_combout\,
	datab => \inst4|Selector5~3_combout\,
	datac => \inst4|num\(0),
	datad => \inst4|Selector5~2_combout\,
	combout => \inst4|Selector5~4_combout\);

-- Location: LCCOMB_X23_Y17_N2
\inst4|Selector5~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector5~5_combout\ = (\inst4|floor\(0) & (!\inst4|num\(0) & (\inst4|state.s2~q\ & !\inst4|process_2~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|floor\(0),
	datab => \inst4|num\(0),
	datac => \inst4|state.s2~q\,
	datad => \inst4|process_2~3_combout\,
	combout => \inst4|Selector5~5_combout\);

-- Location: LCCOMB_X25_Y15_N4
\inst4|Selector5~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector5~7_combout\ = (\inst4|Selector5~4_combout\) # ((\inst4|num\(1) & ((\inst4|Selector5~6_combout\) # (\inst4|Selector5~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(1),
	datab => \inst4|Selector5~6_combout\,
	datac => \inst4|Selector5~4_combout\,
	datad => \inst4|Selector5~5_combout\,
	combout => \inst4|Selector5~7_combout\);

-- Location: FF_X25_Y15_N5
\inst4|floor[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Selector5~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|floor\(0));

-- Location: LCCOMB_X24_Y14_N20
\inst4|Selector4~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector4~3_combout\ = (\inst4|floor\(1) & (!\inst4|floor\(0) & (\inst4|num\(1) & \inst4|num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|floor\(1),
	datab => \inst4|floor\(0),
	datac => \inst4|num\(1),
	datad => \inst4|num\(0),
	combout => \inst4|Selector4~3_combout\);

-- Location: LCCOMB_X26_Y16_N10
\inst4|down_latch~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|down_latch~0_combout\ = ((\inst4|down_latch\(0) & ((!\inst4|Selector4~3_combout\) # (!\inst4|Equal1~0_combout\)))) # (!\inst3|douc~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111010111110101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst3|douc~q\,
	datab => \inst4|Equal1~0_combout\,
	datac => \inst4|down_latch\(0),
	datad => \inst4|Selector4~3_combout\,
	combout => \inst4|down_latch~0_combout\);

-- Location: FF_X26_Y16_N11
\inst4|down_latch[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|down_latch~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|down_latch\(0));

-- Location: LCCOMB_X24_Y16_N22
\inst4|direction~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|direction~3_combout\ = (\inst4|key_latch\(1) & (((\inst4|direction\(0))))) # (!\inst4|key_latch\(1) & ((\inst4|up_latch\(1)) # ((!\inst4|down_latch\(0) & \inst4|direction\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101100001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|up_latch\(1),
	datab => \inst4|down_latch\(0),
	datac => \inst4|key_latch\(1),
	datad => \inst4|direction\(0),
	combout => \inst4|direction~3_combout\);

-- Location: LCCOMB_X24_Y16_N0
\inst4|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~2_combout\ = (\inst4|num\(1) & (((\inst4|direction~3_combout\ & \inst4|state~16_combout\)))) # (!\inst4|num\(1) & (\inst4|direction\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|direction\(0),
	datab => \inst4|num\(1),
	datac => \inst4|direction~3_combout\,
	datad => \inst4|state~16_combout\,
	combout => \inst4|Selector1~2_combout\);

-- Location: LCCOMB_X26_Y16_N28
\inst4|Selector1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~3_combout\ = (\inst4|num\(0) & (\inst4|state.s2~q\ & \inst4|Selector1~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(0),
	datac => \inst4|state.s2~q\,
	datad => \inst4|Selector1~2_combout\,
	combout => \inst4|Selector1~3_combout\);

-- Location: LCCOMB_X24_Y15_N16
\inst4|Selector1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~11_combout\ = (!\inst4|state.s0~q\ & (((!\inst4|Selector6~4_combout\) # (!\inst4|process_2~1_combout\)) # (!\inst4|process_2~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_2~0_combout\,
	datab => \inst4|state.s0~q\,
	datac => \inst4|process_2~1_combout\,
	datad => \inst4|Selector6~4_combout\,
	combout => \inst4|Selector1~11_combout\);

-- Location: LCCOMB_X24_Y15_N10
\inst4|Selector1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~12_combout\ = (\inst4|state.s3~q\ & ((\inst1|en~q\) # ((\inst4|floor\(1) & \inst4|Equal7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|floor\(1),
	datab => \inst4|state.s3~q\,
	datac => \inst4|Equal7~0_combout\,
	datad => \inst1|en~q\,
	combout => \inst4|Selector1~12_combout\);

-- Location: LCCOMB_X24_Y15_N4
\inst4|Selector1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~13_combout\ = (\inst4|state.s2~q\) # ((\inst4|Selector1~11_combout\) # ((\inst4|state.s1~q\) # (\inst4|Selector1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s2~q\,
	datab => \inst4|Selector1~11_combout\,
	datac => \inst4|state.s1~q\,
	datad => \inst4|Selector1~12_combout\,
	combout => \inst4|Selector1~13_combout\);

-- Location: LCCOMB_X25_Y14_N12
\inst5|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~0_combout\ = (\inst4|num\(1) & \inst4|num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|num\(1),
	datad => \inst4|num\(0),
	combout => \inst5|Mux0~0_combout\);

-- Location: LCCOMB_X24_Y17_N14
\inst4|Selector1~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~15_combout\ = (\inst4|state.s1~q\ & ((\inst4|floor\(0)) # ((\inst4|direction~3_combout\) # (!\inst4|floor\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|floor\(0),
	datab => \inst4|state.s1~q\,
	datac => \inst4|direction~3_combout\,
	datad => \inst4|floor\(1),
	combout => \inst4|Selector1~15_combout\);

-- Location: LCCOMB_X26_Y15_N4
\inst4|direction~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|direction~1_combout\ = (\inst4|up_latch\(0)) # ((\inst4|key_latch\(1)) # ((\inst4|key_latch\(0)) # (\inst4|down_latch\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|up_latch\(0),
	datab => \inst4|key_latch\(1),
	datac => \inst4|key_latch\(0),
	datad => \inst4|down_latch\(0),
	combout => \inst4|direction~1_combout\);

-- Location: LCCOMB_X25_Y14_N22
\inst5|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~1_combout\ = (!\inst4|num\(1) & !\inst4|num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|num\(1),
	datad => \inst4|num\(0),
	combout => \inst5|Mux0~1_combout\);

-- Location: LCCOMB_X24_Y17_N18
\inst4|Selector1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~7_combout\ = (\inst4|process_2~1_combout\ & (\inst4|up_latch\(1) & ((!\inst5|Mux0~1_combout\)))) # (!\inst4|process_2~1_combout\ & (((\inst4|up_latch\(1) & !\inst5|Mux0~1_combout\)) # (!\inst4|direction~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010111001101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|process_2~1_combout\,
	datab => \inst4|up_latch\(1),
	datac => \inst4|direction~1_combout\,
	datad => \inst5|Mux0~1_combout\,
	combout => \inst4|Selector1~7_combout\);

-- Location: LCCOMB_X24_Y17_N4
\inst4|Selector1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~8_combout\ = (\inst5|Mux0~0_combout\ & ((\inst4|Selector1~15_combout\) # ((!\inst4|state.s0~q\ & \inst4|Selector1~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s0~q\,
	datab => \inst5|Mux0~0_combout\,
	datac => \inst4|Selector1~15_combout\,
	datad => \inst4|Selector1~7_combout\,
	combout => \inst4|Selector1~8_combout\);

-- Location: LCCOMB_X24_Y17_N20
\inst4|Selector1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~4_combout\ = (\inst4|state.s1~q\ & (((!\inst4|num\(0))) # (!\inst4|num\(1)))) # (!\inst4|state.s1~q\ & (!\inst4|state.s0~q\ & (\inst4|num\(1) $ (\inst4|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010111001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(1),
	datab => \inst4|state.s1~q\,
	datac => \inst4|state.s0~q\,
	datad => \inst4|num\(0),
	combout => \inst4|Selector1~4_combout\);

-- Location: LCCOMB_X24_Y17_N24
\inst4|Selector1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~6_combout\ = (\inst4|Selector1~5_combout\ & ((\inst4|Selector1~4_combout\) # ((\inst4|floor\(1)) # (\inst1|en~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector1~5_combout\,
	datab => \inst4|Selector1~4_combout\,
	datac => \inst4|floor\(1),
	datad => \inst1|en~q\,
	combout => \inst4|Selector1~6_combout\);

-- Location: LCCOMB_X24_Y17_N26
\inst4|Selector1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~10_combout\ = (\inst4|Selector1~8_combout\) # ((\inst4|Selector1~6_combout\) # ((\inst4|Selector1~9_combout\ & \inst4|Selector6~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector1~9_combout\,
	datab => \inst4|Selector6~5_combout\,
	datac => \inst4|Selector1~8_combout\,
	datad => \inst4|Selector1~6_combout\,
	combout => \inst4|Selector1~10_combout\);

-- Location: LCCOMB_X25_Y15_N18
\inst4|Selector1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector1~14_combout\ = (\inst4|Selector1~3_combout\) # ((\inst4|Selector1~10_combout\) # ((\inst5|Mux0~1_combout\ & \inst4|Selector1~13_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~1_combout\,
	datab => \inst4|Selector1~3_combout\,
	datac => \inst4|Selector1~13_combout\,
	datad => \inst4|Selector1~10_combout\,
	combout => \inst4|Selector1~14_combout\);

-- Location: FF_X25_Y15_N19
\inst4|direction[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Selector1~14_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|direction\(0));

-- Location: LCCOMB_X24_Y16_N14
\inst4|num~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|num~13_combout\ = (\inst4|num\(0) & (\inst4|direction\(1) & !\inst4|direction\(0))) # (!\inst4|num\(0) & (!\inst4|direction\(1) & \inst4|direction\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|num\(0),
	datac => \inst4|direction\(1),
	datad => \inst4|direction\(0),
	combout => \inst4|num~13_combout\);

-- Location: LCCOMB_X24_Y14_N0
\inst4|num~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|num~10_combout\ = \inst4|num\(1) $ (((\inst4|num~13_combout\ & !\inst4|Equal2~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|num~13_combout\,
	datac => \inst4|num\(1),
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|num~10_combout\);

-- Location: FF_X24_Y14_N1
\inst4|num[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|num~10_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|stop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|num\(1));

-- Location: LCCOMB_X23_Y17_N14
\inst4|Selector8~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector8~1_combout\ = (\inst4|state.s2~q\ & ((\inst4|num\(1) & ((!\inst4|state~16_combout\) # (!\inst4|num\(0)))) # (!\inst4|num\(1) & (\inst4|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s2~q\,
	datab => \inst4|num\(1),
	datac => \inst4|num\(0),
	datad => \inst4|state~16_combout\,
	combout => \inst4|Selector8~1_combout\);

-- Location: LCCOMB_X24_Y15_N8
\inst4|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector2~1_combout\ = (\inst4|num\(1) & !\inst4|state.s0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|num\(1),
	datad => \inst4|state.s0~q\,
	combout => \inst4|Selector2~1_combout\);

-- Location: LCCOMB_X25_Y14_N16
\inst5|Mux0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|Mux0~2_combout\ = (\inst4|num\(1) & !\inst4|num\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|num\(1),
	datad => \inst4|num\(0),
	combout => \inst5|Mux0~2_combout\);

-- Location: LCCOMB_X24_Y15_N0
\inst4|Selector8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector8~2_combout\ = (\inst4|Selector8~0_combout\ & ((\inst4|floor\(0) & (!\inst4|floor\(1))) # (!\inst4|floor\(0) & (\inst4|floor\(1) & \inst5|Mux0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|floor\(0),
	datab => \inst4|floor\(1),
	datac => \inst5|Mux0~2_combout\,
	datad => \inst4|Selector8~0_combout\,
	combout => \inst4|Selector8~2_combout\);

-- Location: LCCOMB_X24_Y15_N6
\inst4|Selector8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector8~4_combout\ = (\inst4|Selector8~1_combout\) # ((\inst4|Selector8~2_combout\) # ((\inst4|Selector8~3_combout\ & \inst4|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector8~3_combout\,
	datab => \inst4|Selector8~1_combout\,
	datac => \inst4|Selector2~1_combout\,
	datad => \inst4|Selector8~2_combout\,
	combout => \inst4|Selector8~4_combout\);

-- Location: FF_X24_Y15_N7
\inst4|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Selector8~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|state.s2~q\);

-- Location: LCCOMB_X25_Y15_N24
\inst4|Selector0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~11_combout\ = (\inst4|num\(0) & (!\inst4|num\(1) & ((\inst4|state.s2~q\) # (!\inst4|state.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(0),
	datab => \inst4|state.s2~q\,
	datac => \inst4|num\(1),
	datad => \inst4|state.s0~q\,
	combout => \inst4|Selector0~11_combout\);

-- Location: LCCOMB_X24_Y16_N4
\inst4|Selector0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~8_combout\ = (\inst4|num\(1) & (!\inst4|num\(0))) # (!\inst4|num\(1) & ((\inst4|direction\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011111100110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|num\(0),
	datac => \inst4|num\(1),
	datad => \inst4|direction\(1),
	combout => \inst4|Selector0~8_combout\);

-- Location: LCCOMB_X24_Y16_N10
\inst4|direction~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|direction~0_combout\ = (\inst4|key_latch\(1) & (((\inst4|direction\(1))))) # (!\inst4|key_latch\(1) & (!\inst4|up_latch\(1) & ((\inst4|down_latch\(0)) # (\inst4|direction\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|key_latch\(1),
	datab => \inst4|down_latch\(0),
	datac => \inst4|up_latch\(1),
	datad => \inst4|direction\(1),
	combout => \inst4|direction~0_combout\);

-- Location: LCCOMB_X23_Y17_N24
\inst4|Selector0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~9_combout\ = (\inst4|Selector0~8_combout\) # ((\inst4|state~16_combout\ & (\inst5|Mux0~0_combout\ & \inst4|direction~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state~16_combout\,
	datab => \inst4|Selector0~8_combout\,
	datac => \inst5|Mux0~0_combout\,
	datad => \inst4|direction~0_combout\,
	combout => \inst4|Selector0~9_combout\);

-- Location: LCCOMB_X25_Y15_N10
\inst4|Selector0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~6_combout\ = (\inst4|direction\(1) & !\inst1|en~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst4|direction\(1),
	datad => \inst1|en~q\,
	combout => \inst4|Selector0~6_combout\);

-- Location: LCCOMB_X24_Y14_N24
\inst4|Selector0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~4_combout\ = (\inst4|floor\(1) & (!\inst4|floor\(0) & ((!\inst4|num\(0)) # (!\inst4|num\(1))))) # (!\inst4|floor\(1) & (\inst4|floor\(0) & ((\inst4|num\(1)) # (\inst4|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100011001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|floor\(1),
	datab => \inst4|floor\(0),
	datac => \inst4|num\(1),
	datad => \inst4|num\(0),
	combout => \inst4|Selector0~4_combout\);

-- Location: LCCOMB_X25_Y15_N16
\inst4|Selector0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~5_combout\ = (\inst1|en~q\ & (\inst4|direction~2_combout\)) # (!\inst1|en~q\ & (\inst4|Selector0~4_combout\ & ((\inst4|direction~2_combout\) # (\inst4|floor\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|direction~2_combout\,
	datab => \inst4|floor\(0),
	datac => \inst4|Selector0~4_combout\,
	datad => \inst1|en~q\,
	combout => \inst4|Selector0~5_combout\);

-- Location: LCCOMB_X25_Y15_N20
\inst4|Selector0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~7_combout\ = (\inst4|state.s3~q\ & ((\inst4|Selector0~5_combout\) # ((!\inst4|Equal7~0_combout\ & \inst4|Selector0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s3~q\,
	datab => \inst4|Equal7~0_combout\,
	datac => \inst4|Selector0~6_combout\,
	datad => \inst4|Selector0~5_combout\,
	combout => \inst4|Selector0~7_combout\);

-- Location: LCCOMB_X25_Y15_N6
\inst4|Selector0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~10_combout\ = (\inst4|Selector0~7_combout\) # ((!\inst5|Mux0~1_combout\ & (\inst4|state.s1~q\ & \inst4|Selector0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|Mux0~1_combout\,
	datab => \inst4|state.s1~q\,
	datac => \inst4|Selector0~9_combout\,
	datad => \inst4|Selector0~7_combout\,
	combout => \inst4|Selector0~10_combout\);

-- Location: LCCOMB_X25_Y15_N0
\inst4|Selector0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector0~12_combout\ = (\inst4|Selector0~3_combout\) # ((\inst4|Selector0~10_combout\) # ((\inst4|Selector0~11_combout\ & \inst4|direction\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|Selector0~3_combout\,
	datab => \inst4|Selector0~11_combout\,
	datac => \inst4|direction\(1),
	datad => \inst4|Selector0~10_combout\,
	combout => \inst4|Selector0~12_combout\);

-- Location: FF_X25_Y15_N1
\inst4|direction[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Selector0~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|direction\(1));

-- Location: LCCOMB_X24_Y16_N8
\inst4|num~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|num~12_combout\ = \inst4|num\(0) $ (((!\inst4|Equal2~8_combout\ & (\inst4|direction\(0) $ (\inst4|direction\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|direction\(0),
	datab => \inst4|direction\(1),
	datac => \inst4|num\(0),
	datad => \inst4|Equal2~8_combout\,
	combout => \inst4|num~12_combout\);

-- Location: FF_X24_Y16_N9
\inst4|num[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|num~12_combout\,
	clrn => \rst~input_o\,
	ena => \inst4|stop~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|num\(0));

-- Location: LCCOMB_X23_Y17_N20
\inst4|Selector2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector2~6_combout\ = (\inst4|num\(0) & ((\inst4|num\(1) & (\inst4|state~16_combout\)) # (!\inst4|num\(1) & ((\inst4|door~q\))))) # (!\inst4|num\(0) & (((!\inst4|num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000111110000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state~16_combout\,
	datab => \inst4|num\(0),
	datac => \inst4|num\(1),
	datad => \inst4|door~q\,
	combout => \inst4|Selector2~6_combout\);

-- Location: LCCOMB_X23_Y17_N8
\inst4|Selector2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector2~4_combout\ = (\inst4|num\(0) & ((\inst4|num\(1) & (\inst4|state~16_combout\)) # (!\inst4|num\(1) & ((\inst4|door~q\))))) # (!\inst4|num\(0) & (((\inst4|num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state~16_combout\,
	datab => \inst4|num\(0),
	datac => \inst4|num\(1),
	datad => \inst4|door~q\,
	combout => \inst4|Selector2~4_combout\);

-- Location: LCCOMB_X23_Y17_N26
\inst4|Selector2~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector2~5_combout\ = (\inst4|state.s3~q\ & (((\inst4|Selector2~4_combout\ & \inst4|state.s1~q\)) # (!\inst4|state~17_combout\))) # (!\inst4|state.s3~q\ & (\inst4|Selector2~4_combout\ & ((\inst4|state.s1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s3~q\,
	datab => \inst4|Selector2~4_combout\,
	datac => \inst4|state~17_combout\,
	datad => \inst4|state.s1~q\,
	combout => \inst4|Selector2~5_combout\);

-- Location: LCCOMB_X23_Y17_N28
\inst4|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector2~0_combout\ = (\inst4|state.s3~q\ & ((\inst4|state~16_combout\) # ((!\inst4|state.s0~q\ & !\inst4|num\(1))))) # (!\inst4|state.s3~q\ & (!\inst4|state.s0~q\ & (!\inst4|num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s3~q\,
	datab => \inst4|state.s0~q\,
	datac => \inst4|num\(1),
	datad => \inst4|state~16_combout\,
	combout => \inst4|Selector2~0_combout\);

-- Location: LCCOMB_X24_Y15_N2
\inst4|Selector2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector2~2_combout\ = (\inst4|door~q\ & ((\inst4|Selector2~0_combout\) # ((!\inst4|Selector6~4_combout\ & \inst4|Selector2~1_combout\)))) # (!\inst4|door~q\ & (!\inst4|Selector6~4_combout\ & (\inst4|Selector2~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|door~q\,
	datab => \inst4|Selector6~4_combout\,
	datac => \inst4|Selector2~1_combout\,
	datad => \inst4|Selector2~0_combout\,
	combout => \inst4|Selector2~2_combout\);

-- Location: LCCOMB_X23_Y17_N6
\inst4|Selector2~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector2~3_combout\ = (\inst4|door~0_combout\ & (((\inst4|num\(0) & \inst4|Selector2~2_combout\)) # (!\inst4|state.s0~q\))) # (!\inst4|door~0_combout\ & (((\inst4|num\(0) & \inst4|Selector2~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|door~0_combout\,
	datab => \inst4|state.s0~q\,
	datac => \inst4|num\(0),
	datad => \inst4|Selector2~2_combout\,
	combout => \inst4|Selector2~3_combout\);

-- Location: LCCOMB_X23_Y17_N0
\inst4|Selector2~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst4|Selector2~7_combout\ = (\inst4|Selector2~5_combout\) # ((\inst4|Selector2~3_combout\) # ((\inst4|state.s2~q\ & \inst4|Selector2~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|state.s2~q\,
	datab => \inst4|Selector2~6_combout\,
	datac => \inst4|Selector2~5_combout\,
	datad => \inst4|Selector2~3_combout\,
	combout => \inst4|Selector2~7_combout\);

-- Location: FF_X23_Y17_N1
\inst4|door\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst4|Selector2~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst4|door~q\);

-- Location: LCCOMB_X22_Y18_N26
\inst16|data_24~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~20_combout\ = (\inst16|data\(19) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|data\(19),
	datad => \inst4|door~q\,
	combout => \inst16|data_24~20_combout\);

-- Location: LCCOMB_X22_Y20_N16
\inst16|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~0_combout\ = \inst16|count\(0) $ (VCC)
-- \inst16|Add0~1\ = CARRY(\inst16|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count\(0),
	datad => VCC,
	combout => \inst16|Add0~0_combout\,
	cout => \inst16|Add0~1\);

-- Location: LCCOMB_X22_Y20_N28
\inst16|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~2_combout\ = (\inst4|door~q\ & (\inst16|state.t2~q\ & \inst16|Add0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|door~q\,
	datac => \inst16|state.t2~q\,
	datad => \inst16|Add0~0_combout\,
	combout => \inst16|Add0~2_combout\);

-- Location: LCCOMB_X22_Y20_N18
\inst16|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~3_combout\ = (\inst16|count\(1) & (\inst16|Add0~1\ & VCC)) # (!\inst16|count\(1) & (!\inst16|Add0~1\))
-- \inst16|Add0~4\ = CARRY((!\inst16|count\(1) & !\inst16|Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(1),
	datad => VCC,
	cin => \inst16|Add0~1\,
	combout => \inst16|Add0~3_combout\,
	cout => \inst16|Add0~4\);

-- Location: LCCOMB_X22_Y20_N20
\inst16|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~6_combout\ = (\inst16|count\(2) & ((GND) # (!\inst16|Add0~4\))) # (!\inst16|count\(2) & (\inst16|Add0~4\ $ (GND)))
-- \inst16|Add0~7\ = CARRY((\inst16|count\(2)) # (!\inst16|Add0~4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count\(2),
	datad => VCC,
	cin => \inst16|Add0~4\,
	combout => \inst16|Add0~6_combout\,
	cout => \inst16|Add0~7\);

-- Location: LCCOMB_X22_Y20_N8
\inst16|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~8_combout\ = (\inst4|door~q\ & (\inst16|state.t2~q\ & \inst16|Add0~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|door~q\,
	datac => \inst16|state.t2~q\,
	datad => \inst16|Add0~6_combout\,
	combout => \inst16|Add0~8_combout\);

-- Location: FF_X22_Y20_N9
\inst16|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Add0~8_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count\(2));

-- Location: LCCOMB_X22_Y20_N22
\inst16|Add0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~9_combout\ = (\inst16|count\(3) & (!\inst16|Add0~7\)) # (!\inst16|count\(3) & (\inst16|Add0~7\ & VCC))
-- \inst16|Add0~10\ = CARRY((\inst16|count\(3) & !\inst16|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst16|count\(3),
	datad => VCC,
	cin => \inst16|Add0~7\,
	combout => \inst16|Add0~9_combout\,
	cout => \inst16|Add0~10\);

-- Location: LCCOMB_X22_Y20_N2
\inst16|Add0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~11_combout\ = (\inst16|state.t2~q\ & (\inst4|door~q\ & !\inst16|Add0~9_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|state.t2~q\,
	datab => \inst4|door~q\,
	datac => \inst16|Add0~9_combout\,
	combout => \inst16|Add0~11_combout\);

-- Location: FF_X22_Y20_N3
\inst16|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Add0~11_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count\(3));

-- Location: LCCOMB_X22_Y20_N24
\inst16|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~12_combout\ = \inst16|Add0~10\ $ (!\inst16|count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst16|count\(4),
	cin => \inst16|Add0~10\,
	combout => \inst16|Add0~12_combout\);

-- Location: LCCOMB_X22_Y20_N4
\inst16|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~14_combout\ = (\inst4|door~q\ & (\inst16|state.t2~q\ & !\inst16|Add0~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|door~q\,
	datac => \inst16|state.t2~q\,
	datad => \inst16|Add0~12_combout\,
	combout => \inst16|Add0~14_combout\);

-- Location: FF_X22_Y20_N5
\inst16|count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Add0~14_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count\(4));

-- Location: LCCOMB_X22_Y20_N14
\inst16|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Equal0~0_combout\ = (!\inst16|count\(1) & (!\inst16|count\(2) & (\inst16|count\(4) & \inst16|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(1),
	datab => \inst16|count\(2),
	datac => \inst16|count\(4),
	datad => \inst16|count\(3),
	combout => \inst16|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y20_N12
\inst16|count[3]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|count[3]~0_combout\ = (\inst16|state.t3~q\) # ((\inst16|count\(0) & \inst16|state.t1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|state.t3~q\,
	datac => \inst16|count\(0),
	datad => \inst16|state.t1~q\,
	combout => \inst16|count[3]~0_combout\);

-- Location: LCCOMB_X22_Y20_N30
\inst16|count[3]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|count[3]~1_combout\ = ((!\inst16|count[3]~0_combout\ & ((\inst16|Equal0~0_combout\) # (!\inst16|state.t1~q\)))) # (!\inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|state.t1~q\,
	datab => \inst4|door~q\,
	datac => \inst16|Equal0~0_combout\,
	datad => \inst16|count[3]~0_combout\,
	combout => \inst16|count[3]~1_combout\);

-- Location: FF_X22_Y20_N29
\inst16|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Add0~2_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count\(0));

-- Location: LCCOMB_X22_Y20_N26
\inst16|state~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|state~15_combout\ = (\inst16|state.t1~q\ & (\inst4|door~q\ & ((\inst16|count\(0)) # (!\inst16|Equal0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Equal0~0_combout\,
	datab => \inst16|state.t1~q\,
	datac => \inst16|count\(0),
	datad => \inst4|door~q\,
	combout => \inst16|state~15_combout\);

-- Location: FF_X22_Y20_N27
\inst16|state.t2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|state~15_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|state.t2~q\);

-- Location: IOIBUF_X23_Y0_N1
\dout~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dout,
	o => \dout~input_o\);

-- Location: LCCOMB_X21_Y20_N28
\inst16|state~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|state~13_combout\ = (\inst4|door~q\ & (!\inst16|state.t3~q\ & ((\inst16|state.t0~q\) # (!\dout~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout~input_o\,
	datab => \inst4|door~q\,
	datac => \inst16|state.t0~q\,
	datad => \inst16|state.t3~q\,
	combout => \inst16|state~13_combout\);

-- Location: FF_X21_Y20_N29
\inst16|state.t0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|state~13_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|state.t0~q\);

-- Location: LCCOMB_X21_Y20_N24
\inst16|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector30~0_combout\ = (\inst16|state.t2~q\) # ((!\dout~input_o\ & !\inst16|state.t0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|state.t2~q\,
	datac => \dout~input_o\,
	datad => \inst16|state.t0~q\,
	combout => \inst16|Selector30~0_combout\);

-- Location: FF_X21_Y20_N25
\inst16|state.t1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector30~0_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|state.t1~q\);

-- Location: LCCOMB_X22_Y20_N0
\inst16|state~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|state~14_combout\ = (\inst16|Equal0~0_combout\ & (\inst16|state.t1~q\ & (!\inst16|count\(0) & \inst4|door~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Equal0~0_combout\,
	datab => \inst16|state.t1~q\,
	datac => \inst16|count\(0),
	datad => \inst4|door~q\,
	combout => \inst16|state~14_combout\);

-- Location: FF_X22_Y20_N1
\inst16|state.t3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|state~14_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|state.t3~q\);

-- Location: LCCOMB_X22_Y21_N14
\inst16|data_24[7]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24[7]~1_combout\ = (\inst16|state.t3~q\) # (!\inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|state.t3~q\,
	datad => \inst4|door~q\,
	combout => \inst16|data_24[7]~1_combout\);

-- Location: FF_X22_Y18_N27
\inst16|data_24[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~20_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(19));

-- Location: LCCOMB_X22_Y18_N22
\inst16|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector5~0_combout\ = (\dout~input_o\ & (\inst16|state.t2~q\ & !\inst16|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout~input_o\,
	datac => \inst16|state.t2~q\,
	datad => \inst16|count\(4),
	combout => \inst16|Selector5~0_combout\);

-- Location: LCCOMB_X21_Y20_N0
\inst16|state~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|state~12_combout\ = (\inst16|state.t3~q\) # (\inst16|state.t1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|state.t3~q\,
	datad => \inst16|state.t1~q\,
	combout => \inst16|state~12_combout\);

-- Location: LCCOMB_X23_Y18_N18
\inst16|Selector6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector6~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((\inst16|count\(4)) # (!\inst16|Decoder0~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~6_combout\,
	datab => \inst16|count\(4),
	datac => \inst16|state.t2~q\,
	datad => \inst16|state~12_combout\,
	combout => \inst16|Selector6~0_combout\);

-- Location: LCCOMB_X23_Y18_N4
\inst16|Selector6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector6~1_combout\ = (\inst16|Decoder0~6_combout\ & ((\inst16|Selector5~0_combout\) # ((\inst16|data\(22) & \inst16|Selector6~0_combout\)))) # (!\inst16|Decoder0~6_combout\ & (((\inst16|data\(22) & \inst16|Selector6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~6_combout\,
	datab => \inst16|Selector5~0_combout\,
	datac => \inst16|data\(22),
	datad => \inst16|Selector6~0_combout\,
	combout => \inst16|Selector6~1_combout\);

-- Location: FF_X23_Y18_N5
\inst16|data[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector6~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(22));

-- Location: LCCOMB_X23_Y18_N2
\inst16|data_24~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~22_combout\ = (\inst16|data\(22) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|data\(22),
	datad => \inst4|door~q\,
	combout => \inst16|data_24~22_combout\);

-- Location: FF_X23_Y18_N3
\inst16|data_24[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~22_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(22));

-- Location: LCCOMB_X22_Y20_N10
\inst16|Decoder0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Decoder0~15_combout\ = (!\inst16|count\(1) & (!\inst16|count\(0) & (!\inst16|count\(2) & !\inst16|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(1),
	datab => \inst16|count\(0),
	datac => \inst16|count\(2),
	datad => \inst16|count\(3),
	combout => \inst16|Decoder0~15_combout\);

-- Location: LCCOMB_X22_Y18_N6
\inst16|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector5~1_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((\inst16|count\(4)) # (!\inst16|Decoder0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|state.t2~q\,
	datab => \inst16|count\(4),
	datac => \inst16|Decoder0~15_combout\,
	datad => \inst16|state~12_combout\,
	combout => \inst16|Selector5~1_combout\);

-- Location: LCCOMB_X22_Y18_N0
\inst16|Selector5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector5~2_combout\ = (\inst16|Decoder0~15_combout\ & ((\inst16|Selector5~0_combout\) # ((\inst16|data\(23) & \inst16|Selector5~1_combout\)))) # (!\inst16|Decoder0~15_combout\ & (((\inst16|data\(23) & \inst16|Selector5~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~15_combout\,
	datab => \inst16|Selector5~0_combout\,
	datac => \inst16|data\(23),
	datad => \inst16|Selector5~1_combout\,
	combout => \inst16|Selector5~2_combout\);

-- Location: FF_X22_Y18_N1
\inst16|data[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector5~2_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(23));

-- Location: LCCOMB_X22_Y18_N4
\inst16|data_24~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~21_combout\ = (\inst4|door~q\ & \inst16|data\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|door~q\,
	datad => \inst16|data\(23),
	combout => \inst16|data_24~21_combout\);

-- Location: FF_X22_Y18_N5
\inst16|data_24[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~21_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(23));

-- Location: LCCOMB_X22_Y20_N6
\inst16|Add0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Add0~5_combout\ = (\inst4|door~q\ & (\inst16|state.t2~q\ & \inst16|Add0~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|door~q\,
	datac => \inst16|state.t2~q\,
	datad => \inst16|Add0~3_combout\,
	combout => \inst16|Add0~5_combout\);

-- Location: FF_X22_Y20_N7
\inst16|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Add0~5_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|count[3]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|count\(1));

-- Location: LCCOMB_X23_Y18_N22
\inst16|Decoder0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Decoder0~12_combout\ = (\inst16|count\(3) & (!\inst16|count\(0) & (\inst16|count\(2) & \inst16|count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(3),
	datab => \inst16|count\(0),
	datac => \inst16|count\(2),
	datad => \inst16|count\(1),
	combout => \inst16|Decoder0~12_combout\);

-- Location: LCCOMB_X23_Y18_N28
\inst16|Selector7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector7~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((\inst16|count\(4)) # (!\inst16|Decoder0~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|state.t2~q\,
	datab => \inst16|count\(4),
	datac => \inst16|Decoder0~12_combout\,
	datad => \inst16|state~12_combout\,
	combout => \inst16|Selector7~0_combout\);

-- Location: LCCOMB_X23_Y18_N14
\inst16|Selector7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector7~1_combout\ = (\inst16|Decoder0~12_combout\ & ((\inst16|Selector5~0_combout\) # ((\inst16|data\(21) & \inst16|Selector7~0_combout\)))) # (!\inst16|Decoder0~12_combout\ & (((\inst16|data\(21) & \inst16|Selector7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~12_combout\,
	datab => \inst16|Selector5~0_combout\,
	datac => \inst16|data\(21),
	datad => \inst16|Selector7~0_combout\,
	combout => \inst16|Selector7~1_combout\);

-- Location: FF_X23_Y18_N15
\inst16|data[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector7~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(21));

-- Location: LCCOMB_X23_Y18_N12
\inst16|data_24~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~23_combout\ = (\inst16|data\(21) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|data\(21),
	datad => \inst4|door~q\,
	combout => \inst16|data_24~23_combout\);

-- Location: FF_X23_Y18_N13
\inst16|data_24[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~23_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(21));

-- Location: LCCOMB_X23_Y18_N0
\inst16|LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|LessThan0~6_combout\ = (\inst16|data_24\(20)) # ((\inst16|data_24\(22)) # ((\inst16|data_24\(23)) # (\inst16|data_24\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|data_24\(20),
	datab => \inst16|data_24\(22),
	datac => \inst16|data_24\(23),
	datad => \inst16|data_24\(21),
	combout => \inst16|LessThan0~6_combout\);

-- Location: LCCOMB_X21_Y20_N6
\inst16|Decoder0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Decoder0~5_combout\ = (!\inst16|count\(3) & (\inst16|count\(2) & (\inst16|count\(1) & !\inst16|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(3),
	datab => \inst16|count\(2),
	datac => \inst16|count\(1),
	datad => \inst16|count\(0),
	combout => \inst16|Decoder0~5_combout\);

-- Location: LCCOMB_X21_Y20_N8
\inst16|Selector15~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector15~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((!\inst16|Decoder0~5_combout\) # (!\inst16|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(4),
	datab => \inst16|state~12_combout\,
	datac => \inst16|state.t2~q\,
	datad => \inst16|Decoder0~5_combout\,
	combout => \inst16|Selector15~0_combout\);

-- Location: LCCOMB_X22_Y18_N18
\inst16|Selector14~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector14~0_combout\ = (\dout~input_o\ & (\inst16|state.t2~q\ & \inst16|count\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dout~input_o\,
	datac => \inst16|state.t2~q\,
	datad => \inst16|count\(4),
	combout => \inst16|Selector14~0_combout\);

-- Location: LCCOMB_X21_Y20_N2
\inst16|Selector15~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector15~1_combout\ = (\inst16|Decoder0~5_combout\ & ((\inst16|Selector14~0_combout\) # ((\inst16|Selector15~0_combout\ & \inst16|data\(13))))) # (!\inst16|Decoder0~5_combout\ & (\inst16|Selector15~0_combout\ & (\inst16|data\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~5_combout\,
	datab => \inst16|Selector15~0_combout\,
	datac => \inst16|data\(13),
	datad => \inst16|Selector14~0_combout\,
	combout => \inst16|Selector15~1_combout\);

-- Location: FF_X21_Y20_N3
\inst16|data[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector15~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(13));

-- Location: LCCOMB_X21_Y21_N20
\inst16|data_24~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~6_combout\ = (\inst4|door~q\ & \inst16|data\(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|door~q\,
	datac => \inst16|data\(13),
	combout => \inst16|data_24~6_combout\);

-- Location: FF_X21_Y21_N21
\inst16|data_24[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~6_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(13));

-- Location: LCCOMB_X21_Y21_N14
\inst16|data_24~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~4_combout\ = (\inst16|data\(15) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|data\(15),
	datac => \inst4|door~q\,
	combout => \inst16|data_24~4_combout\);

-- Location: FF_X21_Y21_N15
\inst16|data_24[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~4_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(15));

-- Location: LCCOMB_X21_Y21_N4
\inst16|data_24~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~3_combout\ = (\inst16|data\(16) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|data\(16),
	datac => \inst4|door~q\,
	combout => \inst16|data_24~3_combout\);

-- Location: FF_X21_Y21_N5
\inst16|data_24[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~3_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(16));

-- Location: LCCOMB_X21_Y20_N22
\inst16|Decoder0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Decoder0~0_combout\ = (\inst16|count\(1) & (\inst16|count\(0) & (!\inst16|count\(2) & \inst16|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(1),
	datab => \inst16|count\(0),
	datac => \inst16|count\(2),
	datad => \inst16|count\(3),
	combout => \inst16|Decoder0~0_combout\);

-- Location: LCCOMB_X21_Y21_N6
\inst16|Selector10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector10~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((\inst16|count\(4)) # (!\inst16|Decoder0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(4),
	datab => \inst16|state~12_combout\,
	datac => \inst16|state.t2~q\,
	datad => \inst16|Decoder0~0_combout\,
	combout => \inst16|Selector10~0_combout\);

-- Location: LCCOMB_X21_Y21_N8
\inst16|Selector10~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector10~1_combout\ = (\inst16|Decoder0~0_combout\ & ((\inst16|Selector5~0_combout\) # ((\inst16|data\(18) & \inst16|Selector10~0_combout\)))) # (!\inst16|Decoder0~0_combout\ & (((\inst16|data\(18) & \inst16|Selector10~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~0_combout\,
	datab => \inst16|Selector5~0_combout\,
	datac => \inst16|data\(18),
	datad => \inst16|Selector10~0_combout\,
	combout => \inst16|Selector10~1_combout\);

-- Location: FF_X21_Y21_N9
\inst16|data[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector10~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(18));

-- Location: LCCOMB_X21_Y21_N0
\inst16|data_24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~0_combout\ = (\inst16|data\(18) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|data\(18),
	datac => \inst4|door~q\,
	combout => \inst16|data_24~0_combout\);

-- Location: FF_X21_Y21_N1
\inst16|data_24[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(18));

-- Location: LCCOMB_X21_Y21_N16
\inst16|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|LessThan0~0_combout\ = (\inst16|data_24\(17) & (\inst16|data_24\(15) & (\inst16|data_24\(16) & \inst16|data_24\(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|data_24\(17),
	datab => \inst16|data_24\(15),
	datac => \inst16|data_24\(16),
	datad => \inst16|data_24\(18),
	combout => \inst16|LessThan0~0_combout\);

-- Location: LCCOMB_X23_Y20_N24
\inst16|Selector20~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector20~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((!\inst16|count\(4)) # (!\inst16|Decoder0~11_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~11_combout\,
	datab => \inst16|count\(4),
	datac => \inst16|state.t2~q\,
	datad => \inst16|state~12_combout\,
	combout => \inst16|Selector20~0_combout\);

-- Location: LCCOMB_X23_Y20_N0
\inst16|Selector20~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector20~1_combout\ = (\inst16|Decoder0~11_combout\ & ((\inst16|Selector14~0_combout\) # ((\inst16|Selector20~0_combout\ & \inst16|data\(8))))) # (!\inst16|Decoder0~11_combout\ & (\inst16|Selector20~0_combout\ & (\inst16|data\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~11_combout\,
	datab => \inst16|Selector20~0_combout\,
	datac => \inst16|data\(8),
	datad => \inst16|Selector14~0_combout\,
	combout => \inst16|Selector20~1_combout\);

-- Location: FF_X23_Y20_N1
\inst16|data[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector20~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(8));

-- Location: LCCOMB_X22_Y21_N4
\inst16|data_24~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~12_combout\ = (\inst16|data\(8) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|data\(8),
	datad => \inst4|door~q\,
	combout => \inst16|data_24~12_combout\);

-- Location: FF_X22_Y21_N5
\inst16|data_24[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~12_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(8));

-- Location: LCCOMB_X23_Y21_N26
\inst16|Decoder0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Decoder0~7_combout\ = (\inst16|count\(2) & (!\inst16|count\(3) & (!\inst16|count\(1) & \inst16|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(2),
	datab => \inst16|count\(3),
	datac => \inst16|count\(1),
	datad => \inst16|count\(0),
	combout => \inst16|Decoder0~7_combout\);

-- Location: LCCOMB_X23_Y21_N12
\inst16|Selector16~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector16~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((!\inst16|Decoder0~7_combout\) # (!\inst16|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(4),
	datab => \inst16|state.t2~q\,
	datac => \inst16|Decoder0~7_combout\,
	datad => \inst16|state~12_combout\,
	combout => \inst16|Selector16~0_combout\);

-- Location: LCCOMB_X23_Y21_N16
\inst16|Selector16~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector16~1_combout\ = (\inst16|Decoder0~7_combout\ & ((\inst16|Selector14~0_combout\) # ((\inst16|data\(12) & \inst16|Selector16~0_combout\)))) # (!\inst16|Decoder0~7_combout\ & (((\inst16|data\(12) & \inst16|Selector16~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~7_combout\,
	datab => \inst16|Selector14~0_combout\,
	datac => \inst16|data\(12),
	datad => \inst16|Selector16~0_combout\,
	combout => \inst16|Selector16~1_combout\);

-- Location: FF_X23_Y21_N17
\inst16|data[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector16~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(12));

-- Location: LCCOMB_X23_Y21_N24
\inst16|data_24~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~8_combout\ = (\inst16|data\(12) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst16|data\(12),
	datad => \inst4|door~q\,
	combout => \inst16|data_24~8_combout\);

-- Location: FF_X23_Y21_N25
\inst16|data_24[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~8_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(12));

-- Location: LCCOMB_X23_Y21_N22
\inst16|data_24~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~11_combout\ = (\inst16|data\(9) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|data\(9),
	datad => \inst4|door~q\,
	combout => \inst16|data_24~11_combout\);

-- Location: FF_X23_Y21_N23
\inst16|data_24[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~11_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(9));

-- Location: LCCOMB_X23_Y21_N2
\inst16|Decoder0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Decoder0~9_combout\ = (!\inst16|count\(2) & (!\inst16|count\(3) & (\inst16|count\(1) & \inst16|count\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(2),
	datab => \inst16|count\(3),
	datac => \inst16|count\(1),
	datad => \inst16|count\(0),
	combout => \inst16|Decoder0~9_combout\);

-- Location: LCCOMB_X23_Y21_N20
\inst16|Selector18~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector18~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((!\inst16|Decoder0~9_combout\) # (!\inst16|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(4),
	datab => \inst16|state.t2~q\,
	datac => \inst16|state~12_combout\,
	datad => \inst16|Decoder0~9_combout\,
	combout => \inst16|Selector18~0_combout\);

-- Location: LCCOMB_X23_Y21_N4
\inst16|Selector18~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector18~1_combout\ = (\inst16|Decoder0~9_combout\ & ((\inst16|Selector14~0_combout\) # ((\inst16|Selector18~0_combout\ & \inst16|data\(10))))) # (!\inst16|Decoder0~9_combout\ & (\inst16|Selector18~0_combout\ & (\inst16|data\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~9_combout\,
	datab => \inst16|Selector18~0_combout\,
	datac => \inst16|data\(10),
	datad => \inst16|Selector14~0_combout\,
	combout => \inst16|Selector18~1_combout\);

-- Location: FF_X23_Y21_N5
\inst16|data[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector18~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(10));

-- Location: LCCOMB_X23_Y21_N28
\inst16|data_24~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~10_combout\ = (\inst16|data\(10) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|data\(10),
	datad => \inst4|door~q\,
	combout => \inst16|data_24~10_combout\);

-- Location: FF_X23_Y21_N29
\inst16|data_24[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~10_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(10));

-- Location: LCCOMB_X23_Y21_N8
\inst16|LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|LessThan0~1_combout\ = (\inst16|data_24\(11)) # ((\inst16|data_24\(12)) # ((\inst16|data_24\(9)) # (\inst16|data_24\(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|data_24\(11),
	datab => \inst16|data_24\(12),
	datac => \inst16|data_24\(9),
	datad => \inst16|data_24\(10),
	combout => \inst16|LessThan0~1_combout\);

-- Location: LCCOMB_X22_Y18_N10
\inst16|Selector21~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector21~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((!\inst16|Decoder0~15_combout\) # (!\inst16|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|state.t2~q\,
	datab => \inst16|count\(4),
	datac => \inst16|Decoder0~15_combout\,
	datad => \inst16|state~12_combout\,
	combout => \inst16|Selector21~0_combout\);

-- Location: LCCOMB_X22_Y18_N20
\inst16|Selector21~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector21~1_combout\ = (\inst16|Decoder0~15_combout\ & ((\inst16|Selector14~0_combout\) # ((\inst16|data\(7) & \inst16|Selector21~0_combout\)))) # (!\inst16|Decoder0~15_combout\ & (((\inst16|data\(7) & \inst16|Selector21~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Decoder0~15_combout\,
	datab => \inst16|Selector14~0_combout\,
	datac => \inst16|data\(7),
	datad => \inst16|Selector21~0_combout\,
	combout => \inst16|Selector21~1_combout\);

-- Location: FF_X22_Y18_N21
\inst16|data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector21~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(7));

-- Location: LCCOMB_X22_Y21_N28
\inst16|data_24~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~19_combout\ = (\inst16|data\(7) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|data\(7),
	datad => \inst4|door~q\,
	combout => \inst16|data_24~19_combout\);

-- Location: FF_X22_Y21_N29
\inst16|data_24[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~19_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(7));

-- Location: LCCOMB_X21_Y20_N4
\inst16|Decoder0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Decoder0~2_combout\ = (!\inst16|count\(1) & (\inst16|count\(0) & (!\inst16|count\(2) & \inst16|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(1),
	datab => \inst16|count\(0),
	datac => \inst16|count\(2),
	datad => \inst16|count\(3),
	combout => \inst16|Decoder0~2_combout\);

-- Location: LCCOMB_X21_Y20_N20
\inst16|Selector28~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector28~1_combout\ = (\inst16|Selector28~0_combout\ & ((\inst16|data\(0)) # ((\inst16|Decoder0~2_combout\ & \inst16|Selector14~0_combout\)))) # (!\inst16|Selector28~0_combout\ & (\inst16|Decoder0~2_combout\ & ((\inst16|Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Selector28~0_combout\,
	datab => \inst16|Decoder0~2_combout\,
	datac => \inst16|data\(0),
	datad => \inst16|Selector14~0_combout\,
	combout => \inst16|Selector28~1_combout\);

-- Location: FF_X21_Y20_N21
\inst16|data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector28~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(0));

-- Location: LCCOMB_X22_Y21_N8
\inst16|data_24~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~14_combout\ = (\inst16|data\(0) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|data\(0),
	datad => \inst4|door~q\,
	combout => \inst16|data_24~14_combout\);

-- Location: FF_X22_Y21_N9
\inst16|data_24[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~14_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(0));

-- Location: LCCOMB_X22_Y18_N14
\inst16|Decoder0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Decoder0~14_combout\ = (!\inst16|count\(1) & (!\inst16|count\(0) & (\inst16|count\(3) & \inst16|count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(1),
	datab => \inst16|count\(0),
	datac => \inst16|count\(3),
	datad => \inst16|count\(2),
	combout => \inst16|Decoder0~14_combout\);

-- Location: LCCOMB_X22_Y18_N16
\inst16|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector25~0_combout\ = (\inst16|state~12_combout\) # ((\inst16|state.t2~q\ & ((!\inst16|Decoder0~14_combout\) # (!\inst16|count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|state.t2~q\,
	datab => \inst16|count\(4),
	datac => \inst16|Decoder0~14_combout\,
	datad => \inst16|state~12_combout\,
	combout => \inst16|Selector25~0_combout\);

-- Location: LCCOMB_X22_Y18_N2
\inst16|Selector25~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector25~1_combout\ = (\inst16|Selector14~0_combout\ & ((\inst16|Decoder0~14_combout\) # ((\inst16|data\(3) & \inst16|Selector25~0_combout\)))) # (!\inst16|Selector14~0_combout\ & (((\inst16|data\(3) & \inst16|Selector25~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Selector14~0_combout\,
	datab => \inst16|Decoder0~14_combout\,
	datac => \inst16|data\(3),
	datad => \inst16|Selector25~0_combout\,
	combout => \inst16|Selector25~1_combout\);

-- Location: FF_X22_Y18_N3
\inst16|data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector25~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(3));

-- Location: LCCOMB_X22_Y21_N20
\inst16|data_24~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~16_combout\ = (\inst16|data\(3) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|data\(3),
	datad => \inst4|door~q\,
	combout => \inst16|data_24~16_combout\);

-- Location: FF_X22_Y21_N21
\inst16|data_24[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~16_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(3));

-- Location: LCCOMB_X21_Y20_N14
\inst16|Selector26~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector26~1_combout\ = (\inst16|Selector26~0_combout\ & ((\inst16|data\(2)) # ((\inst16|Decoder0~0_combout\ & \inst16|Selector14~0_combout\)))) # (!\inst16|Selector26~0_combout\ & (\inst16|Decoder0~0_combout\ & ((\inst16|Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Selector26~0_combout\,
	datab => \inst16|Decoder0~0_combout\,
	datac => \inst16|data\(2),
	datad => \inst16|Selector14~0_combout\,
	combout => \inst16|Selector26~1_combout\);

-- Location: FF_X21_Y20_N15
\inst16|data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector26~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(2));

-- Location: LCCOMB_X22_Y21_N22
\inst16|data_24~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~17_combout\ = (\inst4|door~q\ & \inst16|data\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|door~q\,
	datad => \inst16|data\(2),
	combout => \inst16|data_24~17_combout\);

-- Location: FF_X22_Y21_N23
\inst16|data_24[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~17_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(2));

-- Location: LCCOMB_X21_Y20_N18
\inst16|Decoder0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Decoder0~1_combout\ = (\inst16|count\(1) & (!\inst16|count\(0) & (!\inst16|count\(2) & \inst16|count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|count\(1),
	datab => \inst16|count\(0),
	datac => \inst16|count\(2),
	datad => \inst16|count\(3),
	combout => \inst16|Decoder0~1_combout\);

-- Location: LCCOMB_X21_Y20_N16
\inst16|Selector27~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|Selector27~1_combout\ = (\inst16|Selector27~0_combout\ & ((\inst16|data\(1)) # ((\inst16|Decoder0~1_combout\ & \inst16|Selector14~0_combout\)))) # (!\inst16|Selector27~0_combout\ & (\inst16|Decoder0~1_combout\ & ((\inst16|Selector14~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|Selector27~0_combout\,
	datab => \inst16|Decoder0~1_combout\,
	datac => \inst16|data\(1),
	datad => \inst16|Selector14~0_combout\,
	combout => \inst16|Selector27~1_combout\);

-- Location: FF_X21_Y20_N17
\inst16|data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|Selector27~1_combout\,
	clrn => \rst~input_o\,
	sclr => \inst4|ALT_INV_door~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data\(1));

-- Location: LCCOMB_X22_Y21_N0
\inst16|data_24~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|data_24~18_combout\ = (\inst16|data\(1) & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst16|data\(1),
	datad => \inst4|door~q\,
	combout => \inst16|data_24~18_combout\);

-- Location: FF_X22_Y21_N1
\inst16|data_24[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|data_24~18_combout\,
	clrn => \rst~input_o\,
	ena => \inst16|data_24[7]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|data_24\(1));

-- Location: LCCOMB_X22_Y21_N18
\inst16|LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|LessThan0~2_combout\ = (\inst16|data_24\(4)) # ((\inst16|data_24\(3)) # ((\inst16|data_24\(2)) # (\inst16|data_24\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|data_24\(4),
	datab => \inst16|data_24\(3),
	datac => \inst16|data_24\(2),
	datad => \inst16|data_24\(1),
	combout => \inst16|LessThan0~2_combout\);

-- Location: LCCOMB_X22_Y21_N6
\inst16|LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|LessThan0~3_combout\ = (\inst16|data_24\(7)) # ((\inst16|data_24\(5) & ((\inst16|data_24\(0)) # (\inst16|LessThan0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|data_24\(5),
	datab => \inst16|data_24\(7),
	datac => \inst16|data_24\(0),
	datad => \inst16|LessThan0~2_combout\,
	combout => \inst16|LessThan0~3_combout\);

-- Location: LCCOMB_X22_Y21_N16
\inst16|LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|LessThan0~4_combout\ = (\inst16|LessThan0~1_combout\) # ((\inst16|data_24\(8) & ((\inst16|data_24\(6)) # (\inst16|LessThan0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|data_24\(6),
	datab => \inst16|data_24\(8),
	datac => \inst16|LessThan0~1_combout\,
	datad => \inst16|LessThan0~3_combout\,
	combout => \inst16|LessThan0~4_combout\);

-- Location: LCCOMB_X22_Y21_N2
\inst16|LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|LessThan0~5_combout\ = (\inst16|LessThan0~0_combout\ & ((\inst16|data_24\(14)) # ((\inst16|data_24\(13) & \inst16|LessThan0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|data_24\(14),
	datab => \inst16|data_24\(13),
	datac => \inst16|LessThan0~0_combout\,
	datad => \inst16|LessThan0~4_combout\,
	combout => \inst16|LessThan0~5_combout\);

-- Location: LCCOMB_X22_Y21_N24
\inst16|beep~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|beep~0_combout\ = (\inst4|door~q\ & ((\inst16|data_24\(19)) # ((\inst16|LessThan0~6_combout\) # (\inst16|LessThan0~5_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|door~q\,
	datab => \inst16|data_24\(19),
	datac => \inst16|LessThan0~6_combout\,
	datad => \inst16|LessThan0~5_combout\,
	combout => \inst16|beep~0_combout\);

-- Location: FF_X22_Y21_N25
\inst16|beep\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|beep~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|beep~q\);

-- Location: LCCOMB_X21_Y20_N26
\inst16|pd_sck~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst16|pd_sck~0_combout\ = (\inst16|state.t1~q\ & \inst4|door~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst16|state.t1~q\,
	datac => \inst4|door~q\,
	combout => \inst16|pd_sck~0_combout\);

-- Location: FF_X21_Y20_N27
\inst16|pd_sck\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst|y~clkctrl_outclk\,
	d => \inst16|pd_sck~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst16|pd_sck~q\);

-- Location: LCCOMB_X19_Y14_N8
\inst5|clk2~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|clk2~feeder_combout\ = \inst5|clk2~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|clk2~0_combout\,
	combout => \inst5|clk2~feeder_combout\);

-- Location: FF_X19_Y14_N9
\inst5|clk2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst5|clk2~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|clk2~q\);

-- Location: CLKCTRL_G8
\inst5|clk2~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst5|clk2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst5|clk2~clkctrl_outclk\);

-- Location: LCCOMB_X25_Y14_N26
\inst5|flag~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|flag~0_combout\ = !\inst5|flag~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|flag~q\,
	combout => \inst5|flag~0_combout\);

-- Location: FF_X25_Y14_N27
\inst5|flag\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clk2~clkctrl_outclk\,
	d => \inst5|flag~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|flag~q\);

-- Location: LCCOMB_X25_Y14_N8
\inst5|sel1~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sel1~feeder_combout\ = \inst5|flag~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst5|flag~q\,
	combout => \inst5|sel1~feeder_combout\);

-- Location: FF_X25_Y14_N9
\inst5|sel1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clk2~clkctrl_outclk\,
	d => \inst5|sel1~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sel1~q\);

-- Location: LCCOMB_X25_Y14_N18
\inst5|sel2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|sel2~0_combout\ = (\inst5|flag~q\ & ((\inst4|direction\(1)) # (\inst4|direction\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|direction\(1),
	datac => \inst5|flag~q\,
	datad => \inst4|direction\(0),
	combout => \inst5|sel2~0_combout\);

-- Location: FF_X25_Y14_N19
\inst5|sel2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clk2~clkctrl_outclk\,
	d => \inst5|sel2~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|sel2~q\);

-- Location: LCCOMB_X21_Y22_N30
\inst7|count~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|count~6_combout\ = (\inst7|Add0~16_combout\) # ((!\inst7|Equal0~0_combout\) # (!\inst7|Equal0~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~16_combout\,
	datac => \inst7|Equal0~1_combout\,
	datad => \inst7|Equal0~0_combout\,
	combout => \inst7|count~6_combout\);

-- Location: LCCOMB_X22_Y22_N0
\inst7|count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|count~8_combout\ = (\inst7|Add0~22_combout\ & ((\inst7|Add0~20_combout\) # ((\inst7|count~6_combout\) # (!\inst7|Add0~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~20_combout\,
	datab => \inst7|Add0~22_combout\,
	datac => \inst7|Add0~18_combout\,
	datad => \inst7|count~6_combout\,
	combout => \inst7|count~8_combout\);

-- Location: FF_X22_Y22_N1
\inst7|count[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|count~8_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|count\(11));

-- Location: LCCOMB_X21_Y22_N8
\inst7|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~8_combout\ = (\inst7|count\(4) & (\inst7|Add0~7\ $ (GND))) # (!\inst7|count\(4) & (!\inst7|Add0~7\ & VCC))
-- \inst7|Add0~9\ = CARRY((\inst7|count\(4) & !\inst7|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|count\(4),
	datad => VCC,
	cin => \inst7|Add0~7\,
	combout => \inst7|Add0~8_combout\,
	cout => \inst7|Add0~9\);

-- Location: LCCOMB_X21_Y22_N12
\inst7|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~12_combout\ = (\inst7|count\(6) & (\inst7|Add0~11\ $ (GND))) # (!\inst7|count\(6) & (!\inst7|Add0~11\ & VCC))
-- \inst7|Add0~13\ = CARRY((\inst7|count\(6) & !\inst7|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|count\(6),
	datad => VCC,
	cin => \inst7|Add0~11\,
	combout => \inst7|Add0~12_combout\,
	cout => \inst7|Add0~13\);

-- Location: FF_X21_Y22_N13
\inst7|count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~12_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|count\(6));

-- Location: LCCOMB_X21_Y22_N14
\inst7|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~14_combout\ = (\inst7|count\(7) & (!\inst7|Add0~13\)) # (!\inst7|count\(7) & ((\inst7|Add0~13\) # (GND)))
-- \inst7|Add0~15\ = CARRY((!\inst7|Add0~13\) # (!\inst7|count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|count\(7),
	datad => VCC,
	cin => \inst7|Add0~13\,
	combout => \inst7|Add0~14_combout\,
	cout => \inst7|Add0~15\);

-- Location: LCCOMB_X21_Y22_N16
\inst7|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~16_combout\ = (\inst7|count\(8) & (\inst7|Add0~15\ $ (GND))) # (!\inst7|count\(8) & (!\inst7|Add0~15\ & VCC))
-- \inst7|Add0~17\ = CARRY((\inst7|count\(8) & !\inst7|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|count\(8),
	datad => VCC,
	cin => \inst7|Add0~15\,
	combout => \inst7|Add0~16_combout\,
	cout => \inst7|Add0~17\);

-- Location: FF_X21_Y22_N17
\inst7|count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~16_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|count\(8));

-- Location: LCCOMB_X21_Y22_N18
\inst7|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~18_combout\ = (\inst7|count\(9) & (!\inst7|Add0~17\)) # (!\inst7|count\(9) & ((\inst7|Add0~17\) # (GND)))
-- \inst7|Add0~19\ = CARRY((!\inst7|Add0~17\) # (!\inst7|count\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|count\(9),
	datad => VCC,
	cin => \inst7|Add0~17\,
	combout => \inst7|Add0~18_combout\,
	cout => \inst7|Add0~19\);

-- Location: LCCOMB_X21_Y22_N20
\inst7|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~20_combout\ = (\inst7|count\(10) & (\inst7|Add0~19\ $ (GND))) # (!\inst7|count\(10) & (!\inst7|Add0~19\ & VCC))
-- \inst7|Add0~21\ = CARRY((\inst7|count\(10) & !\inst7|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|count\(10),
	datad => VCC,
	cin => \inst7|Add0~19\,
	combout => \inst7|Add0~20_combout\,
	cout => \inst7|Add0~21\);

-- Location: LCCOMB_X21_Y22_N22
\inst7|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~22_combout\ = \inst7|count\(11) $ (\inst7|Add0~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|count\(11),
	cin => \inst7|Add0~21\,
	combout => \inst7|Add0~22_combout\);

-- Location: LCCOMB_X22_Y22_N14
\inst7|count~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|count~7_combout\ = (\inst7|Add0~18_combout\ & ((\inst7|Add0~20_combout\) # ((\inst7|count~6_combout\) # (!\inst7|Add0~22_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~20_combout\,
	datab => \inst7|Add0~22_combout\,
	datac => \inst7|Add0~18_combout\,
	datad => \inst7|count~6_combout\,
	combout => \inst7|count~7_combout\);

-- Location: FF_X22_Y22_N15
\inst7|count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|count~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|count\(9));

-- Location: LCCOMB_X21_Y22_N28
\inst7|count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|count~2_combout\ = (!\inst7|Add0~16_combout\ & (!\inst7|Add0~20_combout\ & (\inst7|Add0~22_combout\ & \inst7|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~16_combout\,
	datab => \inst7|Add0~20_combout\,
	datac => \inst7|Add0~22_combout\,
	datad => \inst7|Equal0~1_combout\,
	combout => \inst7|count~2_combout\);

-- Location: LCCOMB_X22_Y22_N22
\inst7|count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|count~3_combout\ = (\inst7|Add0~2_combout\ & (((!\inst7|count~2_combout\) # (!\inst7|Equal0~0_combout\)) # (!\inst7|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~2_combout\,
	datab => \inst7|Add0~18_combout\,
	datac => \inst7|Equal0~0_combout\,
	datad => \inst7|count~2_combout\,
	combout => \inst7|count~3_combout\);

-- Location: FF_X22_Y22_N23
\inst7|count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|count~3_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|count\(1));

-- Location: LCCOMB_X21_Y22_N0
\inst7|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~0_combout\ = \inst7|count\(0) $ (VCC)
-- \inst7|Add0~1\ = CARRY(\inst7|count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|count\(0),
	datad => VCC,
	combout => \inst7|Add0~0_combout\,
	cout => \inst7|Add0~1\);

-- Location: LCCOMB_X21_Y22_N4
\inst7|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~4_combout\ = (\inst7|count\(2) & (\inst7|Add0~3\ $ (GND))) # (!\inst7|count\(2) & (!\inst7|Add0~3\ & VCC))
-- \inst7|Add0~5\ = CARRY((\inst7|count\(2) & !\inst7|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|count\(2),
	datad => VCC,
	cin => \inst7|Add0~3\,
	combout => \inst7|Add0~4_combout\,
	cout => \inst7|Add0~5\);

-- Location: FF_X21_Y22_N5
\inst7|count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|Add0~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|count\(2));

-- Location: LCCOMB_X21_Y22_N6
\inst7|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add0~6_combout\ = (\inst7|count\(3) & (!\inst7|Add0~5\)) # (!\inst7|count\(3) & ((\inst7|Add0~5\) # (GND)))
-- \inst7|Add0~7\ = CARRY((!\inst7|Add0~5\) # (!\inst7|count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|count\(3),
	datad => VCC,
	cin => \inst7|Add0~5\,
	combout => \inst7|Add0~6_combout\,
	cout => \inst7|Add0~7\);

-- Location: LCCOMB_X22_Y22_N18
\inst7|count~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|count~4_combout\ = (\inst7|Add0~6_combout\ & (((!\inst7|count~2_combout\) # (!\inst7|Equal0~0_combout\)) # (!\inst7|Add0~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~18_combout\,
	datab => \inst7|Equal0~0_combout\,
	datac => \inst7|Add0~6_combout\,
	datad => \inst7|count~2_combout\,
	combout => \inst7|count~4_combout\);

-- Location: FF_X22_Y22_N19
\inst7|count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|count~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|count\(3));

-- Location: LCCOMB_X21_Y22_N26
\inst7|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~1_combout\ = (\inst7|Add0~10_combout\ & (!\inst7|Add0~8_combout\ & (!\inst7|Add0~14_combout\ & !\inst7|Add0~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~10_combout\,
	datab => \inst7|Add0~8_combout\,
	datac => \inst7|Add0~14_combout\,
	datad => \inst7|Add0~12_combout\,
	combout => \inst7|Equal0~1_combout\);

-- Location: LCCOMB_X22_Y22_N24
\inst7|count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|count~0_combout\ = (\inst7|Add0~18_combout\ & (!\inst7|Add0~20_combout\ & (!\inst7|Add0~16_combout\ & \inst7|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~18_combout\,
	datab => \inst7|Add0~20_combout\,
	datac => \inst7|Add0~16_combout\,
	datad => \inst7|Add0~22_combout\,
	combout => \inst7|count~0_combout\);

-- Location: LCCOMB_X21_Y22_N24
\inst7|count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|count~1_combout\ = (\inst7|Add0~0_combout\ & (((!\inst7|count~0_combout\) # (!\inst7|Equal0~1_combout\)) # (!\inst7|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal0~0_combout\,
	datab => \inst7|Add0~0_combout\,
	datac => \inst7|Equal0~1_combout\,
	datad => \inst7|count~0_combout\,
	combout => \inst7|count~1_combout\);

-- Location: FF_X21_Y22_N25
\inst7|count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|count~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|count\(0));

-- Location: LCCOMB_X22_Y22_N2
\inst7|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~0_combout\ = (\inst7|Add0~2_combout\ & (\inst7|Add0~0_combout\ & (!\inst7|Add0~4_combout\ & \inst7|Add0~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~2_combout\,
	datab => \inst7|Add0~0_combout\,
	datac => \inst7|Add0~4_combout\,
	datad => \inst7|Add0~6_combout\,
	combout => \inst7|Equal0~0_combout\);

-- Location: LCCOMB_X22_Y22_N28
\inst7|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal0~2_combout\ = (!\inst7|Add0~16_combout\ & (\inst7|Add0~18_combout\ & (!\inst7|Add0~20_combout\ & \inst7|Add0~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add0~16_combout\,
	datab => \inst7|Add0~18_combout\,
	datac => \inst7|Add0~20_combout\,
	datad => \inst7|Add0~22_combout\,
	combout => \inst7|Equal0~2_combout\);

-- Location: LCCOMB_X22_Y22_N10
\inst7|clk_s~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|clk_s~0_combout\ = \inst7|clk_s~q\ $ (((\inst7|Equal0~0_combout\ & (\inst7|Equal0~1_combout\ & \inst7|Equal0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|clk_s~q\,
	datab => \inst7|Equal0~0_combout\,
	datac => \inst7|Equal0~1_combout\,
	datad => \inst7|Equal0~2_combout\,
	combout => \inst7|clk_s~0_combout\);

-- Location: LCCOMB_X22_Y22_N8
\inst7|clk_s~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|clk_s~feeder_combout\ = \inst7|clk_s~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|clk_s~0_combout\,
	combout => \inst7|clk_s~feeder_combout\);

-- Location: FF_X22_Y22_N9
\inst7|clk_s\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \inst7|clk_s~feeder_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|clk_s~q\);

-- Location: CLKCTRL_G6
\inst7|clk_s~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \inst7|clk_s~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \inst7|clk_s~clkctrl_outclk\);

-- Location: LCCOMB_X22_Y19_N10
\inst7|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~0_combout\ = \inst7|cnt\(0) $ (VCC)
-- \inst7|Add1~1\ = CARRY(\inst7|cnt\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(0),
	datad => VCC,
	combout => \inst7|Add1~0_combout\,
	cout => \inst7|Add1~1\);

-- Location: LCCOMB_X22_Y19_N14
\inst7|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~4_combout\ = (\inst7|cnt\(2) & (\inst7|Add1~3\ $ (GND))) # (!\inst7|cnt\(2) & ((GND) # (!\inst7|Add1~3\)))
-- \inst7|Add1~5\ = CARRY((!\inst7|Add1~3\) # (!\inst7|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(2),
	datad => VCC,
	cin => \inst7|Add1~3\,
	combout => \inst7|Add1~4_combout\,
	cout => \inst7|Add1~5\);

-- Location: LCCOMB_X22_Y22_N26
\inst7|cnt~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt~6_combout\ = (\inst7|state.s1~q\ & \inst7|Add1~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|state.s1~q\,
	datad => \inst7|Add1~8_combout\,
	combout => \inst7|cnt~6_combout\);

-- Location: FF_X22_Y22_N27
\inst7|cnt[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	d => \inst7|cnt~6_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(4));

-- Location: LCCOMB_X22_Y19_N16
\inst7|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~6_combout\ = (\inst7|cnt\(3) & (\inst7|Add1~5\ & VCC)) # (!\inst7|cnt\(3) & (!\inst7|Add1~5\))
-- \inst7|Add1~7\ = CARRY((!\inst7|cnt\(3) & !\inst7|Add1~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(3),
	datad => VCC,
	cin => \inst7|Add1~5\,
	combout => \inst7|Add1~6_combout\,
	cout => \inst7|Add1~7\);

-- Location: LCCOMB_X22_Y19_N18
\inst7|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~8_combout\ = (\inst7|cnt\(4) & ((GND) # (!\inst7|Add1~7\))) # (!\inst7|cnt\(4) & (\inst7|Add1~7\ $ (GND)))
-- \inst7|Add1~9\ = CARRY((\inst7|cnt\(4)) # (!\inst7|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \inst7|cnt\(4),
	datad => VCC,
	cin => \inst7|Add1~7\,
	combout => \inst7|Add1~8_combout\,
	cout => \inst7|Add1~9\);

-- Location: LCCOMB_X22_Y19_N20
\inst7|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~10_combout\ = (\inst7|cnt\(5) & (!\inst7|Add1~9\)) # (!\inst7|cnt\(5) & (\inst7|Add1~9\ & VCC))
-- \inst7|Add1~11\ = CARRY((\inst7|cnt\(5) & !\inst7|Add1~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(5),
	datad => VCC,
	cin => \inst7|Add1~9\,
	combout => \inst7|Add1~10_combout\,
	cout => \inst7|Add1~11\);

-- Location: LCCOMB_X22_Y19_N22
\inst7|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Add1~12_combout\ = \inst7|Add1~11\ $ (!\inst7|cnt\(6))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \inst7|cnt\(6),
	cin => \inst7|Add1~11\,
	combout => \inst7|Add1~12_combout\);

-- Location: LCCOMB_X23_Y19_N12
\inst7|Equal4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal4~1_combout\ = (\inst7|Add1~8_combout\) # ((\inst7|Add1~10_combout\) # (\inst7|Add1~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add1~8_combout\,
	datac => \inst7|Add1~10_combout\,
	datad => \inst7|Add1~12_combout\,
	combout => \inst7|Equal4~1_combout\);

-- Location: LCCOMB_X21_Y19_N20
\inst7|cnt~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt~2_combout\ = (\inst7|state.s1~q\ & (!\inst7|Add1~4_combout\ & ((\inst7|Equal4~0_combout\) # (\inst7|Equal4~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.s1~q\,
	datab => \inst7|Add1~4_combout\,
	datac => \inst7|Equal4~0_combout\,
	datad => \inst7|Equal4~1_combout\,
	combout => \inst7|cnt~2_combout\);

-- Location: FF_X21_Y19_N21
\inst7|cnt[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	d => \inst7|cnt~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(2));

-- Location: LCCOMB_X23_Y19_N18
\inst7|Equal4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Equal4~0_combout\ = (\inst7|Add1~2_combout\) # ((\inst7|Add1~0_combout\) # ((\inst7|Add1~6_combout\) # (\inst7|Add1~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~2_combout\,
	datab => \inst7|Add1~0_combout\,
	datac => \inst7|Add1~6_combout\,
	datad => \inst7|Add1~4_combout\,
	combout => \inst7|Equal4~0_combout\);

-- Location: LCCOMB_X23_Y19_N10
\inst7|Selector1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Selector1~1_combout\ = (\inst7|Selector1~0_combout\ & (\inst4|door~q\ & ((\inst4|num\(1)) # (!\inst4|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Selector1~0_combout\,
	datab => \inst4|door~q\,
	datac => \inst4|num\(0),
	datad => \inst4|num\(1),
	combout => \inst7|Selector1~1_combout\);

-- Location: LCCOMB_X23_Y19_N14
\inst7|Selector1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Selector1~2_combout\ = (\inst7|Selector1~1_combout\) # ((\inst7|state.s1~q\ & ((\inst7|Equal4~1_combout\) # (\inst7|Equal4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Equal4~1_combout\,
	datab => \inst7|Equal4~0_combout\,
	datac => \inst7|state.s1~q\,
	datad => \inst7|Selector1~1_combout\,
	combout => \inst7|Selector1~2_combout\);

-- Location: FF_X23_Y19_N15
\inst7|state.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	d => \inst7|Selector1~2_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|state.s1~q\);

-- Location: LCCOMB_X22_Y19_N30
\inst7|cnt~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt~8_combout\ = (!\inst7|Add1~8_combout\ & !\inst7|Add1~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add1~8_combout\,
	datad => \inst7|Add1~10_combout\,
	combout => \inst7|cnt~8_combout\);

-- Location: LCCOMB_X22_Y19_N28
\inst7|cnt~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt~9_combout\ = (!\inst7|Add1~12_combout\ & (\inst7|state.s1~q\ & ((\inst7|Equal4~0_combout\) # (!\inst7|cnt~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~12_combout\,
	datab => \inst7|state.s1~q\,
	datac => \inst7|cnt~8_combout\,
	datad => \inst7|Equal4~0_combout\,
	combout => \inst7|cnt~9_combout\);

-- Location: FF_X22_Y19_N29
\inst7|cnt[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	d => \inst7|cnt~9_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(6));

-- Location: LCCOMB_X23_Y19_N24
\inst7|cnt~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt~3_combout\ = (!\inst7|Add1~8_combout\ & !\inst7|Equal4~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst7|Add1~8_combout\,
	datad => \inst7|Equal4~0_combout\,
	combout => \inst7|cnt~3_combout\);

-- Location: LCCOMB_X23_Y19_N20
\inst7|cnt~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt~4_combout\ = (!\inst7|Add1~10_combout\ & (\inst7|state.s1~q\ & ((\inst7|Add1~12_combout\) # (!\inst7|cnt~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Add1~12_combout\,
	datab => \inst7|Add1~10_combout\,
	datac => \inst7|state.s1~q\,
	datad => \inst7|cnt~3_combout\,
	combout => \inst7|cnt~4_combout\);

-- Location: FF_X23_Y19_N21
\inst7|cnt[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	d => \inst7|cnt~4_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(5));

-- Location: LCCOMB_X22_Y19_N6
\inst7|cnt~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt~7_combout\ = (\inst7|state.s1~q\ & \inst7|Add1~6_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|state.s1~q\,
	datad => \inst7|Add1~6_combout\,
	combout => \inst7|cnt~7_combout\);

-- Location: FF_X22_Y19_N7
\inst7|cnt[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	d => \inst7|cnt~7_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(3));

-- Location: LCCOMB_X22_Y19_N26
\inst7|Mux0~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~19_combout\ = (\inst7|data\(98) & (\inst7|cnt\(2) & (!\inst7|cnt\(3) & !\inst7|cnt\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|data\(98),
	datab => \inst7|cnt\(2),
	datac => \inst7|cnt\(3),
	datad => \inst7|cnt\(4),
	combout => \inst7|Mux0~19_combout\);

-- Location: LCCOMB_X23_Y19_N30
\inst7|state~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|state~7_combout\ = (!\busy~input_o\ & (\inst4|door~q\ & ((\inst4|num\(1)) # (!\inst4|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~input_o\,
	datab => \inst4|door~q\,
	datac => \inst4|num\(0),
	datad => \inst4|num\(1),
	combout => \inst7|state~7_combout\);

-- Location: LCCOMB_X23_Y19_N6
\inst7|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Selector2~0_combout\ = (\inst7|state.s1~q\ & (!\inst7|Add1~8_combout\ & (!\inst7|Add1~10_combout\ & !\inst7|Add1~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.s1~q\,
	datab => \inst7|Add1~8_combout\,
	datac => \inst7|Add1~10_combout\,
	datad => \inst7|Add1~12_combout\,
	combout => \inst7|Selector2~0_combout\);

-- Location: LCCOMB_X23_Y19_N28
\inst7|Selector2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Selector2~1_combout\ = (\inst4|door~q\ & ((\inst7|state.s2~q\) # ((!\inst7|Equal4~0_combout\ & \inst7|Selector2~0_combout\)))) # (!\inst4|door~q\ & (!\inst7|Equal4~0_combout\ & ((\inst7|Selector2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011001110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|door~q\,
	datab => \inst7|Equal4~0_combout\,
	datac => \inst7|state.s2~q\,
	datad => \inst7|Selector2~0_combout\,
	combout => \inst7|Selector2~1_combout\);

-- Location: FF_X23_Y19_N29
\inst7|state.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	d => \inst7|Selector2~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|state.s2~q\);

-- Location: LCCOMB_X23_Y19_N0
\inst7|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Selector0~0_combout\ = (\inst4|door~q\ & (((\inst7|state.s0~q\) # (\inst7|state~7_combout\)))) # (!\inst4|door~q\ & (!\inst7|state.s2~q\ & ((\inst7|state.s0~q\) # (\inst7|state~7_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|door~q\,
	datab => \inst7|state.s2~q\,
	datac => \inst7|state.s0~q\,
	datad => \inst7|state~7_combout\,
	combout => \inst7|Selector0~0_combout\);

-- Location: FF_X23_Y19_N1
\inst7|state.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	d => \inst7|Selector0~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|state.s0~q\);

-- Location: FF_X23_Y19_N3
\inst7|data[98]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	asdata => \inst7|state~7_combout\,
	clrn => \rst~input_o\,
	sload => VCC,
	ena => \inst7|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|data\(98));

-- Location: LCCOMB_X22_Y22_N6
\inst7|Mux0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~22_combout\ = (\inst7|cnt\(4) & ((\inst7|cnt\(1) $ (\inst7|cnt\(3))) # (!\inst7|cnt\(2)))) # (!\inst7|cnt\(4) & ((\inst7|cnt\(2)) # ((\inst7|cnt\(1) & \inst7|cnt\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111111010111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(1),
	datab => \inst7|cnt\(4),
	datac => \inst7|cnt\(2),
	datad => \inst7|cnt\(3),
	combout => \inst7|Mux0~22_combout\);

-- Location: LCCOMB_X22_Y22_N16
\inst7|Mux0~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~23_combout\ = (\inst7|Mux0~22_combout\ & (\inst7|cnt\(0) $ (((\inst7|cnt\(3) & !\inst7|cnt\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010011000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(0),
	datab => \inst7|cnt\(3),
	datac => \inst7|cnt\(2),
	datad => \inst7|Mux0~22_combout\,
	combout => \inst7|Mux0~23_combout\);

-- Location: LCCOMB_X22_Y22_N20
\inst7|Mux0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~20_combout\ = (\inst7|cnt\(5) & (\inst7|data\(98) & (\inst7|cnt\(0) $ (\inst7|Mux0~23_combout\)))) # (!\inst7|cnt\(5) & (\inst7|cnt\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(0),
	datab => \inst7|cnt\(5),
	datac => \inst7|data\(98),
	datad => \inst7|Mux0~23_combout\,
	combout => \inst7|Mux0~20_combout\);

-- Location: LCCOMB_X22_Y22_N30
\inst7|Mux0~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~21_combout\ = (\inst7|cnt\(5) & (((\inst7|Mux0~20_combout\)))) # (!\inst7|cnt\(5) & (\inst7|Mux0~19_combout\ & ((\inst7|Mux0~20_combout\) # (!\inst7|cnt\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(1),
	datab => \inst7|cnt\(5),
	datac => \inst7|Mux0~19_combout\,
	datad => \inst7|Mux0~20_combout\,
	combout => \inst7|Mux0~21_combout\);

-- Location: LCCOMB_X21_Y19_N14
\inst7|cnt~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|cnt~5_combout\ = (\inst7|Add1~0_combout\ & \inst7|state.s1~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Add1~0_combout\,
	datad => \inst7|state.s1~q\,
	combout => \inst7|cnt~5_combout\);

-- Location: FF_X21_Y19_N15
\inst7|cnt[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	d => \inst7|cnt~5_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|cnt\(0));

-- Location: LCCOMB_X22_Y19_N8
\inst7|Mux0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~16_combout\ = (\inst7|cnt\(1) & (\inst7|cnt\(0) & (\inst7|cnt\(2) $ (\inst7|cnt\(5))))) # (!\inst7|cnt\(1) & (!\inst7|cnt\(2) & (\inst7|cnt\(5) $ (\inst7|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(1),
	datab => \inst7|cnt\(2),
	datac => \inst7|cnt\(5),
	datad => \inst7|cnt\(0),
	combout => \inst7|Mux0~16_combout\);

-- Location: LCCOMB_X22_Y19_N0
\inst7|Mux0~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~17_combout\ = (\inst7|Mux0~16_combout\ & \inst7|data\(98))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|Mux0~16_combout\,
	datad => \inst7|data\(98),
	combout => \inst7|Mux0~17_combout\);

-- Location: LCCOMB_X23_Y19_N16
\inst7|process_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_1~0_combout\ = (!\busy~input_o\ & (\inst4|door~q\ & (\inst4|num\(0) & \inst4|num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~input_o\,
	datab => \inst4|door~q\,
	datac => \inst4|num\(0),
	datad => \inst4|num\(1),
	combout => \inst7|process_1~0_combout\);

-- Location: FF_X23_Y19_N17
\inst7|data[46]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	d => \inst7|process_1~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst7|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|data\(46));

-- Location: LCCOMB_X23_Y19_N26
\inst7|process_1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|process_1~1_combout\ = (!\busy~input_o\ & (\inst4|door~q\ & (!\inst4|num\(0) & \inst4|num\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~input_o\,
	datab => \inst4|door~q\,
	datac => \inst4|num\(0),
	datad => \inst4|num\(1),
	combout => \inst7|process_1~1_combout\);

-- Location: FF_X23_Y19_N27
\inst7|data[45]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	d => \inst7|process_1~1_combout\,
	clrn => \rst~input_o\,
	ena => \inst7|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|data\(45));

-- Location: LCCOMB_X23_Y19_N8
\inst7|data~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|data~0_combout\ = (!\busy~input_o\ & (\inst4|door~q\ & (\inst4|num\(0) $ (!\inst4|num\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~input_o\,
	datab => \inst4|door~q\,
	datac => \inst4|num\(0),
	datad => \inst4|num\(1),
	combout => \inst7|data~0_combout\);

-- Location: FF_X23_Y19_N9
\inst7|data[47]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	d => \inst7|data~0_combout\,
	clrn => \rst~input_o\,
	ena => \inst7|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|data\(47));

-- Location: LCCOMB_X21_Y19_N12
\inst7|Mux0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~6_combout\ = (\inst7|cnt\(1) & (!\inst7|cnt\(0) & (\inst7|data\(45)))) # (!\inst7|cnt\(1) & (\inst7|cnt\(0) & ((\inst7|data\(47)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(1),
	datab => \inst7|cnt\(0),
	datac => \inst7|data\(45),
	datad => \inst7|data\(47),
	combout => \inst7|Mux0~6_combout\);

-- Location: LCCOMB_X21_Y19_N30
\inst7|Mux0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~7_combout\ = (\inst7|Mux0~6_combout\) # ((\inst7|data\(46) & (\inst7|cnt\(1) $ (!\inst7|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(1),
	datab => \inst7|data\(46),
	datac => \inst7|cnt\(0),
	datad => \inst7|Mux0~6_combout\,
	combout => \inst7|Mux0~7_combout\);

-- Location: LCCOMB_X21_Y19_N0
\inst7|Mux0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~4_combout\ = (\inst7|cnt\(1) & (((\inst7|data\(98))))) # (!\inst7|cnt\(1) & ((\inst7|cnt\(2) & ((\inst7|data\(46)))) # (!\inst7|cnt\(2) & (\inst7|data\(98)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(1),
	datab => \inst7|cnt\(2),
	datac => \inst7|data\(98),
	datad => \inst7|data\(46),
	combout => \inst7|Mux0~4_combout\);

-- Location: LCCOMB_X21_Y19_N10
\inst7|Mux0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~5_combout\ = (\inst7|cnt\(5) & (\inst7|Mux0~4_combout\ & (\inst7|cnt\(2) $ (!\inst7|cnt\(0))))) # (!\inst7|cnt\(5) & (!\inst7|cnt\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(5),
	datab => \inst7|cnt\(2),
	datac => \inst7|cnt\(0),
	datad => \inst7|Mux0~4_combout\,
	combout => \inst7|Mux0~5_combout\);

-- Location: LCCOMB_X21_Y19_N8
\inst7|Mux0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~8_combout\ = (\inst7|cnt\(5) & (((\inst7|Mux0~5_combout\)))) # (!\inst7|cnt\(5) & ((\inst7|Mux0~5_combout\ & ((\inst7|Mux0~7_combout\))) # (!\inst7|Mux0~5_combout\ & (\inst7|Mux0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux0~3_combout\,
	datab => \inst7|cnt\(5),
	datac => \inst7|Mux0~7_combout\,
	datad => \inst7|Mux0~5_combout\,
	combout => \inst7|Mux0~8_combout\);

-- Location: LCCOMB_X23_Y19_N22
\inst7|data~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|data~1_combout\ = (!\busy~input_o\ & (\inst4|door~q\ & !\inst4|num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \busy~input_o\,
	datab => \inst4|door~q\,
	datac => \inst4|num\(0),
	combout => \inst7|data~1_combout\);

-- Location: FF_X23_Y19_N23
\inst7|data[42]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	d => \inst7|data~1_combout\,
	clrn => \rst~input_o\,
	ena => \inst7|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|data\(42));

-- Location: LCCOMB_X19_Y19_N10
\inst7|Mux0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~9_combout\ = (\inst7|data\(42) & !\inst7|cnt\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst7|data\(42),
	datad => \inst7|cnt\(2),
	combout => \inst7|Mux0~9_combout\);

-- Location: IOIBUF_X21_Y0_N8
\busy~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_busy,
	o => \busy~input_o\);

-- Location: LCCOMB_X23_Y19_N4
\inst7|state~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|state~8_combout\ = (\inst4|door~q\ & (!\busy~input_o\ & \inst4|num\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst4|door~q\,
	datac => \busy~input_o\,
	datad => \inst4|num\(1),
	combout => \inst7|state~8_combout\);

-- Location: FF_X23_Y19_N5
\inst7|data[36]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	d => \inst7|state~8_combout\,
	clrn => \rst~input_o\,
	ena => \inst7|ALT_INV_state.s0~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|data\(36));

-- Location: LCCOMB_X21_Y19_N4
\inst7|Mux0~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~11_combout\ = (\inst7|cnt\(1) & (\inst7|data\(45))) # (!\inst7|cnt\(1) & ((\inst7|data\(36))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(1),
	datac => \inst7|data\(45),
	datad => \inst7|data\(36),
	combout => \inst7|Mux0~11_combout\);

-- Location: LCCOMB_X21_Y19_N22
\inst7|Mux0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~12_combout\ = (\inst7|cnt\(1) & ((\inst7|cnt\(5) & (\inst7|cnt\(0))) # (!\inst7|cnt\(5) & ((!\inst7|cnt\(2)))))) # (!\inst7|cnt\(1) & (\inst7|cnt\(5) & ((!\inst7|cnt\(2)) # (!\inst7|cnt\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000011011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(1),
	datab => \inst7|cnt\(0),
	datac => \inst7|cnt\(5),
	datad => \inst7|cnt\(2),
	combout => \inst7|Mux0~12_combout\);

-- Location: LCCOMB_X21_Y19_N2
\inst7|Mux0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~10_combout\ = (\inst7|cnt\(1) & ((\inst7|cnt\(0) & (\inst7|cnt\(5))) # (!\inst7|cnt\(0) & ((!\inst7|cnt\(2)))))) # (!\inst7|cnt\(1) & (\inst7|cnt\(0) & ((!\inst7|cnt\(2)) # (!\inst7|cnt\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010011100110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(1),
	datab => \inst7|cnt\(0),
	datac => \inst7|cnt\(5),
	datad => \inst7|cnt\(2),
	combout => \inst7|Mux0~10_combout\);

-- Location: LCCOMB_X21_Y19_N16
\inst7|Mux0~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~13_combout\ = (\inst7|Mux0~12_combout\ & ((\inst7|data\(47)) # ((!\inst7|Mux0~10_combout\)))) # (!\inst7|Mux0~12_combout\ & (((\inst7|Mux0~11_combout\ & \inst7|Mux0~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|data\(47),
	datab => \inst7|Mux0~11_combout\,
	datac => \inst7|Mux0~12_combout\,
	datad => \inst7|Mux0~10_combout\,
	combout => \inst7|Mux0~13_combout\);

-- Location: LCCOMB_X21_Y19_N18
\inst7|Mux0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~14_combout\ = (\inst7|Mux0~10_combout\ & (((\inst7|Mux0~13_combout\)))) # (!\inst7|Mux0~10_combout\ & ((\inst7|Mux0~13_combout\ & ((\inst7|Mux0~9_combout\))) # (!\inst7|Mux0~13_combout\ & (\inst7|data\(98)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux0~10_combout\,
	datab => \inst7|data\(98),
	datac => \inst7|Mux0~9_combout\,
	datad => \inst7|Mux0~13_combout\,
	combout => \inst7|Mux0~14_combout\);

-- Location: LCCOMB_X21_Y19_N28
\inst7|Mux0~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~15_combout\ = (\inst7|cnt\(3) & ((\inst7|cnt\(4)) # ((\inst7|Mux0~8_combout\)))) # (!\inst7|cnt\(3) & (!\inst7|cnt\(4) & ((\inst7|Mux0~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|cnt\(3),
	datab => \inst7|cnt\(4),
	datac => \inst7|Mux0~8_combout\,
	datad => \inst7|Mux0~14_combout\,
	combout => \inst7|Mux0~15_combout\);

-- Location: LCCOMB_X21_Y19_N6
\inst7|Mux0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|Mux0~18_combout\ = (\inst7|cnt\(4) & ((\inst7|Mux0~15_combout\ & ((\inst7|Mux0~17_combout\))) # (!\inst7|Mux0~15_combout\ & (\inst7|Mux0~2_combout\)))) # (!\inst7|cnt\(4) & (((\inst7|Mux0~15_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|Mux0~2_combout\,
	datab => \inst7|cnt\(4),
	datac => \inst7|Mux0~17_combout\,
	datad => \inst7|Mux0~15_combout\,
	combout => \inst7|Mux0~18_combout\);

-- Location: LCCOMB_X21_Y19_N24
\inst7|txd~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|txd~0_combout\ = (\inst7|state.s1~q\ & ((\inst7|cnt\(6) & ((!\inst7|Mux0~18_combout\))) # (!\inst7|cnt\(6) & (!\inst7|Mux0~21_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst7|state.s1~q\,
	datab => \inst7|cnt\(6),
	datac => \inst7|Mux0~21_combout\,
	datad => \inst7|Mux0~18_combout\,
	combout => \inst7|txd~0_combout\);

-- Location: FF_X21_Y19_N25
\inst7|txd\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	d => \inst7|txd~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|txd~q\);

-- Location: LCCOMB_X22_Y22_N12
\inst7|led~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst7|led~0_combout\ = !\busy~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \busy~input_o\,
	combout => \inst7|led~0_combout\);

-- Location: FF_X22_Y22_N13
\inst7|led\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst7|clk_s~clkctrl_outclk\,
	d => \inst7|led~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst7|led~q\);

-- Location: LCCOMB_X25_Y14_N28
\inst5|y~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|y~0_combout\ = (\inst5|flag~q\) # (!\inst4|num\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|flag~q\,
	datac => \inst4|num\(1),
	combout => \inst5|y~0_combout\);

-- Location: FF_X25_Y14_N29
\inst5|y[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clk2~clkctrl_outclk\,
	d => \inst5|y~0_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|y\(6));

-- Location: LCCOMB_X25_Y14_N30
\inst5|y~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|y~1_combout\ = (\inst5|flag~q\ & (((\inst4|direction\(1))))) # (!\inst5|flag~q\ & ((\inst4|num\(1)) # ((!\inst4|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(1),
	datab => \inst4|direction\(1),
	datac => \inst4|num\(0),
	datad => \inst5|flag~q\,
	combout => \inst5|y~1_combout\);

-- Location: FF_X25_Y14_N31
\inst5|y[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clk2~clkctrl_outclk\,
	d => \inst5|y~1_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|y\(5));

-- Location: LCCOMB_X25_Y14_N24
\inst5|y~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|y~2_combout\ = (\inst5|flag~q\ & ((\inst4|direction\(0)))) # (!\inst5|flag~q\ & (!\inst4|num\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|flag~q\,
	datac => \inst4|num\(0),
	datad => \inst4|direction\(0),
	combout => \inst5|y~2_combout\);

-- Location: FF_X25_Y14_N25
\inst5|y[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clk2~clkctrl_outclk\,
	d => \inst5|y~2_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|y\(4));

-- Location: LCCOMB_X25_Y14_N10
\inst5|y~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|y~3_combout\ = (\inst5|flag~q\ & (((\inst4|direction\(0))))) # (!\inst5|flag~q\ & (!\inst4|num\(1) & (!\inst4|num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(1),
	datab => \inst5|flag~q\,
	datac => \inst4|num\(0),
	datad => \inst4|direction\(0),
	combout => \inst5|y~3_combout\);

-- Location: FF_X25_Y14_N11
\inst5|y[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clk2~clkctrl_outclk\,
	d => \inst5|y~3_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|y\(3));

-- Location: LCCOMB_X25_Y14_N20
\inst5|y~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|y~4_combout\ = (\inst5|flag~q\ & (((\inst4|direction\(0))))) # (!\inst5|flag~q\ & (\inst4|num\(1) & ((\inst4|num\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(1),
	datab => \inst4|direction\(0),
	datac => \inst5|flag~q\,
	datad => \inst4|num\(0),
	combout => \inst5|y~4_combout\);

-- Location: FF_X25_Y14_N21
\inst5|y[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clk2~clkctrl_outclk\,
	d => \inst5|y~4_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|y\(2));

-- Location: LCCOMB_X25_Y14_N6
\inst5|y~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|y~5_combout\ = (\inst5|flag~q\ & \inst4|direction\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst5|flag~q\,
	datac => \inst4|direction\(1),
	combout => \inst5|y~5_combout\);

-- Location: FF_X25_Y14_N7
\inst5|y[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clk2~clkctrl_outclk\,
	d => \inst5|y~5_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|y\(1));

-- Location: LCCOMB_X25_Y14_N0
\inst5|y~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst5|y~6_combout\ = (\inst5|flag~q\ & (((\inst4|direction\(1))))) # (!\inst5|flag~q\ & (!\inst4|num\(1) & (!\inst4|num\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst4|num\(1),
	datab => \inst5|flag~q\,
	datac => \inst4|num\(0),
	datad => \inst4|direction\(1),
	combout => \inst5|y~6_combout\);

-- Location: FF_X25_Y14_N1
\inst5|y[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst5|clk2~clkctrl_outclk\,
	d => \inst5|y~6_combout\,
	ena => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst5|y\(0));

-- Location: LCCOMB_X24_Y21_N0
\inst1|Selector23~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector23~0_combout\ = (\inst1|Selector50~1_combout\ & ((\inst1|Selector37~0_combout\) # ((\inst1|direction.d1~q\ & !\inst1|pre_step~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector50~1_combout\,
	datab => \inst1|direction.d1~q\,
	datac => \inst1|Selector37~0_combout\,
	datad => \inst1|pre_step~13_combout\,
	combout => \inst1|Selector23~0_combout\);

-- Location: FF_X24_Y21_N1
\inst1|pre_step.s1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector23~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pre_step.s1~q\);

-- Location: LCCOMB_X25_Y19_N30
\inst1|Selector35~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector35~0_combout\ = (\inst1|Selector34~0_combout\) # ((!\inst1|state.c0~q\ & !\inst1|direction~11_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|state.c0~q\,
	datac => \inst1|Selector34~0_combout\,
	datad => \inst1|direction~11_combout\,
	combout => \inst1|Selector35~0_combout\);

-- Location: LCCOMB_X25_Y19_N0
\inst1|Selector35~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector35~1_combout\ = (!\inst1|Selector31~3_combout\ & (!\inst1|Selector35~0_combout\ & ((!\inst1|direction.d1~q\) # (!\inst1|pre_step~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pre_step~13_combout\,
	datab => \inst1|direction.d1~q\,
	datac => \inst1|Selector31~3_combout\,
	datad => \inst1|Selector35~0_combout\,
	combout => \inst1|Selector35~1_combout\);

-- Location: FF_X25_Y19_N1
\inst1|direction.d0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector35~1_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|direction.d0~q\);

-- Location: LCCOMB_X24_Y22_N26
\inst1|Selector22~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector22~0_combout\ = (\inst1|direction.d0~q\ & ((\inst1|Selector37~0_combout\) # ((!\inst1|pre_step~13_combout\ & \inst1|direction.d1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pre_step~13_combout\,
	datab => \inst1|direction.d0~q\,
	datac => \inst1|direction.d1~q\,
	datad => \inst1|Selector37~0_combout\,
	combout => \inst1|Selector22~0_combout\);

-- Location: FF_X24_Y22_N27
\inst1|pre_step.s0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector22~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pre_step.s0~q\);

-- Location: LCCOMB_X24_Y22_N16
\inst1|Selector57~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector57~0_combout\ = (\inst1|direction.d1~q\ & \inst1|pre_step.s7~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|direction.d1~q\,
	datad => \inst1|pre_step.s7~q\,
	combout => \inst1|Selector57~0_combout\);

-- Location: LCCOMB_X24_Y22_N12
\inst1|Selector57~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector57~1_combout\ = (\inst1|Selector57~0_combout\) # ((\inst1|direction.d2~q\ & ((\inst1|pre_step.s1~q\) # (!\inst1|pre_step.s0~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d2~q\,
	datab => \inst1|pre_step.s1~q\,
	datac => \inst1|pre_step.s0~q\,
	datad => \inst1|Selector57~0_combout\,
	combout => \inst1|Selector57~1_combout\);

-- Location: LCCOMB_X24_Y22_N4
\inst1|Selector30~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector30~0_combout\ = (\inst1|Selector57~1_combout\ & ((\inst1|Selector37~0_combout\) # ((!\inst1|pre_step~13_combout\ & \inst1|direction.d1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pre_step~13_combout\,
	datab => \inst1|Selector57~1_combout\,
	datac => \inst1|direction.d1~q\,
	datad => \inst1|Selector37~0_combout\,
	combout => \inst1|Selector30~0_combout\);

-- Location: FF_X24_Y22_N5
\inst1|pre_step.s8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector30~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pre_step.s8~q\);

-- Location: LCCOMB_X24_Y21_N16
\inst1|Selector26~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector26~0_combout\ = (\inst1|Selector53~0_combout\ & ((\inst1|Selector37~0_combout\) # ((\inst1|direction.d1~q\ & !\inst1|pre_step~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector53~0_combout\,
	datab => \inst1|direction.d1~q\,
	datac => \inst1|Selector37~0_combout\,
	datad => \inst1|pre_step~13_combout\,
	combout => \inst1|Selector26~0_combout\);

-- Location: FF_X24_Y21_N17
\inst1|pre_step.s4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector26~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pre_step.s4~q\);

-- Location: LCCOMB_X24_Y22_N24
\inst1|Selector54~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector54~0_combout\ = (\inst1|direction.d1~q\ & (((\inst1|pre_step.s4~q\)))) # (!\inst1|direction.d1~q\ & (\inst1|direction.d2~q\ & ((\inst1|pre_step.s6~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d2~q\,
	datab => \inst1|pre_step.s4~q\,
	datac => \inst1|direction.d1~q\,
	datad => \inst1|pre_step.s6~q\,
	combout => \inst1|Selector54~0_combout\);

-- Location: LCCOMB_X24_Y21_N2
\inst1|Selector27~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector27~0_combout\ = (\inst1|Selector54~0_combout\ & ((\inst1|Selector37~0_combout\) # ((\inst1|direction.d1~q\ & !\inst1|pre_step~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d1~q\,
	datab => \inst1|Selector54~0_combout\,
	datac => \inst1|Selector37~0_combout\,
	datad => \inst1|pre_step~13_combout\,
	combout => \inst1|Selector27~0_combout\);

-- Location: FF_X24_Y21_N3
\inst1|pre_step.s5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector27~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pre_step.s5~q\);

-- Location: LCCOMB_X24_Y22_N28
\inst1|Selector55~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector55~0_combout\ = (\inst1|direction.d1~q\ & (((\inst1|pre_step.s5~q\)))) # (!\inst1|direction.d1~q\ & (\inst1|direction.d2~q\ & (\inst1|pre_step.s7~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d2~q\,
	datab => \inst1|pre_step.s7~q\,
	datac => \inst1|direction.d1~q\,
	datad => \inst1|pre_step.s5~q\,
	combout => \inst1|Selector55~0_combout\);

-- Location: LCCOMB_X24_Y22_N0
\inst1|Selector28~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector28~0_combout\ = (\inst1|Selector55~0_combout\ & ((\inst1|Selector37~0_combout\) # ((!\inst1|pre_step~13_combout\ & \inst1|direction.d1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pre_step~13_combout\,
	datab => \inst1|Selector55~0_combout\,
	datac => \inst1|direction.d1~q\,
	datad => \inst1|Selector37~0_combout\,
	combout => \inst1|Selector28~0_combout\);

-- Location: FF_X24_Y22_N1
\inst1|pre_step.s6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector28~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pre_step.s6~q\);

-- Location: LCCOMB_X24_Y22_N22
\inst1|Selector56~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector56~0_combout\ = (\inst1|direction.d1~q\ & (((\inst1|pre_step.s6~q\)))) # (!\inst1|direction.d1~q\ & (\inst1|direction.d2~q\ & (\inst1|pre_step.s8~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|direction.d2~q\,
	datab => \inst1|pre_step.s8~q\,
	datac => \inst1|direction.d1~q\,
	datad => \inst1|pre_step.s6~q\,
	combout => \inst1|Selector56~0_combout\);

-- Location: LCCOMB_X24_Y22_N2
\inst1|Selector29~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector29~0_combout\ = (\inst1|Selector56~0_combout\ & ((\inst1|Selector37~0_combout\) # ((!\inst1|pre_step~13_combout\ & \inst1|direction.d1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pre_step~13_combout\,
	datab => \inst1|Selector56~0_combout\,
	datac => \inst1|direction.d1~q\,
	datad => \inst1|Selector37~0_combout\,
	combout => \inst1|Selector29~0_combout\);

-- Location: FF_X24_Y22_N3
\inst1|pre_step.s7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector29~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pre_step.s7~q\);

-- Location: LCCOMB_X24_Y22_N6
\inst1|WideOr0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|WideOr0~0_combout\ = (\inst1|pre_step.s7~q\) # ((\inst1|pre_step.s8~q\) # (\inst1|pre_step.s6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pre_step.s7~q\,
	datac => \inst1|pre_step.s8~q\,
	datad => \inst1|pre_step.s6~q\,
	combout => \inst1|WideOr0~0_combout\);

-- Location: LCCOMB_X24_Y22_N8
\inst1|WideOr1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|WideOr1~0_combout\ = (\inst1|pre_step.s5~q\) # ((\inst1|pre_step.s4~q\) # (\inst1|pre_step.s6~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pre_step.s5~q\,
	datab => \inst1|pre_step.s4~q\,
	datad => \inst1|pre_step.s6~q\,
	combout => \inst1|WideOr1~0_combout\);

-- Location: LCCOMB_X24_Y21_N20
\inst1|Selector24~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector24~0_combout\ = (\inst1|Selector51~0_combout\ & ((\inst1|Selector37~0_combout\) # ((\inst1|direction.d1~q\ & !\inst1|pre_step~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector51~0_combout\,
	datab => \inst1|direction.d1~q\,
	datac => \inst1|Selector37~0_combout\,
	datad => \inst1|pre_step~13_combout\,
	combout => \inst1|Selector24~0_combout\);

-- Location: FF_X24_Y21_N21
\inst1|pre_step.s2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector24~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pre_step.s2~q\);

-- Location: LCCOMB_X24_Y21_N22
\inst1|Selector25~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|Selector25~0_combout\ = (\inst1|Selector52~0_combout\ & ((\inst1|Selector37~0_combout\) # ((\inst1|direction.d1~q\ & !\inst1|pre_step~13_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|Selector52~0_combout\,
	datab => \inst1|direction.d1~q\,
	datac => \inst1|Selector37~0_combout\,
	datad => \inst1|pre_step~13_combout\,
	combout => \inst1|Selector25~0_combout\);

-- Location: FF_X24_Y21_N23
\inst1|pre_step.s3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \inst17|y~clkctrl_outclk\,
	d => \inst1|Selector25~0_combout\,
	clrn => \rst~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \inst1|pre_step.s3~q\);

-- Location: LCCOMB_X25_Y22_N8
\inst1|WideOr2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|WideOr2~0_combout\ = (\inst1|pre_step.s2~q\) # ((\inst1|pre_step.s3~q\) # (\inst1|pre_step.s4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|pre_step.s2~q\,
	datab => \inst1|pre_step.s3~q\,
	datad => \inst1|pre_step.s4~q\,
	combout => \inst1|WideOr2~0_combout\);

-- Location: LCCOMB_X24_Y22_N18
\inst1|WideOr3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|WideOr3~0_combout\ = (\inst1|pre_step.s2~q\) # ((\inst1|pre_step.s8~q\) # (\inst1|pre_step.s1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|pre_step.s2~q\,
	datac => \inst1|pre_step.s8~q\,
	datad => \inst1|pre_step.s1~q\,
	combout => \inst1|WideOr3~0_combout\);

-- Location: IOIBUF_X18_Y0_N22
\rxd~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rxd,
	o => \rxd~input_o\);

ww_beep <= \beep~output_o\;

ww_pdsck <= \pdsck~output_o\;

ww_sel1 <= \sel1~output_o\;

ww_sel2 <= \sel2~output_o\;

ww_txd <= \txd~output_o\;

ww_led <= \led~output_o\;

ww_Q(6) <= \Q[6]~output_o\;

ww_Q(5) <= \Q[5]~output_o\;

ww_Q(4) <= \Q[4]~output_o\;

ww_Q(3) <= \Q[3]~output_o\;

ww_Q(2) <= \Q[2]~output_o\;

ww_Q(1) <= \Q[1]~output_o\;

ww_Q(0) <= \Q[0]~output_o\;

ww_y(3) <= \y[3]~output_o\;

ww_y(2) <= \y[2]~output_o\;

ww_y(1) <= \y[1]~output_o\;

ww_y(0) <= \y[0]~output_o\;
END structure;


