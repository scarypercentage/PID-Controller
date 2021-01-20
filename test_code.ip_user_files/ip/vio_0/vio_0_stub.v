// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Mon Jan 18 15:36:26 2021
// Host        : DESKTOP-5DGGSE0 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/ahmet/Desktop/test_code/test_code.srcs/sources_1/ip/vio_0/vio_0_stub.v
// Design      : vio_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "vio,Vivado 2016.4" *)
module vio_0(clk, probe_in0, probe_in1, probe_in2, probe_out0, 
  probe_out1, probe_out2, probe_out3, probe_out4)
/* synthesis syn_black_box black_box_pad_pin="clk,probe_in0[11:0],probe_in1[13:0],probe_in2[17:0],probe_out0[11:0],probe_out1[31:0],probe_out2[31:0],probe_out3[31:0],probe_out4[14:0]" */;
  input clk;
  input [11:0]probe_in0;
  input [13:0]probe_in1;
  input [17:0]probe_in2;
  output [11:0]probe_out0;
  output [31:0]probe_out1;
  output [31:0]probe_out2;
  output [31:0]probe_out3;
  output [14:0]probe_out4;
endmodule
