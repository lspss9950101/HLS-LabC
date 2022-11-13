set moduleName dft_Pipeline_DFT_Loop7
set isTopModule 0
set isCombinational 0
set isDatapathOnly 0
set isPipelined 1
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set hasInterrupt 0
set C_modelName {dft_Pipeline_DFT_Loop7}
set C_modelType { void 0 }
set C_modelArgList {
	{ buf0_I_3 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ buf0_I_2 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ buf0_I_1 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ buf0_I float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ buf0_R_3 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ buf0_R_2 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ buf0_R_1 float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ buf0_R float 32 regular {array 256 { 0 0 } 0 1 }  }
	{ buf1_R float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ buf1_I float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ buf1_R_1 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ buf1_I_1 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ buf1_R_2 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ buf1_I_2 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ buf1_R_3 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ buf1_I_3 float 32 regular {array 256 { 1 1 } 1 1 }  }
	{ W_real float 32 regular {array 512 { 1 1 1 1 } 1 1 } {global 0}  }
	{ W_imag float 32 regular {array 512 { 1 1 1 1 } 1 1 } {global 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "buf0_I_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buf0_I_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buf0_I_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buf0_I", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buf0_R_3", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buf0_R_2", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buf0_R_1", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buf0_R", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "buf1_R", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_I", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_R_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_I_1", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_R_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_I_2", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_R_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "buf1_I_3", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "W_real", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} , 
 	{ "Name" : "W_imag", "interface" : "memory", "bitwidth" : 32, "direction" : "READONLY", "extern" : 0} ]}
# RTL Port declarations: 
set portNum 326
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ buf0_I_3_address0 sc_out sc_lv 8 signal 0 } 
	{ buf0_I_3_ce0 sc_out sc_logic 1 signal 0 } 
	{ buf0_I_3_we0 sc_out sc_logic 1 signal 0 } 
	{ buf0_I_3_d0 sc_out sc_lv 32 signal 0 } 
	{ buf0_I_3_address1 sc_out sc_lv 8 signal 0 } 
	{ buf0_I_3_ce1 sc_out sc_logic 1 signal 0 } 
	{ buf0_I_3_we1 sc_out sc_logic 1 signal 0 } 
	{ buf0_I_3_d1 sc_out sc_lv 32 signal 0 } 
	{ buf0_I_2_address0 sc_out sc_lv 8 signal 1 } 
	{ buf0_I_2_ce0 sc_out sc_logic 1 signal 1 } 
	{ buf0_I_2_we0 sc_out sc_logic 1 signal 1 } 
	{ buf0_I_2_d0 sc_out sc_lv 32 signal 1 } 
	{ buf0_I_2_address1 sc_out sc_lv 8 signal 1 } 
	{ buf0_I_2_ce1 sc_out sc_logic 1 signal 1 } 
	{ buf0_I_2_we1 sc_out sc_logic 1 signal 1 } 
	{ buf0_I_2_d1 sc_out sc_lv 32 signal 1 } 
	{ buf0_I_1_address0 sc_out sc_lv 8 signal 2 } 
	{ buf0_I_1_ce0 sc_out sc_logic 1 signal 2 } 
	{ buf0_I_1_we0 sc_out sc_logic 1 signal 2 } 
	{ buf0_I_1_d0 sc_out sc_lv 32 signal 2 } 
	{ buf0_I_1_address1 sc_out sc_lv 8 signal 2 } 
	{ buf0_I_1_ce1 sc_out sc_logic 1 signal 2 } 
	{ buf0_I_1_we1 sc_out sc_logic 1 signal 2 } 
	{ buf0_I_1_d1 sc_out sc_lv 32 signal 2 } 
	{ buf0_I_address0 sc_out sc_lv 8 signal 3 } 
	{ buf0_I_ce0 sc_out sc_logic 1 signal 3 } 
	{ buf0_I_we0 sc_out sc_logic 1 signal 3 } 
	{ buf0_I_d0 sc_out sc_lv 32 signal 3 } 
	{ buf0_I_address1 sc_out sc_lv 8 signal 3 } 
	{ buf0_I_ce1 sc_out sc_logic 1 signal 3 } 
	{ buf0_I_we1 sc_out sc_logic 1 signal 3 } 
	{ buf0_I_d1 sc_out sc_lv 32 signal 3 } 
	{ buf0_R_3_address0 sc_out sc_lv 8 signal 4 } 
	{ buf0_R_3_ce0 sc_out sc_logic 1 signal 4 } 
	{ buf0_R_3_we0 sc_out sc_logic 1 signal 4 } 
	{ buf0_R_3_d0 sc_out sc_lv 32 signal 4 } 
	{ buf0_R_3_address1 sc_out sc_lv 8 signal 4 } 
	{ buf0_R_3_ce1 sc_out sc_logic 1 signal 4 } 
	{ buf0_R_3_we1 sc_out sc_logic 1 signal 4 } 
	{ buf0_R_3_d1 sc_out sc_lv 32 signal 4 } 
	{ buf0_R_2_address0 sc_out sc_lv 8 signal 5 } 
	{ buf0_R_2_ce0 sc_out sc_logic 1 signal 5 } 
	{ buf0_R_2_we0 sc_out sc_logic 1 signal 5 } 
	{ buf0_R_2_d0 sc_out sc_lv 32 signal 5 } 
	{ buf0_R_2_address1 sc_out sc_lv 8 signal 5 } 
	{ buf0_R_2_ce1 sc_out sc_logic 1 signal 5 } 
	{ buf0_R_2_we1 sc_out sc_logic 1 signal 5 } 
	{ buf0_R_2_d1 sc_out sc_lv 32 signal 5 } 
	{ buf0_R_1_address0 sc_out sc_lv 8 signal 6 } 
	{ buf0_R_1_ce0 sc_out sc_logic 1 signal 6 } 
	{ buf0_R_1_we0 sc_out sc_logic 1 signal 6 } 
	{ buf0_R_1_d0 sc_out sc_lv 32 signal 6 } 
	{ buf0_R_1_address1 sc_out sc_lv 8 signal 6 } 
	{ buf0_R_1_ce1 sc_out sc_logic 1 signal 6 } 
	{ buf0_R_1_we1 sc_out sc_logic 1 signal 6 } 
	{ buf0_R_1_d1 sc_out sc_lv 32 signal 6 } 
	{ buf0_R_address0 sc_out sc_lv 8 signal 7 } 
	{ buf0_R_ce0 sc_out sc_logic 1 signal 7 } 
	{ buf0_R_we0 sc_out sc_logic 1 signal 7 } 
	{ buf0_R_d0 sc_out sc_lv 32 signal 7 } 
	{ buf0_R_address1 sc_out sc_lv 8 signal 7 } 
	{ buf0_R_ce1 sc_out sc_logic 1 signal 7 } 
	{ buf0_R_we1 sc_out sc_logic 1 signal 7 } 
	{ buf0_R_d1 sc_out sc_lv 32 signal 7 } 
	{ buf1_R_address0 sc_out sc_lv 8 signal 8 } 
	{ buf1_R_ce0 sc_out sc_logic 1 signal 8 } 
	{ buf1_R_q0 sc_in sc_lv 32 signal 8 } 
	{ buf1_R_address1 sc_out sc_lv 8 signal 8 } 
	{ buf1_R_ce1 sc_out sc_logic 1 signal 8 } 
	{ buf1_R_q1 sc_in sc_lv 32 signal 8 } 
	{ buf1_I_address0 sc_out sc_lv 8 signal 9 } 
	{ buf1_I_ce0 sc_out sc_logic 1 signal 9 } 
	{ buf1_I_q0 sc_in sc_lv 32 signal 9 } 
	{ buf1_I_address1 sc_out sc_lv 8 signal 9 } 
	{ buf1_I_ce1 sc_out sc_logic 1 signal 9 } 
	{ buf1_I_q1 sc_in sc_lv 32 signal 9 } 
	{ buf1_R_1_address0 sc_out sc_lv 8 signal 10 } 
	{ buf1_R_1_ce0 sc_out sc_logic 1 signal 10 } 
	{ buf1_R_1_q0 sc_in sc_lv 32 signal 10 } 
	{ buf1_R_1_address1 sc_out sc_lv 8 signal 10 } 
	{ buf1_R_1_ce1 sc_out sc_logic 1 signal 10 } 
	{ buf1_R_1_q1 sc_in sc_lv 32 signal 10 } 
	{ buf1_I_1_address0 sc_out sc_lv 8 signal 11 } 
	{ buf1_I_1_ce0 sc_out sc_logic 1 signal 11 } 
	{ buf1_I_1_q0 sc_in sc_lv 32 signal 11 } 
	{ buf1_I_1_address1 sc_out sc_lv 8 signal 11 } 
	{ buf1_I_1_ce1 sc_out sc_logic 1 signal 11 } 
	{ buf1_I_1_q1 sc_in sc_lv 32 signal 11 } 
	{ buf1_R_2_address0 sc_out sc_lv 8 signal 12 } 
	{ buf1_R_2_ce0 sc_out sc_logic 1 signal 12 } 
	{ buf1_R_2_q0 sc_in sc_lv 32 signal 12 } 
	{ buf1_R_2_address1 sc_out sc_lv 8 signal 12 } 
	{ buf1_R_2_ce1 sc_out sc_logic 1 signal 12 } 
	{ buf1_R_2_q1 sc_in sc_lv 32 signal 12 } 
	{ buf1_I_2_address0 sc_out sc_lv 8 signal 13 } 
	{ buf1_I_2_ce0 sc_out sc_logic 1 signal 13 } 
	{ buf1_I_2_q0 sc_in sc_lv 32 signal 13 } 
	{ buf1_I_2_address1 sc_out sc_lv 8 signal 13 } 
	{ buf1_I_2_ce1 sc_out sc_logic 1 signal 13 } 
	{ buf1_I_2_q1 sc_in sc_lv 32 signal 13 } 
	{ buf1_R_3_address0 sc_out sc_lv 8 signal 14 } 
	{ buf1_R_3_ce0 sc_out sc_logic 1 signal 14 } 
	{ buf1_R_3_q0 sc_in sc_lv 32 signal 14 } 
	{ buf1_R_3_address1 sc_out sc_lv 8 signal 14 } 
	{ buf1_R_3_ce1 sc_out sc_logic 1 signal 14 } 
	{ buf1_R_3_q1 sc_in sc_lv 32 signal 14 } 
	{ buf1_I_3_address0 sc_out sc_lv 8 signal 15 } 
	{ buf1_I_3_ce0 sc_out sc_logic 1 signal 15 } 
	{ buf1_I_3_q0 sc_in sc_lv 32 signal 15 } 
	{ buf1_I_3_address1 sc_out sc_lv 8 signal 15 } 
	{ buf1_I_3_ce1 sc_out sc_logic 1 signal 15 } 
	{ buf1_I_3_q1 sc_in sc_lv 32 signal 15 } 
	{ W_real_address0 sc_out sc_lv 9 signal 16 } 
	{ W_real_ce0 sc_out sc_logic 1 signal 16 } 
	{ W_real_q0 sc_in sc_lv 32 signal 16 } 
	{ W_real_address1 sc_out sc_lv 9 signal 16 } 
	{ W_real_ce1 sc_out sc_logic 1 signal 16 } 
	{ W_real_q1 sc_in sc_lv 32 signal 16 } 
	{ W_real_address2 sc_out sc_lv 9 signal 16 } 
	{ W_real_ce2 sc_out sc_logic 1 signal 16 } 
	{ W_real_q2 sc_in sc_lv 32 signal 16 } 
	{ W_real_address3 sc_out sc_lv 9 signal 16 } 
	{ W_real_ce3 sc_out sc_logic 1 signal 16 } 
	{ W_real_q3 sc_in sc_lv 32 signal 16 } 
	{ W_imag_address0 sc_out sc_lv 9 signal 17 } 
	{ W_imag_ce0 sc_out sc_logic 1 signal 17 } 
	{ W_imag_q0 sc_in sc_lv 32 signal 17 } 
	{ W_imag_address1 sc_out sc_lv 9 signal 17 } 
	{ W_imag_ce1 sc_out sc_logic 1 signal 17 } 
	{ W_imag_q1 sc_in sc_lv 32 signal 17 } 
	{ W_imag_address2 sc_out sc_lv 9 signal 17 } 
	{ W_imag_ce2 sc_out sc_logic 1 signal 17 } 
	{ W_imag_q2 sc_in sc_lv 32 signal 17 } 
	{ W_imag_address3 sc_out sc_lv 9 signal 17 } 
	{ W_imag_ce3 sc_out sc_logic 1 signal 17 } 
	{ W_imag_q3 sc_in sc_lv 32 signal 17 } 
	{ grp_fu_404_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_404_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_404_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_404_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_404_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_408_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_408_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_408_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_408_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_408_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_412_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_412_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_412_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_412_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_412_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_416_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_416_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_416_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_416_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_416_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_420_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_420_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_420_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_420_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_420_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_424_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_424_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_424_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_424_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_424_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_428_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_428_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_428_p_opcode sc_out sc_lv 1 signal -1 } 
	{ grp_fu_428_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_428_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_432_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_432_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_432_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_432_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_432_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_436_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_436_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_436_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_436_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_436_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_440_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_440_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_440_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_440_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_440_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_444_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_444_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_444_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_444_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_444_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_448_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_448_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_448_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_448_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_448_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_452_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_452_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_452_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_452_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_452_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_456_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_456_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_456_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_456_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_456_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_460_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_460_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_460_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_460_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_460_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_464_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_464_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_464_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_464_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_464_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_468_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_468_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_468_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_468_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_468_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_472_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_472_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_472_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_472_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_472_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_476_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_476_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_476_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_476_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_476_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_480_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_480_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_480_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_480_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_480_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_484_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_484_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_484_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_484_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_484_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_488_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_488_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_488_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_488_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_488_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_492_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_492_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_492_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_492_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_492_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_496_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_496_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_496_p_opcode sc_out sc_lv 2 signal -1 } 
	{ grp_fu_496_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_496_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_500_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_500_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_500_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_500_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_504_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_504_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_504_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_504_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_508_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_508_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_508_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_508_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_512_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_512_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_512_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_512_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_516_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_516_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_516_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_516_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_520_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_520_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_520_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_520_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_524_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_524_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_524_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_524_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_528_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_528_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_528_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_528_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_532_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_532_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_532_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_532_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_536_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_536_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_536_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_536_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_540_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_540_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_540_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_540_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_544_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_544_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_544_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_544_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_548_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_548_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_548_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_548_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_552_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_552_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_552_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_552_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_556_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_556_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_556_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_556_p_ce sc_out sc_logic 1 signal -1 } 
	{ grp_fu_560_p_din0 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_560_p_din1 sc_out sc_lv 32 signal -1 } 
	{ grp_fu_560_p_dout0 sc_in sc_lv 32 signal -1 } 
	{ grp_fu_560_p_ce sc_out sc_logic 1 signal -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "buf0_I_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_I_3", "role": "address0" }} , 
 	{ "name": "buf0_I_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_I_3", "role": "ce0" }} , 
 	{ "name": "buf0_I_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_I_3", "role": "we0" }} , 
 	{ "name": "buf0_I_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf0_I_3", "role": "d0" }} , 
 	{ "name": "buf0_I_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_I_3", "role": "address1" }} , 
 	{ "name": "buf0_I_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_I_3", "role": "ce1" }} , 
 	{ "name": "buf0_I_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_I_3", "role": "we1" }} , 
 	{ "name": "buf0_I_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf0_I_3", "role": "d1" }} , 
 	{ "name": "buf0_I_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_I_2", "role": "address0" }} , 
 	{ "name": "buf0_I_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_I_2", "role": "ce0" }} , 
 	{ "name": "buf0_I_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_I_2", "role": "we0" }} , 
 	{ "name": "buf0_I_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf0_I_2", "role": "d0" }} , 
 	{ "name": "buf0_I_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_I_2", "role": "address1" }} , 
 	{ "name": "buf0_I_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_I_2", "role": "ce1" }} , 
 	{ "name": "buf0_I_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_I_2", "role": "we1" }} , 
 	{ "name": "buf0_I_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf0_I_2", "role": "d1" }} , 
 	{ "name": "buf0_I_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_I_1", "role": "address0" }} , 
 	{ "name": "buf0_I_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_I_1", "role": "ce0" }} , 
 	{ "name": "buf0_I_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_I_1", "role": "we0" }} , 
 	{ "name": "buf0_I_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf0_I_1", "role": "d0" }} , 
 	{ "name": "buf0_I_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_I_1", "role": "address1" }} , 
 	{ "name": "buf0_I_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_I_1", "role": "ce1" }} , 
 	{ "name": "buf0_I_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_I_1", "role": "we1" }} , 
 	{ "name": "buf0_I_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf0_I_1", "role": "d1" }} , 
 	{ "name": "buf0_I_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_I", "role": "address0" }} , 
 	{ "name": "buf0_I_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_I", "role": "ce0" }} , 
 	{ "name": "buf0_I_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_I", "role": "we0" }} , 
 	{ "name": "buf0_I_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf0_I", "role": "d0" }} , 
 	{ "name": "buf0_I_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_I", "role": "address1" }} , 
 	{ "name": "buf0_I_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_I", "role": "ce1" }} , 
 	{ "name": "buf0_I_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_I", "role": "we1" }} , 
 	{ "name": "buf0_I_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf0_I", "role": "d1" }} , 
 	{ "name": "buf0_R_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_R_3", "role": "address0" }} , 
 	{ "name": "buf0_R_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_R_3", "role": "ce0" }} , 
 	{ "name": "buf0_R_3_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_R_3", "role": "we0" }} , 
 	{ "name": "buf0_R_3_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf0_R_3", "role": "d0" }} , 
 	{ "name": "buf0_R_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_R_3", "role": "address1" }} , 
 	{ "name": "buf0_R_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_R_3", "role": "ce1" }} , 
 	{ "name": "buf0_R_3_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_R_3", "role": "we1" }} , 
 	{ "name": "buf0_R_3_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf0_R_3", "role": "d1" }} , 
 	{ "name": "buf0_R_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_R_2", "role": "address0" }} , 
 	{ "name": "buf0_R_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_R_2", "role": "ce0" }} , 
 	{ "name": "buf0_R_2_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_R_2", "role": "we0" }} , 
 	{ "name": "buf0_R_2_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf0_R_2", "role": "d0" }} , 
 	{ "name": "buf0_R_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_R_2", "role": "address1" }} , 
 	{ "name": "buf0_R_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_R_2", "role": "ce1" }} , 
 	{ "name": "buf0_R_2_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_R_2", "role": "we1" }} , 
 	{ "name": "buf0_R_2_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf0_R_2", "role": "d1" }} , 
 	{ "name": "buf0_R_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_R_1", "role": "address0" }} , 
 	{ "name": "buf0_R_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_R_1", "role": "ce0" }} , 
 	{ "name": "buf0_R_1_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_R_1", "role": "we0" }} , 
 	{ "name": "buf0_R_1_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf0_R_1", "role": "d0" }} , 
 	{ "name": "buf0_R_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_R_1", "role": "address1" }} , 
 	{ "name": "buf0_R_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_R_1", "role": "ce1" }} , 
 	{ "name": "buf0_R_1_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_R_1", "role": "we1" }} , 
 	{ "name": "buf0_R_1_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf0_R_1", "role": "d1" }} , 
 	{ "name": "buf0_R_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_R", "role": "address0" }} , 
 	{ "name": "buf0_R_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_R", "role": "ce0" }} , 
 	{ "name": "buf0_R_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_R", "role": "we0" }} , 
 	{ "name": "buf0_R_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf0_R", "role": "d0" }} , 
 	{ "name": "buf0_R_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf0_R", "role": "address1" }} , 
 	{ "name": "buf0_R_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_R", "role": "ce1" }} , 
 	{ "name": "buf0_R_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf0_R", "role": "we1" }} , 
 	{ "name": "buf0_R_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf0_R", "role": "d1" }} , 
 	{ "name": "buf1_R_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_R", "role": "address0" }} , 
 	{ "name": "buf1_R_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_R", "role": "ce0" }} , 
 	{ "name": "buf1_R_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf1_R", "role": "q0" }} , 
 	{ "name": "buf1_R_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_R", "role": "address1" }} , 
 	{ "name": "buf1_R_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_R", "role": "ce1" }} , 
 	{ "name": "buf1_R_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf1_R", "role": "q1" }} , 
 	{ "name": "buf1_I_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_I", "role": "address0" }} , 
 	{ "name": "buf1_I_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_I", "role": "ce0" }} , 
 	{ "name": "buf1_I_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf1_I", "role": "q0" }} , 
 	{ "name": "buf1_I_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_I", "role": "address1" }} , 
 	{ "name": "buf1_I_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_I", "role": "ce1" }} , 
 	{ "name": "buf1_I_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf1_I", "role": "q1" }} , 
 	{ "name": "buf1_R_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_R_1", "role": "address0" }} , 
 	{ "name": "buf1_R_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_R_1", "role": "ce0" }} , 
 	{ "name": "buf1_R_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf1_R_1", "role": "q0" }} , 
 	{ "name": "buf1_R_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_R_1", "role": "address1" }} , 
 	{ "name": "buf1_R_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_R_1", "role": "ce1" }} , 
 	{ "name": "buf1_R_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf1_R_1", "role": "q1" }} , 
 	{ "name": "buf1_I_1_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_I_1", "role": "address0" }} , 
 	{ "name": "buf1_I_1_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_I_1", "role": "ce0" }} , 
 	{ "name": "buf1_I_1_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf1_I_1", "role": "q0" }} , 
 	{ "name": "buf1_I_1_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_I_1", "role": "address1" }} , 
 	{ "name": "buf1_I_1_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_I_1", "role": "ce1" }} , 
 	{ "name": "buf1_I_1_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf1_I_1", "role": "q1" }} , 
 	{ "name": "buf1_R_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_R_2", "role": "address0" }} , 
 	{ "name": "buf1_R_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_R_2", "role": "ce0" }} , 
 	{ "name": "buf1_R_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf1_R_2", "role": "q0" }} , 
 	{ "name": "buf1_R_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_R_2", "role": "address1" }} , 
 	{ "name": "buf1_R_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_R_2", "role": "ce1" }} , 
 	{ "name": "buf1_R_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf1_R_2", "role": "q1" }} , 
 	{ "name": "buf1_I_2_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_I_2", "role": "address0" }} , 
 	{ "name": "buf1_I_2_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_I_2", "role": "ce0" }} , 
 	{ "name": "buf1_I_2_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf1_I_2", "role": "q0" }} , 
 	{ "name": "buf1_I_2_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_I_2", "role": "address1" }} , 
 	{ "name": "buf1_I_2_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_I_2", "role": "ce1" }} , 
 	{ "name": "buf1_I_2_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf1_I_2", "role": "q1" }} , 
 	{ "name": "buf1_R_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_R_3", "role": "address0" }} , 
 	{ "name": "buf1_R_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_R_3", "role": "ce0" }} , 
 	{ "name": "buf1_R_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf1_R_3", "role": "q0" }} , 
 	{ "name": "buf1_R_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_R_3", "role": "address1" }} , 
 	{ "name": "buf1_R_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_R_3", "role": "ce1" }} , 
 	{ "name": "buf1_R_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf1_R_3", "role": "q1" }} , 
 	{ "name": "buf1_I_3_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_I_3", "role": "address0" }} , 
 	{ "name": "buf1_I_3_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_I_3", "role": "ce0" }} , 
 	{ "name": "buf1_I_3_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf1_I_3", "role": "q0" }} , 
 	{ "name": "buf1_I_3_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "buf1_I_3", "role": "address1" }} , 
 	{ "name": "buf1_I_3_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "buf1_I_3", "role": "ce1" }} , 
 	{ "name": "buf1_I_3_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "buf1_I_3", "role": "q1" }} , 
 	{ "name": "W_real_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_real", "role": "address0" }} , 
 	{ "name": "W_real_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_real", "role": "ce0" }} , 
 	{ "name": "W_real_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_real", "role": "q0" }} , 
 	{ "name": "W_real_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_real", "role": "address1" }} , 
 	{ "name": "W_real_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_real", "role": "ce1" }} , 
 	{ "name": "W_real_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_real", "role": "q1" }} , 
 	{ "name": "W_real_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_real", "role": "address2" }} , 
 	{ "name": "W_real_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_real", "role": "ce2" }} , 
 	{ "name": "W_real_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_real", "role": "q2" }} , 
 	{ "name": "W_real_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_real", "role": "address3" }} , 
 	{ "name": "W_real_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_real", "role": "ce3" }} , 
 	{ "name": "W_real_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_real", "role": "q3" }} , 
 	{ "name": "W_imag_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_imag", "role": "address0" }} , 
 	{ "name": "W_imag_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_imag", "role": "ce0" }} , 
 	{ "name": "W_imag_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_imag", "role": "q0" }} , 
 	{ "name": "W_imag_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_imag", "role": "address1" }} , 
 	{ "name": "W_imag_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_imag", "role": "ce1" }} , 
 	{ "name": "W_imag_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_imag", "role": "q1" }} , 
 	{ "name": "W_imag_address2", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_imag", "role": "address2" }} , 
 	{ "name": "W_imag_ce2", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_imag", "role": "ce2" }} , 
 	{ "name": "W_imag_q2", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_imag", "role": "q2" }} , 
 	{ "name": "W_imag_address3", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "W_imag", "role": "address3" }} , 
 	{ "name": "W_imag_ce3", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "W_imag", "role": "ce3" }} , 
 	{ "name": "W_imag_q3", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "W_imag", "role": "q3" }} , 
 	{ "name": "grp_fu_404_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_404_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_404_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_404_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_404_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_404_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_404_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_404_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_404_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_404_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_408_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_408_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_408_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_408_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_408_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_408_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_408_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_408_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_408_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_408_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_412_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_412_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_412_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_412_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_412_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_412_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_412_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_412_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_412_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_412_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_416_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_416_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_416_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_416_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_416_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_416_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_416_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_416_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_416_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_416_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_420_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_420_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_420_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_420_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_420_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_420_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_420_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_420_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_420_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_420_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_424_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_424_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_424_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_424_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_424_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_424_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_424_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_424_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_424_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_424_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_428_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_428_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_428_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_428_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_428_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_428_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_428_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_428_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_428_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_428_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_432_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_432_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_432_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_432_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_432_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_432_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_432_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_432_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_432_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_432_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_436_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_436_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_436_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_436_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_436_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_436_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_436_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_436_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_436_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_436_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_440_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_440_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_440_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_440_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_440_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_440_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_440_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_440_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_440_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_440_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_444_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_444_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_444_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_444_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_444_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_444_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_444_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_444_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_444_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_444_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_448_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_448_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_448_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_448_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_448_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_448_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_448_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_448_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_448_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_448_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_452_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_452_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_452_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_452_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_452_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_452_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_452_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_452_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_452_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_452_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_456_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_456_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_456_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_456_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_456_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_456_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_456_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_456_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_456_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_456_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_460_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_460_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_460_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_460_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_460_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_460_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_460_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_460_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_460_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_460_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_464_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_464_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_464_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_464_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_464_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_464_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_464_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_464_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_464_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_464_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_468_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_468_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_468_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_468_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_468_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_468_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_468_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_468_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_468_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_468_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_472_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_472_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_472_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_472_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_472_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_472_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_472_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_472_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_472_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_472_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_476_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_476_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_476_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_476_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_476_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_476_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_476_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_476_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_476_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_476_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_480_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_480_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_480_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_480_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_480_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_480_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_480_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_480_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_480_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_480_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_484_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_484_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_484_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_484_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_484_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_484_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_484_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_484_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_484_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_484_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_488_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_488_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_488_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_488_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_488_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_488_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_488_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_488_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_488_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_488_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_492_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_492_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_492_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_492_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_492_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_492_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_492_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_492_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_492_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_492_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_496_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_496_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_496_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_496_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_496_p_opcode", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "grp_fu_496_p_opcode", "role": "default" }} , 
 	{ "name": "grp_fu_496_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_496_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_496_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_496_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_500_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_500_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_500_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_500_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_500_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_500_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_500_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_500_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_504_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_504_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_504_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_504_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_504_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_504_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_504_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_504_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_508_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_508_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_508_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_508_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_508_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_508_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_508_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_508_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_512_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_512_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_512_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_512_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_512_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_512_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_512_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_512_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_516_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_516_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_516_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_516_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_516_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_516_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_516_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_516_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_520_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_520_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_520_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_520_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_520_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_520_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_520_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_520_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_524_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_524_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_524_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_524_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_524_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_524_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_524_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_524_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_528_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_528_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_528_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_528_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_528_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_528_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_528_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_528_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_532_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_532_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_532_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_532_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_532_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_532_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_532_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_532_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_536_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_536_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_536_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_536_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_536_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_536_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_536_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_536_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_540_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_540_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_540_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_540_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_540_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_540_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_540_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_540_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_544_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_544_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_544_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_544_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_544_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_544_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_544_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_544_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_548_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_548_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_548_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_548_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_548_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_548_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_548_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_548_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_552_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_552_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_552_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_552_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_552_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_552_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_552_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_552_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_556_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_556_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_556_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_556_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_556_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_556_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_556_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_556_p_ce", "role": "default" }} , 
 	{ "name": "grp_fu_560_p_din0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_560_p_din0", "role": "default" }} , 
 	{ "name": "grp_fu_560_p_din1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_560_p_din1", "role": "default" }} , 
 	{ "name": "grp_fu_560_p_dout0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "grp_fu_560_p_dout0", "role": "default" }} , 
 	{ "name": "grp_fu_560_p_ce", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "grp_fu_560_p_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1"],
		"CDFG" : "dft_Pipeline_DFT_Loop7",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1", "real_start" : "0",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "168", "EstimateLatencyMax" : "168",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"IsBlackBox" : "0",
		"DependenceCheck" : [
			{"FromInitialState" : "ap_enable_state39_pp0_iter38_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter38", "FromInitialOperation" : "ap_enable_operation_611", "FromInitialSV" : "38", "FromFinalState" : "ap_enable_state39_pp0_iter38_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter38", "FromFinalOperation" : "ap_enable_operation_611", "FromFinalSV" : "38", "FromAddress" : "buf0_R_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state40_pp0_iter39_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter39", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_629", "ToInitialSV" : "39", "ToFinalState" : "ap_enable_state40_pp0_iter39_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter39", "ToFinalOperation" : "ap_enable_operation_629", "ToFinalSV" : "39", "ToAddress" : "buf0_R_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:68:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state39_pp0_iter38_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter38", "FromInitialOperation" : "ap_enable_operation_613", "FromInitialSV" : "38", "FromFinalState" : "ap_enable_state39_pp0_iter38_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter38", "FromFinalOperation" : "ap_enable_operation_613", "FromFinalSV" : "38", "FromAddress" : "buf0_I_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state40_pp0_iter39_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter39", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_631", "ToInitialSV" : "39", "ToFinalState" : "ap_enable_state40_pp0_iter39_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter39", "ToFinalOperation" : "ap_enable_operation_631", "ToFinalSV" : "39", "ToAddress" : "buf0_I_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:68:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state39_pp0_iter38_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter38", "FromInitialOperation" : "ap_enable_operation_615", "FromInitialSV" : "38", "FromFinalState" : "ap_enable_state39_pp0_iter38_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter38", "FromFinalOperation" : "ap_enable_operation_615", "FromFinalSV" : "38", "FromAddress" : "buf0_R_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state40_pp0_iter39_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter39", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_633", "ToInitialSV" : "39", "ToFinalState" : "ap_enable_state40_pp0_iter39_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter39", "ToFinalOperation" : "ap_enable_operation_633", "ToFinalSV" : "39", "ToAddress" : "buf0_R_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:68:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state39_pp0_iter38_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter38", "FromInitialOperation" : "ap_enable_operation_617", "FromInitialSV" : "38", "FromFinalState" : "ap_enable_state39_pp0_iter38_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter38", "FromFinalOperation" : "ap_enable_operation_617", "FromFinalSV" : "38", "FromAddress" : "buf0_I_1_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state40_pp0_iter39_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter39", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_635", "ToInitialSV" : "39", "ToFinalState" : "ap_enable_state40_pp0_iter39_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter39", "ToFinalOperation" : "ap_enable_operation_635", "ToFinalSV" : "39", "ToAddress" : "buf0_I_1_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:68:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state39_pp0_iter38_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter38", "FromInitialOperation" : "ap_enable_operation_619", "FromInitialSV" : "38", "FromFinalState" : "ap_enable_state39_pp0_iter38_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter38", "FromFinalOperation" : "ap_enable_operation_619", "FromFinalSV" : "38", "FromAddress" : "buf0_R_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state40_pp0_iter39_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter39", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_637", "ToInitialSV" : "39", "ToFinalState" : "ap_enable_state40_pp0_iter39_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter39", "ToFinalOperation" : "ap_enable_operation_637", "ToFinalSV" : "39", "ToAddress" : "buf0_R_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:68:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state39_pp0_iter38_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter38", "FromInitialOperation" : "ap_enable_operation_621", "FromInitialSV" : "38", "FromFinalState" : "ap_enable_state39_pp0_iter38_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter38", "FromFinalOperation" : "ap_enable_operation_621", "FromFinalSV" : "38", "FromAddress" : "buf0_I_2_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state40_pp0_iter39_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter39", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_639", "ToInitialSV" : "39", "ToFinalState" : "ap_enable_state40_pp0_iter39_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter39", "ToFinalOperation" : "ap_enable_operation_639", "ToFinalSV" : "39", "ToAddress" : "buf0_I_2_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:68:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state39_pp0_iter38_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter38", "FromInitialOperation" : "ap_enable_operation_623", "FromInitialSV" : "38", "FromFinalState" : "ap_enable_state39_pp0_iter38_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter38", "FromFinalOperation" : "ap_enable_operation_623", "FromFinalSV" : "38", "FromAddress" : "buf0_R_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state40_pp0_iter39_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter39", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_641", "ToInitialSV" : "39", "ToFinalState" : "ap_enable_state40_pp0_iter39_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter39", "ToFinalOperation" : "ap_enable_operation_641", "ToFinalSV" : "39", "ToAddress" : "buf0_R_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:68:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state39_pp0_iter38_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter38", "FromInitialOperation" : "ap_enable_operation_625", "FromInitialSV" : "38", "FromFinalState" : "ap_enable_state39_pp0_iter38_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter38", "FromFinalOperation" : "ap_enable_operation_625", "FromFinalSV" : "38", "FromAddress" : "buf0_I_3_address1", "FromType" : "W", "ToInitialState" : "ap_enable_state40_pp0_iter39_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter39", "ToInitialNextIteration" : "null", "ToInitialOperation" : "ap_enable_operation_643", "ToInitialSV" : "39", "ToFinalState" : "ap_enable_state40_pp0_iter39_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter39", "ToFinalOperation" : "ap_enable_operation_643", "ToFinalSV" : "39", "ToAddress" : "buf0_I_3_address0", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:68:32)", "Type" : "WAW"},
			{"FromInitialState" : "ap_enable_state40_pp0_iter39_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter39", "FromInitialOperation" : "ap_enable_operation_629", "FromInitialSV" : "39", "FromFinalState" : "ap_enable_state40_pp0_iter39_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter39", "FromFinalOperation" : "ap_enable_operation_629", "FromFinalSV" : "39", "FromAddress" : "buf0_R_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state39_pp0_iter38_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter38", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter39", "ToInitialOperation" : "ap_enable_operation_611", "ToInitialSV" : "38", "ToFinalState" : "ap_enable_state39_pp0_iter38_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter38", "ToFinalOperation" : "ap_enable_operation_611", "ToFinalSV" : "38", "ToAddress" : "buf0_R_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:68:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state39_pp0_iter38_stage0", "ap_enable_state40_pp0_iter39_stage0"]},
			{"FromInitialState" : "ap_enable_state40_pp0_iter39_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter39", "FromInitialOperation" : "ap_enable_operation_631", "FromInitialSV" : "39", "FromFinalState" : "ap_enable_state40_pp0_iter39_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter39", "FromFinalOperation" : "ap_enable_operation_631", "FromFinalSV" : "39", "FromAddress" : "buf0_I_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state39_pp0_iter38_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter38", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter39", "ToInitialOperation" : "ap_enable_operation_613", "ToInitialSV" : "38", "ToFinalState" : "ap_enable_state39_pp0_iter38_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter38", "ToFinalOperation" : "ap_enable_operation_613", "ToFinalSV" : "38", "ToAddress" : "buf0_I_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:68:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state39_pp0_iter38_stage0", "ap_enable_state40_pp0_iter39_stage0"]},
			{"FromInitialState" : "ap_enable_state40_pp0_iter39_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter39", "FromInitialOperation" : "ap_enable_operation_633", "FromInitialSV" : "39", "FromFinalState" : "ap_enable_state40_pp0_iter39_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter39", "FromFinalOperation" : "ap_enable_operation_633", "FromFinalSV" : "39", "FromAddress" : "buf0_R_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state39_pp0_iter38_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter38", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter39", "ToInitialOperation" : "ap_enable_operation_615", "ToInitialSV" : "38", "ToFinalState" : "ap_enable_state39_pp0_iter38_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter38", "ToFinalOperation" : "ap_enable_operation_615", "ToFinalSV" : "38", "ToAddress" : "buf0_R_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:68:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state39_pp0_iter38_stage0", "ap_enable_state40_pp0_iter39_stage0"]},
			{"FromInitialState" : "ap_enable_state40_pp0_iter39_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter39", "FromInitialOperation" : "ap_enable_operation_635", "FromInitialSV" : "39", "FromFinalState" : "ap_enable_state40_pp0_iter39_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter39", "FromFinalOperation" : "ap_enable_operation_635", "FromFinalSV" : "39", "FromAddress" : "buf0_I_1_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state39_pp0_iter38_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter38", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter39", "ToInitialOperation" : "ap_enable_operation_617", "ToInitialSV" : "38", "ToFinalState" : "ap_enable_state39_pp0_iter38_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter38", "ToFinalOperation" : "ap_enable_operation_617", "ToFinalSV" : "38", "ToAddress" : "buf0_I_1_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:68:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state39_pp0_iter38_stage0", "ap_enable_state40_pp0_iter39_stage0"]},
			{"FromInitialState" : "ap_enable_state40_pp0_iter39_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter39", "FromInitialOperation" : "ap_enable_operation_637", "FromInitialSV" : "39", "FromFinalState" : "ap_enable_state40_pp0_iter39_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter39", "FromFinalOperation" : "ap_enable_operation_637", "FromFinalSV" : "39", "FromAddress" : "buf0_R_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state39_pp0_iter38_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter38", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter39", "ToInitialOperation" : "ap_enable_operation_619", "ToInitialSV" : "38", "ToFinalState" : "ap_enable_state39_pp0_iter38_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter38", "ToFinalOperation" : "ap_enable_operation_619", "ToFinalSV" : "38", "ToAddress" : "buf0_R_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:68:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state39_pp0_iter38_stage0", "ap_enable_state40_pp0_iter39_stage0"]},
			{"FromInitialState" : "ap_enable_state40_pp0_iter39_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter39", "FromInitialOperation" : "ap_enable_operation_639", "FromInitialSV" : "39", "FromFinalState" : "ap_enable_state40_pp0_iter39_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter39", "FromFinalOperation" : "ap_enable_operation_639", "FromFinalSV" : "39", "FromAddress" : "buf0_I_2_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state39_pp0_iter38_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter38", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter39", "ToInitialOperation" : "ap_enable_operation_621", "ToInitialSV" : "38", "ToFinalState" : "ap_enable_state39_pp0_iter38_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter38", "ToFinalOperation" : "ap_enable_operation_621", "ToFinalSV" : "38", "ToAddress" : "buf0_I_2_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:68:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state39_pp0_iter38_stage0", "ap_enable_state40_pp0_iter39_stage0"]},
			{"FromInitialState" : "ap_enable_state40_pp0_iter39_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter39", "FromInitialOperation" : "ap_enable_operation_641", "FromInitialSV" : "39", "FromFinalState" : "ap_enable_state40_pp0_iter39_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter39", "FromFinalOperation" : "ap_enable_operation_641", "FromFinalSV" : "39", "FromAddress" : "buf0_R_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state39_pp0_iter38_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter38", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter39", "ToInitialOperation" : "ap_enable_operation_623", "ToInitialSV" : "38", "ToFinalState" : "ap_enable_state39_pp0_iter38_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter38", "ToFinalOperation" : "ap_enable_operation_623", "ToFinalSV" : "38", "ToAddress" : "buf0_R_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:68:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state39_pp0_iter38_stage0", "ap_enable_state40_pp0_iter39_stage0"]},
			{"FromInitialState" : "ap_enable_state40_pp0_iter39_stage0", "FromInitialIteration" : "ap_enable_reg_pp0_iter39", "FromInitialOperation" : "ap_enable_operation_643", "FromInitialSV" : "39", "FromFinalState" : "ap_enable_state40_pp0_iter39_stage0", "FromFinalIteration" : "ap_enable_reg_pp0_iter39", "FromFinalOperation" : "ap_enable_operation_643", "FromFinalSV" : "39", "FromAddress" : "buf0_I_3_address0", "FromType" : "W", "ToInitialState" : "ap_enable_state39_pp0_iter38_stage0", "ToInitialIteration" : "ap_enable_reg_pp0_iter38", "ToInitialNextIteration" : "ap_enable_reg_pp0_iter39", "ToInitialOperation" : "ap_enable_operation_625", "ToInitialSV" : "38", "ToFinalState" : "ap_enable_state39_pp0_iter38_stage0", "ToFinalIteration" : "ap_enable_reg_pp0_iter38", "ToFinalOperation" : "ap_enable_operation_625", "ToFinalSV" : "38", "ToAddress" : "buf0_I_3_address1", "ToType" : "W", "PipelineBlock" : "ap_block_pp0", "AddressWidth" : "8", "II" : "1", "Pragma" : "(fft.cpp:68:32)", "Type" : "WAW", "StateEnableSignalListForFifoShift" : ["ap_enable_state39_pp0_iter38_stage0", "ap_enable_state40_pp0_iter39_stage0"]}],
		"Port" : [
			{"Name" : "buf0_I_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf0_I_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf0_I_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf0_I", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf0_R_3", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf0_R_2", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf0_R_1", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf0_R", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "buf1_R", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_I", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_R_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_I_1", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_R_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_I_2", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_R_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "buf1_I_3", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_real", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "W_imag", "Type" : "Memory", "Direction" : "I"}],
		"Loop" : [
			{"Name" : "DFT_Loop", "PipelineType" : "UPC",
				"LoopDec" : {"FSMBitwidth" : "1", "FirstState" : "ap_ST_fsm_pp0_stage0", "FirstStateIter" : "ap_enable_reg_pp0_iter0", "FirstStateBlock" : "ap_block_pp0_stage0_subdone", "LastState" : "ap_ST_fsm_pp0_stage0", "LastStateIter" : "ap_enable_reg_pp0_iter39", "LastStateBlock" : "ap_block_pp0_stage0_subdone", "QuitState" : "ap_ST_fsm_pp0_stage0", "QuitStateIter" : "ap_enable_reg_pp0_iter39", "QuitStateBlock" : "ap_block_pp0_stage0_subdone", "OneDepthLoop" : "0", "has_ap_ctrl" : "1", "has_continue" : "0"}}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.flow_control_loop_pipe_sequential_init_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	dft_Pipeline_DFT_Loop7 {
		buf0_I_3 {Type O LastRead -1 FirstWrite 38}
		buf0_I_2 {Type O LastRead -1 FirstWrite 38}
		buf0_I_1 {Type O LastRead -1 FirstWrite 38}
		buf0_I {Type O LastRead -1 FirstWrite 38}
		buf0_R_3 {Type O LastRead -1 FirstWrite 38}
		buf0_R_2 {Type O LastRead -1 FirstWrite 38}
		buf0_R_1 {Type O LastRead -1 FirstWrite 38}
		buf0_R {Type O LastRead -1 FirstWrite 38}
		buf1_R {Type I LastRead 23 FirstWrite -1}
		buf1_I {Type I LastRead 23 FirstWrite -1}
		buf1_R_1 {Type I LastRead 23 FirstWrite -1}
		buf1_I_1 {Type I LastRead 23 FirstWrite -1}
		buf1_R_2 {Type I LastRead 23 FirstWrite -1}
		buf1_I_2 {Type I LastRead 23 FirstWrite -1}
		buf1_R_3 {Type I LastRead 23 FirstWrite -1}
		buf1_I_3 {Type I LastRead 23 FirstWrite -1}
		W_real {Type I LastRead 3 FirstWrite -1}
		W_imag {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "168", "Max" : "168"}
	, {"Name" : "Interval", "Min" : "168", "Max" : "168"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	buf0_I_3 { ap_memory {  { buf0_I_3_address0 mem_address 1 8 }  { buf0_I_3_ce0 mem_ce 1 1 }  { buf0_I_3_we0 mem_we 1 1 }  { buf0_I_3_d0 mem_din 1 32 }  { buf0_I_3_address1 MemPortADDR2 1 8 }  { buf0_I_3_ce1 MemPortCE2 1 1 }  { buf0_I_3_we1 MemPortWE2 1 1 }  { buf0_I_3_d1 MemPortDIN2 1 32 } } }
	buf0_I_2 { ap_memory {  { buf0_I_2_address0 mem_address 1 8 }  { buf0_I_2_ce0 mem_ce 1 1 }  { buf0_I_2_we0 mem_we 1 1 }  { buf0_I_2_d0 mem_din 1 32 }  { buf0_I_2_address1 MemPortADDR2 1 8 }  { buf0_I_2_ce1 MemPortCE2 1 1 }  { buf0_I_2_we1 MemPortWE2 1 1 }  { buf0_I_2_d1 MemPortDIN2 1 32 } } }
	buf0_I_1 { ap_memory {  { buf0_I_1_address0 mem_address 1 8 }  { buf0_I_1_ce0 mem_ce 1 1 }  { buf0_I_1_we0 mem_we 1 1 }  { buf0_I_1_d0 mem_din 1 32 }  { buf0_I_1_address1 MemPortADDR2 1 8 }  { buf0_I_1_ce1 MemPortCE2 1 1 }  { buf0_I_1_we1 MemPortWE2 1 1 }  { buf0_I_1_d1 MemPortDIN2 1 32 } } }
	buf0_I { ap_memory {  { buf0_I_address0 mem_address 1 8 }  { buf0_I_ce0 mem_ce 1 1 }  { buf0_I_we0 mem_we 1 1 }  { buf0_I_d0 mem_din 1 32 }  { buf0_I_address1 MemPortADDR2 1 8 }  { buf0_I_ce1 MemPortCE2 1 1 }  { buf0_I_we1 MemPortWE2 1 1 }  { buf0_I_d1 MemPortDIN2 1 32 } } }
	buf0_R_3 { ap_memory {  { buf0_R_3_address0 mem_address 1 8 }  { buf0_R_3_ce0 mem_ce 1 1 }  { buf0_R_3_we0 mem_we 1 1 }  { buf0_R_3_d0 mem_din 1 32 }  { buf0_R_3_address1 MemPortADDR2 1 8 }  { buf0_R_3_ce1 MemPortCE2 1 1 }  { buf0_R_3_we1 MemPortWE2 1 1 }  { buf0_R_3_d1 MemPortDIN2 1 32 } } }
	buf0_R_2 { ap_memory {  { buf0_R_2_address0 mem_address 1 8 }  { buf0_R_2_ce0 mem_ce 1 1 }  { buf0_R_2_we0 mem_we 1 1 }  { buf0_R_2_d0 mem_din 1 32 }  { buf0_R_2_address1 MemPortADDR2 1 8 }  { buf0_R_2_ce1 MemPortCE2 1 1 }  { buf0_R_2_we1 MemPortWE2 1 1 }  { buf0_R_2_d1 MemPortDIN2 1 32 } } }
	buf0_R_1 { ap_memory {  { buf0_R_1_address0 mem_address 1 8 }  { buf0_R_1_ce0 mem_ce 1 1 }  { buf0_R_1_we0 mem_we 1 1 }  { buf0_R_1_d0 mem_din 1 32 }  { buf0_R_1_address1 MemPortADDR2 1 8 }  { buf0_R_1_ce1 MemPortCE2 1 1 }  { buf0_R_1_we1 MemPortWE2 1 1 }  { buf0_R_1_d1 MemPortDIN2 1 32 } } }
	buf0_R { ap_memory {  { buf0_R_address0 mem_address 1 8 }  { buf0_R_ce0 mem_ce 1 1 }  { buf0_R_we0 mem_we 1 1 }  { buf0_R_d0 mem_din 1 32 }  { buf0_R_address1 MemPortADDR2 1 8 }  { buf0_R_ce1 MemPortCE2 1 1 }  { buf0_R_we1 MemPortWE2 1 1 }  { buf0_R_d1 MemPortDIN2 1 32 } } }
	buf1_R { ap_memory {  { buf1_R_address0 mem_address 1 8 }  { buf1_R_ce0 mem_ce 1 1 }  { buf1_R_q0 mem_dout 0 32 }  { buf1_R_address1 MemPortADDR2 1 8 }  { buf1_R_ce1 MemPortCE2 1 1 }  { buf1_R_q1 MemPortDOUT2 0 32 } } }
	buf1_I { ap_memory {  { buf1_I_address0 mem_address 1 8 }  { buf1_I_ce0 mem_ce 1 1 }  { buf1_I_q0 mem_dout 0 32 }  { buf1_I_address1 MemPortADDR2 1 8 }  { buf1_I_ce1 MemPortCE2 1 1 }  { buf1_I_q1 MemPortDOUT2 0 32 } } }
	buf1_R_1 { ap_memory {  { buf1_R_1_address0 mem_address 1 8 }  { buf1_R_1_ce0 mem_ce 1 1 }  { buf1_R_1_q0 mem_dout 0 32 }  { buf1_R_1_address1 MemPortADDR2 1 8 }  { buf1_R_1_ce1 MemPortCE2 1 1 }  { buf1_R_1_q1 MemPortDOUT2 0 32 } } }
	buf1_I_1 { ap_memory {  { buf1_I_1_address0 mem_address 1 8 }  { buf1_I_1_ce0 mem_ce 1 1 }  { buf1_I_1_q0 mem_dout 0 32 }  { buf1_I_1_address1 MemPortADDR2 1 8 }  { buf1_I_1_ce1 MemPortCE2 1 1 }  { buf1_I_1_q1 MemPortDOUT2 0 32 } } }
	buf1_R_2 { ap_memory {  { buf1_R_2_address0 mem_address 1 8 }  { buf1_R_2_ce0 mem_ce 1 1 }  { buf1_R_2_q0 mem_dout 0 32 }  { buf1_R_2_address1 MemPortADDR2 1 8 }  { buf1_R_2_ce1 MemPortCE2 1 1 }  { buf1_R_2_q1 MemPortDOUT2 0 32 } } }
	buf1_I_2 { ap_memory {  { buf1_I_2_address0 mem_address 1 8 }  { buf1_I_2_ce0 mem_ce 1 1 }  { buf1_I_2_q0 mem_dout 0 32 }  { buf1_I_2_address1 MemPortADDR2 1 8 }  { buf1_I_2_ce1 MemPortCE2 1 1 }  { buf1_I_2_q1 MemPortDOUT2 0 32 } } }
	buf1_R_3 { ap_memory {  { buf1_R_3_address0 mem_address 1 8 }  { buf1_R_3_ce0 mem_ce 1 1 }  { buf1_R_3_q0 mem_dout 0 32 }  { buf1_R_3_address1 MemPortADDR2 1 8 }  { buf1_R_3_ce1 MemPortCE2 1 1 }  { buf1_R_3_q1 MemPortDOUT2 0 32 } } }
	buf1_I_3 { ap_memory {  { buf1_I_3_address0 mem_address 1 8 }  { buf1_I_3_ce0 mem_ce 1 1 }  { buf1_I_3_q0 mem_dout 0 32 }  { buf1_I_3_address1 MemPortADDR2 1 8 }  { buf1_I_3_ce1 MemPortCE2 1 1 }  { buf1_I_3_q1 MemPortDOUT2 0 32 } } }
	W_real { ap_memory {  { W_real_address0 mem_address 1 9 }  { W_real_ce0 mem_ce 1 1 }  { W_real_q0 mem_dout 0 32 }  { W_real_address1 MemPortADDR2 1 9 }  { W_real_ce1 MemPortCE2 1 1 }  { W_real_q1 MemPortDOUT2 0 32 }  { W_real_address2 MemPortADDR2 1 9 }  { W_real_ce2 MemPortCE2 1 1 }  { W_real_q2 MemPortDOUT2 0 32 }  { W_real_address3 MemPortADDR2 1 9 }  { W_real_ce3 MemPortCE2 1 1 }  { W_real_q3 MemPortDOUT2 0 32 } } }
	W_imag { ap_memory {  { W_imag_address0 mem_address 1 9 }  { W_imag_ce0 mem_ce 1 1 }  { W_imag_q0 mem_dout 0 32 }  { W_imag_address1 MemPortADDR2 1 9 }  { W_imag_ce1 MemPortCE2 1 1 }  { W_imag_q1 MemPortDOUT2 0 32 }  { W_imag_address2 MemPortADDR2 1 9 }  { W_imag_ce2 MemPortCE2 1 1 }  { W_imag_q2 MemPortDOUT2 0 32 }  { W_imag_address3 MemPortADDR2 1 9 }  { W_imag_ce3 MemPortCE2 1 1 }  { W_imag_q3 MemPortDOUT2 0 32 } } }
}
