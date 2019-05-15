set moduleName trygrg
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {trygrg}
set C_modelType { void 0 }
set C_modelArgList {
	{ N int 32 regular  }
	{ rg_data_V int 97 regular {array 1024 { 1 1 } 1 1 }  }
	{ g_data_V int 97 regular {array 1024 { 1 3 } 1 1 }  }
	{ out_data_V int 1024 regular {array 1024 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "N", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rg_data_V", "interface" : "memory", "bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "g_data_V", "interface" : "memory", "bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "out_data_V", "interface" : "memory", "bitwidth" : 1024, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ N sc_in sc_lv 32 signal 0 } 
	{ rg_data_V_address0 sc_out sc_lv 10 signal 1 } 
	{ rg_data_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ rg_data_V_q0 sc_in sc_lv 97 signal 1 } 
	{ rg_data_V_address1 sc_out sc_lv 10 signal 1 } 
	{ rg_data_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ rg_data_V_q1 sc_in sc_lv 97 signal 1 } 
	{ g_data_V_address0 sc_out sc_lv 10 signal 2 } 
	{ g_data_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ g_data_V_q0 sc_in sc_lv 97 signal 2 } 
	{ out_data_V_address0 sc_out sc_lv 10 signal 3 } 
	{ out_data_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ out_data_V_we0 sc_out sc_logic 1 signal 3 } 
	{ out_data_V_d0 sc_out sc_lv 1024 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "N", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "N", "role": "default" }} , 
 	{ "name": "rg_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rg_data_V", "role": "address0" }} , 
 	{ "name": "rg_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rg_data_V", "role": "ce0" }} , 
 	{ "name": "rg_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":97, "type": "signal", "bundle":{"name": "rg_data_V", "role": "q0" }} , 
 	{ "name": "rg_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rg_data_V", "role": "address1" }} , 
 	{ "name": "rg_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rg_data_V", "role": "ce1" }} , 
 	{ "name": "rg_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":97, "type": "signal", "bundle":{"name": "rg_data_V", "role": "q1" }} , 
 	{ "name": "g_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "g_data_V", "role": "address0" }} , 
 	{ "name": "g_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g_data_V", "role": "ce0" }} , 
 	{ "name": "g_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":97, "type": "signal", "bundle":{"name": "g_data_V", "role": "q0" }} , 
 	{ "name": "out_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "out_data_V", "role": "address0" }} , 
 	{ "name": "out_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_V", "role": "ce0" }} , 
 	{ "name": "out_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_V", "role": "we0" }} , 
 	{ "name": "out_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "out_data_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "11", "16", "21", "26", "31", "36", "41", "46", "51", "56", "61", "66", "71", "76", "81", "86", "91", "96", "101", "106", "111", "116", "121", "126", "131", "136", "141", "146", "151", "156"],
		"CDFG" : "trygrg",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "N", "Type" : "None", "Direction" : "I"},
			{"Name" : "rg_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "g_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_489", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_489.grp_readItem_fu_67", "Parent" : "1",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_489.grp_readCompare_fu_75", "Parent" : "1",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_489.items1_stream_V_fifo_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_489.delay_stream_V_fifo_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_498", "Parent" : "0", "Child" : ["7", "8", "9", "10"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_498.grp_readItem_fu_67", "Parent" : "6",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_498.grp_readCompare_fu_75", "Parent" : "6",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_498.items1_stream_V_fifo_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_498.delay_stream_V_fifo_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_506", "Parent" : "0", "Child" : ["12", "13", "14", "15"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_506.grp_readItem_fu_67", "Parent" : "11",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_506.grp_readCompare_fu_75", "Parent" : "11",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_506.items1_stream_V_fifo_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_506.delay_stream_V_fifo_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_514", "Parent" : "0", "Child" : ["17", "18", "19", "20"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_514.grp_readItem_fu_67", "Parent" : "16",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_514.grp_readCompare_fu_75", "Parent" : "16",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_514.items1_stream_V_fifo_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_514.delay_stream_V_fifo_U", "Parent" : "16"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_522", "Parent" : "0", "Child" : ["22", "23", "24", "25"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_522.grp_readItem_fu_67", "Parent" : "21",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_522.grp_readCompare_fu_75", "Parent" : "21",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_522.items1_stream_V_fifo_U", "Parent" : "21"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_522.delay_stream_V_fifo_U", "Parent" : "21"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_530", "Parent" : "0", "Child" : ["27", "28", "29", "30"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_530.grp_readItem_fu_67", "Parent" : "26",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_530.grp_readCompare_fu_75", "Parent" : "26",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_530.items1_stream_V_fifo_U", "Parent" : "26"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_530.delay_stream_V_fifo_U", "Parent" : "26"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_538", "Parent" : "0", "Child" : ["32", "33", "34", "35"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_538.grp_readItem_fu_67", "Parent" : "31",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_538.grp_readCompare_fu_75", "Parent" : "31",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_538.items1_stream_V_fifo_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_538.delay_stream_V_fifo_U", "Parent" : "31"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_546", "Parent" : "0", "Child" : ["37", "38", "39", "40"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_546.grp_readItem_fu_67", "Parent" : "36",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_546.grp_readCompare_fu_75", "Parent" : "36",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_546.items1_stream_V_fifo_U", "Parent" : "36"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_546.delay_stream_V_fifo_U", "Parent" : "36"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_554", "Parent" : "0", "Child" : ["42", "43", "44", "45"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_554.grp_readItem_fu_67", "Parent" : "41",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_554.grp_readCompare_fu_75", "Parent" : "41",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_554.items1_stream_V_fifo_U", "Parent" : "41"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_554.delay_stream_V_fifo_U", "Parent" : "41"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_562", "Parent" : "0", "Child" : ["47", "48", "49", "50"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_562.grp_readItem_fu_67", "Parent" : "46",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_562.grp_readCompare_fu_75", "Parent" : "46",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_562.items1_stream_V_fifo_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_562.delay_stream_V_fifo_U", "Parent" : "46"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_570", "Parent" : "0", "Child" : ["52", "53", "54", "55"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_570.grp_readItem_fu_67", "Parent" : "51",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_570.grp_readCompare_fu_75", "Parent" : "51",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_570.items1_stream_V_fifo_U", "Parent" : "51"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_570.delay_stream_V_fifo_U", "Parent" : "51"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_578", "Parent" : "0", "Child" : ["57", "58", "59", "60"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_578.grp_readItem_fu_67", "Parent" : "56",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_578.grp_readCompare_fu_75", "Parent" : "56",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_578.items1_stream_V_fifo_U", "Parent" : "56"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_578.delay_stream_V_fifo_U", "Parent" : "56"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_586", "Parent" : "0", "Child" : ["62", "63", "64", "65"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_586.grp_readItem_fu_67", "Parent" : "61",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_586.grp_readCompare_fu_75", "Parent" : "61",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_586.items1_stream_V_fifo_U", "Parent" : "61"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_586.delay_stream_V_fifo_U", "Parent" : "61"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_594", "Parent" : "0", "Child" : ["67", "68", "69", "70"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_594.grp_readItem_fu_67", "Parent" : "66",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_594.grp_readCompare_fu_75", "Parent" : "66",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_594.items1_stream_V_fifo_U", "Parent" : "66"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_594.delay_stream_V_fifo_U", "Parent" : "66"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_602", "Parent" : "0", "Child" : ["72", "73", "74", "75"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_602.grp_readItem_fu_67", "Parent" : "71",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_602.grp_readCompare_fu_75", "Parent" : "71",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_602.items1_stream_V_fifo_U", "Parent" : "71"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_602.delay_stream_V_fifo_U", "Parent" : "71"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_610", "Parent" : "0", "Child" : ["77", "78", "79", "80"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_610.grp_readItem_fu_67", "Parent" : "76",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_610.grp_readCompare_fu_75", "Parent" : "76",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_610.items1_stream_V_fifo_U", "Parent" : "76"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_610.delay_stream_V_fifo_U", "Parent" : "76"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_618", "Parent" : "0", "Child" : ["82", "83", "84", "85"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_618.grp_readItem_fu_67", "Parent" : "81",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_618.grp_readCompare_fu_75", "Parent" : "81",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_618.items1_stream_V_fifo_U", "Parent" : "81"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_618.delay_stream_V_fifo_U", "Parent" : "81"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_626", "Parent" : "0", "Child" : ["87", "88", "89", "90"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_626.grp_readItem_fu_67", "Parent" : "86",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_626.grp_readCompare_fu_75", "Parent" : "86",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_626.items1_stream_V_fifo_U", "Parent" : "86"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_626.delay_stream_V_fifo_U", "Parent" : "86"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_634", "Parent" : "0", "Child" : ["92", "93", "94", "95"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_634.grp_readItem_fu_67", "Parent" : "91",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_634.grp_readCompare_fu_75", "Parent" : "91",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_634.items1_stream_V_fifo_U", "Parent" : "91"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_634.delay_stream_V_fifo_U", "Parent" : "91"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_642", "Parent" : "0", "Child" : ["97", "98", "99", "100"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_642.grp_readItem_fu_67", "Parent" : "96",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_642.grp_readCompare_fu_75", "Parent" : "96",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_642.items1_stream_V_fifo_U", "Parent" : "96"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_642.delay_stream_V_fifo_U", "Parent" : "96"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_650", "Parent" : "0", "Child" : ["102", "103", "104", "105"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_650.grp_readItem_fu_67", "Parent" : "101",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_650.grp_readCompare_fu_75", "Parent" : "101",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_650.items1_stream_V_fifo_U", "Parent" : "101"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_650.delay_stream_V_fifo_U", "Parent" : "101"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_658", "Parent" : "0", "Child" : ["107", "108", "109", "110"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_658.grp_readItem_fu_67", "Parent" : "106",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_658.grp_readCompare_fu_75", "Parent" : "106",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_658.items1_stream_V_fifo_U", "Parent" : "106"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_658.delay_stream_V_fifo_U", "Parent" : "106"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_666", "Parent" : "0", "Child" : ["112", "113", "114", "115"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_666.grp_readItem_fu_67", "Parent" : "111",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_666.grp_readCompare_fu_75", "Parent" : "111",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_666.items1_stream_V_fifo_U", "Parent" : "111"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_666.delay_stream_V_fifo_U", "Parent" : "111"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_674", "Parent" : "0", "Child" : ["117", "118", "119", "120"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_674.grp_readItem_fu_67", "Parent" : "116",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_674.grp_readCompare_fu_75", "Parent" : "116",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_674.items1_stream_V_fifo_U", "Parent" : "116"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_674.delay_stream_V_fifo_U", "Parent" : "116"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_682", "Parent" : "0", "Child" : ["122", "123", "124", "125"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_682.grp_readItem_fu_67", "Parent" : "121",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_682.grp_readCompare_fu_75", "Parent" : "121",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_682.items1_stream_V_fifo_U", "Parent" : "121"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_682.delay_stream_V_fifo_U", "Parent" : "121"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_690", "Parent" : "0", "Child" : ["127", "128", "129", "130"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_690.grp_readItem_fu_67", "Parent" : "126",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_690.grp_readCompare_fu_75", "Parent" : "126",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_690.items1_stream_V_fifo_U", "Parent" : "126"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_690.delay_stream_V_fifo_U", "Parent" : "126"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_698", "Parent" : "0", "Child" : ["132", "133", "134", "135"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_698.grp_readItem_fu_67", "Parent" : "131",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_698.grp_readCompare_fu_75", "Parent" : "131",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_698.items1_stream_V_fifo_U", "Parent" : "131"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_698.delay_stream_V_fifo_U", "Parent" : "131"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_706", "Parent" : "0", "Child" : ["137", "138", "139", "140"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_706.grp_readItem_fu_67", "Parent" : "136",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_706.grp_readCompare_fu_75", "Parent" : "136",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_706.items1_stream_V_fifo_U", "Parent" : "136"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_706.delay_stream_V_fifo_U", "Parent" : "136"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_714", "Parent" : "0", "Child" : ["142", "143", "144", "145"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_714.grp_readItem_fu_67", "Parent" : "141",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_714.grp_readCompare_fu_75", "Parent" : "141",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_714.items1_stream_V_fifo_U", "Parent" : "141"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_714.delay_stream_V_fifo_U", "Parent" : "141"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_722", "Parent" : "0", "Child" : ["147", "148", "149", "150"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_722.grp_readItem_fu_67", "Parent" : "146",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_722.grp_readCompare_fu_75", "Parent" : "146",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_722.items1_stream_V_fifo_U", "Parent" : "146"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_722.delay_stream_V_fifo_U", "Parent" : "146"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_730", "Parent" : "0", "Child" : ["152", "153", "154", "155"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_730.grp_readItem_fu_67", "Parent" : "151",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_730.grp_readCompare_fu_75", "Parent" : "151",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_730.items1_stream_V_fifo_U", "Parent" : "151"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_730.delay_stream_V_fifo_U", "Parent" : "151"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_738", "Parent" : "0", "Child" : ["157", "158", "159", "160"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_738.grp_readItem_fu_67", "Parent" : "156",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_738.grp_readCompare_fu_75", "Parent" : "156",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_738.items1_stream_V_fifo_U", "Parent" : "156"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_738.delay_stream_V_fifo_U", "Parent" : "156"}]}


set ArgLastReadFirstWriteLatency {
	trygrg {
		N {Type I LastRead 0 FirstWrite -1}
		rg_data_V {Type I LastRead 1967 FirstWrite -1}
		g_data_V {Type I LastRead 1 FirstWrite -1}
		out_data_V {Type O LastRead -1 FirstWrite 2051}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	N { ap_none {  { N in_data 0 32 } } }
	rg_data_V { ap_memory {  { rg_data_V_address0 mem_address 1 10 }  { rg_data_V_ce0 mem_ce 1 1 }  { rg_data_V_q0 mem_dout 0 97 }  { rg_data_V_address1 mem_address 1 10 }  { rg_data_V_ce1 mem_ce 1 1 }  { rg_data_V_q1 mem_dout 0 97 } } }
	g_data_V { ap_memory {  { g_data_V_address0 mem_address 1 10 }  { g_data_V_ce0 mem_ce 1 1 }  { g_data_V_q0 mem_dout 0 97 } } }
	out_data_V { ap_memory {  { out_data_V_address0 mem_address 1 10 }  { out_data_V_ce0 mem_ce 1 1 }  { out_data_V_we0 mem_we 1 1 }  { out_data_V_d0 mem_din 1 1024 } } }
}
set moduleName trygrg
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type none
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {trygrg}
set C_modelType { void 0 }
set C_modelArgList {
	{ N int 32 regular  }
	{ rg_data_V int 97 regular {array 1024 { 1 1 } 1 1 }  }
	{ g_data_V int 97 regular {array 1024 { 1 3 } 1 1 }  }
	{ out_data_V int 1024 regular {array 1024 { 0 3 } 0 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "N", "interface" : "wire", "bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "rg_data_V", "interface" : "memory", "bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "g_data_V", "interface" : "memory", "bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "out_data_V", "interface" : "memory", "bitwidth" : 1024, "direction" : "WRITEONLY"} ]}
# RTL Port declarations: 
set portNum 20
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ N sc_in sc_lv 32 signal 0 } 
	{ rg_data_V_address0 sc_out sc_lv 10 signal 1 } 
	{ rg_data_V_ce0 sc_out sc_logic 1 signal 1 } 
	{ rg_data_V_q0 sc_in sc_lv 97 signal 1 } 
	{ rg_data_V_address1 sc_out sc_lv 10 signal 1 } 
	{ rg_data_V_ce1 sc_out sc_logic 1 signal 1 } 
	{ rg_data_V_q1 sc_in sc_lv 97 signal 1 } 
	{ g_data_V_address0 sc_out sc_lv 10 signal 2 } 
	{ g_data_V_ce0 sc_out sc_logic 1 signal 2 } 
	{ g_data_V_q0 sc_in sc_lv 97 signal 2 } 
	{ out_data_V_address0 sc_out sc_lv 10 signal 3 } 
	{ out_data_V_ce0 sc_out sc_logic 1 signal 3 } 
	{ out_data_V_we0 sc_out sc_logic 1 signal 3 } 
	{ out_data_V_d0 sc_out sc_lv 1024 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "N", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "N", "role": "default" }} , 
 	{ "name": "rg_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rg_data_V", "role": "address0" }} , 
 	{ "name": "rg_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rg_data_V", "role": "ce0" }} , 
 	{ "name": "rg_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":97, "type": "signal", "bundle":{"name": "rg_data_V", "role": "q0" }} , 
 	{ "name": "rg_data_V_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "rg_data_V", "role": "address1" }} , 
 	{ "name": "rg_data_V_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "rg_data_V", "role": "ce1" }} , 
 	{ "name": "rg_data_V_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":97, "type": "signal", "bundle":{"name": "rg_data_V", "role": "q1" }} , 
 	{ "name": "g_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "g_data_V", "role": "address0" }} , 
 	{ "name": "g_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "g_data_V", "role": "ce0" }} , 
 	{ "name": "g_data_V_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":97, "type": "signal", "bundle":{"name": "g_data_V", "role": "q0" }} , 
 	{ "name": "out_data_V_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "out_data_V", "role": "address0" }} , 
 	{ "name": "out_data_V_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_V", "role": "ce0" }} , 
 	{ "name": "out_data_V_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "out_data_V", "role": "we0" }} , 
 	{ "name": "out_data_V_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "out_data_V", "role": "d0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "6", "11", "16", "21", "26", "31", "36", "41", "46", "51", "56", "61", "66", "71", "76", "81", "86", "91", "96", "101", "106", "111", "116", "121", "126", "131", "136", "141", "146", "151", "156"],
		"CDFG" : "trygrg",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "-1", "EstimateLatencyMax" : "-1",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "N", "Type" : "None", "Direction" : "I"},
			{"Name" : "rg_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "g_data_V", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "out_data_V", "Type" : "Memory", "Direction" : "O"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_489", "Parent" : "0", "Child" : ["2", "3", "4", "5"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "2", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_489.grp_readItem_fu_67", "Parent" : "1",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "3", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_489.grp_readCompare_fu_75", "Parent" : "1",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "4", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_489.items1_stream_V_fifo_U", "Parent" : "1"},
	{"ID" : "5", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_489.delay_stream_V_fifo_U", "Parent" : "1"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_498", "Parent" : "0", "Child" : ["7", "8", "9", "10"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "7", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_498.grp_readItem_fu_67", "Parent" : "6",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "8", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_498.grp_readCompare_fu_75", "Parent" : "6",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "9", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_498.items1_stream_V_fifo_U", "Parent" : "6"},
	{"ID" : "10", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_498.delay_stream_V_fifo_U", "Parent" : "6"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_506", "Parent" : "0", "Child" : ["12", "13", "14", "15"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "12", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_506.grp_readItem_fu_67", "Parent" : "11",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "13", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_506.grp_readCompare_fu_75", "Parent" : "11",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "14", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_506.items1_stream_V_fifo_U", "Parent" : "11"},
	{"ID" : "15", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_506.delay_stream_V_fifo_U", "Parent" : "11"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_514", "Parent" : "0", "Child" : ["17", "18", "19", "20"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "17", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_514.grp_readItem_fu_67", "Parent" : "16",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "18", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_514.grp_readCompare_fu_75", "Parent" : "16",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "19", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_514.items1_stream_V_fifo_U", "Parent" : "16"},
	{"ID" : "20", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_514.delay_stream_V_fifo_U", "Parent" : "16"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_522", "Parent" : "0", "Child" : ["22", "23", "24", "25"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "22", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_522.grp_readItem_fu_67", "Parent" : "21",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "23", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_522.grp_readCompare_fu_75", "Parent" : "21",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "24", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_522.items1_stream_V_fifo_U", "Parent" : "21"},
	{"ID" : "25", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_522.delay_stream_V_fifo_U", "Parent" : "21"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_530", "Parent" : "0", "Child" : ["27", "28", "29", "30"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "27", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_530.grp_readItem_fu_67", "Parent" : "26",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "28", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_530.grp_readCompare_fu_75", "Parent" : "26",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "29", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_530.items1_stream_V_fifo_U", "Parent" : "26"},
	{"ID" : "30", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_530.delay_stream_V_fifo_U", "Parent" : "26"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_538", "Parent" : "0", "Child" : ["32", "33", "34", "35"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "32", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_538.grp_readItem_fu_67", "Parent" : "31",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "33", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_538.grp_readCompare_fu_75", "Parent" : "31",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "34", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_538.items1_stream_V_fifo_U", "Parent" : "31"},
	{"ID" : "35", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_538.delay_stream_V_fifo_U", "Parent" : "31"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_546", "Parent" : "0", "Child" : ["37", "38", "39", "40"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "37", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_546.grp_readItem_fu_67", "Parent" : "36",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "38", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_546.grp_readCompare_fu_75", "Parent" : "36",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "39", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_546.items1_stream_V_fifo_U", "Parent" : "36"},
	{"ID" : "40", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_546.delay_stream_V_fifo_U", "Parent" : "36"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_554", "Parent" : "0", "Child" : ["42", "43", "44", "45"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "42", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_554.grp_readItem_fu_67", "Parent" : "41",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "43", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_554.grp_readCompare_fu_75", "Parent" : "41",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "44", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_554.items1_stream_V_fifo_U", "Parent" : "41"},
	{"ID" : "45", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_554.delay_stream_V_fifo_U", "Parent" : "41"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_562", "Parent" : "0", "Child" : ["47", "48", "49", "50"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "47", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_562.grp_readItem_fu_67", "Parent" : "46",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "48", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_562.grp_readCompare_fu_75", "Parent" : "46",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "49", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_562.items1_stream_V_fifo_U", "Parent" : "46"},
	{"ID" : "50", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_562.delay_stream_V_fifo_U", "Parent" : "46"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_570", "Parent" : "0", "Child" : ["52", "53", "54", "55"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "52", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_570.grp_readItem_fu_67", "Parent" : "51",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "53", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_570.grp_readCompare_fu_75", "Parent" : "51",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "54", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_570.items1_stream_V_fifo_U", "Parent" : "51"},
	{"ID" : "55", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_570.delay_stream_V_fifo_U", "Parent" : "51"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_578", "Parent" : "0", "Child" : ["57", "58", "59", "60"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "57", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_578.grp_readItem_fu_67", "Parent" : "56",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "58", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_578.grp_readCompare_fu_75", "Parent" : "56",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "59", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_578.items1_stream_V_fifo_U", "Parent" : "56"},
	{"ID" : "60", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_578.delay_stream_V_fifo_U", "Parent" : "56"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_586", "Parent" : "0", "Child" : ["62", "63", "64", "65"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "62", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_586.grp_readItem_fu_67", "Parent" : "61",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "63", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_586.grp_readCompare_fu_75", "Parent" : "61",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "64", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_586.items1_stream_V_fifo_U", "Parent" : "61"},
	{"ID" : "65", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_586.delay_stream_V_fifo_U", "Parent" : "61"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_594", "Parent" : "0", "Child" : ["67", "68", "69", "70"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "67", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_594.grp_readItem_fu_67", "Parent" : "66",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "68", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_594.grp_readCompare_fu_75", "Parent" : "66",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "69", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_594.items1_stream_V_fifo_U", "Parent" : "66"},
	{"ID" : "70", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_594.delay_stream_V_fifo_U", "Parent" : "66"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_602", "Parent" : "0", "Child" : ["72", "73", "74", "75"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "72", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_602.grp_readItem_fu_67", "Parent" : "71",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "73", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_602.grp_readCompare_fu_75", "Parent" : "71",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "74", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_602.items1_stream_V_fifo_U", "Parent" : "71"},
	{"ID" : "75", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_602.delay_stream_V_fifo_U", "Parent" : "71"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_610", "Parent" : "0", "Child" : ["77", "78", "79", "80"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "77", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_610.grp_readItem_fu_67", "Parent" : "76",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "78", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_610.grp_readCompare_fu_75", "Parent" : "76",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "79", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_610.items1_stream_V_fifo_U", "Parent" : "76"},
	{"ID" : "80", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_610.delay_stream_V_fifo_U", "Parent" : "76"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_618", "Parent" : "0", "Child" : ["82", "83", "84", "85"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "82", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_618.grp_readItem_fu_67", "Parent" : "81",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "83", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_618.grp_readCompare_fu_75", "Parent" : "81",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "84", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_618.items1_stream_V_fifo_U", "Parent" : "81"},
	{"ID" : "85", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_618.delay_stream_V_fifo_U", "Parent" : "81"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_626", "Parent" : "0", "Child" : ["87", "88", "89", "90"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "87", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_626.grp_readItem_fu_67", "Parent" : "86",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "88", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_626.grp_readCompare_fu_75", "Parent" : "86",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "89", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_626.items1_stream_V_fifo_U", "Parent" : "86"},
	{"ID" : "90", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_626.delay_stream_V_fifo_U", "Parent" : "86"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_634", "Parent" : "0", "Child" : ["92", "93", "94", "95"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "92", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_634.grp_readItem_fu_67", "Parent" : "91",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "93", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_634.grp_readCompare_fu_75", "Parent" : "91",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "94", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_634.items1_stream_V_fifo_U", "Parent" : "91"},
	{"ID" : "95", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_634.delay_stream_V_fifo_U", "Parent" : "91"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_642", "Parent" : "0", "Child" : ["97", "98", "99", "100"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "97", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_642.grp_readItem_fu_67", "Parent" : "96",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "98", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_642.grp_readCompare_fu_75", "Parent" : "96",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "99", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_642.items1_stream_V_fifo_U", "Parent" : "96"},
	{"ID" : "100", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_642.delay_stream_V_fifo_U", "Parent" : "96"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_650", "Parent" : "0", "Child" : ["102", "103", "104", "105"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "102", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_650.grp_readItem_fu_67", "Parent" : "101",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "103", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_650.grp_readCompare_fu_75", "Parent" : "101",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "104", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_650.items1_stream_V_fifo_U", "Parent" : "101"},
	{"ID" : "105", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_650.delay_stream_V_fifo_U", "Parent" : "101"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_658", "Parent" : "0", "Child" : ["107", "108", "109", "110"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "107", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_658.grp_readItem_fu_67", "Parent" : "106",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "108", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_658.grp_readCompare_fu_75", "Parent" : "106",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "109", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_658.items1_stream_V_fifo_U", "Parent" : "106"},
	{"ID" : "110", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_658.delay_stream_V_fifo_U", "Parent" : "106"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_666", "Parent" : "0", "Child" : ["112", "113", "114", "115"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "112", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_666.grp_readItem_fu_67", "Parent" : "111",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "113", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_666.grp_readCompare_fu_75", "Parent" : "111",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "114", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_666.items1_stream_V_fifo_U", "Parent" : "111"},
	{"ID" : "115", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_666.delay_stream_V_fifo_U", "Parent" : "111"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_674", "Parent" : "0", "Child" : ["117", "118", "119", "120"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "117", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_674.grp_readItem_fu_67", "Parent" : "116",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "118", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_674.grp_readCompare_fu_75", "Parent" : "116",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "119", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_674.items1_stream_V_fifo_U", "Parent" : "116"},
	{"ID" : "120", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_674.delay_stream_V_fifo_U", "Parent" : "116"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_682", "Parent" : "0", "Child" : ["122", "123", "124", "125"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "122", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_682.grp_readItem_fu_67", "Parent" : "121",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "123", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_682.grp_readCompare_fu_75", "Parent" : "121",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "124", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_682.items1_stream_V_fifo_U", "Parent" : "121"},
	{"ID" : "125", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_682.delay_stream_V_fifo_U", "Parent" : "121"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_690", "Parent" : "0", "Child" : ["127", "128", "129", "130"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "127", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_690.grp_readItem_fu_67", "Parent" : "126",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "128", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_690.grp_readCompare_fu_75", "Parent" : "126",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "129", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_690.items1_stream_V_fifo_U", "Parent" : "126"},
	{"ID" : "130", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_690.delay_stream_V_fifo_U", "Parent" : "126"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_698", "Parent" : "0", "Child" : ["132", "133", "134", "135"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "132", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_698.grp_readItem_fu_67", "Parent" : "131",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "133", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_698.grp_readCompare_fu_75", "Parent" : "131",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "134", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_698.items1_stream_V_fifo_U", "Parent" : "131"},
	{"ID" : "135", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_698.delay_stream_V_fifo_U", "Parent" : "131"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_706", "Parent" : "0", "Child" : ["137", "138", "139", "140"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "137", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_706.grp_readItem_fu_67", "Parent" : "136",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "138", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_706.grp_readCompare_fu_75", "Parent" : "136",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "139", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_706.items1_stream_V_fifo_U", "Parent" : "136"},
	{"ID" : "140", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_706.delay_stream_V_fifo_U", "Parent" : "136"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_714", "Parent" : "0", "Child" : ["142", "143", "144", "145"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "142", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_714.grp_readItem_fu_67", "Parent" : "141",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "143", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_714.grp_readCompare_fu_75", "Parent" : "141",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "144", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_714.items1_stream_V_fifo_U", "Parent" : "141"},
	{"ID" : "145", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_714.delay_stream_V_fifo_U", "Parent" : "141"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_722", "Parent" : "0", "Child" : ["147", "148", "149", "150"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "147", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_722.grp_readItem_fu_67", "Parent" : "146",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "148", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_722.grp_readCompare_fu_75", "Parent" : "146",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "149", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_722.items1_stream_V_fifo_U", "Parent" : "146"},
	{"ID" : "150", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_722.delay_stream_V_fifo_U", "Parent" : "146"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_730", "Parent" : "0", "Child" : ["152", "153", "154", "155"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "152", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_730.grp_readItem_fu_67", "Parent" : "151",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "153", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_730.grp_readCompare_fu_75", "Parent" : "151",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "154", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_730.items1_stream_V_fifo_U", "Parent" : "151"},
	{"ID" : "155", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_730.delay_stream_V_fifo_U", "Parent" : "151"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_738", "Parent" : "0", "Child" : ["157", "158", "159", "160"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "65",
		"VariableLatency" : "0", "ExactLatency" : "64", "EstimateLatencyMin" : "64", "EstimateLatencyMax" : "64",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj1_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"}],
		"SubInstanceBlock" : [
			{"SubInstance" : "grp_readItem_fu_67", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_75", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "157", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_738.grp_readItem_fu_67", "Parent" : "156",
		"CDFG" : "readItem",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "158", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_738.grp_readCompare_fu_75", "Parent" : "156",
		"CDFG" : "readCompare",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "32",
		"VariableLatency" : "0", "ExactLatency" : "31", "EstimateLatencyMin" : "31", "EstimateLatencyMax" : "31",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "1",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "adj2_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "adj1_data_V", "Type" : "None", "Direction" : "I"},
			{"Name" : "out_data_V_read", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "159", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_738.items1_stream_V_fifo_U", "Parent" : "156"},
	{"ID" : "160", "Level" : "2", "Path" : "`AUTOTB_DUT_INST.grp_unite_fu_738.delay_stream_V_fifo_U", "Parent" : "156"}]}


set ArgLastReadFirstWriteLatency {
	trygrg {
		N {Type I LastRead 0 FirstWrite -1}
		rg_data_V {Type I LastRead 1967 FirstWrite -1}
		g_data_V {Type I LastRead 1 FirstWrite -1}
		out_data_V {Type O LastRead -1 FirstWrite 2051}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 26 FirstWrite -1}
		adj1_data_V {Type I LastRead 26 FirstWrite -1}
		out_data_V_read {Type I LastRead 27 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	N { ap_none {  { N in_data 0 32 } } }
	rg_data_V { ap_memory {  { rg_data_V_address0 mem_address 1 10 }  { rg_data_V_ce0 mem_ce 1 1 }  { rg_data_V_q0 mem_dout 0 97 }  { rg_data_V_address1 mem_address 1 10 }  { rg_data_V_ce1 mem_ce 1 1 }  { rg_data_V_q1 mem_dout 0 97 } } }
	g_data_V { ap_memory {  { g_data_V_address0 mem_address 1 10 }  { g_data_V_ce0 mem_ce 1 1 }  { g_data_V_q0 mem_dout 0 97 } } }
	out_data_V { ap_memory {  { out_data_V_address0 mem_address 1 10 }  { out_data_V_ce0 mem_ce 1 1 }  { out_data_V_we0 mem_we 1 1 }  { out_data_V_d0 mem_din 1 1024 } } }
}
