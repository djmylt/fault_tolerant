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
// File Name:       HDLATRPB2.v
// Library Name:    umcl18g212t3
// Library Release: 1.0
// Product:         Standard Cells
// Process:         UMC L18G
// Generated:       06/29/2004 20:04:14
// ------------------------------------------------------------------------
//  
// $RCSfile: HDLATRPB2.v,v $ 
// $Source: /syncdisk/rcs/common/verilog/5.1.4.3/sc/RCS/HDLATRPB2.v,v $ 
// $Date: 2003/04/23 22:39:25 $ 
// $Revision: 1.2 $ 
//  
// ---------------------- 
// Verilog dump Timing Insertion Version 1.5

// Verilog dump veralc Version 1.9
/*****************************************************************************/
/*                                                                           */
/*  CellRater, version 5.1.4.3 production                                    */
/*  Created:  Thu Feb 20 16:38:56 2003 by sasana                             */
/*    for Verilog Simulator:  verilog-xl                                     */
/*                                                                           */
/*****************************************************************************/
`timescale 1 ns / 1 ps
`define VCC 1'b1
`define VSS 0
`celldefine
`suppress_faults
`enable_portfaults
module HDLATRPB2(D, RB, GB, Q, QB);
input D;
input RB;
input GB;
output Q;
output QB;
reg notifier;
wire SMC_EN_IN;
not SMC_I0(SMC_EN_IN, GB);
not SMC_I1(SMC_IQN, SMC_IQ);
ldlatch_p0 SMC_I2(.q(SMC_IQ), .d(D), .en(SMC_EN_IN), .clear(RB), .preset(`VCC), .notifier(notifier));
//  output pins
buf SMC_I3(Q, SMC_IQ);
buf SMC_I4(QB, SMC_IQN);
`ifdef no_tchk
`else
buf SMC_I5(shcheckGBDlh, RB);
`endif
specify
// arc D --> Q
  ( D => Q ) = (1,1);
// arc D --> QB
  ( D => QB ) = (1,1);
// arc RB --> Q
  ( RB => Q ) = (1,1);
// arc RB --> QB
  ( RB => QB ) = (1,1);
// arc GB --> Q
  ( GB => Q ) = (1,1);
// arc GB --> QB
  ( GB => QB ) = (1,1);
`ifdef no_tchk
`else
  $setup( negedge D,  posedge GB &&& (shcheckGBDlh === 1'b1), 1, notifier);
  $setup( posedge D,  posedge GB &&& (shcheckGBDlh === 1'b1), 1, notifier);
  $hold( posedge GB &&& (shcheckGBDlh === 1'b1),  posedge D, 1, notifier);
  $hold( posedge GB &&& (shcheckGBDlh === 1'b1),  negedge D, 1, notifier);
  $recovery( posedge RB,  posedge GB, 1, notifier);
  $hold( posedge GB,  posedge RB, 1, notifier);
  $width( negedge GB, 1, 0, notifier);
  $width( negedge RB, 1, 0, notifier);
  $width( posedge GB, 1, 0, notifier);
  $period( posedge GB, 0, notifier);
  $period( negedge GB, 0, notifier);
`endif
endspecify
endmodule // HDLATRPB2 //
`disable_portfaults
`nosuppress_faults
`endcelldefine
