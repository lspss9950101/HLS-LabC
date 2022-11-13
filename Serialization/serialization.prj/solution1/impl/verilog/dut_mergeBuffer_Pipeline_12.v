// ==============================================================
// RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
// Version: 2022.1
// Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module dut_mergeBuffer_Pipeline_12 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        dst_TREADY,
        val_buf5_0_address0,
        val_buf5_0_ce0,
        val_buf5_0_q0,
        val_buf5_1_address0,
        val_buf5_1_ce0,
        val_buf5_1_q0,
        val_buf5_2_address0,
        val_buf5_2_ce0,
        val_buf5_2_q0,
        val_buf5_3_address0,
        val_buf5_3_ce0,
        val_buf5_3_q0,
        val_buf5_4_address0,
        val_buf5_4_ce0,
        val_buf5_4_q0,
        val_buf5_5_address0,
        val_buf5_5_ce0,
        val_buf5_5_q0,
        val_buf5_6_address0,
        val_buf5_6_ce0,
        val_buf5_6_q0,
        val_buf5_7_address0,
        val_buf5_7_ce0,
        val_buf5_7_q0,
        dst_TDATA,
        dst_TVALID,
        sext_ln140
);

parameter    ap_ST_fsm_pp0_stage0 = 1'd1;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input   dst_TREADY;
output  [11:0] val_buf5_0_address0;
output   val_buf5_0_ce0;
input  [7:0] val_buf5_0_q0;
output  [11:0] val_buf5_1_address0;
output   val_buf5_1_ce0;
input  [7:0] val_buf5_1_q0;
output  [11:0] val_buf5_2_address0;
output   val_buf5_2_ce0;
input  [7:0] val_buf5_2_q0;
output  [11:0] val_buf5_3_address0;
output   val_buf5_3_ce0;
input  [7:0] val_buf5_3_q0;
output  [11:0] val_buf5_4_address0;
output   val_buf5_4_ce0;
input  [7:0] val_buf5_4_q0;
output  [11:0] val_buf5_5_address0;
output   val_buf5_5_ce0;
input  [7:0] val_buf5_5_q0;
output  [11:0] val_buf5_6_address0;
output   val_buf5_6_ce0;
input  [7:0] val_buf5_6_q0;
output  [11:0] val_buf5_7_address0;
output   val_buf5_7_ce0;
input  [7:0] val_buf5_7_q0;
output  [7:0] dst_TDATA;
output   dst_TVALID;
input  [15:0] sext_ln140;

reg ap_idle;
reg val_buf5_0_ce0;
reg val_buf5_1_ce0;
reg val_buf5_2_ce0;
reg val_buf5_3_ce0;
reg val_buf5_4_ce0;
reg val_buf5_5_ce0;
reg val_buf5_6_ce0;
reg val_buf5_7_ce0;
reg dst_TVALID;

(* fsm_encoding = "none" *) reg   [0:0] ap_CS_fsm;
wire    ap_CS_fsm_pp0_stage0;
wire    ap_enable_reg_pp0_iter0;
reg    ap_enable_reg_pp0_iter1;
reg    ap_enable_reg_pp0_iter2;
reg    ap_idle_pp0;
wire    ap_block_state1_pp0_stage0_iter0;
wire    ap_block_state2_pp0_stage0_iter1;
reg    ap_block_state3_pp0_stage0_iter2;
reg    ap_block_pp0_stage0_subdone;
wire   [0:0] exitcond_fu_223_p2;
reg    ap_condition_exit_pp0_iter1_stage0;
wire    ap_loop_exit_ready;
reg    ap_ready_int;
reg    dst_TDATA_blk_n;
wire    ap_block_pp0_stage0;
reg    ap_block_pp0_stage0_11001;
wire  signed [63:0] sext_ln140_cast_fu_179_p1;
reg  signed [63:0] sext_ln140_cast_reg_261;
wire   [2:0] empty_fu_191_p1;
reg   [2:0] empty_reg_266;
wire   [63:0] empty_30_fu_217_p2;
reg   [63:0] empty_30_reg_311;
reg   [0:0] exitcond_reg_316;
wire   [63:0] p_cast35_fu_205_p1;
reg   [63:0] loop_index_fu_58;
reg   [63:0] ap_sig_allocacmp_loop_index_load;
wire    ap_loop_init;
wire   [7:0] p_0_fu_228_p10;
reg    ap_block_pp0_stage0_01001;
wire   [11:0] tmp_s_fu_195_p4;
reg    ap_done_reg;
wire    ap_continue_int;
reg    ap_done_int;
reg    ap_loop_exit_ready_pp0_iter2_reg;
reg   [0:0] ap_NS_fsm;
wire    ap_enable_pp0;
wire    ap_start_int;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 ap_CS_fsm = 1'd1;
#0 ap_enable_reg_pp0_iter1 = 1'b0;
#0 ap_enable_reg_pp0_iter2 = 1'b0;
#0 ap_done_reg = 1'b0;
end

dut_mux_83_8_1_1 #(
    .ID( 1 ),
    .NUM_STAGE( 1 ),
    .din0_WIDTH( 8 ),
    .din1_WIDTH( 8 ),
    .din2_WIDTH( 8 ),
    .din3_WIDTH( 8 ),
    .din4_WIDTH( 8 ),
    .din5_WIDTH( 8 ),
    .din6_WIDTH( 8 ),
    .din7_WIDTH( 8 ),
    .din8_WIDTH( 3 ),
    .dout_WIDTH( 8 ))
mux_83_8_1_1_U245(
    .din0(val_buf5_0_q0),
    .din1(val_buf5_1_q0),
    .din2(val_buf5_2_q0),
    .din3(val_buf5_3_q0),
    .din4(val_buf5_4_q0),
    .din5(val_buf5_5_q0),
    .din6(val_buf5_6_q0),
    .din7(val_buf5_7_q0),
    .din8(empty_reg_266),
    .dout(p_0_fu_228_p10)
);

dut_flow_control_loop_pipe_sequential_init flow_control_loop_pipe_sequential_init_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(ap_start),
    .ap_ready(ap_ready),
    .ap_done(ap_done),
    .ap_start_int(ap_start_int),
    .ap_loop_init(ap_loop_init),
    .ap_ready_int(ap_ready_int),
    .ap_loop_exit_ready(ap_condition_exit_pp0_iter1_stage0),
    .ap_loop_exit_done(ap_done_int),
    .ap_continue_int(ap_continue_int),
    .ap_done_int(ap_done_int)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_done_reg <= 1'b0;
    end else begin
        if ((ap_continue_int == 1'b1)) begin
            ap_done_reg <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
            ap_done_reg <= 1'b1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter1 <= 1'b0;
    end else begin
        if ((1'b1 == ap_condition_exit_pp0_iter1_stage0)) begin
            ap_enable_reg_pp0_iter1 <= 1'b0;
        end else if (((1'b0 == ap_block_pp0_stage0_subdone) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
            ap_enable_reg_pp0_iter1 <= ap_start_int;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_enable_reg_pp0_iter2 <= 1'b0;
    end else begin
        if ((1'b0 == ap_block_pp0_stage0_subdone)) begin
            ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((ap_loop_exit_ready == 1'b0) & (1'b0 == ap_block_pp0_stage0_subdone))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= 1'b0;
    end else if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b0 == ap_block_pp0_stage0_11001)) begin
        if (((1'b1 == ap_CS_fsm_pp0_stage0) & (ap_loop_init == 1'b1))) begin
            loop_index_fu_58 <= 64'd0;
        end else if (((ap_enable_reg_pp0_iter2 == 1'b1) & (exitcond_reg_316 == 1'd0))) begin
            loop_index_fu_58 <= empty_30_reg_311;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        empty_30_reg_311 <= empty_30_fu_217_p2;
        empty_reg_266 <= empty_fu_191_p1;
        exitcond_reg_316 <= exitcond_fu_223_p2;
        sext_ln140_cast_reg_261 <= sext_ln140_cast_fu_179_p1;
    end
end

always @ (*) begin
    if (((exitcond_fu_223_p2 == 1'd1) & (1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b1;
    end else begin
        ap_condition_exit_pp0_iter1_stage0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_loop_exit_ready_pp0_iter2_reg == 1'b1))) begin
        ap_done_int = 1'b1;
    end else begin
        ap_done_int = ap_done_reg;
    end
end

always @ (*) begin
    if (((ap_idle_pp0 == 1'b1) & (ap_start_int == 1'b0) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((ap_enable_reg_pp0_iter2 == 1'b0) & (ap_enable_reg_pp0_iter1 == 1'b0) & (ap_enable_reg_pp0_iter0 == 1'b0))) begin
        ap_idle_pp0 = 1'b1;
    end else begin
        ap_idle_pp0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_subdone) & (ap_enable_reg_pp0_iter0 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        ap_ready_int = 1'b1;
    end else begin
        ap_ready_int = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1) & (exitcond_reg_316 == 1'd0))) begin
        ap_sig_allocacmp_loop_index_load = empty_30_reg_311;
    end else begin
        ap_sig_allocacmp_loop_index_load = loop_index_fu_58;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        dst_TDATA_blk_n = dst_TREADY;
    end else begin
        dst_TDATA_blk_n = 1'b1;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter2 == 1'b1))) begin
        dst_TVALID = 1'b1;
    end else begin
        dst_TVALID = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        val_buf5_0_ce0 = 1'b1;
    end else begin
        val_buf5_0_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        val_buf5_1_ce0 = 1'b1;
    end else begin
        val_buf5_1_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        val_buf5_2_ce0 = 1'b1;
    end else begin
        val_buf5_2_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        val_buf5_3_ce0 = 1'b1;
    end else begin
        val_buf5_3_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        val_buf5_4_ce0 = 1'b1;
    end else begin
        val_buf5_4_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        val_buf5_5_ce0 = 1'b1;
    end else begin
        val_buf5_5_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        val_buf5_6_ce0 = 1'b1;
    end else begin
        val_buf5_6_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_block_pp0_stage0_11001) & (ap_enable_reg_pp0_iter1 == 1'b1) & (1'b1 == ap_CS_fsm_pp0_stage0))) begin
        val_buf5_7_ce0 = 1'b1;
    end else begin
        val_buf5_7_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_pp0_stage0 : begin
            ap_NS_fsm = ap_ST_fsm_pp0_stage0;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_pp0_stage0 = ap_CS_fsm[32'd0];

assign ap_block_pp0_stage0 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_pp0_stage0_01001 = ((dst_TREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_11001 = ((dst_TREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

always @ (*) begin
    ap_block_pp0_stage0_subdone = ((dst_TREADY == 1'b0) & (ap_enable_reg_pp0_iter2 == 1'b1));
end

assign ap_block_state1_pp0_stage0_iter0 = ~(1'b1 == 1'b1);

assign ap_block_state2_pp0_stage0_iter1 = ~(1'b1 == 1'b1);

always @ (*) begin
    ap_block_state3_pp0_stage0_iter2 = (dst_TREADY == 1'b0);
end

assign ap_enable_pp0 = (ap_idle_pp0 ^ 1'b1);

assign ap_enable_reg_pp0_iter0 = ap_start_int;

assign ap_loop_exit_ready = ap_condition_exit_pp0_iter1_stage0;

assign dst_TDATA = p_0_fu_228_p10;

assign empty_30_fu_217_p2 = (ap_sig_allocacmp_loop_index_load + 64'd1);

assign empty_fu_191_p1 = ap_sig_allocacmp_loop_index_load[2:0];

assign exitcond_fu_223_p2 = ((empty_30_fu_217_p2 == sext_ln140_cast_reg_261) ? 1'b1 : 1'b0);

assign p_cast35_fu_205_p1 = tmp_s_fu_195_p4;

assign sext_ln140_cast_fu_179_p1 = $signed(sext_ln140);

assign tmp_s_fu_195_p4 = {{ap_sig_allocacmp_loop_index_load[14:3]}};

assign val_buf5_0_address0 = p_cast35_fu_205_p1;

assign val_buf5_1_address0 = p_cast35_fu_205_p1;

assign val_buf5_2_address0 = p_cast35_fu_205_p1;

assign val_buf5_3_address0 = p_cast35_fu_205_p1;

assign val_buf5_4_address0 = p_cast35_fu_205_p1;

assign val_buf5_5_address0 = p_cast35_fu_205_p1;

assign val_buf5_6_address0 = p_cast35_fu_205_p1;

assign val_buf5_7_address0 = p_cast35_fu_205_p1;

endmodule //dut_mergeBuffer_Pipeline_12
