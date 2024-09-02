////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.20131013
//  \   \         Application: netgen
//  /   /         Filename: ROM_synthesis.v
// /___/   /\     Timestamp: Wed Mar  1 05:09:55 2023
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim ROM.ngc ROM_synthesis.v 
// Device	: xc7a100t-3-csg324
// Input file	: ROM.ngc
// Output file	: /home/ise/EC1/netgen/synthesis/ROM_synthesis.v
// # of Modules	: 1
// Design Name	: ROM
// Xilinx        : /opt/Xilinx/14.7/ISE_DS/ISE/
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module ROM (
  clk, Address, Output
);
  input clk;
  input [3 : 0] Address;
  output [7 : 0] Output;
  wire Address_2_IBUF_0;
  wire Address_1_IBUF_1;
  wire Address_0_IBUF_2;
  wire clk_BUFGP_3;
  wire Output_7_4;
  wire Output_6_5;
  wire Output_5_6;
  wire Output_1_7;
  wire Output_0_8;
  wire Mram__n0031;
  wire Mram__n00311;
  wire Output_1_1_23;
  wire Output_1_2_24;
  wire Output_1_3_25;
  FD   Output_0 (
    .C(clk_BUFGP_3),
    .D(Mram__n0031),
    .Q(Output_0_8)
  );
  FD   Output_1 (
    .C(clk_BUFGP_3),
    .D(Mram__n00311),
    .Q(Output_1_7)
  );
  FD   Output_5 (
    .C(clk_BUFGP_3),
    .D(Address_0_IBUF_2),
    .Q(Output_5_6)
  );
  FD   Output_6 (
    .C(clk_BUFGP_3),
    .D(Address_1_IBUF_1),
    .Q(Output_6_5)
  );
  FD   Output_7 (
    .C(clk_BUFGP_3),
    .D(Address_2_IBUF_0),
    .Q(Output_7_4)
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  Mram__n003112 (
    .I0(Address_0_IBUF_2),
    .I1(Address_1_IBUF_1),
    .O(Mram__n0031)
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  Mram__n0031111 (
    .I0(Address_0_IBUF_2),
    .I1(Address_1_IBUF_1),
    .I2(Address_2_IBUF_0),
    .O(Mram__n00311)
  );
  IBUF   Address_2_IBUF (
    .I(Address[2]),
    .O(Address_2_IBUF_0)
  );
  IBUF   Address_1_IBUF (
    .I(Address[1]),
    .O(Address_1_IBUF_1)
  );
  IBUF   Address_0_IBUF (
    .I(Address[0]),
    .O(Address_0_IBUF_2)
  );
  OBUF   Output_7_OBUF (
    .I(Output_7_4),
    .O(Output[7])
  );
  OBUF   Output_6_OBUF (
    .I(Output_6_5),
    .O(Output[6])
  );
  OBUF   Output_5_OBUF (
    .I(Output_5_6),
    .O(Output[5])
  );
  OBUF   Output_4_OBUF (
    .I(Output_1_1_23),
    .O(Output[4])
  );
  OBUF   Output_3_OBUF (
    .I(Output_1_2_24),
    .O(Output[3])
  );
  OBUF   Output_2_OBUF (
    .I(Output_1_3_25),
    .O(Output[2])
  );
  OBUF   Output_1_OBUF (
    .I(Output_1_7),
    .O(Output[1])
  );
  OBUF   Output_0_OBUF (
    .I(Output_0_8),
    .O(Output[0])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_3)
  );
  FD   Output_1_1 (
    .C(clk_BUFGP_3),
    .D(Mram__n00311),
    .Q(Output_1_1_23)
  );
  FD   Output_1_2 (
    .C(clk_BUFGP_3),
    .D(Mram__n00311),
    .Q(Output_1_2_24)
  );
  FD   Output_1_3 (
    .C(clk_BUFGP_3),
    .D(Mram__n00311),
    .Q(Output_1_3_25)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

