// Copyright 1986-2016 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2016.4 (win64) Build 1756540 Mon Jan 23 19:11:23 MST 2017
// Date        : Sun Aug 02 12:13:51 2020
// Host        : Ege-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               D:/my/Vivado/PID_Controller/PID_Controller.srcs/sources_1/ip/float_to_fixed/float_to_fixed_stub.v
// Design      : float_to_fixed
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx485tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "floating_point_v7_1_3,Vivado 2016.4" *)
module float_to_fixed(aclk, s_axis_a_tvalid, s_axis_a_tready, 
  s_axis_a_tdata, m_axis_result_tvalid, m_axis_result_tdata, m_axis_result_tuser)
/* synthesis syn_black_box black_box_pad_pin="aclk,s_axis_a_tvalid,s_axis_a_tready,s_axis_a_tdata[31:0],m_axis_result_tvalid,m_axis_result_tdata[15:0],m_axis_result_tuser[0:0]" */;
  input aclk;
  input s_axis_a_tvalid;
  output s_axis_a_tready;
  input [31:0]s_axis_a_tdata;
  output m_axis_result_tvalid;
  output [15:0]m_axis_result_tdata;
  output [0:0]m_axis_result_tuser;
endmodule
