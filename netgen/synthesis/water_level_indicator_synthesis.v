////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.58f
//  \   \         Application: netgen
//  /   /         Filename: water_level_indicator_synthesis.v
// /___/   /\     Timestamp: Thu Mar 31 18:12:28 2016
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim water_level_indicator.ngc water_level_indicator_synthesis.v 
// Device	: xa3s50-4-vqg100
// Input file	: water_level_indicator.ngc
// Output file	: C:\Users\RAHUL\vhdl_projects\Water_level_indicator\netgen\synthesis\water_level_indicator_synthesis.v
// # of Modules	: 1
// Design Name	: water_level_indicator
// Xilinx        : C:\Xilinx\14.5\ISE_DS\ISE\
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

module water_level_indicator (
  a, b, c, d, e, f, g, a0, a1, a2, a3, a4
);
  output a;
  output b;
  output c;
  output d;
  output e;
  output f;
  output g;
  input a0;
  input a1;
  input a2;
  input a3;
  input a4;
  wire a2_IBUF_3;
  wire a4_IBUF_6;
  wire b_OBUF_8;
  wire c_OBUF_10;
  wire d_OBUF_12;
  wire e_OBUF_14;
  wire f_OBUF_16;
  wire g_OBUF_18;
  LUT2 #(
    .INIT ( 4'h2 ))
  e1 (
    .I0(g_OBUF_18),
    .I1(a2_IBUF_3),
    .O(e_OBUF_14)
  );
  LUT2 #(
    .INIT ( 4'hD ))
  c1 (
    .I0(g_OBUF_18),
    .I1(a2_IBUF_3),
    .O(c_OBUF_10)
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  d1 (
    .I0(f_OBUF_16),
    .I1(g_OBUF_18),
    .I2(a4_IBUF_6),
    .O(d_OBUF_12)
  );
  IBUF   a1_IBUF (
    .I(a1),
    .O(g_OBUF_18)
  );
  IBUF   a2_IBUF (
    .I(a2),
    .O(a2_IBUF_3)
  );
  IBUF   a3_IBUF (
    .I(a3),
    .O(f_OBUF_16)
  );
  IBUF   a4_IBUF (
    .I(a4),
    .O(a4_IBUF_6)
  );
  OBUF   a_OBUF (
    .I(d_OBUF_12),
    .O(a)
  );
  OBUF   b_OBUF (
    .I(b_OBUF_8),
    .O(b)
  );
  OBUF   c_OBUF (
    .I(c_OBUF_10),
    .O(c)
  );
  OBUF   d_OBUF (
    .I(d_OBUF_12),
    .O(d)
  );
  OBUF   e_OBUF (
    .I(e_OBUF_14),
    .O(e)
  );
  OBUF   f_OBUF (
    .I(f_OBUF_16),
    .O(f)
  );
  OBUF   g_OBUF (
    .I(g_OBUF_18),
    .O(g)
  );
  INV   b1_INV_0 (
    .I(a4_IBUF_6),
    .O(b_OBUF_8)
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

