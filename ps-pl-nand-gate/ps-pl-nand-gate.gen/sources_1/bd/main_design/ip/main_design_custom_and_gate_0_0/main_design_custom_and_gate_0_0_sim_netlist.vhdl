-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu Jul 24 13:28:31 2025
-- Host        : ubuntu2204 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim
--               /home/eden/Documents/ps-pl-nand-gate/ps-pl-nand-gate.gen/sources_1/bd/main_design/ip/main_design_custom_and_gate_0_0/main_design_custom_and_gate_0_0_sim_netlist.vhdl
-- Design      : main_design_custom_and_gate_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_custom_and_gate_0_0 is
  port (
    a : in STD_LOGIC;
    b : in STD_LOGIC;
    x : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_design_custom_and_gate_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_design_custom_and_gate_0_0 : entity is "main_design_custom_and_gate_0_0,custom_and_gate,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of main_design_custom_and_gate_0_0 : entity is "yes";
  attribute IP_DEFINITION_SOURCE : string;
  attribute IP_DEFINITION_SOURCE of main_design_custom_and_gate_0_0 : entity is "module_ref";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of main_design_custom_and_gate_0_0 : entity is "custom_and_gate,Vivado 2025.1";
end main_design_custom_and_gate_0_0;

architecture STRUCTURE of main_design_custom_and_gate_0_0 is
begin
x_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => a,
      I1 => b,
      O => x
    );
end STRUCTURE;
