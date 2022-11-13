-- ==============================================================
-- RTL generated by Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2022.1 (64-bit)
-- Version: 2022.1
-- Copyright (C) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- 
-- ===========================================================

library IEEE;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity dut_mergeBuffer_Pipeline_3 is
port (
    ap_clk : IN STD_LOGIC;
    ap_rst : IN STD_LOGIC;
    ap_start : IN STD_LOGIC;
    ap_done : OUT STD_LOGIC;
    ap_idle : OUT STD_LOGIC;
    ap_ready : OUT STD_LOGIC;
    dst_TREADY : IN STD_LOGIC;
    buf1_0_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buf1_0_ce0 : OUT STD_LOGIC;
    buf1_0_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buf1_1_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buf1_1_ce0 : OUT STD_LOGIC;
    buf1_1_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buf1_2_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buf1_2_ce0 : OUT STD_LOGIC;
    buf1_2_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buf1_3_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buf1_3_ce0 : OUT STD_LOGIC;
    buf1_3_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buf1_4_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buf1_4_ce0 : OUT STD_LOGIC;
    buf1_4_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buf1_5_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buf1_5_ce0 : OUT STD_LOGIC;
    buf1_5_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buf1_6_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buf1_6_ce0 : OUT STD_LOGIC;
    buf1_6_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    buf1_7_address0 : OUT STD_LOGIC_VECTOR (9 downto 0);
    buf1_7_ce0 : OUT STD_LOGIC;
    buf1_7_q0 : IN STD_LOGIC_VECTOR (7 downto 0);
    dst_TDATA : OUT STD_LOGIC_VECTOR (7 downto 0);
    dst_TVALID : OUT STD_LOGIC;
    sext_ln104 : IN STD_LOGIC_VECTOR (15 downto 0) );
end;


architecture behav of dut_mergeBuffer_Pipeline_3 is 
    constant ap_const_logic_1 : STD_LOGIC := '1';
    constant ap_const_logic_0 : STD_LOGIC := '0';
    constant ap_ST_fsm_pp0_stage0 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv32_0 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000000";
    constant ap_const_boolean_1 : BOOLEAN := true;
    constant ap_const_boolean_0 : BOOLEAN := false;
    constant ap_const_lv1_1 : STD_LOGIC_VECTOR (0 downto 0) := "1";
    constant ap_const_lv64_0 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000000";
    constant ap_const_lv1_0 : STD_LOGIC_VECTOR (0 downto 0) := "0";
    constant ap_const_lv32_3 : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000000011";
    constant ap_const_lv32_C : STD_LOGIC_VECTOR (31 downto 0) := "00000000000000000000000000001100";
    constant ap_const_lv64_1 : STD_LOGIC_VECTOR (63 downto 0) := "0000000000000000000000000000000000000000000000000000000000000001";

attribute shreg_extract : string;
    signal ap_CS_fsm : STD_LOGIC_VECTOR (0 downto 0) := "1";
    attribute fsm_encoding : string;
    attribute fsm_encoding of ap_CS_fsm : signal is "none";
    signal ap_CS_fsm_pp0_stage0 : STD_LOGIC;
    attribute fsm_encoding of ap_CS_fsm_pp0_stage0 : signal is "none";
    signal ap_enable_reg_pp0_iter0 : STD_LOGIC;
    signal ap_enable_reg_pp0_iter1 : STD_LOGIC := '0';
    signal ap_enable_reg_pp0_iter2 : STD_LOGIC := '0';
    signal ap_idle_pp0 : STD_LOGIC;
    signal ap_block_state1_pp0_stage0_iter0 : BOOLEAN;
    signal ap_block_state2_pp0_stage0_iter1 : BOOLEAN;
    signal ap_block_state3_pp0_stage0_iter2 : BOOLEAN;
    signal ap_block_pp0_stage0_subdone : BOOLEAN;
    signal exitcond42_fu_223_p2 : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_condition_exit_pp0_iter1_stage0 : STD_LOGIC;
    signal ap_loop_exit_ready : STD_LOGIC;
    signal ap_ready_int : STD_LOGIC;
    signal dst_TDATA_blk_n : STD_LOGIC;
    signal ap_block_pp0_stage0 : BOOLEAN;
    signal ap_block_pp0_stage0_11001 : BOOLEAN;
    signal sext_ln104_cast_fu_179_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal sext_ln104_cast_reg_261 : STD_LOGIC_VECTOR (63 downto 0);
    signal empty_fu_191_p1 : STD_LOGIC_VECTOR (2 downto 0);
    signal empty_reg_266 : STD_LOGIC_VECTOR (2 downto 0);
    signal empty_28_fu_217_p2 : STD_LOGIC_VECTOR (63 downto 0);
    signal empty_28_reg_311 : STD_LOGIC_VECTOR (63 downto 0);
    signal exitcond42_reg_316 : STD_LOGIC_VECTOR (0 downto 0);
    signal p_cast17_fu_205_p1 : STD_LOGIC_VECTOR (63 downto 0);
    signal loop_index27_fu_58 : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_sig_allocacmp_loop_index27_load : STD_LOGIC_VECTOR (63 downto 0);
    signal ap_loop_init : STD_LOGIC;
    signal p_0_fu_228_p10 : STD_LOGIC_VECTOR (7 downto 0);
    signal ap_block_pp0_stage0_01001 : BOOLEAN;
    signal tmp_s_fu_195_p4 : STD_LOGIC_VECTOR (9 downto 0);
    signal ap_done_reg : STD_LOGIC := '0';
    signal ap_continue_int : STD_LOGIC;
    signal ap_done_int : STD_LOGIC;
    signal ap_loop_exit_ready_pp0_iter2_reg : STD_LOGIC;
    signal ap_NS_fsm : STD_LOGIC_VECTOR (0 downto 0);
    signal ap_enable_pp0 : STD_LOGIC;
    signal ap_start_int : STD_LOGIC;
    signal ap_ce_reg : STD_LOGIC;

    component dut_mux_83_8_1_1 IS
    generic (
        ID : INTEGER;
        NUM_STAGE : INTEGER;
        din0_WIDTH : INTEGER;
        din1_WIDTH : INTEGER;
        din2_WIDTH : INTEGER;
        din3_WIDTH : INTEGER;
        din4_WIDTH : INTEGER;
        din5_WIDTH : INTEGER;
        din6_WIDTH : INTEGER;
        din7_WIDTH : INTEGER;
        din8_WIDTH : INTEGER;
        dout_WIDTH : INTEGER );
    port (
        din0 : IN STD_LOGIC_VECTOR (7 downto 0);
        din1 : IN STD_LOGIC_VECTOR (7 downto 0);
        din2 : IN STD_LOGIC_VECTOR (7 downto 0);
        din3 : IN STD_LOGIC_VECTOR (7 downto 0);
        din4 : IN STD_LOGIC_VECTOR (7 downto 0);
        din5 : IN STD_LOGIC_VECTOR (7 downto 0);
        din6 : IN STD_LOGIC_VECTOR (7 downto 0);
        din7 : IN STD_LOGIC_VECTOR (7 downto 0);
        din8 : IN STD_LOGIC_VECTOR (2 downto 0);
        dout : OUT STD_LOGIC_VECTOR (7 downto 0) );
    end component;


    component dut_flow_control_loop_pipe_sequential_init IS
    port (
        ap_clk : IN STD_LOGIC;
        ap_rst : IN STD_LOGIC;
        ap_start : IN STD_LOGIC;
        ap_ready : OUT STD_LOGIC;
        ap_done : OUT STD_LOGIC;
        ap_start_int : OUT STD_LOGIC;
        ap_loop_init : OUT STD_LOGIC;
        ap_ready_int : IN STD_LOGIC;
        ap_loop_exit_ready : IN STD_LOGIC;
        ap_loop_exit_done : IN STD_LOGIC;
        ap_continue_int : OUT STD_LOGIC;
        ap_done_int : IN STD_LOGIC );
    end component;



begin
    mux_83_8_1_1_U146 : component dut_mux_83_8_1_1
    generic map (
        ID => 1,
        NUM_STAGE => 1,
        din0_WIDTH => 8,
        din1_WIDTH => 8,
        din2_WIDTH => 8,
        din3_WIDTH => 8,
        din4_WIDTH => 8,
        din5_WIDTH => 8,
        din6_WIDTH => 8,
        din7_WIDTH => 8,
        din8_WIDTH => 3,
        dout_WIDTH => 8)
    port map (
        din0 => buf1_0_q0,
        din1 => buf1_1_q0,
        din2 => buf1_2_q0,
        din3 => buf1_3_q0,
        din4 => buf1_4_q0,
        din5 => buf1_5_q0,
        din6 => buf1_6_q0,
        din7 => buf1_7_q0,
        din8 => empty_reg_266,
        dout => p_0_fu_228_p10);

    flow_control_loop_pipe_sequential_init_U : component dut_flow_control_loop_pipe_sequential_init
    port map (
        ap_clk => ap_clk,
        ap_rst => ap_rst,
        ap_start => ap_start,
        ap_ready => ap_ready,
        ap_done => ap_done,
        ap_start_int => ap_start_int,
        ap_loop_init => ap_loop_init,
        ap_ready_int => ap_ready_int,
        ap_loop_exit_ready => ap_condition_exit_pp0_iter1_stage0,
        ap_loop_exit_done => ap_done_int,
        ap_continue_int => ap_continue_int,
        ap_done_int => ap_done_int);





    ap_CS_fsm_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_CS_fsm <= ap_ST_fsm_pp0_stage0;
            else
                ap_CS_fsm <= ap_NS_fsm;
            end if;
        end if;
    end process;


    ap_done_reg_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_done_reg <= ap_const_logic_0;
            else
                if ((ap_continue_int = ap_const_logic_1)) then 
                    ap_done_reg <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
                    ap_done_reg <= ap_const_logic_1;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter1_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
            else
                if ((ap_const_logic_1 = ap_condition_exit_pp0_iter1_stage0)) then 
                    ap_enable_reg_pp0_iter1 <= ap_const_logic_0;
                elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                    ap_enable_reg_pp0_iter1 <= ap_start_int;
                end if; 
            end if;
        end if;
    end process;


    ap_enable_reg_pp0_iter2_assign_proc : process(ap_clk)
    begin
        if (ap_clk'event and ap_clk =  '1') then
            if (ap_rst = '1') then
                ap_enable_reg_pp0_iter2 <= ap_const_logic_0;
            else
                if ((ap_const_boolean_0 = ap_block_pp0_stage0_subdone)) then 
                    ap_enable_reg_pp0_iter2 <= ap_enable_reg_pp0_iter1;
                end if; 
            end if;
        end if;
    end process;


    ap_loop_exit_ready_pp0_iter2_reg_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_loop_exit_ready = ap_const_logic_0) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone))) then 
                ap_loop_exit_ready_pp0_iter2_reg <= ap_const_logic_0;
            elsif (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
                ap_loop_exit_ready_pp0_iter2_reg <= ap_loop_exit_ready;
            end if; 
        end if;
    end process;

    loop_index27_fu_58_assign_proc : process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if ((ap_const_boolean_0 = ap_block_pp0_stage0_11001)) then
                if (((ap_const_logic_1 = ap_CS_fsm_pp0_stage0) and (ap_loop_init = ap_const_logic_1))) then 
                    loop_index27_fu_58 <= ap_const_lv64_0;
                elsif (((ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (exitcond42_reg_316 = ap_const_lv1_0))) then 
                    loop_index27_fu_58 <= empty_28_reg_311;
                end if;
            end if; 
        end if;
    end process;
    process (ap_clk)
    begin
        if (ap_clk'event and ap_clk = '1') then
            if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then
                empty_28_reg_311 <= empty_28_fu_217_p2;
                empty_reg_266 <= empty_fu_191_p1;
                exitcond42_reg_316 <= exitcond42_fu_223_p2;
                sext_ln104_cast_reg_261 <= sext_ln104_cast_fu_179_p1;
            end if;
        end if;
    end process;

    ap_NS_fsm_assign_proc : process (ap_CS_fsm)
    begin
        case ap_CS_fsm is
            when ap_ST_fsm_pp0_stage0 => 
                ap_NS_fsm <= ap_ST_fsm_pp0_stage0;
            when others =>  
                ap_NS_fsm <= "X";
        end case;
    end process;
    ap_CS_fsm_pp0_stage0 <= ap_CS_fsm(0);
        ap_block_pp0_stage0 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_pp0_stage0_01001_assign_proc : process(ap_enable_reg_pp0_iter2, dst_TREADY)
    begin
                ap_block_pp0_stage0_01001 <= ((dst_TREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_11001_assign_proc : process(ap_enable_reg_pp0_iter2, dst_TREADY)
    begin
                ap_block_pp0_stage0_11001 <= ((dst_TREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1));
    end process;


    ap_block_pp0_stage0_subdone_assign_proc : process(ap_enable_reg_pp0_iter2, dst_TREADY)
    begin
                ap_block_pp0_stage0_subdone <= ((dst_TREADY = ap_const_logic_0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1));
    end process;

        ap_block_state1_pp0_stage0_iter0 <= not((ap_const_boolean_1 = ap_const_boolean_1));
        ap_block_state2_pp0_stage0_iter1 <= not((ap_const_boolean_1 = ap_const_boolean_1));

    ap_block_state3_pp0_stage0_iter2_assign_proc : process(dst_TREADY)
    begin
                ap_block_state3_pp0_stage0_iter2 <= (dst_TREADY = ap_const_logic_0);
    end process;


    ap_condition_exit_pp0_iter1_stage0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_subdone, exitcond42_fu_223_p2)
    begin
        if (((exitcond42_fu_223_p2 = ap_const_lv1_1) and (ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_1;
        else 
            ap_condition_exit_pp0_iter1_stage0 <= ap_const_logic_0;
        end if; 
    end process;


    ap_done_int_assign_proc : process(ap_block_pp0_stage0_subdone, ap_done_reg, ap_loop_exit_ready_pp0_iter2_reg)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_loop_exit_ready_pp0_iter2_reg = ap_const_logic_1))) then 
            ap_done_int <= ap_const_logic_1;
        else 
            ap_done_int <= ap_done_reg;
        end if; 
    end process;

    ap_enable_pp0 <= (ap_idle_pp0 xor ap_const_logic_1);
    ap_enable_reg_pp0_iter0 <= ap_start_int;

    ap_idle_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_idle_pp0, ap_start_int)
    begin
        if (((ap_idle_pp0 = ap_const_logic_1) and (ap_start_int = ap_const_logic_0) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_idle <= ap_const_logic_1;
        else 
            ap_idle <= ap_const_logic_0;
        end if; 
    end process;


    ap_idle_pp0_assign_proc : process(ap_enable_reg_pp0_iter0, ap_enable_reg_pp0_iter1, ap_enable_reg_pp0_iter2)
    begin
        if (((ap_enable_reg_pp0_iter2 = ap_const_logic_0) and (ap_enable_reg_pp0_iter1 = ap_const_logic_0) and (ap_enable_reg_pp0_iter0 = ap_const_logic_0))) then 
            ap_idle_pp0 <= ap_const_logic_1;
        else 
            ap_idle_pp0 <= ap_const_logic_0;
        end if; 
    end process;

    ap_loop_exit_ready <= ap_condition_exit_pp0_iter1_stage0;

    ap_ready_int_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter0, ap_block_pp0_stage0_subdone)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_subdone) and (ap_enable_reg_pp0_iter0 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            ap_ready_int <= ap_const_logic_1;
        else 
            ap_ready_int <= ap_const_logic_0;
        end if; 
    end process;


    ap_sig_allocacmp_loop_index27_load_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0, empty_28_reg_311, exitcond42_reg_316, loop_index27_fu_58)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1) and (exitcond42_reg_316 = ap_const_lv1_0))) then 
            ap_sig_allocacmp_loop_index27_load <= empty_28_reg_311;
        else 
            ap_sig_allocacmp_loop_index27_load <= loop_index27_fu_58;
        end if; 
    end process;

    buf1_0_address0 <= p_cast17_fu_205_p1(10 - 1 downto 0);

    buf1_0_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            buf1_0_ce0 <= ap_const_logic_1;
        else 
            buf1_0_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf1_1_address0 <= p_cast17_fu_205_p1(10 - 1 downto 0);

    buf1_1_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            buf1_1_ce0 <= ap_const_logic_1;
        else 
            buf1_1_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf1_2_address0 <= p_cast17_fu_205_p1(10 - 1 downto 0);

    buf1_2_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            buf1_2_ce0 <= ap_const_logic_1;
        else 
            buf1_2_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf1_3_address0 <= p_cast17_fu_205_p1(10 - 1 downto 0);

    buf1_3_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            buf1_3_ce0 <= ap_const_logic_1;
        else 
            buf1_3_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf1_4_address0 <= p_cast17_fu_205_p1(10 - 1 downto 0);

    buf1_4_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            buf1_4_ce0 <= ap_const_logic_1;
        else 
            buf1_4_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf1_5_address0 <= p_cast17_fu_205_p1(10 - 1 downto 0);

    buf1_5_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            buf1_5_ce0 <= ap_const_logic_1;
        else 
            buf1_5_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf1_6_address0 <= p_cast17_fu_205_p1(10 - 1 downto 0);

    buf1_6_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            buf1_6_ce0 <= ap_const_logic_1;
        else 
            buf1_6_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    buf1_7_address0 <= p_cast17_fu_205_p1(10 - 1 downto 0);

    buf1_7_ce0_assign_proc : process(ap_CS_fsm_pp0_stage0, ap_enable_reg_pp0_iter1, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter1 = ap_const_logic_1) and (ap_const_logic_1 = ap_CS_fsm_pp0_stage0))) then 
            buf1_7_ce0 <= ap_const_logic_1;
        else 
            buf1_7_ce0 <= ap_const_logic_0;
        end if; 
    end process;

    dst_TDATA <= p_0_fu_228_p10;

    dst_TDATA_blk_n_assign_proc : process(ap_enable_reg_pp0_iter2, dst_TREADY, ap_block_pp0_stage0)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            dst_TDATA_blk_n <= dst_TREADY;
        else 
            dst_TDATA_blk_n <= ap_const_logic_1;
        end if; 
    end process;


    dst_TVALID_assign_proc : process(ap_enable_reg_pp0_iter2, ap_block_pp0_stage0_11001)
    begin
        if (((ap_const_boolean_0 = ap_block_pp0_stage0_11001) and (ap_enable_reg_pp0_iter2 = ap_const_logic_1))) then 
            dst_TVALID <= ap_const_logic_1;
        else 
            dst_TVALID <= ap_const_logic_0;
        end if; 
    end process;

    empty_28_fu_217_p2 <= std_logic_vector(unsigned(ap_sig_allocacmp_loop_index27_load) + unsigned(ap_const_lv64_1));
    empty_fu_191_p1 <= ap_sig_allocacmp_loop_index27_load(3 - 1 downto 0);
    exitcond42_fu_223_p2 <= "1" when (empty_28_fu_217_p2 = sext_ln104_cast_reg_261) else "0";
    p_cast17_fu_205_p1 <= std_logic_vector(IEEE.numeric_std.resize(unsigned(tmp_s_fu_195_p4),64));
        sext_ln104_cast_fu_179_p1 <= std_logic_vector(IEEE.numeric_std.resize(signed(sext_ln104),64));

    tmp_s_fu_195_p4 <= ap_sig_allocacmp_loop_index27_load(12 downto 3);
end behav;
