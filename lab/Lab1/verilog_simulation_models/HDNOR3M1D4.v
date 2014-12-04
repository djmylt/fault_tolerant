// 
// Copyright (C) 2004 Virtual Silicon Technology Inc. All Rights Reserved.
// Silicon Ready, The Heart of Great Silicon, and the Virtual Silicon
// logo are registered trademarks of Virtual Silicon Technology Inc.  All
// other trademarks are the property of their respective owner.
// 
// Virtual Silicon Technology Inc.
// 1322 Orleans Drive
// Sunnyvale, CA 94089-1116
// Phone : (408) 548-2700
// Fax   : (408) 548-2750
// Web Site : http://www.virtual-silicon.com
// 
// File Name:       HDNOR3M1D4.v
// Library Name:    umcl18g212t3
// Library Release: 1.0
// Product:         Standard Cells
// Process:         UMC L18G
// Generated:       06/29/2004 20:04:54
// ------------------------------------------------------------------------
//  
// $RCSfile: HDNOR3M1D4.v,v $ 
// $Source: /syncdisk/rcs/common/verilog/5.1.4.3/sc/RCS/HDNOR3M1D4.v,v $ 
// $Date: 2003/04/23 22:39:48 $ 
// $Revision: 1.2 $ 
//  
// ---------------------- 
// Verilog dump Timing Insertion Version 1.5

// Verilog dump veralc Version 1.9
/*****************************************************************************/
/*                                                                           */
/*  CellRater, version 5.1.4.3 production                                    */
/*  Created:  Thu Feb 20 16:55:32 2003 by sasana                             */
/*    for Verilog Simulator:  verilog-xl                                     */
/*                                                                           */
/*****************************************************************************/
`timescale 1 ns / 1 ps
`define VCC 1'b1
`define VSS 0
`celldefine
`suppress_faults
`enable_portfaults
module HDNOR3M1D4(A1, A2, A3, Z);
input A1;
input A2;
input A3;
output Z;
not SMC_I0(A2_bar, A2);
not SMC_I1(A3_bar, A3);
and SMC_I2(Z, A1, A2_bar, A3_bar);
specify
// arc A1 --> Z
  ( A1 => Z ) = (1,1);
// arc A2 --> Z
  ( A2 => Z ) = (1,1);
// arc A3 --> Z
  ( A3 => Z ) = (1,1);
endspecify
endmodule // HDNOR3M1D4 //
`disable_portfaults
`nosuppress_faults
`endcelldefine
