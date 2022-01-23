//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Sun Jan 23 05:53:53 2022
//Host        : DESKTOP-BE7ALHR running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   ();

  wire clock_0_RD;
  wire [15:0]clock_0_address;
  wire clock_0_clk;

  design_1_clock_0_1 clock_0
       (.RD(clock_0_RD),
        .address(clock_0_address),
        .clk(clock_0_clk));
  design_1_top_0_0 top_0
       (.address(clock_0_address),
        .clk(clock_0_clk),
        .nCS(1'b0),
        .nRD(clock_0_RD),
        .nWR(1'b0));
endmodule
