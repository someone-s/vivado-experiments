-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
-- Date        : Thu Jul 24 17:36:49 2025
-- Host        : ubuntu2204 running 64-bit Ubuntu 22.04.5 LTS
-- Command     : write_vhdl -force -mode funcsim -rename_top main_design_axi_gpio_0_2 -prefix
--               main_design_axi_gpio_0_2_ main_design_axi_gpio_0_2_sim_netlist.vhdl
-- Design      : main_design_axi_gpio_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_axi_gpio_0_2_address_decoder is
  port (
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0\ : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    Bus_RNW_reg_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    irpt_rdack : out STD_LOGIC;
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    irpt_wrack_d1_reg : out STD_LOGIC;
    \s_axi_wdata[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    intr_rd_ce_or_reduce : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    intr_wr_ce_or_reduce : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wdata[31]\ : out STD_LOGIC;
    ip2bus_wrack_i_D1_reg : out STD_LOGIC;
    ip2bus_rdack_i_D1_reg : out STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    Bus_RNW_reg_reg_1 : in STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg\ : in STD_LOGIC;
    \ip2bus_data_i_D1_reg[31]\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg\ : in STD_LOGIC;
    p_0_in0_in : in STD_LOGIC;
    \ip2bus_data_i_D1_reg[31]_0\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    s_axi_arready : in STD_LOGIC;
    s_axi_arready_0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_awready : in STD_LOGIC
  );
end main_design_axi_gpio_0_2_address_decoder;

architecture STRUCTURE of main_design_axi_gpio_0_2_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \^bus_rnw_reg_reg_0\ : STD_LOGIC;
  signal \^d\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19]\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0\ : STD_LOGIC;
  signal \^mem_decode_gen[0].cs_out_i_reg[0]_0\ : STD_LOGIC;
  signal ce_expnd_i_0 : STD_LOGIC;
  signal ce_expnd_i_1 : STD_LOGIC;
  signal ce_expnd_i_10 : STD_LOGIC;
  signal ce_expnd_i_11 : STD_LOGIC;
  signal ce_expnd_i_12 : STD_LOGIC;
  signal ce_expnd_i_13 : STD_LOGIC;
  signal ce_expnd_i_14 : STD_LOGIC;
  signal ce_expnd_i_15 : STD_LOGIC;
  signal ce_expnd_i_16 : STD_LOGIC;
  signal ce_expnd_i_17 : STD_LOGIC;
  signal ce_expnd_i_18 : STD_LOGIC;
  signal ce_expnd_i_19 : STD_LOGIC;
  signal ce_expnd_i_2 : STD_LOGIC;
  signal ce_expnd_i_3 : STD_LOGIC;
  signal ce_expnd_i_4 : STD_LOGIC;
  signal ce_expnd_i_5 : STD_LOGIC;
  signal ce_expnd_i_6 : STD_LOGIC;
  signal ce_expnd_i_7 : STD_LOGIC;
  signal ce_expnd_i_8 : STD_LOGIC;
  signal ce_expnd_i_9 : STD_LOGIC;
  signal cs_ce_clr : STD_LOGIC;
  signal \ip2bus_data_i_D1[30]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[30]_i_3_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[30]_i_4_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[31]_i_2_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[31]_i_3_n_0\ : STD_LOGIC;
  signal \ip2bus_data_i_D1[31]_i_4_n_0\ : STD_LOGIC;
  signal \^ip2bus_rdack_i_d1_reg\ : STD_LOGIC;
  signal \^ip2bus_wrack_i_d1_reg\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_17_in : STD_LOGIC;
  signal p_18_in : STD_LOGIC;
  signal p_19_in : STD_LOGIC;
  signal p_1_in_0 : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal pselect_hit_i_1 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of Bus_RNW_reg_i_1 : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \Dual.gpio2_OE[0]_i_2\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Dual.gpio2_OE[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \Dual.gpio2_OE[2]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \Dual.gpio2_OE[3]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of intr2bus_rdack_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of intr2bus_wrack_i_1 : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \ip2bus_data_i_D1[30]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \ip2bus_data_i_D1[31]_i_3\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of irpt_rdack_d1_i_1 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of irpt_wrack_d1_i_1 : label is "soft_lutpair3";
begin
  Bus_RNW_reg_reg_0 <= \^bus_rnw_reg_reg_0\;
  D(5 downto 0) <= \^d\(5 downto 0);
  \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0\ <= \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\;
  \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ <= \^mem_decode_gen[0].cs_out_i_reg[0]_0\;
  ip2bus_rdack_i_D1_reg <= \^ip2bus_rdack_i_d1_reg\;
  ip2bus_wrack_i_D1_reg <= \^ip2bus_wrack_i_d1_reg\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => Bus_RNW_reg_reg_1,
      I1 => Q,
      I2 => \^bus_rnw_reg_reg_0\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^bus_rnw_reg_reg_0\,
      R => '0'
    );
\Dual.gpio2_OE[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => Bus_RNW_reg_reg_1,
      I1 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      O => E(0)
    );
\Dual.gpio2_OE[0]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => s_axi_wdata(1),
      O => \s_axi_wdata[3]\(3)
    );
\Dual.gpio2_OE[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BA8A"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I2 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I3 => s_axi_wdata(0),
      O => \s_axi_wdata[3]\(2)
    );
\Dual.gpio2_OE[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I2 => s_axi_wdata(1),
      O => \s_axi_wdata[3]\(1)
    );
\Dual.gpio2_OE[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"D0"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I2 => s_axi_wdata(0),
      O => \s_axi_wdata[3]\(0)
    );
\Dual.gpio_OE[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF00000200"
    )
        port map (
      I0 => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I4 => Bus_RNW_reg_reg_1,
      I5 => SR(0),
      O => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0100"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0\,
      O => ce_expnd_i_19
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_19,
      Q => p_19_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      O => ce_expnd_i_9
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_9,
      Q => p_9_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      O => ce_expnd_i_8
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_8,
      Q => p_8_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      O => ce_expnd_i_7
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_7,
      Q => p_7_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      O => ce_expnd_i_6
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_6,
      Q => p_6_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      O => ce_expnd_i_5
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_5,
      Q => \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      O => ce_expnd_i_4
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_4,
      Q => p_4_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00080000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      O => ce_expnd_i_3
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_3,
      Q => p_3_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      O => ce_expnd_i_2
    );
\GEN_BKEND_CE_REGISTERS[17].ce_out_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_2,
      Q => p_2_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00800000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      O => ce_expnd_i_1
    );
\GEN_BKEND_CE_REGISTERS[18].ce_out_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_1,
      Q => p_1_in_0,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^ip2bus_wrack_i_d1_reg\,
      I1 => \^ip2bus_rdack_i_d1_reg\,
      I2 => s_axi_aresetn,
      O => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i[19]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      O => ce_expnd_i_0
    );
\GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19]\,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0200"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0\,
      O => ce_expnd_i_18
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_18,
      Q => p_18_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0400"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0\,
      O => ce_expnd_i_17
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_17,
      Q => p_17_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0\,
      O => ce_expnd_i_16
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => Q,
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(5),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(4),
      O => \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_16,
      Q => p_16_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00010000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      O => ce_expnd_i_15
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_15,
      Q => p_15_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"01000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      O => ce_expnd_i_14
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_14,
      Q => p_14_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00020000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      O => ce_expnd_i_13
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_13,
      Q => p_13_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      O => ce_expnd_i_12
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_12,
      Q => p_12_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      O => ce_expnd_i_11
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_11,
      Q => p_11_in,
      R => cs_ce_clr
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"04000000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      O => ce_expnd_i_10
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => ce_expnd_i_10,
      Q => p_10_in,
      R => cs_ce_clr
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => irpt_wrack_d1,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_7_in,
      O => irpt_wrack_d1_reg
    );
\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      O => intr_rd_ce_or_reduce
    );
\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FE0000"
    )
        port map (
      I0 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0\,
      I3 => ip2Bus_RdAck_intr_reg_hole_d1,
      I4 => \^bus_rnw_reg_reg_0\,
      O => ip2Bus_RdAck_intr_reg_hole0
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      O => intr_wr_ce_or_reduce
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => p_15_in,
      I1 => p_1_in_0,
      I2 => \GEN_BKEND_CE_REGISTERS[19].ce_out_i_reg_n_0_[19]\,
      I3 => p_13_in,
      I4 => p_14_in,
      O => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_11_in,
      I1 => p_12_in,
      I2 => p_9_in,
      I3 => p_10_in,
      O => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => p_4_in,
      I1 => p_6_in,
      I2 => p_2_in,
      I3 => p_3_in,
      O => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0\
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FE"
    )
        port map (
      I0 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_2_n_0\,
      I1 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_3_n_0\,
      I2 => \INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_i_4_n_0\,
      I3 => ip2Bus_WrAck_intr_reg_hole_d1,
      I4 => \^bus_rnw_reg_reg_0\,
      O => ip2Bus_WrAck_intr_reg_hole0
    );
\MEM_DECODE_GEN[0].cs_out_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(4),
      I1 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(5),
      I2 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3),
      I3 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2),
      I4 => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6),
      O => pselect_hit_i_1
    );
\MEM_DECODE_GEN[0].cs_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => pselect_hit_i_1,
      Q => \^mem_decode_gen[0].cs_out_i_reg[0]_0\,
      R => cs_ce_clr
    );
intr2bus_rdack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"44444440"
    )
        port map (
      I0 => irpt_rdack_d1,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_8_in,
      I3 => p_7_in,
      I4 => \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\,
      O => intr2bus_rdack0
    );
intr2bus_wrack_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000FE"
    )
        port map (
      I0 => p_8_in,
      I1 => p_7_in,
      I2 => \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\,
      I3 => irpt_wrack_d1,
      I4 => \^bus_rnw_reg_reg_0\,
      O => interrupt_wrce_strb
    );
\ip2bus_data_i_D1[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFF10000000"
    )
        port map (
      I0 => p_7_in,
      I1 => \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_8_in,
      I4 => ipif_glbl_irpt_enable_reg,
      I5 => \^d\(4),
      O => \^d\(5)
    );
\ip2bus_data_i_D1[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00040400"
    )
        port map (
      I0 => p_17_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_19_in,
      I3 => p_16_in,
      I4 => p_18_in,
      O => \^d\(4)
    );
\ip2bus_data_i_D1[28]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00020000003C0000"
    )
        port map (
      I0 => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg\,
      I1 => p_18_in,
      I2 => p_16_in,
      I3 => p_19_in,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => p_17_in,
      O => \^d\(3)
    );
\ip2bus_data_i_D1[29]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00020000003C0000"
    )
        port map (
      I0 => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg\,
      I1 => p_18_in,
      I2 => p_16_in,
      I3 => p_19_in,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => p_17_in,
      O => \^d\(2)
    );
\ip2bus_data_i_D1[30]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEAAA"
    )
        port map (
      I0 => \ip2bus_data_i_D1[30]_i_2_n_0\,
      I1 => p_1_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_7_in,
      I4 => \ip2bus_data_i_D1[30]_i_3_n_0\,
      I5 => \ip2bus_data_i_D1[30]_i_4_n_0\,
      O => \^d\(1)
    );
\ip2bus_data_i_D1[30]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => p_17_in,
      I1 => p_16_in,
      I2 => p_18_in,
      I3 => p_19_in,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg\,
      O => \ip2bus_data_i_D1[30]_i_2_n_0\
    );
\ip2bus_data_i_D1[30]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => p_7_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => p_0_in0_in,
      I3 => \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\,
      O => \ip2bus_data_i_D1[30]_i_3_n_0\
    );
\ip2bus_data_i_D1[30]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000023C0000"
    )
        port map (
      I0 => \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg\,
      I1 => p_18_in,
      I2 => p_16_in,
      I3 => p_19_in,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => p_17_in,
      O => \ip2bus_data_i_D1[30]_i_4_n_0\
    );
\ip2bus_data_i_D1[31]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFEAAA"
    )
        port map (
      I0 => \ip2bus_data_i_D1[31]_i_2_n_0\,
      I1 => \ip2bus_data_i_D1_reg[31]\,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => p_7_in,
      I4 => \ip2bus_data_i_D1[31]_i_3_n_0\,
      I5 => \ip2bus_data_i_D1[31]_i_4_n_0\,
      O => \^d\(0)
    );
\ip2bus_data_i_D1[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0002000000000000"
    )
        port map (
      I0 => p_17_in,
      I1 => p_16_in,
      I2 => p_18_in,
      I3 => p_19_in,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg\,
      O => \ip2bus_data_i_D1[31]_i_2_n_0\
    );
\ip2bus_data_i_D1[31]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => p_7_in,
      I1 => \^bus_rnw_reg_reg_0\,
      I2 => \ip2bus_data_i_D1_reg[31]_0\,
      I3 => \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\,
      O => \ip2bus_data_i_D1[31]_i_3_n_0\
    );
\ip2bus_data_i_D1[31]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000023C0000"
    )
        port map (
      I0 => \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg\,
      I1 => p_18_in,
      I2 => p_16_in,
      I3 => p_19_in,
      I4 => \^bus_rnw_reg_reg_0\,
      I5 => p_17_in,
      O => \ip2bus_data_i_D1[31]_i_4_n_0\
    );
ipif_glbl_irpt_enable_reg_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(4),
      I1 => p_8_in,
      I2 => \^bus_rnw_reg_reg_0\,
      I3 => ipif_glbl_irpt_enable_reg,
      O => \s_axi_wdata[31]\
    );
irpt_rdack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FE00"
    )
        port map (
      I0 => p_8_in,
      I1 => p_7_in,
      I2 => \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      O => irpt_rdack
    );
irpt_wrack_d1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00FE"
    )
        port map (
      I0 => p_8_in,
      I1 => p_7_in,
      I2 => \^gen_bkend_ce_registers[14].ce_out_i_reg[14]_0\,
      I3 => \^bus_rnw_reg_reg_0\,
      O => irpt_wrack
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => ip2bus_rdack_i_D1,
      I1 => s_axi_arready,
      I2 => s_axi_arready_0(2),
      I3 => s_axi_arready_0(1),
      I4 => s_axi_arready_0(3),
      I5 => s_axi_arready_0(0),
      O => \^ip2bus_rdack_i_d1_reg\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => ip2bus_wrack_i_D1,
      I1 => s_axi_awready,
      I2 => s_axi_arready_0(2),
      I3 => s_axi_arready_0(1),
      I4 => s_axi_arready_0(3),
      I5 => s_axi_arready_0(0),
      O => \^ip2bus_wrack_i_d1_reg\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_axi_gpio_0_2_interrupt_control is
  port (
    irpt_wrack_d1 : out STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    irpt_rdack_d1 : out STD_LOGIC;
    ipif_glbl_irpt_enable_reg : out STD_LOGIC;
    IP2INTC_Irpt_i : out STD_LOGIC;
    p_0_in0_in : out STD_LOGIC;
    \ip_irpt_enable_reg_reg[0]_0\ : out STD_LOGIC;
    ip2bus_wrack_i : out STD_LOGIC;
    ip2bus_rdack_i : out STD_LOGIC;
    bus2ip_reset : in STD_LOGIC;
    irpt_wrack : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    GPIO_intr : in STD_LOGIC;
    GPIO2_intr : in STD_LOGIC;
    interrupt_wrce_strb : in STD_LOGIC;
    irpt_rdack : in STD_LOGIC;
    intr2bus_rdack0 : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg_reg_0 : in STD_LOGIC;
    \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    ip2Bus_WrAck_intr_reg_hole : in STD_LOGIC;
    bus2ip_rnw : in STD_LOGIC;
    GPIO_xferAck_i : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole : in STD_LOGIC;
    p_5_in : in STD_LOGIC;
    Bus_RNW_reg : in STD_LOGIC
  );
end main_design_axi_gpio_0_2_interrupt_control;

architecture STRUCTURE of main_design_axi_gpio_0_2_interrupt_control is
  signal \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1\ : STD_LOGIC;
  signal \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\ : STD_LOGIC;
  signal \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal intr2bus_rdack : STD_LOGIC;
  signal intr2bus_wrack : STD_LOGIC;
  signal \ip_irpt_enable_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \ip_irpt_enable_reg[1]_i_1_n_0\ : STD_LOGIC;
  signal \^ip_irpt_enable_reg_reg[0]_0\ : STD_LOGIC;
  signal \^ipif_glbl_irpt_enable_reg\ : STD_LOGIC;
  signal \^p_0_in0_in\ : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
begin
  \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ <= \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\;
  \ip_irpt_enable_reg_reg[0]_0\ <= \^ip_irpt_enable_reg_reg[0]_0\;
  ipif_glbl_irpt_enable_reg <= \^ipif_glbl_irpt_enable_reg\;
  p_0_in0_in <= \^p_0_in0_in\;
  p_1_in <= \^p_1_in\;
\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => GPIO_intr,
      Q => \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1\,
      S => bus2ip_reset
    );
\DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1\,
      Q => \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2\,
      S => bus2ip_reset
    );
\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => GPIO2_intr,
      Q => \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1\,
      S => bus2ip_reset
    );
\DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2_reg\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1\,
      Q => \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2\,
      S => bus2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F44FF4F4"
    )
        port map (
      I0 => \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly2\,
      I1 => \DO_IRPT_INPUT[0].GEN_POS_EDGE_DETECT.irpt_dly1\,
      I2 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      I3 => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\,
      I4 => s_axi_wdata(0),
      O => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg[0]_i_1_n_0\,
      Q => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      R => bus2ip_reset
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F44FF4F4"
    )
        port map (
      I0 => \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly2\,
      I1 => \DO_IRPT_INPUT[1].GEN_POS_EDGE_DETECT.irpt_dly1\,
      I2 => \^p_1_in\,
      I3 => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\,
      I4 => s_axi_wdata(1),
      O => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\
    );
\GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg[1]_i_1_n_0\,
      Q => \^p_1_in\,
      R => bus2ip_reset
    );
\INTR_CTRLR_GEN.ip2intc_irpt_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F0808080"
    )
        port map (
      I0 => \^p_0_in0_in\,
      I1 => \^p_1_in\,
      I2 => \^ipif_glbl_irpt_enable_reg\,
      I3 => \^ip_irpt_enable_reg_reg[0]_0\,
      I4 => \^gen_ip_irpt_status_reg[0].gen_reg_status.ip_irpt_status_reg_reg[0]_0\,
      O => IP2INTC_Irpt_i
    );
intr2bus_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr2bus_rdack0,
      Q => intr2bus_rdack,
      R => bus2ip_reset
    );
intr2bus_wrack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => interrupt_wrce_strb,
      Q => intr2bus_wrack,
      R => bus2ip_reset
    );
ip2bus_rdack_i_D1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FEEE"
    )
        port map (
      I0 => ip2Bus_RdAck_intr_reg_hole,
      I1 => intr2bus_rdack,
      I2 => bus2ip_rnw,
      I3 => GPIO_xferAck_i,
      O => ip2bus_rdack_i
    );
ip2bus_wrack_i_D1_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFEE"
    )
        port map (
      I0 => ip2Bus_WrAck_intr_reg_hole,
      I1 => intr2bus_wrack,
      I2 => bus2ip_rnw,
      I3 => GPIO_xferAck_i,
      O => ip2bus_wrack_i
    );
\ip_irpt_enable_reg[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_5_in,
      I2 => Bus_RNW_reg,
      I3 => \^ip_irpt_enable_reg_reg[0]_0\,
      O => \ip_irpt_enable_reg[0]_i_1_n_0\
    );
\ip_irpt_enable_reg[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => p_5_in,
      I2 => Bus_RNW_reg,
      I3 => \^p_0_in0_in\,
      O => \ip_irpt_enable_reg[1]_i_1_n_0\
    );
\ip_irpt_enable_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ip_irpt_enable_reg[0]_i_1_n_0\,
      Q => \^ip_irpt_enable_reg_reg[0]_0\,
      R => bus2ip_reset
    );
\ip_irpt_enable_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \ip_irpt_enable_reg[1]_i_1_n_0\,
      Q => \^p_0_in0_in\,
      R => bus2ip_reset
    );
ipif_glbl_irpt_enable_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ipif_glbl_irpt_enable_reg_reg_0,
      Q => \^ipif_glbl_irpt_enable_reg\,
      R => bus2ip_reset
    );
irpt_rdack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_rdack,
      Q => irpt_rdack_d1,
      R => bus2ip_reset
    );
irpt_wrack_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irpt_wrack,
      Q => irpt_wrack_d1,
      R => bus2ip_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_axi_gpio_0_2_xpm_cdc_array_single is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 1 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of main_design_axi_gpio_0_2_xpm_cdc_array_single : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of main_design_axi_gpio_0_2_xpm_cdc_array_single : entity is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of main_design_axi_gpio_0_2_xpm_cdc_array_single : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of main_design_axi_gpio_0_2_xpm_cdc_array_single : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of main_design_axi_gpio_0_2_xpm_cdc_array_single : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of main_design_axi_gpio_0_2_xpm_cdc_array_single : entity is 2;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of main_design_axi_gpio_0_2_xpm_cdc_array_single : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of main_design_axi_gpio_0_2_xpm_cdc_array_single : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of main_design_axi_gpio_0_2_xpm_cdc_array_single : entity is "ARRAY_SINGLE";
end main_design_axi_gpio_0_2_xpm_cdc_array_single;

architecture STRUCTURE of main_design_axi_gpio_0_2_xpm_cdc_array_single is
  signal async_path_bit : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \syncstages_ff[0]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[2]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[2]\ : signal is "true";
  attribute async_reg of \syncstages_ff[2]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[2]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[3]\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[3]\ : signal is "true";
  attribute async_reg of \syncstages_ff[3]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[3]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][1]\ : label is "ARRAY_SINGLE";
begin
  async_path_bit(1 downto 0) <= src_in(1 downto 0);
  dest_out(1 downto 0) <= \syncstages_ff[3]\(1 downto 0);
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(0),
      Q => \syncstages_ff[0]\(0),
      R => '0'
    );
\syncstages_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(1),
      Q => \syncstages_ff[0]\(1),
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(0),
      Q => \syncstages_ff[1]\(0),
      R => '0'
    );
\syncstages_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(1),
      Q => \syncstages_ff[1]\(1),
      R => '0'
    );
\syncstages_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(0),
      Q => \syncstages_ff[2]\(0),
      R => '0'
    );
\syncstages_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(1),
      Q => \syncstages_ff[2]\(1),
      R => '0'
    );
\syncstages_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(0),
      Q => \syncstages_ff[3]\(0),
      R => '0'
    );
\syncstages_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(1),
      Q => \syncstages_ff[3]\(1),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity \main_design_axi_gpio_0_2_xpm_cdc_array_single__parameterized1\ is
  port (
    src_clk : in STD_LOGIC;
    src_in : in STD_LOGIC_VECTOR ( 3 downto 0 );
    dest_clk : in STD_LOGIC;
    dest_out : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \main_design_axi_gpio_0_2_xpm_cdc_array_single__parameterized1\ : entity is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \main_design_axi_gpio_0_2_xpm_cdc_array_single__parameterized1\ : entity is 0;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of \main_design_axi_gpio_0_2_xpm_cdc_array_single__parameterized1\ : entity is "xpm_cdc_array_single";
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \main_design_axi_gpio_0_2_xpm_cdc_array_single__parameterized1\ : entity is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \main_design_axi_gpio_0_2_xpm_cdc_array_single__parameterized1\ : entity is 0;
  attribute VERSION : integer;
  attribute VERSION of \main_design_axi_gpio_0_2_xpm_cdc_array_single__parameterized1\ : entity is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \main_design_axi_gpio_0_2_xpm_cdc_array_single__parameterized1\ : entity is 4;
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \main_design_axi_gpio_0_2_xpm_cdc_array_single__parameterized1\ : entity is "TRUE";
  attribute keep_hierarchy : string;
  attribute keep_hierarchy of \main_design_axi_gpio_0_2_xpm_cdc_array_single__parameterized1\ : entity is "true";
  attribute xpm_cdc : string;
  attribute xpm_cdc of \main_design_axi_gpio_0_2_xpm_cdc_array_single__parameterized1\ : entity is "ARRAY_SINGLE";
end \main_design_axi_gpio_0_2_xpm_cdc_array_single__parameterized1\;

architecture STRUCTURE of \main_design_axi_gpio_0_2_xpm_cdc_array_single__parameterized1\ is
  signal async_path_bit : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \syncstages_ff[0]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP : string;
  attribute RTL_KEEP of \syncstages_ff[0]\ : signal is "true";
  attribute async_reg : string;
  attribute async_reg of \syncstages_ff[0]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[0]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[1]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[1]\ : signal is "true";
  attribute async_reg of \syncstages_ff[1]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[1]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[2]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[2]\ : signal is "true";
  attribute async_reg of \syncstages_ff[2]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[2]\ : signal is "ARRAY_SINGLE";
  signal \syncstages_ff[3]\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  attribute RTL_KEEP of \syncstages_ff[3]\ : signal is "true";
  attribute async_reg of \syncstages_ff[3]\ : signal is "true";
  attribute xpm_cdc of \syncstages_ff[3]\ : signal is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean : boolean;
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][0]\ : label is std.standard.true;
  attribute KEEP : string;
  attribute KEEP of \syncstages_ff_reg[0][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[0][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[0][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[0][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[1][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[1][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[1][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[2][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[2][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[2][3]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][0]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][0]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][0]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][1]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][1]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][1]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][2]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][2]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][2]\ : label is "ARRAY_SINGLE";
  attribute ASYNC_REG_boolean of \syncstages_ff_reg[3][3]\ : label is std.standard.true;
  attribute KEEP of \syncstages_ff_reg[3][3]\ : label is "true";
  attribute XPM_CDC of \syncstages_ff_reg[3][3]\ : label is "ARRAY_SINGLE";
begin
  async_path_bit(3 downto 0) <= src_in(3 downto 0);
  dest_out(3 downto 0) <= \syncstages_ff[3]\(3 downto 0);
\syncstages_ff_reg[0][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(0),
      Q => \syncstages_ff[0]\(0),
      R => '0'
    );
\syncstages_ff_reg[0][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(1),
      Q => \syncstages_ff[0]\(1),
      R => '0'
    );
\syncstages_ff_reg[0][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(2),
      Q => \syncstages_ff[0]\(2),
      R => '0'
    );
\syncstages_ff_reg[0][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => async_path_bit(3),
      Q => \syncstages_ff[0]\(3),
      R => '0'
    );
\syncstages_ff_reg[1][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(0),
      Q => \syncstages_ff[1]\(0),
      R => '0'
    );
\syncstages_ff_reg[1][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(1),
      Q => \syncstages_ff[1]\(1),
      R => '0'
    );
\syncstages_ff_reg[1][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(2),
      Q => \syncstages_ff[1]\(2),
      R => '0'
    );
\syncstages_ff_reg[1][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[0]\(3),
      Q => \syncstages_ff[1]\(3),
      R => '0'
    );
\syncstages_ff_reg[2][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(0),
      Q => \syncstages_ff[2]\(0),
      R => '0'
    );
\syncstages_ff_reg[2][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(1),
      Q => \syncstages_ff[2]\(1),
      R => '0'
    );
\syncstages_ff_reg[2][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(2),
      Q => \syncstages_ff[2]\(2),
      R => '0'
    );
\syncstages_ff_reg[2][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[1]\(3),
      Q => \syncstages_ff[2]\(3),
      R => '0'
    );
\syncstages_ff_reg[3][0]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(0),
      Q => \syncstages_ff[3]\(0),
      R => '0'
    );
\syncstages_ff_reg[3][1]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(1),
      Q => \syncstages_ff[3]\(1),
      R => '0'
    );
\syncstages_ff_reg[3][2]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(2),
      Q => \syncstages_ff[3]\(2),
      R => '0'
    );
\syncstages_ff_reg[3][3]\: unisim.vcomponents.FDRE
     port map (
      C => dest_clk,
      CE => '1',
      D => \syncstages_ff[2]\(3),
      Q => \syncstages_ff[3]\(3),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_axi_gpio_0_2_GPIO_Core is
  port (
    GPIO_intr : out STD_LOGIC;
    GPIO2_intr : out STD_LOGIC;
    GPIO_xferAck_i : out STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg\ : out STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg\ : out STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg\ : out STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg\ : out STD_LOGIC;
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg\ : out STD_LOGIC;
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    \Dual.gpio2_Data_In_reg[0]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Dual.gpio2_OE_reg[0]_0\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \Dual.gpio_OE_reg[0]_0\ : out STD_LOGIC;
    \Dual.gpio_OE_reg[1]_0\ : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    gpio2_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    bus2ip_reset : in STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg[31]_0\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg[30]_0\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg[29]_0\ : in STD_LOGIC;
    reg3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[31]_0\ : in STD_LOGIC;
    reg1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_cs : in STD_LOGIC_VECTOR ( 0 to 0 );
    bus2ip_rnw : in STD_LOGIC;
    E : in STD_LOGIC_VECTOR ( 0 to 0 );
    D : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Dual.gpio_OE_reg[0]_1\ : in STD_LOGIC_VECTOR ( 0 to 0 );
    \Dual.gpio_OE_reg[0]_2\ : in STD_LOGIC
  );
end main_design_axi_gpio_0_2_GPIO_Core;

architecture STRUCTURE of main_design_axi_gpio_0_2_GPIO_Core is
  signal \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[3]\ : STD_LOGIC;
  signal \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0]\ : STD_LOGIC;
  signal \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[1]\ : STD_LOGIC;
  signal \^dual.gpio2_data_in_reg[0]_0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \Dual.gpio2_data_in_xor\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \Dual.gpio2_io_i_d2\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \Dual.gpio_OE[0]_i_1_n_0\ : STD_LOGIC;
  signal \Dual.gpio_OE[1]_i_1_n_0\ : STD_LOGIC;
  signal \^dual.gpio_oe_reg[0]_0\ : STD_LOGIC;
  signal \^dual.gpio_oe_reg[1]_0\ : STD_LOGIC;
  signal \^gpio_xferack_i\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal Read_Reg_Rst : STD_LOGIC;
  signal gpio_data_in_xor : STD_LOGIC_VECTOR ( 0 to 1 );
  signal gpio_io_i_d2 : STD_LOGIC_VECTOR ( 0 to 1 );
  signal gpio_xferAck_Reg : STD_LOGIC;
  signal iGPIO_xferAck : STD_LOGIC;
  signal or_reduce : STD_LOGIC;
  signal or_reduce4_out : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  attribute DEST_SYNC_FF : integer;
  attribute DEST_SYNC_FF of \Dual.INPUT_DOUBLE_REGS4\ : label is 4;
  attribute INIT_SYNC_FF : integer;
  attribute INIT_SYNC_FF of \Dual.INPUT_DOUBLE_REGS4\ : label is 0;
  attribute SIM_ASSERT_CHK : integer;
  attribute SIM_ASSERT_CHK of \Dual.INPUT_DOUBLE_REGS4\ : label is 0;
  attribute SRC_INPUT_REG : integer;
  attribute SRC_INPUT_REG of \Dual.INPUT_DOUBLE_REGS4\ : label is 0;
  attribute VERSION : integer;
  attribute VERSION of \Dual.INPUT_DOUBLE_REGS4\ : label is 0;
  attribute WIDTH : integer;
  attribute WIDTH of \Dual.INPUT_DOUBLE_REGS4\ : label is 2;
  attribute XPM_CDC : string;
  attribute XPM_CDC of \Dual.INPUT_DOUBLE_REGS4\ : label is "ARRAY_SINGLE";
  attribute XPM_MODULE : string;
  attribute XPM_MODULE of \Dual.INPUT_DOUBLE_REGS4\ : label is "TRUE";
  attribute DEST_SYNC_FF of \Dual.INPUT_DOUBLE_REGS5\ : label is 4;
  attribute INIT_SYNC_FF of \Dual.INPUT_DOUBLE_REGS5\ : label is 0;
  attribute SIM_ASSERT_CHK of \Dual.INPUT_DOUBLE_REGS5\ : label is 0;
  attribute SRC_INPUT_REG of \Dual.INPUT_DOUBLE_REGS5\ : label is 0;
  attribute VERSION of \Dual.INPUT_DOUBLE_REGS5\ : label is 0;
  attribute WIDTH of \Dual.INPUT_DOUBLE_REGS5\ : label is 4;
  attribute XPM_CDC of \Dual.INPUT_DOUBLE_REGS5\ : label is "ARRAY_SINGLE";
  attribute XPM_MODULE of \Dual.INPUT_DOUBLE_REGS5\ : label is "TRUE";
begin
  \Dual.gpio2_Data_In_reg[0]_0\(3 downto 0) <= \^dual.gpio2_data_in_reg[0]_0\(3 downto 0);
  \Dual.gpio_OE_reg[0]_0\ <= \^dual.gpio_oe_reg[0]_0\;
  \Dual.gpio_OE_reg[1]_0\ <= \^dual.gpio_oe_reg[1]_0\;
  GPIO_xferAck_i <= \^gpio_xferack_i\;
  Q(1 downto 0) <= \^q\(1 downto 0);
\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => reg1(0),
      Q => \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg\,
      R => Read_Reg_Rst
    );
\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[31]_0\,
      Q => \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg\,
      R => Read_Reg_Rst
    );
\Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => reg3(0),
      Q => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg\,
      R => Read_Reg_Rst
    );
\Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg[29]_0\,
      Q => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg\,
      R => Read_Reg_Rst
    );
\Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg[30]_0\,
      Q => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg\,
      R => Read_Reg_Rst
    );
\Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3[31]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"EFFF"
    )
        port map (
      I0 => gpio_xferAck_Reg,
      I1 => \^gpio_xferack_i\,
      I2 => bus2ip_cs(0),
      I3 => bus2ip_rnw,
      O => Read_Reg_Rst
    );
\Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg[31]_0\,
      Q => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg\,
      R => Read_Reg_Rst
    );
\Dual.INPUT_DOUBLE_REGS4\: entity work.main_design_axi_gpio_0_2_xpm_cdc_array_single
     port map (
      dest_clk => s_axi_aclk,
      dest_out(1) => gpio_io_i_d2(0),
      dest_out(0) => gpio_io_i_d2(1),
      src_clk => '0',
      src_in(1 downto 0) => gpio_io_i(1 downto 0)
    );
\Dual.INPUT_DOUBLE_REGS5\: entity work.\main_design_axi_gpio_0_2_xpm_cdc_array_single__parameterized1\
     port map (
      dest_clk => s_axi_aclk,
      dest_out(3) => \Dual.gpio2_io_i_d2\(0),
      dest_out(2) => \Dual.gpio2_io_i_d2\(1),
      dest_out(1) => \Dual.gpio2_io_i_d2\(2),
      dest_out(0) => \Dual.gpio2_io_i_d2\(3),
      src_clk => '0',
      src_in(3 downto 0) => gpio2_io_i(3 downto 0)
    );
\Dual.gen_interrupt_dual.GPIO2_intr_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => or_reduce,
      Q => GPIO2_intr,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.GPIO_intr_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0]\,
      I1 => \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[1]\,
      O => or_reduce4_out
    );
\Dual.gen_interrupt_dual.GPIO_intr_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => or_reduce4_out,
      Q => GPIO_intr,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Dual.gpio2_io_i_d2\(0),
      I1 => \^dual.gpio2_data_in_reg[0]_0\(3),
      O => \Dual.gpio2_data_in_xor\(0)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Dual.gpio2_io_i_d2\(1),
      I1 => \^dual.gpio2_data_in_reg[0]_0\(2),
      O => \Dual.gpio2_data_in_xor\(1)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Dual.gpio2_io_i_d2\(2),
      I1 => \^dual.gpio2_data_in_reg[0]_0\(1),
      O => \Dual.gpio2_data_in_xor\(2)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \Dual.gpio2_io_i_d2\(3),
      I1 => \^dual.gpio2_data_in_reg[0]_0\(0),
      O => \Dual.gpio2_data_in_xor\(3)
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio2_data_in_xor\(0),
      Q => \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0]\,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio2_data_in_xor\(1),
      Q => p_0_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio2_data_in_xor\(2),
      Q => p_1_in,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio2_data_in_xor\(3),
      Q => \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[3]\,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(0),
      I1 => \^q\(1),
      O => gpio_data_in_xor(0)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => gpio_io_i_d2(1),
      I1 => \^q\(0),
      O => gpio_data_in_xor(1)
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(0),
      Q => \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[0]\,
      R => bus2ip_reset
    );
\Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_data_in_xor(1),
      Q => \Dual.gen_interrupt_dual.gpio_data_in_xor_reg_reg_n_0_[1]\,
      R => bus2ip_reset
    );
\Dual.gpio2_Data_In_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio2_io_i_d2\(0),
      Q => \^dual.gpio2_data_in_reg[0]_0\(3),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio2_io_i_d2\(1),
      Q => \^dual.gpio2_data_in_reg[0]_0\(2),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio2_io_i_d2\(2),
      Q => \^dual.gpio2_data_in_reg[0]_0\(1),
      R => '0'
    );
\Dual.gpio2_Data_In_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio2_io_i_d2\(3),
      Q => \^dual.gpio2_data_in_reg[0]_0\(0),
      R => '0'
    );
\Dual.gpio2_OE_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(3),
      Q => \Dual.gpio2_OE_reg[0]_0\(3),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(2),
      Q => \Dual.gpio2_OE_reg[0]_0\(2),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[2]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(1),
      Q => \Dual.gpio2_OE_reg[0]_0\(1),
      S => bus2ip_reset
    );
\Dual.gpio2_OE_reg[3]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => E(0),
      D => D(0),
      Q => \Dual.gpio2_OE_reg[0]_0\(0),
      S => bus2ip_reset
    );
\Dual.gpio_Data_In_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(0),
      Q => \^q\(1),
      R => '0'
    );
\Dual.gpio_Data_In_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => gpio_io_i_d2(1),
      Q => \^q\(0),
      R => '0'
    );
\Dual.gpio_OE[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => s_axi_wdata(3),
      I1 => \Dual.gpio_OE_reg[0]_1\(0),
      I2 => bus2ip_cs(0),
      I3 => s_axi_wdata(1),
      I4 => \Dual.gpio_OE_reg[0]_2\,
      I5 => \^dual.gpio_oe_reg[0]_0\,
      O => \Dual.gpio_OE[0]_i_1_n_0\
    );
\Dual.gpio_OE[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"BA8AFFFFBA8A0000"
    )
        port map (
      I0 => s_axi_wdata(2),
      I1 => \Dual.gpio_OE_reg[0]_1\(0),
      I2 => bus2ip_cs(0),
      I3 => s_axi_wdata(0),
      I4 => \Dual.gpio_OE_reg[0]_2\,
      I5 => \^dual.gpio_oe_reg[1]_0\,
      O => \Dual.gpio_OE[1]_i_1_n_0\
    );
\Dual.gpio_OE_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio_OE[0]_i_1_n_0\,
      Q => \^dual.gpio_oe_reg[0]_0\,
      S => bus2ip_reset
    );
\Dual.gpio_OE_reg[1]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \Dual.gpio_OE[1]_i_1_n_0\,
      Q => \^dual.gpio_oe_reg[1]_0\,
      S => bus2ip_reset
    );
gpio_xferAck_Reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \^gpio_xferack_i\,
      Q => gpio_xferAck_Reg,
      R => bus2ip_reset
    );
iGPIO_xferAck_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => gpio_xferAck_Reg,
      I1 => bus2ip_cs(0),
      I2 => \^gpio_xferack_i\,
      O => iGPIO_xferAck
    );
iGPIO_xferAck_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => iGPIO_xferAck,
      Q => \^gpio_xferack_i\,
      R => bus2ip_reset
    );
\or_reduce_inferred__0/i_\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[3]\,
      I1 => \Dual.gen_interrupt_dual.gpio2_data_in_xor_reg_reg_n_0_[0]\,
      I2 => p_0_in,
      I3 => p_1_in,
      O => or_reduce
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_axi_gpio_0_2_slave_attachment is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\ : out STD_LOGIC;
    bus2ip_rnw_i_reg_0 : out STD_LOGIC;
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    Bus_RNW_reg_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg_0 : out STD_LOGIC;
    s_axi_bvalid_i_reg_0 : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    irpt_rdack : out STD_LOGIC;
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    irpt_wrack_d1_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wdata[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    intr_rd_ce_or_reduce : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    intr_wr_ce_or_reduce : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Dual.gpio2_OE_reg[3]\ : out STD_LOGIC;
    \Dual.gpio2_OE_reg[2]\ : out STD_LOGIC;
    \Dual.gpio2_OE_reg[1]\ : out STD_LOGIC;
    reg3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Dual.gpio_OE_reg[1]\ : out STD_LOGIC;
    reg1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_rdack_i_D1_reg : out STD_LOGIC;
    ip2bus_wrack_i_D1_reg : out STD_LOGIC;
    \s_axi_wdata[31]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg\ : in STD_LOGIC;
    \ip2bus_data_i_D1_reg[31]\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg\ : in STD_LOGIC;
    p_0_in0_in : in STD_LOGIC;
    \ip2bus_data_i_D1_reg[31]_0\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[31]\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]_0\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]_0\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end main_design_axi_gpio_0_2_slave_attachment;

architecture STRUCTURE of main_design_axi_gpio_0_2_slave_attachment is
  signal \FSM_onehot_state[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[2]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state[3]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_state_reg_n_0_[3]\ : STD_LOGIC;
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^q\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 0 to 6 );
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \^bus2ip_rnw_i_reg_0\ : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal \^ip2bus_rdack_i_d1_reg\ : STD_LOGIC;
  signal \^ip2bus_wrack_i_d1_reg\ : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_read_reg_n_0 : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_i_2_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal \p_1_in__0\ : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal p_5_in : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst_i_1_n_0 : STD_LOGIC;
  signal s_axi_bresp_i : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_bvalid_i_reg_0\ : STD_LOGIC;
  signal s_axi_rresp_i : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_rvalid_i_reg_0\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal \state1__2\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state_reg_n_0_[0]\ : STD_LOGIC;
  signal \state_reg_n_0_[1]\ : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[0]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[1]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[2]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute FSM_ENCODED_STATES of \FSM_onehot_state_reg[3]\ : label is "iSTATE:0010,iSTATE0:0100,iSTATE1:1000,iSTATE2:0001";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[5]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[6]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[7]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[8]_i_2\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \state[1]_i_2\ : label is "soft_lutpair18";
begin
  Q(0) <= \^q\(0);
  SR(0) <= \^sr\(0);
  bus2ip_rnw_i_reg_0 <= \^bus2ip_rnw_i_reg_0\;
  ip2bus_rdack_i_D1_reg <= \^ip2bus_rdack_i_d1_reg\;
  ip2bus_wrack_i_D1_reg <= \^ip2bus_wrack_i_d1_reg\;
  s_axi_bvalid_i_reg_0 <= \^s_axi_bvalid_i_reg_0\;
  s_axi_rvalid_i_reg_0 <= \^s_axi_rvalid_i_reg_0\;
\Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020300"
    )
        port map (
      I0 => \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]_0\,
      I1 => \^q\(0),
      I2 => bus2ip_addr(0),
      I3 => \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\(1),
      I4 => bus2ip_addr(6),
      O => reg1(0)
    );
\Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"02020300"
    )
        port map (
      I0 => \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[31]\,
      I1 => \^q\(0),
      I2 => bus2ip_addr(0),
      I3 => \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\(0),
      I4 => bus2ip_addr(6),
      O => \Dual.gpio_OE_reg[1]\
    );
\Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A000C0"
    )
        port map (
      I0 => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]\(3),
      I1 => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]_0\(3),
      I2 => \^q\(0),
      I3 => bus2ip_addr(0),
      I4 => bus2ip_addr(6),
      O => reg3(0)
    );
\Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A000C0"
    )
        port map (
      I0 => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]\(2),
      I1 => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]_0\(2),
      I2 => \^q\(0),
      I3 => bus2ip_addr(0),
      I4 => bus2ip_addr(6),
      O => \Dual.gpio2_OE_reg[1]\
    );
\Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A000C0"
    )
        port map (
      I0 => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]\(1),
      I1 => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]_0\(1),
      I2 => \^q\(0),
      I3 => bus2ip_addr(0),
      I4 => bus2ip_addr(6),
      O => \Dual.gpio2_OE_reg[2]\
    );
\Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3[31]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00A000C0"
    )
        port map (
      I0 => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]\(0),
      I1 => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]_0\(0),
      I2 => \^q\(0),
      I3 => bus2ip_addr(0),
      I4 => bus2ip_addr(6),
      O => \Dual.gpio2_OE_reg[3]\
    );
\FSM_onehot_state[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF150015001500"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_awvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \state1__2\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => \FSM_onehot_state[0]_i_1_n_0\
    );
\FSM_onehot_state[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8F88"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \^ip2bus_rdack_i_d1_reg\,
      I3 => s_axi_rresp_i,
      O => \FSM_onehot_state[1]_i_1_n_0\
    );
\FSM_onehot_state[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0800FFFF08000800"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      I3 => \FSM_onehot_state_reg_n_0_[0]\,
      I4 => \^ip2bus_wrack_i_d1_reg\,
      I5 => s_axi_bresp_i,
      O => \FSM_onehot_state[2]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F888F888FFFFF888"
    )
        port map (
      I0 => \^ip2bus_wrack_i_d1_reg\,
      I1 => s_axi_bresp_i,
      I2 => s_axi_rresp_i,
      I3 => \^ip2bus_rdack_i_d1_reg\,
      I4 => \FSM_onehot_state_reg_n_0_[3]\,
      I5 => \state1__2\,
      O => \FSM_onehot_state[3]_i_1_n_0\
    );
\FSM_onehot_state[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid_i_reg_0\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid_i_reg_0\,
      O => \state1__2\
    );
\FSM_onehot_state_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[0]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[0]\,
      S => \^sr\(0)
    );
\FSM_onehot_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[1]_i_1_n_0\,
      Q => s_axi_rresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[2]_i_1_n_0\,
      Q => s_axi_bresp_i,
      R => \^sr\(0)
    );
\FSM_onehot_state_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \FSM_onehot_state[3]_i_1_n_0\,
      Q => \FSM_onehot_state_reg_n_0_[3]\,
      R => \^sr\(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => \state_reg_n_0_[0]\,
      I1 => \state_reg_n_0_[1]\,
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3),
      R => clear
    );
I_DECODER: entity work.main_design_axi_gpio_0_2_address_decoder
     port map (
      Bus_RNW_reg_reg_0 => Bus_RNW_reg_reg,
      Bus_RNW_reg_reg_1 => \^bus2ip_rnw_i_reg_0\,
      D(5 downto 0) => D(5 downto 0),
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg\ => \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg\,
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg\ => \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg\,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg\ => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg\,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg\ => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg\,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg\ => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg\,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg\ => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg\,
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]_0\ => \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(6) => bus2ip_addr(0),
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(5) => bus2ip_addr(1),
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(4) => bus2ip_addr(2),
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(3) => bus2ip_addr(3),
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(2) => bus2ip_addr(4),
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(1) => \^q\(0),
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\(0) => bus2ip_addr(6),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_1\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\,
      Q => start2,
      SR(0) => \^sr\(0),
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr_rd_ce_or_reduce => intr_rd_ce_or_reduce,
      intr_wr_ce_or_reduce => intr_wr_ce_or_reduce,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      \ip2bus_data_i_D1_reg[31]\ => \ip2bus_data_i_D1_reg[31]\,
      \ip2bus_data_i_D1_reg[31]_0\ => \ip2bus_data_i_D1_reg[31]_0\,
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_rdack_i_D1_reg => \^ip2bus_rdack_i_d1_reg\,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      ip2bus_wrack_i_D1_reg => \^ip2bus_wrack_i_d1_reg\,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      irpt_wrack_d1_reg => irpt_wrack_d1_reg,
      p_0_in0_in => p_0_in0_in,
      p_1_in => p_1_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => is_read_reg_n_0,
      s_axi_arready_0(3 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg\(3 downto 0),
      s_axi_awready => is_write_reg_n_0,
      s_axi_wdata(4 downto 0) => s_axi_wdata(4 downto 0),
      \s_axi_wdata[31]\ => \s_axi_wdata[31]\,
      \s_axi_wdata[3]\(3 downto 0) => \s_axi_wdata[3]\(3 downto 0)
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(2)
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(3)
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_awaddr(2),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(4)
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_awaddr(3),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(5)
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_awaddr(4),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(6)
    );
\bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_awaddr(5),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(7)
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_awaddr(6),
      I2 => s_axi_arvalid,
      O => \p_1_in__0\(8)
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(2),
      Q => bus2ip_addr(6),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(3),
      Q => \^q\(0),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(4),
      Q => bus2ip_addr(4),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(5),
      Q => bus2ip_addr(3),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(6),
      Q => bus2ip_addr(2),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(7),
      Q => bus2ip_addr(1),
      R => \^sr\(0)
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \p_1_in__0\(8),
      Q => bus2ip_addr(0),
      R => \^sr\(0)
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => s_axi_arvalid,
      Q => \^bus2ip_rnw_i_reg_0\,
      R => \^sr\(0)
    );
is_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"8BBB8888"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \FSM_onehot_state_reg_n_0_[0]\,
      I2 => \state1__2\,
      I3 => \FSM_onehot_state_reg_n_0_[3]\,
      I4 => is_read_reg_n_0,
      O => is_read_i_1_n_0
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_read_i_1_n_0,
      Q => is_read_reg_n_0,
      R => \^sr\(0)
    );
is_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000FFFF20000000"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_arvalid,
      I2 => s_axi_awvalid,
      I3 => s_axi_wvalid,
      I4 => is_write_i_2_n_0,
      I5 => is_write_reg_n_0,
      O => is_write_i_1_n_0
    );
is_write_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEAEAEAAAAAAAAA"
    )
        port map (
      I0 => \FSM_onehot_state_reg_n_0_[0]\,
      I1 => s_axi_bready,
      I2 => \^s_axi_bvalid_i_reg_0\,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid_i_reg_0\,
      I5 => \FSM_onehot_state_reg_n_0_[3]\,
      O => is_write_i_2_n_0
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => \^sr\(0)
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => rst_i_1_n_0
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => rst_i_1_n_0,
      Q => \^sr\(0),
      R => '0'
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^ip2bus_wrack_i_d1_reg\,
      I1 => \state_reg_n_0_[1]\,
      I2 => \state_reg_n_0_[0]\,
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid_i_reg_0\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid_i_reg_0\,
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(0),
      Q => s_axi_rdata(0),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(1),
      Q => s_axi_rdata(1),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(2),
      Q => s_axi_rdata(2),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[30]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(4),
      Q => s_axi_rdata(4),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(5),
      Q => s_axi_rdata(5),
      R => \^sr\(0)
    );
\s_axi_rdata_i_reg[3]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => s_axi_rresp_i,
      D => \s_axi_rdata_i_reg[31]_0\(3),
      Q => s_axi_rdata(3),
      R => \^sr\(0)
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^ip2bus_rdack_i_d1_reg\,
      I1 => \state_reg_n_0_[0]\,
      I2 => \state_reg_n_0_[1]\,
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid_i_reg_0\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid_i_reg_0\,
      R => \^sr\(0)
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => \^sr\(0)
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0FCAFFCA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \^ip2bus_wrack_i_d1_reg\,
      I2 => \state_reg_n_0_[1]\,
      I3 => \state_reg_n_0_[0]\,
      I4 => \state1__2\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"55FFFF0C5500FF0C"
    )
        port map (
      I0 => \state1__2\,
      I1 => p_5_in,
      I2 => s_axi_arvalid,
      I3 => \state_reg_n_0_[1]\,
      I4 => \state_reg_n_0_[0]\,
      I5 => \^ip2bus_rdack_i_d1_reg\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      O => p_5_in
    );
\state_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => \state_reg_n_0_[0]\,
      R => \^sr\(0)
    );
\state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => \state_reg_n_0_[1]\,
      R => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_axi_gpio_0_2_axi_lite_ipif is
  port (
    bus2ip_reset : out STD_LOGIC;
    p_5_in : out STD_LOGIC;
    bus2ip_rnw : out STD_LOGIC;
    bus2ip_cs : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid_i_reg : out STD_LOGIC;
    s_axi_bvalid_i_reg : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 5 downto 0 );
    irpt_rdack : out STD_LOGIC;
    intr2bus_rdack0 : out STD_LOGIC;
    irpt_wrack : out STD_LOGIC;
    interrupt_wrce_strb : out STD_LOGIC;
    irpt_wrack_d1_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 0 to 0 );
    \s_axi_wdata[3]\ : out STD_LOGIC_VECTOR ( 3 downto 0 );
    \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ : out STD_LOGIC;
    ip2Bus_WrAck_intr_reg_hole0 : out STD_LOGIC;
    intr_rd_ce_or_reduce : out STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole0 : out STD_LOGIC;
    intr_wr_ce_or_reduce : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Dual.gpio2_OE_reg[3]\ : out STD_LOGIC;
    \Dual.gpio2_OE_reg[2]\ : out STD_LOGIC;
    \Dual.gpio2_OE_reg[1]\ : out STD_LOGIC;
    reg3 : out STD_LOGIC_VECTOR ( 0 to 0 );
    \Dual.gpio_OE_reg[1]\ : out STD_LOGIC;
    reg1 : out STD_LOGIC_VECTOR ( 0 to 0 );
    ip2bus_rdack_i_D1_reg : out STD_LOGIC;
    ip2bus_wrack_i_D1_reg : out STD_LOGIC;
    \s_axi_wdata[31]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    ipif_glbl_irpt_enable_reg : in STD_LOGIC;
    irpt_rdack_d1 : in STD_LOGIC;
    irpt_wrack_d1 : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 4 downto 0 );
    ip2Bus_WrAck_intr_reg_hole_d1 : in STD_LOGIC;
    ip2Bus_RdAck_intr_reg_hole_d1 : in STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg\ : in STD_LOGIC;
    \ip2bus_data_i_D1_reg[31]\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg\ : in STD_LOGIC;
    p_0_in0_in : in STD_LOGIC;
    \ip2bus_data_i_D1_reg[31]_0\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]_0\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[31]\ : in STD_LOGIC;
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\ : in STD_LOGIC_VECTOR ( 1 downto 0 );
    \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]_0\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    \s_axi_rdata_i_reg[31]\ : in STD_LOGIC_VECTOR ( 5 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    ip2bus_rdack_i_D1 : in STD_LOGIC;
    ip2bus_wrack_i_D1 : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 )
  );
end main_design_axi_gpio_0_2_axi_lite_ipif;

architecture STRUCTURE of main_design_axi_gpio_0_2_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.main_design_axi_gpio_0_2_slave_attachment
     port map (
      Bus_RNW_reg_reg => Bus_RNW_reg,
      D(5 downto 0) => D(5 downto 0),
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg\ => \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg\,
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\(1 downto 0) => \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\(1 downto 0),
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]_0\ => \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]_0\,
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg\ => \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg\,
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[31]\ => \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[31]\,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg\ => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg\,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]\(3 downto 0) => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]\(3 downto 0),
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]_0\(3 downto 0) => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]_0\(3 downto 0),
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg\ => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg\,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg\ => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg\,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg\ => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg\,
      \Dual.gpio2_OE_reg[1]\ => \Dual.gpio2_OE_reg[1]\,
      \Dual.gpio2_OE_reg[2]\ => \Dual.gpio2_OE_reg[2]\,
      \Dual.gpio2_OE_reg[3]\ => \Dual.gpio2_OE_reg[3]\,
      \Dual.gpio_OE_reg[1]\ => \Dual.gpio_OE_reg[1]\,
      E(0) => E(0),
      \GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\ => p_5_in,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => bus2ip_cs(0),
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]_0\ => \MEM_DECODE_GEN[0].cs_out_i_reg[0]\,
      Q(0) => Q(0),
      SR(0) => bus2ip_reset,
      bus2ip_rnw_i_reg_0 => bus2ip_rnw,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr_rd_ce_or_reduce => intr_rd_ce_or_reduce,
      intr_wr_ce_or_reduce => intr_wr_ce_or_reduce,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      \ip2bus_data_i_D1_reg[31]\ => \ip2bus_data_i_D1_reg[31]\,
      \ip2bus_data_i_D1_reg[31]_0\ => \ip2bus_data_i_D1_reg[31]_0\,
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_rdack_i_D1_reg => ip2bus_rdack_i_D1_reg,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      ip2bus_wrack_i_D1_reg => ip2bus_wrack_i_D1_reg,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      irpt_wrack_d1_reg => irpt_wrack_d1_reg,
      p_0_in0_in => p_0_in0_in,
      p_1_in => p_1_in,
      reg1(0) => reg1(0),
      reg3(0) => reg3(0),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(6 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(6 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_i_reg_0 => s_axi_bvalid_i_reg,
      s_axi_rdata(5 downto 0) => s_axi_rdata(5 downto 0),
      \s_axi_rdata_i_reg[31]_0\(5 downto 0) => \s_axi_rdata_i_reg[31]\(5 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg_0 => s_axi_rvalid_i_reg,
      s_axi_wdata(4 downto 0) => s_axi_wdata(4 downto 0),
      \s_axi_wdata[31]\ => \s_axi_wdata[31]\,
      \s_axi_wdata[3]\(3 downto 0) => \s_axi_wdata[3]\(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_axi_gpio_0_2_axi_gpio is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_io_o : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio_io_t : out STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio2_io_o : out STD_LOGIC_VECTOR ( 3 downto 0 );
    gpio2_io_t : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute C_ALL_INPUTS : integer;
  attribute C_ALL_INPUTS of main_design_axi_gpio_0_2_axi_gpio : entity is 1;
  attribute C_ALL_INPUTS_2 : integer;
  attribute C_ALL_INPUTS_2 of main_design_axi_gpio_0_2_axi_gpio : entity is 1;
  attribute C_ALL_OUTPUTS : integer;
  attribute C_ALL_OUTPUTS of main_design_axi_gpio_0_2_axi_gpio : entity is 0;
  attribute C_ALL_OUTPUTS_2 : integer;
  attribute C_ALL_OUTPUTS_2 of main_design_axi_gpio_0_2_axi_gpio : entity is 0;
  attribute C_DOUT_DEFAULT : string;
  attribute C_DOUT_DEFAULT of main_design_axi_gpio_0_2_axi_gpio : entity is "32'b00000000000000000000000000000000";
  attribute C_DOUT_DEFAULT_2 : string;
  attribute C_DOUT_DEFAULT_2 of main_design_axi_gpio_0_2_axi_gpio : entity is "32'b00000000000000000000000000000000";
  attribute C_FAMILY : string;
  attribute C_FAMILY of main_design_axi_gpio_0_2_axi_gpio : entity is "zynq";
  attribute C_GPIO2_WIDTH : integer;
  attribute C_GPIO2_WIDTH of main_design_axi_gpio_0_2_axi_gpio : entity is 4;
  attribute C_GPIO_WIDTH : integer;
  attribute C_GPIO_WIDTH of main_design_axi_gpio_0_2_axi_gpio : entity is 2;
  attribute C_INTERRUPT_PRESENT : integer;
  attribute C_INTERRUPT_PRESENT of main_design_axi_gpio_0_2_axi_gpio : entity is 1;
  attribute C_IS_DUAL : integer;
  attribute C_IS_DUAL of main_design_axi_gpio_0_2_axi_gpio : entity is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of main_design_axi_gpio_0_2_axi_gpio : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of main_design_axi_gpio_0_2_axi_gpio : entity is 32;
  attribute C_TRI_DEFAULT : string;
  attribute C_TRI_DEFAULT of main_design_axi_gpio_0_2_axi_gpio : entity is "32'b11111111111111111111111111111111";
  attribute C_TRI_DEFAULT_2 : string;
  attribute C_TRI_DEFAULT_2 of main_design_axi_gpio_0_2_axi_gpio : entity is "32'b11111111111111111111111111111111";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_design_axi_gpio_0_2_axi_gpio : entity is "yes";
  attribute ip_group : string;
  attribute ip_group of main_design_axi_gpio_0_2_axi_gpio : entity is "LOGICORE";
end main_design_axi_gpio_0_2_axi_gpio;

architecture STRUCTURE of main_design_axi_gpio_0_2_axi_gpio is
  signal \<const0>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_17 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_23 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_28 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_29 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_30 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_31 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_33 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_37 : STD_LOGIC;
  signal DBus_Reg : STD_LOGIC_VECTOR ( 0 to 3 );
  signal \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg\ : STD_LOGIC;
  signal \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg\ : STD_LOGIC;
  signal \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg\ : STD_LOGIC;
  signal \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg\ : STD_LOGIC;
  signal \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg\ : STD_LOGIC;
  signal \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg\ : STD_LOGIC;
  signal \Dual.gpio2_Data_In\ : STD_LOGIC_VECTOR ( 0 to 3 );
  signal GPIO2_intr : STD_LOGIC;
  signal GPIO_intr : STD_LOGIC;
  signal GPIO_xferAck_i : STD_LOGIC;
  signal \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1\ : STD_LOGIC;
  signal \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_7\ : STD_LOGIC;
  signal IP2INTC_Irpt_i : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_5_in\ : STD_LOGIC;
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 5 to 5 );
  signal bus2ip_cs : STD_LOGIC_VECTOR ( 1 to 1 );
  signal bus2ip_reset : STD_LOGIC;
  signal bus2ip_rnw : STD_LOGIC;
  signal gpio_Data_In : STD_LOGIC_VECTOR ( 0 to 1 );
  signal gpio_core_1_n_15 : STD_LOGIC;
  signal gpio_core_1_n_16 : STD_LOGIC;
  signal gpio_core_1_n_17 : STD_LOGIC;
  signal gpio_core_1_n_18 : STD_LOGIC;
  signal gpio_core_1_n_19 : STD_LOGIC;
  signal gpio_core_1_n_20 : STD_LOGIC;
  signal interrupt_wrce_strb : STD_LOGIC;
  signal intr2bus_rdack0 : STD_LOGIC;
  signal intr_rd_ce_or_reduce : STD_LOGIC;
  signal intr_wr_ce_or_reduce : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole0 : STD_LOGIC;
  signal ip2Bus_RdAck_intr_reg_hole_d1 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole0 : STD_LOGIC;
  signal ip2Bus_WrAck_intr_reg_hole_d1 : STD_LOGIC;
  signal ip2bus_data : STD_LOGIC_VECTOR ( 0 to 29 );
  signal ip2bus_data_i : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ip2bus_data_i_D1 : STD_LOGIC_VECTOR ( 0 to 31 );
  signal ip2bus_rdack_i : STD_LOGIC;
  signal ip2bus_rdack_i_D1 : STD_LOGIC;
  signal ip2bus_wrack_i : STD_LOGIC;
  signal ip2bus_wrack_i_D1 : STD_LOGIC;
  signal ipif_glbl_irpt_enable_reg : STD_LOGIC;
  signal irpt_rdack : STD_LOGIC;
  signal irpt_rdack_d1 : STD_LOGIC;
  signal irpt_wrack : STD_LOGIC;
  signal irpt_wrack_d1 : STD_LOGIC;
  signal p_0_in0_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal reg1 : STD_LOGIC_VECTOR ( 30 to 30 );
  signal reg3 : STD_LOGIC_VECTOR ( 28 to 28 );
  signal \^s_axi_awready\ : STD_LOGIC;
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  attribute sigis : string;
  attribute sigis of \INTR_CTRLR_GEN.ip2intc_irpt_reg\ : label is "INTR_LEVEL_HIGH";
  attribute sigis of ip2intc_irpt : signal is "INTR_LEVEL_HIGH";
  attribute sigis of s_axi_aclk : signal is "Clk";
  attribute sigis of s_axi_aresetn : signal is "Rst";
begin
  gpio2_io_o(3) <= \<const0>\;
  gpio2_io_o(2) <= \<const0>\;
  gpio2_io_o(1) <= \<const0>\;
  gpio2_io_o(0) <= \<const0>\;
  gpio2_io_t(3) <= \<const0>\;
  gpio2_io_t(2) <= \<const0>\;
  gpio2_io_t(1) <= \<const0>\;
  gpio2_io_t(0) <= \<const0>\;
  gpio_io_o(1) <= \<const0>\;
  gpio_io_o(0) <= \<const0>\;
  gpio_io_t(1) <= \<const0>\;
  gpio_io_t(0) <= \<const0>\;
  s_axi_awready <= \^s_axi_awready\;
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(31);
  s_axi_rdata(30) <= \^s_axi_rdata\(29);
  s_axi_rdata(29) <= \^s_axi_rdata\(29);
  s_axi_rdata(28) <= \^s_axi_rdata\(29);
  s_axi_rdata(27) <= \^s_axi_rdata\(29);
  s_axi_rdata(26) <= \^s_axi_rdata\(29);
  s_axi_rdata(25) <= \^s_axi_rdata\(29);
  s_axi_rdata(24) <= \^s_axi_rdata\(29);
  s_axi_rdata(23) <= \^s_axi_rdata\(29);
  s_axi_rdata(22) <= \^s_axi_rdata\(29);
  s_axi_rdata(21) <= \^s_axi_rdata\(29);
  s_axi_rdata(20) <= \^s_axi_rdata\(29);
  s_axi_rdata(19) <= \^s_axi_rdata\(29);
  s_axi_rdata(18) <= \^s_axi_rdata\(29);
  s_axi_rdata(17) <= \^s_axi_rdata\(29);
  s_axi_rdata(16) <= \^s_axi_rdata\(29);
  s_axi_rdata(15) <= \^s_axi_rdata\(29);
  s_axi_rdata(14) <= \^s_axi_rdata\(29);
  s_axi_rdata(13) <= \^s_axi_rdata\(29);
  s_axi_rdata(12) <= \^s_axi_rdata\(29);
  s_axi_rdata(11) <= \^s_axi_rdata\(29);
  s_axi_rdata(10) <= \^s_axi_rdata\(29);
  s_axi_rdata(9) <= \^s_axi_rdata\(29);
  s_axi_rdata(8) <= \^s_axi_rdata\(29);
  s_axi_rdata(7) <= \^s_axi_rdata\(29);
  s_axi_rdata(6) <= \^s_axi_rdata\(29);
  s_axi_rdata(5) <= \^s_axi_rdata\(29);
  s_axi_rdata(4) <= \^s_axi_rdata\(29);
  s_axi_rdata(3 downto 0) <= \^s_axi_rdata\(3 downto 0);
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_awready\;
AXI_LITE_IPIF_I: entity work.main_design_axi_gpio_0_2_axi_lite_ipif
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      D(5) => ip2bus_data_i(0),
      D(4) => ip2bus_data(0),
      D(3) => ip2bus_data(28),
      D(2) => ip2bus_data(29),
      D(1) => ip2bus_data_i(30),
      D(0) => ip2bus_data_i(31),
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg\ => \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg\,
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\(1) => gpio_Data_In(0),
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]\(0) => gpio_Data_In(1),
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg[30]_0\ => gpio_core_1_n_19,
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg\ => \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg\,
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[31]\ => gpio_core_1_n_20,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg\ => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg\,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]\(3) => gpio_core_1_n_15,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]\(2) => gpio_core_1_n_16,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]\(1) => gpio_core_1_n_17,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]\(0) => gpio_core_1_n_18,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]_0\(3) => \Dual.gpio2_Data_In\(0),
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]_0\(2) => \Dual.gpio2_Data_In\(1),
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]_0\(1) => \Dual.gpio2_Data_In\(2),
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg[28]_0\(0) => \Dual.gpio2_Data_In\(3),
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg\ => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg\,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg\ => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg\,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg\ => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg\,
      \Dual.gpio2_OE_reg[1]\ => AXI_LITE_IPIF_I_n_31,
      \Dual.gpio2_OE_reg[2]\ => AXI_LITE_IPIF_I_n_30,
      \Dual.gpio2_OE_reg[3]\ => AXI_LITE_IPIF_I_n_29,
      \Dual.gpio_OE_reg[1]\ => AXI_LITE_IPIF_I_n_33,
      E(0) => AXI_LITE_IPIF_I_n_28,
      \MEM_DECODE_GEN[0].cs_out_i_reg[0]\ => AXI_LITE_IPIF_I_n_23,
      Q(0) => bus2ip_addr(5),
      bus2ip_cs(0) => bus2ip_cs(1),
      bus2ip_reset => bus2ip_reset,
      bus2ip_rnw => bus2ip_rnw,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      intr_rd_ce_or_reduce => intr_rd_ce_or_reduce,
      intr_wr_ce_or_reduce => intr_wr_ce_or_reduce,
      ip2Bus_RdAck_intr_reg_hole0 => ip2Bus_RdAck_intr_reg_hole0,
      ip2Bus_RdAck_intr_reg_hole_d1 => ip2Bus_RdAck_intr_reg_hole_d1,
      ip2Bus_WrAck_intr_reg_hole0 => ip2Bus_WrAck_intr_reg_hole0,
      ip2Bus_WrAck_intr_reg_hole_d1 => ip2Bus_WrAck_intr_reg_hole_d1,
      \ip2bus_data_i_D1_reg[31]\ => \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1\,
      \ip2bus_data_i_D1_reg[31]_0\ => \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_7\,
      ip2bus_rdack_i_D1 => ip2bus_rdack_i_D1,
      ip2bus_rdack_i_D1_reg => s_axi_arready,
      ip2bus_wrack_i_D1 => ip2bus_wrack_i_D1,
      ip2bus_wrack_i_D1_reg => \^s_axi_awready\,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      irpt_wrack_d1_reg => AXI_LITE_IPIF_I_n_17,
      p_0_in0_in => p_0_in0_in,
      p_1_in => p_1_in,
      p_5_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_5_in\,
      reg1(0) => reg1(30),
      reg3(0) => reg3(28),
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(8 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(8 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bvalid_i_reg => s_axi_bvalid,
      s_axi_rdata(5) => \^s_axi_rdata\(31),
      s_axi_rdata(4) => \^s_axi_rdata\(29),
      s_axi_rdata(3 downto 0) => \^s_axi_rdata\(3 downto 0),
      \s_axi_rdata_i_reg[31]\(5) => ip2bus_data_i_D1(0),
      \s_axi_rdata_i_reg[31]\(4) => ip2bus_data_i_D1(1),
      \s_axi_rdata_i_reg[31]\(3) => ip2bus_data_i_D1(28),
      \s_axi_rdata_i_reg[31]\(2) => ip2bus_data_i_D1(29),
      \s_axi_rdata_i_reg[31]\(1) => ip2bus_data_i_D1(30),
      \s_axi_rdata_i_reg[31]\(0) => ip2bus_data_i_D1(31),
      s_axi_rready => s_axi_rready,
      s_axi_rvalid_i_reg => s_axi_rvalid,
      s_axi_wdata(4) => s_axi_wdata(31),
      s_axi_wdata(3 downto 0) => s_axi_wdata(3 downto 0),
      \s_axi_wdata[31]\ => AXI_LITE_IPIF_I_n_37,
      \s_axi_wdata[3]\(3) => DBus_Reg(0),
      \s_axi_wdata[3]\(2) => DBus_Reg(1),
      \s_axi_wdata[3]\(1) => DBus_Reg(2),
      \s_axi_wdata[3]\(0) => DBus_Reg(3),
      s_axi_wvalid => s_axi_wvalid
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
\INTR_CTRLR_GEN.INTERRUPT_CONTROL_I\: entity work.main_design_axi_gpio_0_2_interrupt_control
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      \GEN_IP_IRPT_STATUS_REG[0].GEN_REG_STATUS.ip_irpt_status_reg_reg[0]_0\ => \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_1\,
      \GEN_IP_IRPT_STATUS_REG[1].GEN_REG_STATUS.ip_irpt_status_reg_reg[1]_0\ => AXI_LITE_IPIF_I_n_17,
      GPIO2_intr => GPIO2_intr,
      GPIO_intr => GPIO_intr,
      GPIO_xferAck_i => GPIO_xferAck_i,
      IP2INTC_Irpt_i => IP2INTC_Irpt_i,
      bus2ip_reset => bus2ip_reset,
      bus2ip_rnw => bus2ip_rnw,
      interrupt_wrce_strb => interrupt_wrce_strb,
      intr2bus_rdack0 => intr2bus_rdack0,
      ip2Bus_RdAck_intr_reg_hole => ip2Bus_RdAck_intr_reg_hole,
      ip2Bus_WrAck_intr_reg_hole => ip2Bus_WrAck_intr_reg_hole,
      ip2bus_rdack_i => ip2bus_rdack_i,
      ip2bus_wrack_i => ip2bus_wrack_i,
      \ip_irpt_enable_reg_reg[0]_0\ => \INTR_CTRLR_GEN.INTERRUPT_CONTROL_I_n_7\,
      ipif_glbl_irpt_enable_reg => ipif_glbl_irpt_enable_reg,
      ipif_glbl_irpt_enable_reg_reg_0 => AXI_LITE_IPIF_I_n_37,
      irpt_rdack => irpt_rdack,
      irpt_rdack_d1 => irpt_rdack_d1,
      irpt_wrack => irpt_wrack,
      irpt_wrack_d1 => irpt_wrack_d1,
      p_0_in0_in => p_0_in0_in,
      p_1_in => p_1_in,
      p_5_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_5_in\,
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0)
    );
\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr_rd_ce_or_reduce,
      Q => ip2Bus_RdAck_intr_reg_hole_d1,
      R => bus2ip_reset
    );
\INTR_CTRLR_GEN.ip2Bus_RdAck_intr_reg_hole_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_RdAck_intr_reg_hole0,
      Q => ip2Bus_RdAck_intr_reg_hole,
      R => bus2ip_reset
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr_wr_ce_or_reduce,
      Q => ip2Bus_WrAck_intr_reg_hole_d1,
      R => bus2ip_reset
    );
\INTR_CTRLR_GEN.ip2Bus_WrAck_intr_reg_hole_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2Bus_WrAck_intr_reg_hole0,
      Q => ip2Bus_WrAck_intr_reg_hole,
      R => bus2ip_reset
    );
\INTR_CTRLR_GEN.ip2intc_irpt_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => IP2INTC_Irpt_i,
      Q => ip2intc_irpt,
      R => bus2ip_reset
    );
gpio_core_1: entity work.main_design_axi_gpio_0_2_GPIO_Core
     port map (
      D(3) => DBus_Reg(0),
      D(2) => DBus_Reg(1),
      D(1) => DBus_Reg(2),
      D(0) => DBus_Reg(3),
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg\ => \Dual.ALLIN0_ND_G0.READ_REG_GEN[0].reg1_reg\,
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg\ => \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg\,
      \Dual.ALLIN0_ND_G0.READ_REG_GEN[1].reg1_reg[31]_0\ => AXI_LITE_IPIF_I_n_33,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg\ => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[0].reg3_reg\,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg\ => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg\,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[1].reg3_reg[29]_0\ => AXI_LITE_IPIF_I_n_31,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg\ => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg\,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[2].reg3_reg[30]_0\ => AXI_LITE_IPIF_I_n_30,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg\ => \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg\,
      \Dual.ALLIN0_ND_G2.READ_REG2_GEN[3].reg3_reg[31]_0\ => AXI_LITE_IPIF_I_n_29,
      \Dual.gpio2_Data_In_reg[0]_0\(3) => \Dual.gpio2_Data_In\(0),
      \Dual.gpio2_Data_In_reg[0]_0\(2) => \Dual.gpio2_Data_In\(1),
      \Dual.gpio2_Data_In_reg[0]_0\(1) => \Dual.gpio2_Data_In\(2),
      \Dual.gpio2_Data_In_reg[0]_0\(0) => \Dual.gpio2_Data_In\(3),
      \Dual.gpio2_OE_reg[0]_0\(3) => gpio_core_1_n_15,
      \Dual.gpio2_OE_reg[0]_0\(2) => gpio_core_1_n_16,
      \Dual.gpio2_OE_reg[0]_0\(1) => gpio_core_1_n_17,
      \Dual.gpio2_OE_reg[0]_0\(0) => gpio_core_1_n_18,
      \Dual.gpio_OE_reg[0]_0\ => gpio_core_1_n_19,
      \Dual.gpio_OE_reg[0]_1\(0) => bus2ip_addr(5),
      \Dual.gpio_OE_reg[0]_2\ => AXI_LITE_IPIF_I_n_23,
      \Dual.gpio_OE_reg[1]_0\ => gpio_core_1_n_20,
      E(0) => AXI_LITE_IPIF_I_n_28,
      GPIO2_intr => GPIO2_intr,
      GPIO_intr => GPIO_intr,
      GPIO_xferAck_i => GPIO_xferAck_i,
      Q(1) => gpio_Data_In(0),
      Q(0) => gpio_Data_In(1),
      bus2ip_cs(0) => bus2ip_cs(1),
      bus2ip_reset => bus2ip_reset,
      bus2ip_rnw => bus2ip_rnw,
      gpio2_io_i(3 downto 0) => gpio2_io_i(3 downto 0),
      gpio_io_i(1 downto 0) => gpio_io_i(1 downto 0),
      reg1(0) => reg1(30),
      reg3(0) => reg3(28),
      s_axi_aclk => s_axi_aclk,
      s_axi_wdata(3 downto 0) => s_axi_wdata(3 downto 0)
    );
\ip2bus_data_i_D1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_i(0),
      Q => ip2bus_data_i_D1(0),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(0),
      Q => ip2bus_data_i_D1(1),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(28),
      Q => ip2bus_data_i_D1(28),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data(29),
      Q => ip2bus_data_i_D1(29),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_i(30),
      Q => ip2bus_data_i_D1(30),
      R => bus2ip_reset
    );
\ip2bus_data_i_D1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_data_i(31),
      Q => ip2bus_data_i_D1(31),
      R => bus2ip_reset
    );
ip2bus_rdack_i_D1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_rdack_i,
      Q => ip2bus_rdack_i_D1,
      R => bus2ip_reset
    );
ip2bus_wrack_i_D1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => ip2bus_wrack_i,
      Q => ip2bus_wrack_i_D1,
      R => bus2ip_reset
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity main_design_axi_gpio_0_2 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    ip2intc_irpt : out STD_LOGIC;
    gpio_io_i : in STD_LOGIC_VECTOR ( 1 downto 0 );
    gpio2_io_i : in STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of main_design_axi_gpio_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of main_design_axi_gpio_0_2 : entity is "main_design_axi_gpio_0_2,axi_gpio,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of main_design_axi_gpio_0_2 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of main_design_axi_gpio_0_2 : entity is "axi_gpio,Vivado 2025.1";
end main_design_axi_gpio_0_2;

architecture STRUCTURE of main_design_axi_gpio_0_2 is
  signal \<const0>\ : STD_LOGIC;
  signal NLW_U0_gpio2_io_o_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_gpio2_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_U0_gpio_io_o_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_gpio_io_t_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_bresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal NLW_U0_s_axi_rresp_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ALL_INPUTS : integer;
  attribute C_ALL_INPUTS of U0 : label is 1;
  attribute C_ALL_INPUTS_2 : integer;
  attribute C_ALL_INPUTS_2 of U0 : label is 1;
  attribute C_ALL_OUTPUTS : integer;
  attribute C_ALL_OUTPUTS of U0 : label is 0;
  attribute C_ALL_OUTPUTS_2 : integer;
  attribute C_ALL_OUTPUTS_2 of U0 : label is 0;
  attribute C_DOUT_DEFAULT : string;
  attribute C_DOUT_DEFAULT of U0 : label is "32'b00000000000000000000000000000000";
  attribute C_DOUT_DEFAULT_2 : string;
  attribute C_DOUT_DEFAULT_2 of U0 : label is "32'b00000000000000000000000000000000";
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "zynq";
  attribute C_GPIO2_WIDTH : integer;
  attribute C_GPIO2_WIDTH of U0 : label is 4;
  attribute C_GPIO_WIDTH : integer;
  attribute C_GPIO_WIDTH of U0 : label is 2;
  attribute C_INTERRUPT_PRESENT : integer;
  attribute C_INTERRUPT_PRESENT of U0 : label is 1;
  attribute C_IS_DUAL : integer;
  attribute C_IS_DUAL of U0 : label is 1;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute C_TRI_DEFAULT : string;
  attribute C_TRI_DEFAULT of U0 : label is "32'b11111111111111111111111111111111";
  attribute C_TRI_DEFAULT_2 : string;
  attribute C_TRI_DEFAULT_2 of U0 : label is "32'b11111111111111111111111111111111";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute ip_group : string;
  attribute ip_group of U0 : label is "LOGICORE";
  attribute x_interface_info : string;
  attribute x_interface_info of ip2intc_irpt : signal is "xilinx.com:signal:interrupt:1.0 IP2INTC_IRQ INTERRUPT";
  attribute x_interface_mode : string;
  attribute x_interface_mode of ip2intc_irpt : signal is "master IP2INTC_IRQ";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of ip2intc_irpt : signal is "XIL_INTERFACENAME IP2INTC_IRQ, SENSITIVITY LEVEL_HIGH, PortWidth 1";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK";
  attribute x_interface_mode of s_axi_aclk : signal is "slave S_AXI_ACLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST";
  attribute x_interface_mode of s_axi_aresetn : signal is "slave S_AXI_ARESETN";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute x_interface_info of gpio2_io_i : signal is "xilinx.com:interface:gpio:1.0 GPIO2 TRI_I";
  attribute x_interface_mode of gpio2_io_i : signal is "master GPIO2";
  attribute x_interface_parameter of gpio2_io_i : signal is "XIL_INTERFACENAME GPIO2, BOARD.ASSOCIATED_PARAM GPIO2_BOARD_INTERFACE";
  attribute x_interface_info of gpio_io_i : signal is "xilinx.com:interface:gpio:1.0 GPIO TRI_I";
  attribute x_interface_mode of gpio_io_i : signal is "master GPIO";
  attribute x_interface_parameter of gpio_io_i : signal is "XIL_INTERFACENAME GPIO, BOARD.ASSOCIATED_PARAM GPIO_BOARD_INTERFACE";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute x_interface_mode of s_axi_awaddr : signal is "slave S_AXI";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN main_design_processing_system7_0_0_FCLK_CLK0, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
  s_axi_bresp(1) <= \<const0>\;
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rresp(1) <= \<const0>\;
  s_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
U0: entity work.main_design_axi_gpio_0_2_axi_gpio
     port map (
      gpio2_io_i(3 downto 0) => gpio2_io_i(3 downto 0),
      gpio2_io_o(3 downto 0) => NLW_U0_gpio2_io_o_UNCONNECTED(3 downto 0),
      gpio2_io_t(3 downto 0) => NLW_U0_gpio2_io_t_UNCONNECTED(3 downto 0),
      gpio_io_i(1 downto 0) => gpio_io_i(1 downto 0),
      gpio_io_o(1 downto 0) => NLW_U0_gpio_io_o_UNCONNECTED(1 downto 0),
      gpio_io_t(1 downto 0) => NLW_U0_gpio_io_t_UNCONNECTED(1 downto 0),
      ip2intc_irpt => ip2intc_irpt,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 2) => s_axi_araddr(8 downto 2),
      s_axi_araddr(1 downto 0) => B"00",
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 2) => s_axi_awaddr(8 downto 2),
      s_axi_awaddr(1 downto 0) => B"00",
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => NLW_U0_s_axi_bresp_UNCONNECTED(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => NLW_U0_s_axi_rresp_UNCONNECTED(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31) => s_axi_wdata(31),
      s_axi_wdata(30 downto 4) => B"000000000000000000000000000",
      s_axi_wdata(3 downto 0) => s_axi_wdata(3 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => B"0000",
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
