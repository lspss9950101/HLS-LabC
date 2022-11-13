-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.2 (64-bit)
-- Version: 2022.2
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity canny is
port (
    src_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    src_ce0 : OUT STD_LOGIC;
    src_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    src_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    src_we0 : OUT STD_LOGIC;
    src_address1 : OUT STD_LOGIC_VECTOR (13 downto 0);
    src_ce1 : OUT STD_LOGIC;
    src_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    src_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    src_we1 : OUT STD_LOGIC;
    dst_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
    dst_ce0 : OUT STD_LOGIC;
    dst_d0 : OUT STD_LOGIC_VECTOR (31 downto 0);
    dst_q0 : IN STD_LOGIC_VECTOR (31 downto 0);
    dst_we0 : OUT STD_LOGIC;
    dst_address1 : OUT STD_LOGIC_VECTOR (13 downto 0);
    dst_ce1 : OUT STD_LOGIC;
    dst_d1 : OUT STD_LOGIC_VECTOR (31 downto 0);
    dst_q1 : IN STD_LOGIC_VECTOR (31 downto 0);
    dst_we1 : OUT STD_LOGIC;
    upperThresh : IN STD_LOGIC_VECTOR (31 downto 0);
    lowerThresh : IN STD_LOGIC_VECTOR (31 downto 0);
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC );
end;


architecture behav of canny is 
    attribute CORE_GENERATION_INFO : STRING;
    attribute CORE_GENERATION_INFO of behav : architecture is
    "canny_canny,hls_ip_2022_2,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg400-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=dataflow,HLS_SYN_CLOCK=3.871000,HLS_SYN_LAT=17453,HLS_SYN_TPT=17444,HLS_SYN_MEM=202,HLS_SYN_DSP=0,HLS_SYN_FF=5940,HLS_SYN_LUT=3665,HLS_VERSION=2022_2}";
    constant ap_const_lv14_0 : STD_LOGIC_VECTOR (13 downto 0) := "00000000000000";
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_boolean_1 : BOOLEAN := true;

    signal entry_proc_U0_ap_start : STD_LOGIC;
    signal entry_proc_U0_ap_done : STD_LOGIC;
    signal entry_proc_U0_ap_continue : STD_LOGIC;
    signal entry_proc_U0_ap_idle : STD_LOGIC;
    signal entry_proc_U0_ap_ready : STD_LOGIC;
    signal entry_proc_U0_start_out : STD_LOGIC;
    signal entry_proc_U0_start_write : STD_LOGIC;
    signal entry_proc_U0_upperThresh_c_din : STD_LOGIC_VECTOR (31 downto 0);
    signal entry_proc_U0_upperThresh_c_write : STD_LOGIC;
    signal entry_proc_U0_lowerThresh_c_din : STD_LOGIC_VECTOR (31 downto 0);
    signal entry_proc_U0_lowerThresh_c_write : STD_LOGIC;
    signal MergeFilter_U0_ap_start : STD_LOGIC;
    signal MergeFilter_U0_ap_done : STD_LOGIC;
    signal MergeFilter_U0_ap_continue : STD_LOGIC;
    signal MergeFilter_U0_ap_idle : STD_LOGIC;
    signal MergeFilter_U0_ap_ready : STD_LOGIC;
    signal MergeFilter_U0_x_sobel_din : STD_LOGIC_VECTOR (12 downto 0);
    signal MergeFilter_U0_x_sobel_write : STD_LOGIC;
    signal MergeFilter_U0_y_sobel_din : STD_LOGIC_VECTOR (12 downto 0);
    signal MergeFilter_U0_y_sobel_write : STD_LOGIC;
    signal MergeFilter_U0_y_sobel_7_din : STD_LOGIC_VECTOR (19 downto 0);
    signal MergeFilter_U0_y_sobel_7_write : STD_LOGIC;
    signal MergeFilter_U0_start_out : STD_LOGIC;
    signal MergeFilter_U0_start_write : STD_LOGIC;
    signal MergeFilter_U0_src_address0 : STD_LOGIC_VECTOR (13 downto 0);
    signal MergeFilter_U0_src_ce0 : STD_LOGIC;
    signal ConvertXY_U0_ap_start : STD_LOGIC;
    signal ConvertXY_U0_ap_done : STD_LOGIC;
    signal ConvertXY_U0_ap_continue : STD_LOGIC;
    signal ConvertXY_U0_ap_idle : STD_LOGIC;
    signal ConvertXY_U0_ap_ready : STD_LOGIC;
    signal ConvertXY_U0_x_sobel_read : STD_LOGIC;
    signal ConvertXY_U0_y_sobel_read : STD_LOGIC;
    signal ConvertXY_U0_y_sobel_7_read : STD_LOGIC;
    signal ConvertXY_U0_magnitude_din : STD_LOGIC_VECTOR (25 downto 0);
    signal ConvertXY_U0_magnitude_write : STD_LOGIC;
    signal ConvertXY_U0_tangent_y_din : STD_LOGIC_VECTOR (31 downto 0);
    signal ConvertXY_U0_tangent_y_write : STD_LOGIC;
    signal ConvertXY_U0_tangent_x_225_din : STD_LOGIC_VECTOR (31 downto 0);
    signal ConvertXY_U0_tangent_x_225_write : STD_LOGIC;
    signal ConvertXY_U0_tangent_x_675_din : STD_LOGIC_VECTOR (31 downto 0);
    signal ConvertXY_U0_tangent_x_675_write : STD_LOGIC;
    signal NonMaximumSuppression_U0_ap_start : STD_LOGIC;
    signal NonMaximumSuppression_U0_ap_done : STD_LOGIC;
    signal NonMaximumSuppression_U0_ap_continue : STD_LOGIC;
    signal NonMaximumSuppression_U0_ap_idle : STD_LOGIC;
    signal NonMaximumSuppression_U0_ap_ready : STD_LOGIC;
    signal NonMaximumSuppression_U0_magnitude_read : STD_LOGIC;
    signal NonMaximumSuppression_U0_tangent_y_read : STD_LOGIC;
    signal NonMaximumSuppression_U0_tangent_x_225_read : STD_LOGIC;
    signal NonMaximumSuppression_U0_tangent_x_675_read : STD_LOGIC;
    signal NonMaximumSuppression_U0_upperThresh_read : STD_LOGIC;
    signal NonMaximumSuppression_U0_lowerThresh_read : STD_LOGIC;
    signal NonMaximumSuppression_U0_dst_address0 : STD_LOGIC_VECTOR (13 downto 0);
    signal NonMaximumSuppression_U0_dst_ce0 : STD_LOGIC;
    signal NonMaximumSuppression_U0_dst_we0 : STD_LOGIC;
    signal NonMaximumSuppression_U0_dst_d0 : STD_LOGIC_VECTOR (31 downto 0);
    signal upperThresh_c_full_n : STD_LOGIC;
    signal upperThresh_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal upperThresh_c_num_data_valid : STD_LOGIC_VECTOR (2 downto 0);
    signal upperThresh_c_fifo_cap : STD_LOGIC_VECTOR (2 downto 0);
    signal upperThresh_c_empty_n : STD_LOGIC;
    signal lowerThresh_c_full_n : STD_LOGIC;
    signal lowerThresh_c_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal lowerThresh_c_num_data_valid : STD_LOGIC_VECTOR (2 downto 0);
    signal lowerThresh_c_fifo_cap : STD_LOGIC_VECTOR (2 downto 0);
    signal lowerThresh_c_empty_n : STD_LOGIC;
    signal x_sobel_V_full_n : STD_LOGIC;
    signal x_sobel_V_dout : STD_LOGIC_VECTOR (12 downto 0);
    signal x_sobel_V_num_data_valid : STD_LOGIC_VECTOR (14 downto 0);
    signal x_sobel_V_fifo_cap : STD_LOGIC_VECTOR (14 downto 0);
    signal x_sobel_V_empty_n : STD_LOGIC;
    signal y_sobel_V_full_n : STD_LOGIC;
    signal y_sobel_V_dout : STD_LOGIC_VECTOR (12 downto 0);
    signal y_sobel_V_num_data_valid : STD_LOGIC_VECTOR (14 downto 0);
    signal y_sobel_V_fifo_cap : STD_LOGIC_VECTOR (14 downto 0);
    signal y_sobel_V_empty_n : STD_LOGIC;
    signal y_sobel_7_V_full_n : STD_LOGIC;
    signal y_sobel_7_V_dout : STD_LOGIC_VECTOR (19 downto 0);
    signal y_sobel_7_V_num_data_valid : STD_LOGIC_VECTOR (15 downto 0);
    signal y_sobel_7_V_fifo_cap : STD_LOGIC_VECTOR (15 downto 0);
    signal y_sobel_7_V_empty_n : STD_LOGIC;
    signal magnitude_V_full_n : STD_LOGIC;
    signal magnitude_V_dout : STD_LOGIC_VECTOR (25 downto 0);
    signal magnitude_V_num_data_valid : STD_LOGIC_VECTOR (14 downto 0);
    signal magnitude_V_fifo_cap : STD_LOGIC_VECTOR (14 downto 0);
    signal magnitude_V_empty_n : STD_LOGIC;
    signal tangent_y_V_full_n : STD_LOGIC;
    signal tangent_y_V_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal tangent_y_V_num_data_valid : STD_LOGIC_VECTOR (14 downto 0);
    signal tangent_y_V_fifo_cap : STD_LOGIC_VECTOR (14 downto 0);
    signal tangent_y_V_empty_n : STD_LOGIC;
    signal tangent_x_225_V_full_n : STD_LOGIC;
    signal tangent_x_225_V_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal tangent_x_225_V_num_data_valid : STD_LOGIC_VECTOR (14 downto 0);
    signal tangent_x_225_V_fifo_cap : STD_LOGIC_VECTOR (14 downto 0);
    signal tangent_x_225_V_empty_n : STD_LOGIC;
    signal tangent_x_675_V_full_n : STD_LOGIC;
    signal tangent_x_675_V_dout : STD_LOGIC_VECTOR (31 downto 0);
    signal tangent_x_675_V_num_data_valid : STD_LOGIC_VECTOR (14 downto 0);
    signal tangent_x_675_V_fifo_cap : STD_LOGIC_VECTOR (14 downto 0);
    signal tangent_x_675_V_empty_n : STD_LOGIC;
    signal ap_sync_ready : STD_LOGIC;
    signal ap_sync_reg_entry_proc_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_entry_proc_U0_ap_ready : STD_LOGIC;
    signal ap_sync_reg_MergeFilter_U0_ap_ready : STD_LOGIC := '0';
    signal ap_sync_MergeFilter_U0_ap_ready : STD_LOGIC;
    signal start_for_NonMaximumSuppression_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_NonMaximumSuppression_U0_full_n : STD_LOGIC;
    signal start_for_NonMaximumSuppression_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_NonMaximumSuppression_U0_empty_n : STD_LOGIC;
    signal start_for_ConvertXY_U0_din : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_ConvertXY_U0_full_n : STD_LOGIC;
    signal start_for_ConvertXY_U0_dout : STD_LOGIC_VECTOR (0 downto 0);
    signal start_for_ConvertXY_U0_empty_n : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component canny_entry_proc IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        upperThresh : IN STD_LOGIC_VECTOR (31 downto 0);
        upperThresh_c_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        upperThresh_c_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
        upperThresh_c_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
        upperThresh_c_full_n : IN STD_LOGIC;
        upperThresh_c_write : OUT STD_LOGIC;
        lowerThresh : IN STD_LOGIC_VECTOR (31 downto 0);
        lowerThresh_c_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        lowerThresh_c_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
        lowerThresh_c_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
        lowerThresh_c_full_n : IN STD_LOGIC;
        lowerThresh_c_write : OUT STD_LOGIC );
    end component;


    component canny_MergeFilter IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        start_full_n : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        x_sobel_din : OUT STD_LOGIC_VECTOR (12 downto 0);
        x_sobel_num_data_valid : IN STD_LOGIC_VECTOR (14 downto 0);
        x_sobel_fifo_cap : IN STD_LOGIC_VECTOR (14 downto 0);
        x_sobel_full_n : IN STD_LOGIC;
        x_sobel_write : OUT STD_LOGIC;
        y_sobel_din : OUT STD_LOGIC_VECTOR (12 downto 0);
        y_sobel_num_data_valid : IN STD_LOGIC_VECTOR (14 downto 0);
        y_sobel_fifo_cap : IN STD_LOGIC_VECTOR (14 downto 0);
        y_sobel_full_n : IN STD_LOGIC;
        y_sobel_write : OUT STD_LOGIC;
        y_sobel_7_din : OUT STD_LOGIC_VECTOR (19 downto 0);
        y_sobel_7_num_data_valid : IN STD_LOGIC_VECTOR (15 downto 0);
        y_sobel_7_fifo_cap : IN STD_LOGIC_VECTOR (15 downto 0);
        y_sobel_7_full_n : IN STD_LOGIC;
        y_sobel_7_write : OUT STD_LOGIC;
        start_out : OUT STD_LOGIC;
        start_write : OUT STD_LOGIC;
        src_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
        src_ce0 : OUT STD_LOGIC;
        src_q0 : IN STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component canny_ConvertXY IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        x_sobel_dout : IN STD_LOGIC_VECTOR (12 downto 0);
        x_sobel_num_data_valid : IN STD_LOGIC_VECTOR (14 downto 0);
        x_sobel_fifo_cap : IN STD_LOGIC_VECTOR (14 downto 0);
        x_sobel_empty_n : IN STD_LOGIC;
        x_sobel_read : OUT STD_LOGIC;
        y_sobel_dout : IN STD_LOGIC_VECTOR (12 downto 0);
        y_sobel_num_data_valid : IN STD_LOGIC_VECTOR (14 downto 0);
        y_sobel_fifo_cap : IN STD_LOGIC_VECTOR (14 downto 0);
        y_sobel_empty_n : IN STD_LOGIC;
        y_sobel_read : OUT STD_LOGIC;
        y_sobel_7_dout : IN STD_LOGIC_VECTOR (19 downto 0);
        y_sobel_7_num_data_valid : IN STD_LOGIC_VECTOR (15 downto 0);
        y_sobel_7_fifo_cap : IN STD_LOGIC_VECTOR (15 downto 0);
        y_sobel_7_empty_n : IN STD_LOGIC;
        y_sobel_7_read : OUT STD_LOGIC;
        magnitude_din : OUT STD_LOGIC_VECTOR (25 downto 0);
        magnitude_num_data_valid : IN STD_LOGIC_VECTOR (14 downto 0);
        magnitude_fifo_cap : IN STD_LOGIC_VECTOR (14 downto 0);
        magnitude_full_n : IN STD_LOGIC;
        magnitude_write : OUT STD_LOGIC;
        tangent_y_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        tangent_y_num_data_valid : IN STD_LOGIC_VECTOR (14 downto 0);
        tangent_y_fifo_cap : IN STD_LOGIC_VECTOR (14 downto 0);
        tangent_y_full_n : IN STD_LOGIC;
        tangent_y_write : OUT STD_LOGIC;
        tangent_x_225_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        tangent_x_225_num_data_valid : IN STD_LOGIC_VECTOR (14 downto 0);
        tangent_x_225_fifo_cap : IN STD_LOGIC_VECTOR (14 downto 0);
        tangent_x_225_full_n : IN STD_LOGIC;
        tangent_x_225_write : OUT STD_LOGIC;
        tangent_x_675_din : OUT STD_LOGIC_VECTOR (31 downto 0);
        tangent_x_675_num_data_valid : IN STD_LOGIC_VECTOR (14 downto 0);
        tangent_x_675_fifo_cap : IN STD_LOGIC_VECTOR (14 downto 0);
        tangent_x_675_full_n : IN STD_LOGIC;
        tangent_x_675_write : OUT STD_LOGIC );
    end component;


    component canny_NonMaximumSuppression IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_continue : IN STD_LOGIC;
        ap_idle : OUT STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        magnitude_dout : IN STD_LOGIC_VECTOR (25 downto 0);
        magnitude_num_data_valid : IN STD_LOGIC_VECTOR (14 downto 0);
        magnitude_fifo_cap : IN STD_LOGIC_VECTOR (14 downto 0);
        magnitude_empty_n : IN STD_LOGIC;
        magnitude_read : OUT STD_LOGIC;
        tangent_y_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        tangent_y_num_data_valid : IN STD_LOGIC_VECTOR (14 downto 0);
        tangent_y_fifo_cap : IN STD_LOGIC_VECTOR (14 downto 0);
        tangent_y_empty_n : IN STD_LOGIC;
        tangent_y_read : OUT STD_LOGIC;
        tangent_x_225_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        tangent_x_225_num_data_valid : IN STD_LOGIC_VECTOR (14 downto 0);
        tangent_x_225_fifo_cap : IN STD_LOGIC_VECTOR (14 downto 0);
        tangent_x_225_empty_n : IN STD_LOGIC;
        tangent_x_225_read : OUT STD_LOGIC;
        tangent_x_675_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        tangent_x_675_num_data_valid : IN STD_LOGIC_VECTOR (14 downto 0);
        tangent_x_675_fifo_cap : IN STD_LOGIC_VECTOR (14 downto 0);
        tangent_x_675_empty_n : IN STD_LOGIC;
        tangent_x_675_read : OUT STD_LOGIC;
        upperThresh_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        upperThresh_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
        upperThresh_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
        upperThresh_empty_n : IN STD_LOGIC;
        upperThresh_read : OUT STD_LOGIC;
        lowerThresh_dout : IN STD_LOGIC_VECTOR (31 downto 0);
        lowerThresh_num_data_valid : IN STD_LOGIC_VECTOR (2 downto 0);
        lowerThresh_fifo_cap : IN STD_LOGIC_VECTOR (2 downto 0);
        lowerThresh_empty_n : IN STD_LOGIC;
        lowerThresh_read : OUT STD_LOGIC;
        dst_address0 : OUT STD_LOGIC_VECTOR (13 downto 0);
        dst_ce0 : OUT STD_LOGIC;
        dst_we0 : OUT STD_LOGIC;
        dst_d0 : OUT STD_LOGIC_VECTOR (31 downto 0) );
    end component;


    component canny_fifo_w32_d4_S IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (2 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (2 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component canny_fifo_w13_d16384_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (12 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (12 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (14 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (14 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component canny_fifo_w20_d21846_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (19 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (19 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (15 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (15 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component canny_fifo_w26_d16384_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (25 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (25 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (14 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (14 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component canny_fifo_w32_d16384_A IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (31 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (31 downto 0);
        if_num_data_valid : OUT STD_LOGIC_VECTOR (14 downto 0);
        if_fifo_cap : OUT STD_LOGIC_VECTOR (14 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component canny_start_for_NonMaximumSuppression_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;


    component canny_start_for_ConvertXY_U0 IS
    port (
        clk : IN STD_LOGIC;
        reset : IN STD_LOGIC;
        if_read_ce : IN STD_LOGIC;
        if_write_ce : IN STD_LOGIC;
        if_din : IN STD_LOGIC_VECTOR (0 downto 0);
        if_full_n : OUT STD_LOGIC;
        if_write : IN STD_LOGIC;
        if_dout : OUT STD_LOGIC_VECTOR (0 downto 0);
        if_empty_n : OUT STD_LOGIC;
        if_read : IN STD_LOGIC );
    end component;



begin
    entry_proc_U0 : component canny_entry_proc
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => entry_proc_U0_ap_start,
        start_full_n => start_for_NonMaximumSuppression_U0_full_n,
        ap_done => entry_proc_U0_ap_done,
        ap_continue => entry_proc_U0_ap_continue,
        ap_idle => entry_proc_U0_ap_idle,
        ap_ready => entry_proc_U0_ap_ready,
        start_out => entry_proc_U0_start_out,
        start_write => entry_proc_U0_start_write,
        upperThresh => upperThresh,
        upperThresh_c_din => entry_proc_U0_upperThresh_c_din,
        upperThresh_c_num_data_valid => upperThresh_c_num_data_valid,
        upperThresh_c_fifo_cap => upperThresh_c_fifo_cap,
        upperThresh_c_full_n => upperThresh_c_full_n,
        upperThresh_c_write => entry_proc_U0_upperThresh_c_write,
        lowerThresh => lowerThresh,
        lowerThresh_c_din => entry_proc_U0_lowerThresh_c_din,
        lowerThresh_c_num_data_valid => lowerThresh_c_num_data_valid,
        lowerThresh_c_fifo_cap => lowerThresh_c_fifo_cap,
        lowerThresh_c_full_n => lowerThresh_c_full_n,
        lowerThresh_c_write => entry_proc_U0_lowerThresh_c_write);

    MergeFilter_U0 : component canny_MergeFilter
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => MergeFilter_U0_ap_start,
        start_full_n => start_for_ConvertXY_U0_full_n,
        ap_done => MergeFilter_U0_ap_done,
        ap_continue => MergeFilter_U0_ap_continue,
        ap_idle => MergeFilter_U0_ap_idle,
        ap_ready => MergeFilter_U0_ap_ready,
        x_sobel_din => MergeFilter_U0_x_sobel_din,
        x_sobel_num_data_valid => x_sobel_V_num_data_valid,
        x_sobel_fifo_cap => x_sobel_V_fifo_cap,
        x_sobel_full_n => x_sobel_V_full_n,
        x_sobel_write => MergeFilter_U0_x_sobel_write,
        y_sobel_din => MergeFilter_U0_y_sobel_din,
        y_sobel_num_data_valid => y_sobel_V_num_data_valid,
        y_sobel_fifo_cap => y_sobel_V_fifo_cap,
        y_sobel_full_n => y_sobel_V_full_n,
        y_sobel_write => MergeFilter_U0_y_sobel_write,
        y_sobel_7_din => MergeFilter_U0_y_sobel_7_din,
        y_sobel_7_num_data_valid => y_sobel_7_V_num_data_valid,
        y_sobel_7_fifo_cap => y_sobel_7_V_fifo_cap,
        y_sobel_7_full_n => y_sobel_7_V_full_n,
        y_sobel_7_write => MergeFilter_U0_y_sobel_7_write,
        start_out => MergeFilter_U0_start_out,
        start_write => MergeFilter_U0_start_write,
        src_address0 => MergeFilter_U0_src_address0,
        src_ce0 => MergeFilter_U0_src_ce0,
        src_q0 => src_q0);

    ConvertXY_U0 : component canny_ConvertXY
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ConvertXY_U0_ap_start,
        ap_done => ConvertXY_U0_ap_done,
        ap_continue => ConvertXY_U0_ap_continue,
        ap_idle => ConvertXY_U0_ap_idle,
        ap_ready => ConvertXY_U0_ap_ready,
        x_sobel_dout => x_sobel_V_dout,
        x_sobel_num_data_valid => x_sobel_V_num_data_valid,
        x_sobel_fifo_cap => x_sobel_V_fifo_cap,
        x_sobel_empty_n => x_sobel_V_empty_n,
        x_sobel_read => ConvertXY_U0_x_sobel_read,
        y_sobel_dout => y_sobel_V_dout,
        y_sobel_num_data_valid => y_sobel_V_num_data_valid,
        y_sobel_fifo_cap => y_sobel_V_fifo_cap,
        y_sobel_empty_n => y_sobel_V_empty_n,
        y_sobel_read => ConvertXY_U0_y_sobel_read,
        y_sobel_7_dout => y_sobel_7_V_dout,
        y_sobel_7_num_data_valid => y_sobel_7_V_num_data_valid,
        y_sobel_7_fifo_cap => y_sobel_7_V_fifo_cap,
        y_sobel_7_empty_n => y_sobel_7_V_empty_n,
        y_sobel_7_read => ConvertXY_U0_y_sobel_7_read,
        magnitude_din => ConvertXY_U0_magnitude_din,
        magnitude_num_data_valid => magnitude_V_num_data_valid,
        magnitude_fifo_cap => magnitude_V_fifo_cap,
        magnitude_full_n => magnitude_V_full_n,
        magnitude_write => ConvertXY_U0_magnitude_write,
        tangent_y_din => ConvertXY_U0_tangent_y_din,
        tangent_y_num_data_valid => tangent_y_V_num_data_valid,
        tangent_y_fifo_cap => tangent_y_V_fifo_cap,
        tangent_y_full_n => tangent_y_V_full_n,
        tangent_y_write => ConvertXY_U0_tangent_y_write,
        tangent_x_225_din => ConvertXY_U0_tangent_x_225_din,
        tangent_x_225_num_data_valid => tangent_x_225_V_num_data_valid,
        tangent_x_225_fifo_cap => tangent_x_225_V_fifo_cap,
        tangent_x_225_full_n => tangent_x_225_V_full_n,
        tangent_x_225_write => ConvertXY_U0_tangent_x_225_write,
        tangent_x_675_din => ConvertXY_U0_tangent_x_675_din,
        tangent_x_675_num_data_valid => tangent_x_675_V_num_data_valid,
        tangent_x_675_fifo_cap => tangent_x_675_V_fifo_cap,
        tangent_x_675_full_n => tangent_x_675_V_full_n,
        tangent_x_675_write => ConvertXY_U0_tangent_x_675_write);

    NonMaximumSuppression_U0 : component canny_NonMaximumSuppression
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => NonMaximumSuppression_U0_ap_start,
        ap_done => NonMaximumSuppression_U0_ap_done,
        ap_continue => NonMaximumSuppression_U0_ap_continue,
        ap_idle => NonMaximumSuppression_U0_ap_idle,
        ap_ready => NonMaximumSuppression_U0_ap_ready,
        magnitude_dout => magnitude_V_dout,
        magnitude_num_data_valid => magnitude_V_num_data_valid,
        magnitude_fifo_cap => magnitude_V_fifo_cap,
        magnitude_empty_n => magnitude_V_empty_n,
        magnitude_read => NonMaximumSuppression_U0_magnitude_read,
        tangent_y_dout => tangent_y_V_dout,
        tangent_y_num_data_valid => tangent_y_V_num_data_valid,
        tangent_y_fifo_cap => tangent_y_V_fifo_cap,
        tangent_y_empty_n => tangent_y_V_empty_n,
        tangent_y_read => NonMaximumSuppression_U0_tangent_y_read,
        tangent_x_225_dout => tangent_x_225_V_dout,
        tangent_x_225_num_data_valid => tangent_x_225_V_num_data_valid,
        tangent_x_225_fifo_cap => tangent_x_225_V_fifo_cap,
        tangent_x_225_empty_n => tangent_x_225_V_empty_n,
        tangent_x_225_read => NonMaximumSuppression_U0_tangent_x_225_read,
        tangent_x_675_dout => tangent_x_675_V_dout,
        tangent_x_675_num_data_valid => tangent_x_675_V_num_data_valid,
        tangent_x_675_fifo_cap => tangent_x_675_V_fifo_cap,
        tangent_x_675_empty_n => tangent_x_675_V_empty_n,
        tangent_x_675_read => NonMaximumSuppression_U0_tangent_x_675_read,
        upperThresh_dout => upperThresh_c_dout,
        upperThresh_num_data_valid => upperThresh_c_num_data_valid,
        upperThresh_fifo_cap => upperThresh_c_fifo_cap,
        upperThresh_empty_n => upperThresh_c_empty_n,
        upperThresh_read => NonMaximumSuppression_U0_upperThresh_read,
        lowerThresh_dout => lowerThresh_c_dout,
        lowerThresh_num_data_valid => lowerThresh_c_num_data_valid,
        lowerThresh_fifo_cap => lowerThresh_c_fifo_cap,
        lowerThresh_empty_n => lowerThresh_c_empty_n,
        lowerThresh_read => NonMaximumSuppression_U0_lowerThresh_read,
        dst_address0 => NonMaximumSuppression_U0_dst_address0,
        dst_ce0 => NonMaximumSuppression_U0_dst_ce0,
        dst_we0 => NonMaximumSuppression_U0_dst_we0,
        dst_d0 => NonMaximumSuppression_U0_dst_d0);

    upperThresh_c_U : component canny_fifo_w32_d4_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => entry_proc_U0_upperThresh_c_din,
        if_full_n => upperThresh_c_full_n,
        if_write => entry_proc_U0_upperThresh_c_write,
        if_dout => upperThresh_c_dout,
        if_num_data_valid => upperThresh_c_num_data_valid,
        if_fifo_cap => upperThresh_c_fifo_cap,
        if_empty_n => upperThresh_c_empty_n,
        if_read => NonMaximumSuppression_U0_upperThresh_read);

    lowerThresh_c_U : component canny_fifo_w32_d4_S
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => entry_proc_U0_lowerThresh_c_din,
        if_full_n => lowerThresh_c_full_n,
        if_write => entry_proc_U0_lowerThresh_c_write,
        if_dout => lowerThresh_c_dout,
        if_num_data_valid => lowerThresh_c_num_data_valid,
        if_fifo_cap => lowerThresh_c_fifo_cap,
        if_empty_n => lowerThresh_c_empty_n,
        if_read => NonMaximumSuppression_U0_lowerThresh_read);

    x_sobel_V_U : component canny_fifo_w13_d16384_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => MergeFilter_U0_x_sobel_din,
        if_full_n => x_sobel_V_full_n,
        if_write => MergeFilter_U0_x_sobel_write,
        if_dout => x_sobel_V_dout,
        if_num_data_valid => x_sobel_V_num_data_valid,
        if_fifo_cap => x_sobel_V_fifo_cap,
        if_empty_n => x_sobel_V_empty_n,
        if_read => ConvertXY_U0_x_sobel_read);

    y_sobel_V_U : component canny_fifo_w13_d16384_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => MergeFilter_U0_y_sobel_din,
        if_full_n => y_sobel_V_full_n,
        if_write => MergeFilter_U0_y_sobel_write,
        if_dout => y_sobel_V_dout,
        if_num_data_valid => y_sobel_V_num_data_valid,
        if_fifo_cap => y_sobel_V_fifo_cap,
        if_empty_n => y_sobel_V_empty_n,
        if_read => ConvertXY_U0_y_sobel_read);

    y_sobel_7_V_U : component canny_fifo_w20_d21846_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => MergeFilter_U0_y_sobel_7_din,
        if_full_n => y_sobel_7_V_full_n,
        if_write => MergeFilter_U0_y_sobel_7_write,
        if_dout => y_sobel_7_V_dout,
        if_num_data_valid => y_sobel_7_V_num_data_valid,
        if_fifo_cap => y_sobel_7_V_fifo_cap,
        if_empty_n => y_sobel_7_V_empty_n,
        if_read => ConvertXY_U0_y_sobel_7_read);

    magnitude_V_U : component canny_fifo_w26_d16384_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => ConvertXY_U0_magnitude_din,
        if_full_n => magnitude_V_full_n,
        if_write => ConvertXY_U0_magnitude_write,
        if_dout => magnitude_V_dout,
        if_num_data_valid => magnitude_V_num_data_valid,
        if_fifo_cap => magnitude_V_fifo_cap,
        if_empty_n => magnitude_V_empty_n,
        if_read => NonMaximumSuppression_U0_magnitude_read);

    tangent_y_V_U : component canny_fifo_w32_d16384_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => ConvertXY_U0_tangent_y_din,
        if_full_n => tangent_y_V_full_n,
        if_write => ConvertXY_U0_tangent_y_write,
        if_dout => tangent_y_V_dout,
        if_num_data_valid => tangent_y_V_num_data_valid,
        if_fifo_cap => tangent_y_V_fifo_cap,
        if_empty_n => tangent_y_V_empty_n,
        if_read => NonMaximumSuppression_U0_tangent_y_read);

    tangent_x_225_V_U : component canny_fifo_w32_d16384_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => ConvertXY_U0_tangent_x_225_din,
        if_full_n => tangent_x_225_V_full_n,
        if_write => ConvertXY_U0_tangent_x_225_write,
        if_dout => tangent_x_225_V_dout,
        if_num_data_valid => tangent_x_225_V_num_data_valid,
        if_fifo_cap => tangent_x_225_V_fifo_cap,
        if_empty_n => tangent_x_225_V_empty_n,
        if_read => NonMaximumSuppression_U0_tangent_x_225_read);

    tangent_x_675_V_U : component canny_fifo_w32_d16384_A
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => ConvertXY_U0_tangent_x_675_din,
        if_full_n => tangent_x_675_V_full_n,
        if_write => ConvertXY_U0_tangent_x_675_write,
        if_dout => tangent_x_675_V_dout,
        if_num_data_valid => tangent_x_675_V_num_data_valid,
        if_fifo_cap => tangent_x_675_V_fifo_cap,
        if_empty_n => tangent_x_675_V_empty_n,
        if_read => NonMaximumSuppression_U0_tangent_x_675_read);

    start_for_NonMaximumSuppression_U0_U : component canny_start_for_NonMaximumSuppression_U0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_NonMaximumSuppression_U0_din,
        if_full_n => start_for_NonMaximumSuppression_U0_full_n,
        if_write => entry_proc_U0_start_write,
        if_dout => start_for_NonMaximumSuppression_U0_dout,
        if_empty_n => start_for_NonMaximumSuppression_U0_empty_n,
        if_read => NonMaximumSuppression_U0_ap_ready);

    start_for_ConvertXY_U0_U : component canny_start_for_ConvertXY_U0
    port map (
        clk => ap_clk,
        reset => ap_rst,
        if_read_ce => ap_const_logic_1,
        if_write_ce => ap_const_logic_1,
        if_din => start_for_ConvertXY_U0_din,
        if_full_n => start_for_ConvertXY_U0_full_n,
        if_write => MergeFilter_U0_start_write,
        if_dout => start_for_ConvertXY_U0_dout,
        if_empty_n => start_for_ConvertXY_U0_empty_n,
        if_read => ConvertXY_U0_ap_ready);





    ap_sync_reg_MergeFilter_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_MergeFilter_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_MergeFilter_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_MergeFilter_U0_ap_ready <= ap_sync_MergeFilter_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;


    ap_sync_reg_entry_proc_U0_ap_ready_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_sync_reg_entry_proc_U0_ap_ready <= ap_const_logic_0;
            else
                if (((ap_sync_ready and ap_start) = ap_const_logic_1)) then 
                    ap_sync_reg_entry_proc_U0_ap_ready <= ap_const_logic_0;
                else 
                    ap_sync_reg_entry_proc_U0_ap_ready <= ap_sync_entry_proc_U0_ap_ready;
                end if; 
            end if;
        end if;
    end process;

    ConvertXY_U0_ap_continue <= ap_const_logic_1;
    ConvertXY_U0_ap_start <= start_for_ConvertXY_U0_empty_n;
    MergeFilter_U0_ap_continue <= ap_const_logic_1;
    MergeFilter_U0_ap_start <= ((ap_sync_reg_MergeFilter_U0_ap_ready xor ap_const_logic_1) and ap_start);
    NonMaximumSuppression_U0_ap_continue <= ap_const_logic_1;
    NonMaximumSuppression_U0_ap_start <= start_for_NonMaximumSuppression_U0_empty_n;
    ap_done <= NonMaximumSuppression_U0_ap_done;
    ap_idle <= (entry_proc_U0_ap_idle and NonMaximumSuppression_U0_ap_idle and MergeFilter_U0_ap_idle and ConvertXY_U0_ap_idle);
    ap_ready <= ap_sync_ready;
    ap_sync_MergeFilter_U0_ap_ready <= (ap_sync_reg_MergeFilter_U0_ap_ready or MergeFilter_U0_ap_ready);
    ap_sync_entry_proc_U0_ap_ready <= (entry_proc_U0_ap_ready or ap_sync_reg_entry_proc_U0_ap_ready);
    ap_sync_ready <= (ap_sync_entry_proc_U0_ap_ready and ap_sync_MergeFilter_U0_ap_ready);
    dst_address0 <= NonMaximumSuppression_U0_dst_address0;
    dst_address1 <= ap_const_lv14_0;
    dst_ce0 <= NonMaximumSuppression_U0_dst_ce0;
    dst_ce1 <= ap_const_logic_0;
    dst_d0 <= NonMaximumSuppression_U0_dst_d0;
    dst_d1 <= ap_const_lv32_0;
    dst_we0 <= NonMaximumSuppression_U0_dst_we0;
    dst_we1 <= ap_const_logic_0;
    entry_proc_U0_ap_continue <= ap_const_logic_1;
    entry_proc_U0_ap_start <= ((ap_sync_reg_entry_proc_U0_ap_ready xor ap_const_logic_1) and ap_start);
    src_address0 <= MergeFilter_U0_src_address0;
    src_address1 <= ap_const_lv14_0;
    src_ce0 <= MergeFilter_U0_src_ce0;
    src_ce1 <= ap_const_logic_0;
    src_d0 <= ap_const_lv32_0;
    src_d1 <= ap_const_lv32_0;
    src_we0 <= ap_const_logic_0;
    src_we1 <= ap_const_logic_0;
    start_for_ConvertXY_U0_din <= (0=>ap_const_logic_1, others=>'-');
    start_for_NonMaximumSuppression_U0_din <= (0=>ap_const_logic_1, others=>'-');
end behav;
