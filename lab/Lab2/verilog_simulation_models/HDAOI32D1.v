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
// File Name:       HDAOI32D1.v
// Library Name:    umcl18g212t3
// Library Release: 1.0
// Product:         Standard Cells
// Process:         UMC L18G
// Generated:       06/29/2004 20:03:27
// ------------------------------------------------------------------------
//  
// $RCSfile: HDAOI32D1.v,v $ 
// $Source: /syncdisk/rcs/common/verilog/5.1.4.3/sc/RCS/HDAOI32D1.v,v $ 
// $Date: 2003/04/23 22:38:29 $ 
// $Revision: 1.2 $ 
//  
// ---------------------- 
// Verilog dump Timing Insertion Version 1.5

// Verilog dump veralc Version 1.9
/*****************************************************************************/
/*                                                                           */
/*  CellRater, version 5.1.4.3 production                                    */
/*  Created:  Thu Feb 20 17:01:23 2003 by sasana                             */
/*    for Verilog Simulator:  verilog-xl                                     */
/*                                                                           */
/*****************************************************************************/
`timescale 1 ns / 1 ps
`define VCC 1'b1
`define VSS 0
`celldefine
`suppress_faults
`enable_portfaults
module HDAOI32D1(Z, A1, A2, A3, B1, B2);
input A1;
input A2;
input A3;
input B1;
input B2;
output Z;
 HDAOI32D1_UDPZ(Z, A1, A2, A3, B1, B2);
specify
// arc A1 --> Z
  ( A1 => Z ) = (1,1);
// arc A2 --> Z
  ( A2 => Z ) = (1,1);
// arc A3 --> Z
  ( A3 => Z ) = (1,1);
// arc B1 --> Z
  ( B1 => Z ) = (1,1);
// arc B2 --> Z
  ( B2 => Z ) = (1,1);
endspecify
endmodule // HDAOI32D1 //

primitive HDAOI32D1_UDPZ(Z, A1, A2, A3, B1, B2);
output Z;
input A1;
input A2;
input A3;
input B1;
input B2;

table
// A1  A2  A3  B1  B2 Z
   ?    0    ?    ?    0   : 1   ;
   0    ?    ?    ?    0   : 1   ;
   ?    0    ?    0    ?   : 1   ;
   ?    ?    0    0    ?   : 1   ;
   ?    ?    0    ?    0   : 1   ;
   0    ?    ?    0    ?   : 1   ;
   1    1    1    ?    ?   : 0   ;
   ?    ?    ?    1    1   : 0   ;
endtable
endprimitive
`disable_portfaults
`nosuppress_faults
`endcelldefine
