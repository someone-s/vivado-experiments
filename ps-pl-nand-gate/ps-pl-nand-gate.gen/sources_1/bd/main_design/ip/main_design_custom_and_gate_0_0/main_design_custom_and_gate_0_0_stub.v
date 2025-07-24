// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
// Date        : Thu Jul 24 13:28:31 2025
// Host        : ubuntu2204 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode synth_stub
//               /home/eden/Documents/ps-pl-nand-gate/ps-pl-nand-gate.gen/sources_1/bd/main_design/ip/main_design_custom_and_gate_0_0/main_design_custom_and_gate_0_0_stub.v
// Design      : main_design_custom_and_gate_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* CHECK_LICENSE_TYPE = "main_design_custom_and_gate_0_0,custom_and_gate,{}" *) (* CORE_GENERATION_INFO = "main_design_custom_and_gate_0_0,custom_and_gate,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=custom_and_gate,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) 
(* IP_DEFINITION_SOURCE = "module_ref" *) (* X_CORE_INFO = "custom_and_gate,Vivado 2025.1" *) 
module main_design_custom_and_gate_0_0(a, b, x)
/* synthesis syn_black_box black_box_pad_pin="a,b,x" */;
  input a;
  input b;
  output x;
endmodule
