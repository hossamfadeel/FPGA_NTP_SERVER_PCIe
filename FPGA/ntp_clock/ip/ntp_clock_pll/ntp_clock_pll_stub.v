// Copyright 1986-2019 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2019.2 (lin64) Build 2708876 Wed Nov  6 21:39:14 MST 2019
// Date        : Tue Oct 13 15:39:18 2020
// Host        : fpga01-fg.sth.netnod.se running 64-bit CentOS Linux release 7.6.2003 (Core)
// Command     : write_verilog -force -mode synth_stub
//               /home/joachim/Sandbox/repos/FPGA_NTP_SERVER/FPGA/ntp_clock/ip/ntp_clock_pll/ntp_clock_pll_stub.v
// Design      : ntp_clock_pll
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7vx690tffg1761-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module ntp_clock_pll(clk_out1, clk_out2, psclk, psen, psincdec, psdone, 
  reset, locked, clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_out2,psclk,psen,psincdec,psdone,reset,locked,clk_in1_p,clk_in1_n" */;
  output clk_out1;
  output clk_out2;
  input psclk;
  input psen;
  input psincdec;
  output psdone;
  input reset;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
