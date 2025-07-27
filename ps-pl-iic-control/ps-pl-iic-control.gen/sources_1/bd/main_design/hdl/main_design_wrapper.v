//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2025 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2025.1 (lin64) Build 6140274 Wed May 21 22:58:25 MDT 2025
//Date        : Mon Jul 28 00:08:26 2025
//Host        : ubuntu2204 running 64-bit Ubuntu 22.04.5 LTS
//Command     : generate_target main_design_wrapper.bd
//Design      : main_design_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module main_design_wrapper
   (DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    arduino_a0_a5_tri_io,
    arduino_ar0_ar13_tri_io,
    btns_4bits_tri_i,
    i2c_scl_io,
    i2c_sda_io,
    leds_4bits_tri_io,
    rgb_led_tri_io,
    spi_io0_io,
    spi_io1_io,
    spi_sck_io,
    spi_ss_io,
    sws_2bits_tri_i);
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  inout [5:0]arduino_a0_a5_tri_io;
  inout [13:0]arduino_ar0_ar13_tri_io;
  input [3:0]btns_4bits_tri_i;
  inout i2c_scl_io;
  inout i2c_sda_io;
  inout [3:0]leds_4bits_tri_io;
  inout [5:0]rgb_led_tri_io;
  inout spi_io0_io;
  inout spi_io1_io;
  inout spi_sck_io;
  inout spi_ss_io;
  input [1:0]sws_2bits_tri_i;

  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [0:0]arduino_a0_a5_tri_i_0;
  wire [1:1]arduino_a0_a5_tri_i_1;
  wire [2:2]arduino_a0_a5_tri_i_2;
  wire [3:3]arduino_a0_a5_tri_i_3;
  wire [4:4]arduino_a0_a5_tri_i_4;
  wire [5:5]arduino_a0_a5_tri_i_5;
  wire [0:0]arduino_a0_a5_tri_io_0;
  wire [1:1]arduino_a0_a5_tri_io_1;
  wire [2:2]arduino_a0_a5_tri_io_2;
  wire [3:3]arduino_a0_a5_tri_io_3;
  wire [4:4]arduino_a0_a5_tri_io_4;
  wire [5:5]arduino_a0_a5_tri_io_5;
  wire [0:0]arduino_a0_a5_tri_o_0;
  wire [1:1]arduino_a0_a5_tri_o_1;
  wire [2:2]arduino_a0_a5_tri_o_2;
  wire [3:3]arduino_a0_a5_tri_o_3;
  wire [4:4]arduino_a0_a5_tri_o_4;
  wire [5:5]arduino_a0_a5_tri_o_5;
  wire [0:0]arduino_a0_a5_tri_t_0;
  wire [1:1]arduino_a0_a5_tri_t_1;
  wire [2:2]arduino_a0_a5_tri_t_2;
  wire [3:3]arduino_a0_a5_tri_t_3;
  wire [4:4]arduino_a0_a5_tri_t_4;
  wire [5:5]arduino_a0_a5_tri_t_5;
  wire [0:0]arduino_ar0_ar13_tri_i_0;
  wire [1:1]arduino_ar0_ar13_tri_i_1;
  wire [10:10]arduino_ar0_ar13_tri_i_10;
  wire [11:11]arduino_ar0_ar13_tri_i_11;
  wire [12:12]arduino_ar0_ar13_tri_i_12;
  wire [13:13]arduino_ar0_ar13_tri_i_13;
  wire [2:2]arduino_ar0_ar13_tri_i_2;
  wire [3:3]arduino_ar0_ar13_tri_i_3;
  wire [4:4]arduino_ar0_ar13_tri_i_4;
  wire [5:5]arduino_ar0_ar13_tri_i_5;
  wire [6:6]arduino_ar0_ar13_tri_i_6;
  wire [7:7]arduino_ar0_ar13_tri_i_7;
  wire [8:8]arduino_ar0_ar13_tri_i_8;
  wire [9:9]arduino_ar0_ar13_tri_i_9;
  wire [0:0]arduino_ar0_ar13_tri_io_0;
  wire [1:1]arduino_ar0_ar13_tri_io_1;
  wire [10:10]arduino_ar0_ar13_tri_io_10;
  wire [11:11]arduino_ar0_ar13_tri_io_11;
  wire [12:12]arduino_ar0_ar13_tri_io_12;
  wire [13:13]arduino_ar0_ar13_tri_io_13;
  wire [2:2]arduino_ar0_ar13_tri_io_2;
  wire [3:3]arduino_ar0_ar13_tri_io_3;
  wire [4:4]arduino_ar0_ar13_tri_io_4;
  wire [5:5]arduino_ar0_ar13_tri_io_5;
  wire [6:6]arduino_ar0_ar13_tri_io_6;
  wire [7:7]arduino_ar0_ar13_tri_io_7;
  wire [8:8]arduino_ar0_ar13_tri_io_8;
  wire [9:9]arduino_ar0_ar13_tri_io_9;
  wire [0:0]arduino_ar0_ar13_tri_o_0;
  wire [1:1]arduino_ar0_ar13_tri_o_1;
  wire [10:10]arduino_ar0_ar13_tri_o_10;
  wire [11:11]arduino_ar0_ar13_tri_o_11;
  wire [12:12]arduino_ar0_ar13_tri_o_12;
  wire [13:13]arduino_ar0_ar13_tri_o_13;
  wire [2:2]arduino_ar0_ar13_tri_o_2;
  wire [3:3]arduino_ar0_ar13_tri_o_3;
  wire [4:4]arduino_ar0_ar13_tri_o_4;
  wire [5:5]arduino_ar0_ar13_tri_o_5;
  wire [6:6]arduino_ar0_ar13_tri_o_6;
  wire [7:7]arduino_ar0_ar13_tri_o_7;
  wire [8:8]arduino_ar0_ar13_tri_o_8;
  wire [9:9]arduino_ar0_ar13_tri_o_9;
  wire [0:0]arduino_ar0_ar13_tri_t_0;
  wire [1:1]arduino_ar0_ar13_tri_t_1;
  wire [10:10]arduino_ar0_ar13_tri_t_10;
  wire [11:11]arduino_ar0_ar13_tri_t_11;
  wire [12:12]arduino_ar0_ar13_tri_t_12;
  wire [13:13]arduino_ar0_ar13_tri_t_13;
  wire [2:2]arduino_ar0_ar13_tri_t_2;
  wire [3:3]arduino_ar0_ar13_tri_t_3;
  wire [4:4]arduino_ar0_ar13_tri_t_4;
  wire [5:5]arduino_ar0_ar13_tri_t_5;
  wire [6:6]arduino_ar0_ar13_tri_t_6;
  wire [7:7]arduino_ar0_ar13_tri_t_7;
  wire [8:8]arduino_ar0_ar13_tri_t_8;
  wire [9:9]arduino_ar0_ar13_tri_t_9;
  wire [3:0]btns_4bits_tri_i;
  wire i2c_scl_i;
  wire i2c_scl_io;
  wire i2c_scl_o;
  wire i2c_scl_t;
  wire i2c_sda_i;
  wire i2c_sda_io;
  wire i2c_sda_o;
  wire i2c_sda_t;
  wire [0:0]leds_4bits_tri_i_0;
  wire [1:1]leds_4bits_tri_i_1;
  wire [2:2]leds_4bits_tri_i_2;
  wire [3:3]leds_4bits_tri_i_3;
  wire [0:0]leds_4bits_tri_io_0;
  wire [1:1]leds_4bits_tri_io_1;
  wire [2:2]leds_4bits_tri_io_2;
  wire [3:3]leds_4bits_tri_io_3;
  wire [0:0]leds_4bits_tri_o_0;
  wire [1:1]leds_4bits_tri_o_1;
  wire [2:2]leds_4bits_tri_o_2;
  wire [3:3]leds_4bits_tri_o_3;
  wire [0:0]leds_4bits_tri_t_0;
  wire [1:1]leds_4bits_tri_t_1;
  wire [2:2]leds_4bits_tri_t_2;
  wire [3:3]leds_4bits_tri_t_3;
  wire [0:0]rgb_led_tri_i_0;
  wire [1:1]rgb_led_tri_i_1;
  wire [2:2]rgb_led_tri_i_2;
  wire [3:3]rgb_led_tri_i_3;
  wire [4:4]rgb_led_tri_i_4;
  wire [5:5]rgb_led_tri_i_5;
  wire [0:0]rgb_led_tri_io_0;
  wire [1:1]rgb_led_tri_io_1;
  wire [2:2]rgb_led_tri_io_2;
  wire [3:3]rgb_led_tri_io_3;
  wire [4:4]rgb_led_tri_io_4;
  wire [5:5]rgb_led_tri_io_5;
  wire [0:0]rgb_led_tri_o_0;
  wire [1:1]rgb_led_tri_o_1;
  wire [2:2]rgb_led_tri_o_2;
  wire [3:3]rgb_led_tri_o_3;
  wire [4:4]rgb_led_tri_o_4;
  wire [5:5]rgb_led_tri_o_5;
  wire [0:0]rgb_led_tri_t_0;
  wire [1:1]rgb_led_tri_t_1;
  wire [2:2]rgb_led_tri_t_2;
  wire [3:3]rgb_led_tri_t_3;
  wire [4:4]rgb_led_tri_t_4;
  wire [5:5]rgb_led_tri_t_5;
  wire spi_io0_i;
  wire spi_io0_io;
  wire spi_io0_o;
  wire spi_io0_t;
  wire spi_io1_i;
  wire spi_io1_io;
  wire spi_io1_o;
  wire spi_io1_t;
  wire spi_sck_i;
  wire spi_sck_io;
  wire spi_sck_o;
  wire spi_sck_t;
  wire spi_ss_i;
  wire spi_ss_io;
  wire spi_ss_o;
  wire spi_ss_t;
  wire [1:0]sws_2bits_tri_i;

  IOBUF arduino_a0_a5_tri_iobuf_0
       (.I(arduino_a0_a5_tri_o_0),
        .IO(arduino_a0_a5_tri_io[0]),
        .O(arduino_a0_a5_tri_i_0),
        .T(arduino_a0_a5_tri_t_0));
  IOBUF arduino_a0_a5_tri_iobuf_1
       (.I(arduino_a0_a5_tri_o_1),
        .IO(arduino_a0_a5_tri_io[1]),
        .O(arduino_a0_a5_tri_i_1),
        .T(arduino_a0_a5_tri_t_1));
  IOBUF arduino_a0_a5_tri_iobuf_2
       (.I(arduino_a0_a5_tri_o_2),
        .IO(arduino_a0_a5_tri_io[2]),
        .O(arduino_a0_a5_tri_i_2),
        .T(arduino_a0_a5_tri_t_2));
  IOBUF arduino_a0_a5_tri_iobuf_3
       (.I(arduino_a0_a5_tri_o_3),
        .IO(arduino_a0_a5_tri_io[3]),
        .O(arduino_a0_a5_tri_i_3),
        .T(arduino_a0_a5_tri_t_3));
  IOBUF arduino_a0_a5_tri_iobuf_4
       (.I(arduino_a0_a5_tri_o_4),
        .IO(arduino_a0_a5_tri_io[4]),
        .O(arduino_a0_a5_tri_i_4),
        .T(arduino_a0_a5_tri_t_4));
  IOBUF arduino_a0_a5_tri_iobuf_5
       (.I(arduino_a0_a5_tri_o_5),
        .IO(arduino_a0_a5_tri_io[5]),
        .O(arduino_a0_a5_tri_i_5),
        .T(arduino_a0_a5_tri_t_5));
  IOBUF arduino_ar0_ar13_tri_iobuf_0
       (.I(arduino_ar0_ar13_tri_o_0),
        .IO(arduino_ar0_ar13_tri_io[0]),
        .O(arduino_ar0_ar13_tri_i_0),
        .T(arduino_ar0_ar13_tri_t_0));
  IOBUF arduino_ar0_ar13_tri_iobuf_1
       (.I(arduino_ar0_ar13_tri_o_1),
        .IO(arduino_ar0_ar13_tri_io[1]),
        .O(arduino_ar0_ar13_tri_i_1),
        .T(arduino_ar0_ar13_tri_t_1));
  IOBUF arduino_ar0_ar13_tri_iobuf_10
       (.I(arduino_ar0_ar13_tri_o_10),
        .IO(arduino_ar0_ar13_tri_io[10]),
        .O(arduino_ar0_ar13_tri_i_10),
        .T(arduino_ar0_ar13_tri_t_10));
  IOBUF arduino_ar0_ar13_tri_iobuf_11
       (.I(arduino_ar0_ar13_tri_o_11),
        .IO(arduino_ar0_ar13_tri_io[11]),
        .O(arduino_ar0_ar13_tri_i_11),
        .T(arduino_ar0_ar13_tri_t_11));
  IOBUF arduino_ar0_ar13_tri_iobuf_12
       (.I(arduino_ar0_ar13_tri_o_12),
        .IO(arduino_ar0_ar13_tri_io[12]),
        .O(arduino_ar0_ar13_tri_i_12),
        .T(arduino_ar0_ar13_tri_t_12));
  IOBUF arduino_ar0_ar13_tri_iobuf_13
       (.I(arduino_ar0_ar13_tri_o_13),
        .IO(arduino_ar0_ar13_tri_io[13]),
        .O(arduino_ar0_ar13_tri_i_13),
        .T(arduino_ar0_ar13_tri_t_13));
  IOBUF arduino_ar0_ar13_tri_iobuf_2
       (.I(arduino_ar0_ar13_tri_o_2),
        .IO(arduino_ar0_ar13_tri_io[2]),
        .O(arduino_ar0_ar13_tri_i_2),
        .T(arduino_ar0_ar13_tri_t_2));
  IOBUF arduino_ar0_ar13_tri_iobuf_3
       (.I(arduino_ar0_ar13_tri_o_3),
        .IO(arduino_ar0_ar13_tri_io[3]),
        .O(arduino_ar0_ar13_tri_i_3),
        .T(arduino_ar0_ar13_tri_t_3));
  IOBUF arduino_ar0_ar13_tri_iobuf_4
       (.I(arduino_ar0_ar13_tri_o_4),
        .IO(arduino_ar0_ar13_tri_io[4]),
        .O(arduino_ar0_ar13_tri_i_4),
        .T(arduino_ar0_ar13_tri_t_4));
  IOBUF arduino_ar0_ar13_tri_iobuf_5
       (.I(arduino_ar0_ar13_tri_o_5),
        .IO(arduino_ar0_ar13_tri_io[5]),
        .O(arduino_ar0_ar13_tri_i_5),
        .T(arduino_ar0_ar13_tri_t_5));
  IOBUF arduino_ar0_ar13_tri_iobuf_6
       (.I(arduino_ar0_ar13_tri_o_6),
        .IO(arduino_ar0_ar13_tri_io[6]),
        .O(arduino_ar0_ar13_tri_i_6),
        .T(arduino_ar0_ar13_tri_t_6));
  IOBUF arduino_ar0_ar13_tri_iobuf_7
       (.I(arduino_ar0_ar13_tri_o_7),
        .IO(arduino_ar0_ar13_tri_io[7]),
        .O(arduino_ar0_ar13_tri_i_7),
        .T(arduino_ar0_ar13_tri_t_7));
  IOBUF arduino_ar0_ar13_tri_iobuf_8
       (.I(arduino_ar0_ar13_tri_o_8),
        .IO(arduino_ar0_ar13_tri_io[8]),
        .O(arduino_ar0_ar13_tri_i_8),
        .T(arduino_ar0_ar13_tri_t_8));
  IOBUF arduino_ar0_ar13_tri_iobuf_9
       (.I(arduino_ar0_ar13_tri_o_9),
        .IO(arduino_ar0_ar13_tri_io[9]),
        .O(arduino_ar0_ar13_tri_i_9),
        .T(arduino_ar0_ar13_tri_t_9));
  IOBUF i2c_scl_iobuf
       (.I(i2c_scl_o),
        .IO(i2c_scl_io),
        .O(i2c_scl_i),
        .T(i2c_scl_t));
  IOBUF i2c_sda_iobuf
       (.I(i2c_sda_o),
        .IO(i2c_sda_io),
        .O(i2c_sda_i),
        .T(i2c_sda_t));
  IOBUF leds_4bits_tri_iobuf_0
       (.I(leds_4bits_tri_o_0),
        .IO(leds_4bits_tri_io[0]),
        .O(leds_4bits_tri_i_0),
        .T(leds_4bits_tri_t_0));
  IOBUF leds_4bits_tri_iobuf_1
       (.I(leds_4bits_tri_o_1),
        .IO(leds_4bits_tri_io[1]),
        .O(leds_4bits_tri_i_1),
        .T(leds_4bits_tri_t_1));
  IOBUF leds_4bits_tri_iobuf_2
       (.I(leds_4bits_tri_o_2),
        .IO(leds_4bits_tri_io[2]),
        .O(leds_4bits_tri_i_2),
        .T(leds_4bits_tri_t_2));
  IOBUF leds_4bits_tri_iobuf_3
       (.I(leds_4bits_tri_o_3),
        .IO(leds_4bits_tri_io[3]),
        .O(leds_4bits_tri_i_3),
        .T(leds_4bits_tri_t_3));
  main_design main_design_i
       (.DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .arduino_a0_a5_tri_i({arduino_a0_a5_tri_i_5,arduino_a0_a5_tri_i_4,arduino_a0_a5_tri_i_3,arduino_a0_a5_tri_i_2,arduino_a0_a5_tri_i_1,arduino_a0_a5_tri_i_0}),
        .arduino_a0_a5_tri_o({arduino_a0_a5_tri_o_5,arduino_a0_a5_tri_o_4,arduino_a0_a5_tri_o_3,arduino_a0_a5_tri_o_2,arduino_a0_a5_tri_o_1,arduino_a0_a5_tri_o_0}),
        .arduino_a0_a5_tri_t({arduino_a0_a5_tri_t_5,arduino_a0_a5_tri_t_4,arduino_a0_a5_tri_t_3,arduino_a0_a5_tri_t_2,arduino_a0_a5_tri_t_1,arduino_a0_a5_tri_t_0}),
        .arduino_ar0_ar13_tri_i({arduino_ar0_ar13_tri_i_13,arduino_ar0_ar13_tri_i_12,arduino_ar0_ar13_tri_i_11,arduino_ar0_ar13_tri_i_10,arduino_ar0_ar13_tri_i_9,arduino_ar0_ar13_tri_i_8,arduino_ar0_ar13_tri_i_7,arduino_ar0_ar13_tri_i_6,arduino_ar0_ar13_tri_i_5,arduino_ar0_ar13_tri_i_4,arduino_ar0_ar13_tri_i_3,arduino_ar0_ar13_tri_i_2,arduino_ar0_ar13_tri_i_1,arduino_ar0_ar13_tri_i_0}),
        .arduino_ar0_ar13_tri_o({arduino_ar0_ar13_tri_o_13,arduino_ar0_ar13_tri_o_12,arduino_ar0_ar13_tri_o_11,arduino_ar0_ar13_tri_o_10,arduino_ar0_ar13_tri_o_9,arduino_ar0_ar13_tri_o_8,arduino_ar0_ar13_tri_o_7,arduino_ar0_ar13_tri_o_6,arduino_ar0_ar13_tri_o_5,arduino_ar0_ar13_tri_o_4,arduino_ar0_ar13_tri_o_3,arduino_ar0_ar13_tri_o_2,arduino_ar0_ar13_tri_o_1,arduino_ar0_ar13_tri_o_0}),
        .arduino_ar0_ar13_tri_t({arduino_ar0_ar13_tri_t_13,arduino_ar0_ar13_tri_t_12,arduino_ar0_ar13_tri_t_11,arduino_ar0_ar13_tri_t_10,arduino_ar0_ar13_tri_t_9,arduino_ar0_ar13_tri_t_8,arduino_ar0_ar13_tri_t_7,arduino_ar0_ar13_tri_t_6,arduino_ar0_ar13_tri_t_5,arduino_ar0_ar13_tri_t_4,arduino_ar0_ar13_tri_t_3,arduino_ar0_ar13_tri_t_2,arduino_ar0_ar13_tri_t_1,arduino_ar0_ar13_tri_t_0}),
        .btns_4bits_tri_i(btns_4bits_tri_i),
        .i2c_scl_i(i2c_scl_i),
        .i2c_scl_o(i2c_scl_o),
        .i2c_scl_t(i2c_scl_t),
        .i2c_sda_i(i2c_sda_i),
        .i2c_sda_o(i2c_sda_o),
        .i2c_sda_t(i2c_sda_t),
        .leds_4bits_tri_i({leds_4bits_tri_i_3,leds_4bits_tri_i_2,leds_4bits_tri_i_1,leds_4bits_tri_i_0}),
        .leds_4bits_tri_o({leds_4bits_tri_o_3,leds_4bits_tri_o_2,leds_4bits_tri_o_1,leds_4bits_tri_o_0}),
        .leds_4bits_tri_t({leds_4bits_tri_t_3,leds_4bits_tri_t_2,leds_4bits_tri_t_1,leds_4bits_tri_t_0}),
        .rgb_led_tri_i({rgb_led_tri_i_5,rgb_led_tri_i_4,rgb_led_tri_i_3,rgb_led_tri_i_2,rgb_led_tri_i_1,rgb_led_tri_i_0}),
        .rgb_led_tri_o({rgb_led_tri_o_5,rgb_led_tri_o_4,rgb_led_tri_o_3,rgb_led_tri_o_2,rgb_led_tri_o_1,rgb_led_tri_o_0}),
        .rgb_led_tri_t({rgb_led_tri_t_5,rgb_led_tri_t_4,rgb_led_tri_t_3,rgb_led_tri_t_2,rgb_led_tri_t_1,rgb_led_tri_t_0}),
        .spi_io0_i(spi_io0_i),
        .spi_io0_o(spi_io0_o),
        .spi_io0_t(spi_io0_t),
        .spi_io1_i(spi_io1_i),
        .spi_io1_o(spi_io1_o),
        .spi_io1_t(spi_io1_t),
        .spi_sck_i(spi_sck_i),
        .spi_sck_o(spi_sck_o),
        .spi_sck_t(spi_sck_t),
        .spi_ss_i(spi_ss_i),
        .spi_ss_o(spi_ss_o),
        .spi_ss_t(spi_ss_t),
        .sws_2bits_tri_i(sws_2bits_tri_i));
  IOBUF rgb_led_tri_iobuf_0
       (.I(rgb_led_tri_o_0),
        .IO(rgb_led_tri_io[0]),
        .O(rgb_led_tri_i_0),
        .T(rgb_led_tri_t_0));
  IOBUF rgb_led_tri_iobuf_1
       (.I(rgb_led_tri_o_1),
        .IO(rgb_led_tri_io[1]),
        .O(rgb_led_tri_i_1),
        .T(rgb_led_tri_t_1));
  IOBUF rgb_led_tri_iobuf_2
       (.I(rgb_led_tri_o_2),
        .IO(rgb_led_tri_io[2]),
        .O(rgb_led_tri_i_2),
        .T(rgb_led_tri_t_2));
  IOBUF rgb_led_tri_iobuf_3
       (.I(rgb_led_tri_o_3),
        .IO(rgb_led_tri_io[3]),
        .O(rgb_led_tri_i_3),
        .T(rgb_led_tri_t_3));
  IOBUF rgb_led_tri_iobuf_4
       (.I(rgb_led_tri_o_4),
        .IO(rgb_led_tri_io[4]),
        .O(rgb_led_tri_i_4),
        .T(rgb_led_tri_t_4));
  IOBUF rgb_led_tri_iobuf_5
       (.I(rgb_led_tri_o_5),
        .IO(rgb_led_tri_io[5]),
        .O(rgb_led_tri_i_5),
        .T(rgb_led_tri_t_5));
  IOBUF spi_io0_iobuf
       (.I(spi_io0_o),
        .IO(spi_io0_io),
        .O(spi_io0_i),
        .T(spi_io0_t));
  IOBUF spi_io1_iobuf
       (.I(spi_io1_o),
        .IO(spi_io1_io),
        .O(spi_io1_i),
        .T(spi_io1_t));
  IOBUF spi_sck_iobuf
       (.I(spi_sck_o),
        .IO(spi_sck_io),
        .O(spi_sck_i),
        .T(spi_sck_t));
  IOBUF spi_ss_iobuf
       (.I(spi_ss_o),
        .IO(spi_ss_io),
        .O(spi_ss_i),
        .T(spi_ss_t));
endmodule
