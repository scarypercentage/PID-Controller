-- Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
-- Date        : Mon Sep 07 21:05:48 2020
-- Host        : Erdem running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/90534/Desktop/xx/PID_Controller.srcs/sources_1/ip/mult_gen_1/mult_gen_1_stub.vhdl
-- Design      : mult_gen_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7vx485tffg1761-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mult_gen_1 is
  Port ( 
    CLK : in STD_LOGIC;
    A : in STD_LOGIC_VECTOR ( 28 downto 0 );
    B : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SCLR : in STD_LOGIC;
    P : out STD_LOGIC_VECTOR ( 60 downto 0 )
  );

end mult_gen_1;

architecture stub of mult_gen_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "CLK,A[28:0],B[31:0],SCLR,P[60:0]";
attribute x_core_info : string;
attribute x_core_info of stub : architecture is "mult_gen_v12_0_12,Vivado 2016.4";
begin
end;
