-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu Jul 24 13:28:31 2025
-- Host        : ubuntu2204 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode synth_stub
--               /home/eden/Documents/ps-pl-nand-gate/ps-pl-nand-gate.gen/sources_1/bd/main_design/ip/main_design_custom_and_gate_0_0/main_design_custom_and_gate_0_0_stub.vhdl
-- Design      : main_design_custom_and_gate_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity main_design_custom_and_gate_0_0 is
  Port ( 
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    x : out STD_LOGIC
  );

  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_design_custom_and_gate_0_0 : entity is "main_design_custom_and_gate_0_0,custom_and_gate,{}";
  attribute CORE_GENERATION_INFO : string;
  attribute CORE_GENERATION_INFO of main_design_custom_and_gate_0_0 : entity is "main_design_custom_and_gate_0_0,custom_and_gate,{x_ipProduct=Vivado 2025.1,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=custom_and_gate,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of main_design_custom_and_gate_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of main_design_custom_and_gate_0_0 : entity is "module_ref";
end main_design_custom_and_gate_0_0;

architecture stub of main_design_custom_and_gate_0_0 is
  attribute syn_black_box : boolean;
  attribute black_box_pad_pin : string;
  attribute syn_black_box of stub : architecture is true;
  attribute black_box_pad_pin of stub : architecture is "a,b,x";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of stub : architecture is "custom_and_gate,Vivado 2025.1";
begin
end;
