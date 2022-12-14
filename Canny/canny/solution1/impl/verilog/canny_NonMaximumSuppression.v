// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
// Version: 2022.2
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module canny_NonMaximumSuppression (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_continue,
        ap_idle,
        ap_ready,
        magnitude_dout,
        magnitude_num_data_valid,
        magnitude_fifo_cap,
        magnitude_empty_n,
        magnitude_read,
        tangent_y_dout,
        tangent_y_num_data_valid,
        tangent_y_fifo_cap,
        tangent_y_empty_n,
        tangent_y_read,
        tangent_x_225_dout,
        tangent_x_225_num_data_valid,
        tangent_x_225_fifo_cap,
        tangent_x_225_empty_n,
        tangent_x_225_read,
        tangent_x_675_dout,
        tangent_x_675_num_data_valid,
        tangent_x_675_fifo_cap,
        tangent_x_675_empty_n,
        tangent_x_675_read,
        upperThresh_dout,
        upperThresh_num_data_valid,
        upperThresh_fifo_cap,
        upperThresh_empty_n,
        upperThresh_read,
        lowerThresh_dout,
        lowerThresh_num_data_valid,
        lowerThresh_fifo_cap,
        lowerThresh_empty_n,
        lowerThresh_read,
        dst_address0,
        dst_ce0,
        dst_we0,
        dst_d0
);

parameter    ap_ST_fsm_state1 = 7'd1;
parameter    ap_ST_fsm_state2 = 7'd2;
parameter    ap_ST_fsm_state3 = 7'd4;
parameter    ap_ST_fsm_state4 = 7'd8;
parameter    ap_ST_fsm_state5 = 7'd16;
parameter    ap_ST_fsm_state6 = 7'd32;
parameter    ap_ST_fsm_state7 = 7'd64;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
input   ap_continue;
output   ap_idle;
output   ap_ready;
input  [25:0] magnitude_dout;
input  [14:0] magnitude_num_data_valid;
input  [14:0] magnitude_fifo_cap;
input   magnitude_empty_n;
output   magnitude_read;
input  [31:0] tangent_y_dout;
input  [14:0] tangent_y_num_data_valid;
input  [14:0] tangent_y_fifo_cap;
input   tangent_y_empty_n;
output   tangent_y_read;
input  [31:0] tangent_x_225_dout;
input  [14:0] tangent_x_225_num_data_valid;
input  [14:0] tangent_x_225_fifo_cap;
input   tangent_x_225_empty_n;
output   tangent_x_225_read;
input  [31:0] tangent_x_675_dout;
input  [14:0] tangent_x_675_num_data_valid;
input  [14:0] tangent_x_675_fifo_cap;
input   tangent_x_675_empty_n;
output   tangent_x_675_read;
input  [31:0] upperThresh_dout;
input  [2:0] upperThresh_num_data_valid;
input  [2:0] upperThresh_fifo_cap;
input   upperThresh_empty_n;
output   upperThresh_read;
input  [31:0] lowerThresh_dout;
input  [2:0] lowerThresh_num_data_valid;
input  [2:0] lowerThresh_fifo_cap;
input   lowerThresh_empty_n;
output   lowerThresh_read;
output  [13:0] dst_address0;
output   dst_ce0;
output   dst_we0;
output  [31:0] dst_d0;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg magnitude_read;
reg tangent_y_read;
reg tangent_x_225_read;
reg tangent_x_675_read;
reg upperThresh_read;
reg lowerThresh_read;

reg    ap_done_reg;
(* fsm_encoding = "none" *) reg   [6:0] ap_CS_fsm;
wire    ap_CS_fsm_state1;
reg    upperThresh_blk_n;
reg    lowerThresh_blk_n;
reg  signed [31:0] lowerThresh_read_reg_116;
reg  signed [31:0] upperThresh_read_reg_122;
wire   [31:0] upperThresh_scale_fu_102_p2;
reg   [31:0] upperThresh_scale_reg_128;
wire    ap_CS_fsm_state6;
wire   [31:0] lowerThresh_scale_fu_109_p2;
reg   [31:0] lowerThresh_scale_reg_133;
wire   [89:0] LineBuff_mag_q1;
wire   [95:0] LineBuff_tan_y_q1;
wire   [95:0] LineBuff_tan_x_225_q1;
wire   [95:0] LineBuff_tan_x_675_q1;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_start;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_done;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_idle;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_ready;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_magnitude_read;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_tangent_y_read;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_tangent_x_225_read;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_tangent_x_675_read;
wire   [6:0] grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_address0;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_ce0;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_we0;
wire   [89:0] grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_d0;
wire   [6:0] grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_address1;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_ce1;
wire   [6:0] grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_address0;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_ce0;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_we0;
wire   [95:0] grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_d0;
wire   [6:0] grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_address1;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_ce1;
wire   [6:0] grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_address0;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_ce0;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_we0;
wire   [95:0] grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_d0;
wire   [6:0] grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_address1;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_ce1;
wire   [6:0] grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_address0;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_ce0;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_we0;
wire   [95:0] grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_d0;
wire   [6:0] grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_address1;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_ce1;
wire   [13:0] grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_dst_address0;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_dst_ce0;
wire    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_dst_we0;
wire   [31:0] grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_dst_d0;
reg    grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_start_reg;
wire    ap_CS_fsm_state7;
reg    ap_block_state1;
wire    ap_CS_fsm_state2;
wire   [31:0] grp_fu_94_p2;
wire   [31:0] grp_fu_98_p2;
reg   [6:0] ap_NS_fsm;
reg    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
wire    ap_ST_fsm_state3_blk;
wire    ap_ST_fsm_state4_blk;
wire    ap_ST_fsm_state5_blk;
wire    ap_ST_fsm_state6_blk;
reg    ap_ST_fsm_state7_blk;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_done_reg = 1'b0;
#0 ap_CS_fsm = 7'd1;
#0 grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_start_reg = 1'b0;
end

canny_NonMaximumSuppression_LineBuff_mag_RAM_AUTO_1R1W #(
    .DataWidth( 90 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
LineBuff_mag_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_address0),
    .ce0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_ce0),
    .we0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_we0),
    .d0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_d0),
    .address1(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_address1),
    .ce1(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_ce1),
    .q1(LineBuff_mag_q1)
);

canny_NonMaximumSuppression_LineBuff_tan_y_RAM_AUTO_1R1W #(
    .DataWidth( 96 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
LineBuff_tan_y_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_address0),
    .ce0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_ce0),
    .we0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_we0),
    .d0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_d0),
    .address1(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_address1),
    .ce1(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_ce1),
    .q1(LineBuff_tan_y_q1)
);

canny_NonMaximumSuppression_LineBuff_tan_y_RAM_AUTO_1R1W #(
    .DataWidth( 96 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
LineBuff_tan_x_225_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_address0),
    .ce0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_ce0),
    .we0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_we0),
    .d0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_d0),
    .address1(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_address1),
    .ce1(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_ce1),
    .q1(LineBuff_tan_x_225_q1)
);

canny_NonMaximumSuppression_LineBuff_tan_y_RAM_AUTO_1R1W #(
    .DataWidth( 96 ),
    .AddressRange( 128 ),
    .AddressWidth( 7 ))
LineBuff_tan_x_675_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_address0),
    .ce0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_ce0),
    .we0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_we0),
    .d0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_d0),
    .address1(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_address1),
    .ce1(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_ce1),
    .q1(LineBuff_tan_x_675_q1)
);

canny_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1 grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_start),
    .ap_done(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_done),
    .ap_idle(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_idle),
    .ap_ready(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_ready),
    .magnitude_dout(magnitude_dout),
    .magnitude_num_data_valid(15'd0),
    .magnitude_fifo_cap(15'd0),
    .magnitude_empty_n(magnitude_empty_n),
    .magnitude_read(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_magnitude_read),
    .tangent_y_dout(tangent_y_dout),
    .tangent_y_num_data_valid(15'd0),
    .tangent_y_fifo_cap(15'd0),
    .tangent_y_empty_n(tangent_y_empty_n),
    .tangent_y_read(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_tangent_y_read),
    .tangent_x_225_dout(tangent_x_225_dout),
    .tangent_x_225_num_data_valid(15'd0),
    .tangent_x_225_fifo_cap(15'd0),
    .tangent_x_225_empty_n(tangent_x_225_empty_n),
    .tangent_x_225_read(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_tangent_x_225_read),
    .tangent_x_675_dout(tangent_x_675_dout),
    .tangent_x_675_num_data_valid(15'd0),
    .tangent_x_675_fifo_cap(15'd0),
    .tangent_x_675_empty_n(tangent_x_675_empty_n),
    .tangent_x_675_read(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_tangent_x_675_read),
    .LineBuff_mag_address0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_address0),
    .LineBuff_mag_ce0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_ce0),
    .LineBuff_mag_we0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_we0),
    .LineBuff_mag_d0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_d0),
    .LineBuff_mag_address1(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_address1),
    .LineBuff_mag_ce1(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_mag_ce1),
    .LineBuff_mag_q1(LineBuff_mag_q1),
    .LineBuff_tan_y_address0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_address0),
    .LineBuff_tan_y_ce0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_ce0),
    .LineBuff_tan_y_we0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_we0),
    .LineBuff_tan_y_d0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_d0),
    .LineBuff_tan_y_address1(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_address1),
    .LineBuff_tan_y_ce1(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_y_ce1),
    .LineBuff_tan_y_q1(LineBuff_tan_y_q1),
    .LineBuff_tan_x_225_address0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_address0),
    .LineBuff_tan_x_225_ce0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_ce0),
    .LineBuff_tan_x_225_we0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_we0),
    .LineBuff_tan_x_225_d0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_d0),
    .LineBuff_tan_x_225_address1(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_address1),
    .LineBuff_tan_x_225_ce1(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_225_ce1),
    .LineBuff_tan_x_225_q1(LineBuff_tan_x_225_q1),
    .LineBuff_tan_x_675_address0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_address0),
    .LineBuff_tan_x_675_ce0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_ce0),
    .LineBuff_tan_x_675_we0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_we0),
    .LineBuff_tan_x_675_d0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_d0),
    .LineBuff_tan_x_675_address1(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_address1),
    .LineBuff_tan_x_675_ce1(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_LineBuff_tan_x_675_ce1),
    .LineBuff_tan_x_675_q1(LineBuff_tan_x_675_q1),
    .upperThresh_scale(upperThresh_scale_reg_128),
    .lowerThresh_scale(lowerThresh_scale_reg_133),
    .dst_address0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_dst_address0),
    .dst_ce0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_dst_ce0),
    .dst_we0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_dst_we0),
    .dst_d0(grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_dst_d0)
);

canny_mul_32s_32s_32_5_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_5_1_U96(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(upperThresh_read_reg_122),
    .din1(upperThresh_read_reg_122),
    .ce(1'b1),
    .dout(grp_fu_94_p2)
);

canny_mul_32s_32s_32_5_1 #(
    .ID( 1 ),
    .NUM_STAGE( 5 ),
    .din0_WIDTH( 32 ),
    .din1_WIDTH( 32 ),
    .dout_WIDTH( 32 ))
mul_32s_32s_32_5_1_U97(
    .clk(ap_clk),
    .reset(ap_rst),
    .din0(lowerThresh_read_reg_116),
    .din1(lowerThresh_read_reg_116),
    .ce(1'b1),
    .dout(grp_fu_98_p2)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b1 == ap_CS_fsm_state7) & (grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_done == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state6)) begin
            grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_start_reg <= 1'b1;
        end else if ((grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_ready == 1'b1)) begin
            grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state1)) begin
        lowerThresh_read_reg_116 <= lowerThresh_dout;
        upperThresh_read_reg_122 <= upperThresh_dout;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        lowerThresh_scale_reg_133[31 : 4] <= lowerThresh_scale_fu_109_p2[31 : 4];
        upperThresh_scale_reg_128[31 : 4] <= upperThresh_scale_fu_102_p2[31 : 4];
    end
end

always @ (*) begin
    if (((lowerThresh_empty_n == 1'b0) | (upperThresh_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0))) begin
        ap_ST_fsm_state1_blk = 1'b1;
    end else begin
        ap_ST_fsm_state1_blk = 1'b0;
    end
end

assign ap_ST_fsm_state2_blk = 1'b0;

assign ap_ST_fsm_state3_blk = 1'b0;

assign ap_ST_fsm_state4_blk = 1'b0;

assign ap_ST_fsm_state5_blk = 1'b0;

assign ap_ST_fsm_state6_blk = 1'b0;

always @ (*) begin
    if ((grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_done == 1'b0)) begin
        ap_ST_fsm_state7_blk = 1'b1;
    end else begin
        ap_ST_fsm_state7_blk = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_done == 1'b1))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = ap_done_reg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state1) & (ap_start == 1'b0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state7) & (grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_done == 1'b1))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        lowerThresh_blk_n = lowerThresh_empty_n;
    end else begin
        lowerThresh_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((lowerThresh_empty_n == 1'b0) | (upperThresh_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        lowerThresh_read = 1'b1;
    end else begin
        lowerThresh_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        magnitude_read = grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_magnitude_read;
    end else begin
        magnitude_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tangent_x_225_read = grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_tangent_x_225_read;
    end else begin
        tangent_x_225_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tangent_x_675_read = grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_tangent_x_675_read;
    end else begin
        tangent_x_675_read = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state7)) begin
        tangent_y_read = grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_tangent_y_read;
    end else begin
        tangent_y_read = 1'b0;
    end
end

always @ (*) begin
    if ((~((ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        upperThresh_blk_n = upperThresh_empty_n;
    end else begin
        upperThresh_blk_n = 1'b1;
    end
end

always @ (*) begin
    if ((~((lowerThresh_empty_n == 1'b0) | (upperThresh_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
        upperThresh_read = 1'b1;
    end else begin
        upperThresh_read = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if ((~((lowerThresh_empty_n == 1'b0) | (upperThresh_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0)) & (1'b1 == ap_CS_fsm_state1))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            ap_NS_fsm = ap_ST_fsm_state4;
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            ap_NS_fsm = ap_ST_fsm_state6;
        end
        ap_ST_fsm_state6 : begin
            ap_NS_fsm = ap_ST_fsm_state7;
        end
        ap_ST_fsm_state7 : begin
            if (((1'b1 == ap_CS_fsm_state7) & (grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_done == 1'b1))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state7;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[32'd0];

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state6 = ap_CS_fsm[32'd5];

assign ap_CS_fsm_state7 = ap_CS_fsm[32'd6];

always @ (*) begin
    ap_block_state1 = ((lowerThresh_empty_n == 1'b0) | (upperThresh_empty_n == 1'b0) | (ap_done_reg == 1'b1) | (ap_start == 1'b0));
end

assign dst_address0 = grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_dst_address0;

assign dst_ce0 = grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_dst_ce0;

assign dst_d0 = grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_dst_d0;

assign dst_we0 = grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_dst_we0;

assign grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_start = grp_NonMaximumSuppression_Pipeline_VITIS_LOOP_193_1_fu_74_ap_start_reg;

assign lowerThresh_scale_fu_109_p2 = grp_fu_98_p2 << 32'd4;

assign upperThresh_scale_fu_102_p2 = grp_fu_94_p2 << 32'd4;

always @ (posedge ap_clk) begin
    upperThresh_scale_reg_128[3:0] <= 4'b0000;
    lowerThresh_scale_reg_133[3:0] <= 4'b0000;
end

endmodule //canny_NonMaximumSuppression
