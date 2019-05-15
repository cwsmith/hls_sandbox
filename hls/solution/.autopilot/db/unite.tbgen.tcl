set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_return sc_out sc_lv 1024 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "64",
		"VariableLatency" : "0", "ExactLatency" : "63", "EstimateLatencyMin" : "63", "EstimateLatencyMax" : "63",
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
			{"SubInstance" : "grp_readCompare_fu_54", "SubBlockPort" : ["i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readItem_fu_60", "SubBlockPort" : ["i_out_stream_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_54", "Parent" : "0",
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
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_60", "Parent" : "0",
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
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 2 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "63", "Max" : "63"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "wire", "bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 8
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ ap_return sc_out sc_lv 1024 signal -1 } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "ap_return", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "ap_return", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "64",
		"VariableLatency" : "0", "ExactLatency" : "63", "EstimateLatencyMin" : "63", "EstimateLatencyMax" : "63",
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
			{"SubInstance" : "grp_readCompare_fu_54", "SubBlockPort" : ["i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readItem_fu_60", "SubBlockPort" : ["i_out_stream_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_54", "Parent" : "0",
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
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_60", "Parent" : "0",
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
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 2 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "63", "Max" : "63"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "64",
		"VariableLatency" : "0", "ExactLatency" : "63", "EstimateLatencyMin" : "63", "EstimateLatencyMax" : "63",
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
			{"SubInstance" : "grp_readCompare_fu_54", "SubBlockPort" : ["i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readItem_fu_60", "SubBlockPort" : ["i_out_stream_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_54", "Parent" : "0",
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
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_60", "Parent" : "0",
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
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 2 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "63", "Max" : "63"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "64",
		"VariableLatency" : "0", "ExactLatency" : "63", "EstimateLatencyMin" : "63", "EstimateLatencyMax" : "63",
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
			{"SubInstance" : "grp_readCompare_fu_54", "SubBlockPort" : ["i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readItem_fu_60", "SubBlockPort" : ["i_out_stream_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_54", "Parent" : "0",
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
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_60", "Parent" : "0",
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
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 2 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "63", "Max" : "63"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "64",
		"VariableLatency" : "0", "ExactLatency" : "63", "EstimateLatencyMin" : "63", "EstimateLatencyMax" : "63",
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
			{"SubInstance" : "grp_readCompare_fu_54", "SubBlockPort" : ["i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readItem_fu_60", "SubBlockPort" : ["i_out_stream_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_54", "Parent" : "0",
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
			{"Name" : "i_in_stream_V", "Type" : "Fifo", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "i_in_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_60", "Parent" : "0",
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
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlPort"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 2 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "63", "Max" : "63"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "64",
		"VariableLatency" : "0", "ExactLatency" : "63", "EstimateLatencyMin" : "63", "EstimateLatencyMax" : "63",
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
			{"SubInstance" : "grp_readItem_fu_60", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_68", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_60", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_68", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "63", "Max" : "63"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "64",
		"VariableLatency" : "0", "ExactLatency" : "63", "EstimateLatencyMin" : "63", "EstimateLatencyMax" : "63",
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
			{"SubInstance" : "grp_readItem_fu_60", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_68", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_60", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_68", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "63", "Max" : "63"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "64",
		"VariableLatency" : "0", "ExactLatency" : "63", "EstimateLatencyMin" : "63", "EstimateLatencyMax" : "63",
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
			{"SubInstance" : "grp_readItem_fu_60", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_68", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_60", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_68", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "63", "Max" : "63"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "64",
		"VariableLatency" : "0", "ExactLatency" : "63", "EstimateLatencyMin" : "63", "EstimateLatencyMax" : "63",
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
			{"SubInstance" : "grp_readItem_fu_60", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_68", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_60", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_68", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "63", "Max" : "63"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "64",
		"VariableLatency" : "0", "ExactLatency" : "63", "EstimateLatencyMin" : "63", "EstimateLatencyMax" : "63",
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
			{"SubInstance" : "grp_readItem_fu_60", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_68", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_60", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_68", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "63", "Max" : "63"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_67", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_75", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "64", "Max" : "64"}
	, {"Name" : "Interval", "Min" : "65", "Max" : "65"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_67", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_75", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "64", "Max" : "64"}
	, {"Name" : "Interval", "Min" : "65", "Max" : "65"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_67", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_75", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "64", "Max" : "64"}
	, {"Name" : "Interval", "Min" : "65", "Max" : "65"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_67", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_75", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "64", "Max" : "64"}
	, {"Name" : "Interval", "Min" : "65", "Max" : "65"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_67", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_75", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "64", "Max" : "64"}
	, {"Name" : "Interval", "Min" : "65", "Max" : "65"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_67", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_75", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "64", "Max" : "64"}
	, {"Name" : "Interval", "Min" : "65", "Max" : "65"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_67", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_75", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "64", "Max" : "64"}
	, {"Name" : "Interval", "Min" : "65", "Max" : "65"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "64",
		"VariableLatency" : "0", "ExactLatency" : "63", "EstimateLatencyMin" : "63", "EstimateLatencyMax" : "63",
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
			{"SubInstance" : "grp_readItem_fu_60", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]},
			{"SubInstance" : "grp_readCompare_fu_68", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_60", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_68", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "63", "Max" : "63"}
	, {"Name" : "Interval", "Min" : "64", "Max" : "64"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_67", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_75", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "64", "Max" : "64"}
	, {"Name" : "Interval", "Min" : "65", "Max" : "65"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_67", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_75", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "64", "Max" : "64"}
	, {"Name" : "Interval", "Min" : "65", "Max" : "65"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 97 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 97, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_67", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_75", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
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
	{"Name" : "Latency", "Min" : "64", "Max" : "64"}
	, {"Name" : "Interval", "Min" : "65", "Max" : "65"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 1024 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
			{"SubInstance" : "grp_readCompare_fu_65", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]},
			{"SubInstance" : "grp_readItem_fu_74", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_65", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_74", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 23 FirstWrite -1}
		adj1_data_V {Type I LastRead 23 FirstWrite -1}
		out_data_V_read {Type I LastRead 24 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "64", "Max" : "64"}
	, {"Name" : "Interval", "Min" : "65", "Max" : "65"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
set isTaskLevelControl 1
set isCombinational 0
set isDatapathOnly 0
set isPipelined 0
set pipeline_type function
set FunctionProtocol ap_ctrl_hs
set isOneStateSeq 0
set ProfileFlag 0
set StallSigGenFlag 0
set isEnableWaveformDebug 1
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ adj1_data_V_read int 1024 regular {axi_slave 0}  }
	{ adj2_data_V int 1024 regular {axi_slave 0}  }
}
set C_modelArgMapList {[ 
	{ "Name" : "adj1_data_V_read", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "adj2_data_V", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 3
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_ce sc_in sc_logic 1 ce -1 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_ce", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "ce", "bundle":{"name": "ap_ce", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
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
			{"SubInstance" : "grp_readCompare_fu_65", "SubBlockPort" : ["i_in_stream_V_blk_n", "i_out_stream_V_blk_n"]},
			{"SubInstance" : "grp_readItem_fu_74", "SubBlockPort" : ["i_out_stream_V_blk_n", "i_in_stream_V_blk_n"]}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readCompare_fu_65", "Parent" : "0",
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
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem_fu_74", "Parent" : "0",
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
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.items1_stream_V_fifo_U", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.delay_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unite {
		adj1_data_V_read {Type I LastRead 0 FirstWrite -1}
		adj2_data_V {Type I LastRead 0 FirstWrite -1}}
	readCompare {
		adj2_data_V {Type I LastRead 23 FirstWrite -1}
		adj1_data_V {Type I LastRead 23 FirstWrite -1}
		out_data_V_read {Type I LastRead 24 FirstWrite -1}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}}
	readItem {
		adj_data_V {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 0}
		i_in_stream_V {Type I LastRead 31 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "64", "Max" : "64"}
	, {"Name" : "Interval", "Min" : "65", "Max" : "65"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
}
set moduleName unite
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
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ num int 32 regular {axi_slave 0}  }
	{ u_adjs_data_V int 1024 regular {axi_master 0}  }
	{ u_adjs_data_V_offset int 25 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V", "interface" : "axi_master", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V_offset", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ m_axi_u_adjs_data_V_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WDATA sc_out sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_WSTRB sc_out sc_lv 128 signal 1 } 
	{ m_axi_u_adjs_data_V_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RDATA sc_in sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BUSER sc_in sc_lv 1 signal 1 } 
	{ u_adjs_data_V_offset sc_in sc_lv 25 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BUSER" }} , 
 	{ "name": "u_adjs_data_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "u_adjs_data_V_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unite",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_readItem0_fu_176"}],
		"Port" : [
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_readItem0_fu_176", "Port" : "adjs_data_V"}]},
			{"Name" : "u_adjs_data_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem0_fu_176", "Parent" : "0",
		"CDFG" : "readItem0",
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
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "adjs_data_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "adjs_data_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "adjs_data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pipe_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unite {
		num {Type I LastRead 0 FirstWrite -1}
		u_adjs_data_V {Type I LastRead 9 FirstWrite -1}
		u_adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}}
	readItem0 {
		num {Type I LastRead 0 FirstWrite -1}
		adjs_data_V {Type I LastRead 9 FirstWrite -1}
		adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	u_adjs_data_V { m_axi {  { m_axi_u_adjs_data_V_AWVALID VALID 1 1 }  { m_axi_u_adjs_data_V_AWREADY READY 0 1 }  { m_axi_u_adjs_data_V_AWADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_AWID ID 1 1 }  { m_axi_u_adjs_data_V_AWLEN LEN 1 32 }  { m_axi_u_adjs_data_V_AWSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_AWBURST BURST 1 2 }  { m_axi_u_adjs_data_V_AWLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_AWCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_AWPROT PROT 1 3 }  { m_axi_u_adjs_data_V_AWQOS QOS 1 4 }  { m_axi_u_adjs_data_V_AWREGION REGION 1 4 }  { m_axi_u_adjs_data_V_AWUSER USER 1 1 }  { m_axi_u_adjs_data_V_WVALID VALID 1 1 }  { m_axi_u_adjs_data_V_WREADY READY 0 1 }  { m_axi_u_adjs_data_V_WDATA DATA 1 1024 }  { m_axi_u_adjs_data_V_WSTRB STRB 1 128 }  { m_axi_u_adjs_data_V_WLAST LAST 1 1 }  { m_axi_u_adjs_data_V_WID ID 1 1 }  { m_axi_u_adjs_data_V_WUSER USER 1 1 }  { m_axi_u_adjs_data_V_ARVALID VALID 1 1 }  { m_axi_u_adjs_data_V_ARREADY READY 0 1 }  { m_axi_u_adjs_data_V_ARADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_ARID ID 1 1 }  { m_axi_u_adjs_data_V_ARLEN LEN 1 32 }  { m_axi_u_adjs_data_V_ARSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_ARBURST BURST 1 2 }  { m_axi_u_adjs_data_V_ARLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_ARCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_ARPROT PROT 1 3 }  { m_axi_u_adjs_data_V_ARQOS QOS 1 4 }  { m_axi_u_adjs_data_V_ARREGION REGION 1 4 }  { m_axi_u_adjs_data_V_ARUSER USER 1 1 }  { m_axi_u_adjs_data_V_RVALID VALID 0 1 }  { m_axi_u_adjs_data_V_RREADY READY 1 1 }  { m_axi_u_adjs_data_V_RDATA DATA 0 1024 }  { m_axi_u_adjs_data_V_RLAST LAST 0 1 }  { m_axi_u_adjs_data_V_RID ID 0 1 }  { m_axi_u_adjs_data_V_RUSER USER 0 1 }  { m_axi_u_adjs_data_V_RRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BVALID VALID 0 1 }  { m_axi_u_adjs_data_V_BREADY READY 1 1 }  { m_axi_u_adjs_data_V_BRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BID ID 0 1 }  { m_axi_u_adjs_data_V_BUSER USER 0 1 } } }
	u_adjs_data_V_offset { ap_none {  { u_adjs_data_V_offset in_data 0 25 } } }
}
set moduleName unite
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
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ num int 32 regular {axi_slave 0}  }
	{ u_adjs_data_V int 1024 regular {axi_master 0}  }
	{ u_adjs_data_V_offset int 25 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V", "interface" : "axi_master", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V_offset", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ m_axi_u_adjs_data_V_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WDATA sc_out sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_WSTRB sc_out sc_lv 128 signal 1 } 
	{ m_axi_u_adjs_data_V_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RDATA sc_in sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BUSER sc_in sc_lv 1 signal 1 } 
	{ u_adjs_data_V_offset sc_in sc_lv 25 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BUSER" }} , 
 	{ "name": "u_adjs_data_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "u_adjs_data_V_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unite",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_readItem0_fu_176"}],
		"Port" : [
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_readItem0_fu_176", "Port" : "adjs_data_V"}]},
			{"Name" : "u_adjs_data_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem0_fu_176", "Parent" : "0",
		"CDFG" : "readItem0",
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
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "adjs_data_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "adjs_data_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "adjs_data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pipe_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unite {
		num {Type I LastRead 0 FirstWrite -1}
		u_adjs_data_V {Type I LastRead 9 FirstWrite -1}
		u_adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}}
	readItem0 {
		num {Type I LastRead 0 FirstWrite -1}
		adjs_data_V {Type I LastRead 9 FirstWrite -1}
		adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	u_adjs_data_V { m_axi {  { m_axi_u_adjs_data_V_AWVALID VALID 1 1 }  { m_axi_u_adjs_data_V_AWREADY READY 0 1 }  { m_axi_u_adjs_data_V_AWADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_AWID ID 1 1 }  { m_axi_u_adjs_data_V_AWLEN LEN 1 32 }  { m_axi_u_adjs_data_V_AWSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_AWBURST BURST 1 2 }  { m_axi_u_adjs_data_V_AWLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_AWCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_AWPROT PROT 1 3 }  { m_axi_u_adjs_data_V_AWQOS QOS 1 4 }  { m_axi_u_adjs_data_V_AWREGION REGION 1 4 }  { m_axi_u_adjs_data_V_AWUSER USER 1 1 }  { m_axi_u_adjs_data_V_WVALID VALID 1 1 }  { m_axi_u_adjs_data_V_WREADY READY 0 1 }  { m_axi_u_adjs_data_V_WDATA DATA 1 1024 }  { m_axi_u_adjs_data_V_WSTRB STRB 1 128 }  { m_axi_u_adjs_data_V_WLAST LAST 1 1 }  { m_axi_u_adjs_data_V_WID ID 1 1 }  { m_axi_u_adjs_data_V_WUSER USER 1 1 }  { m_axi_u_adjs_data_V_ARVALID VALID 1 1 }  { m_axi_u_adjs_data_V_ARREADY READY 0 1 }  { m_axi_u_adjs_data_V_ARADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_ARID ID 1 1 }  { m_axi_u_adjs_data_V_ARLEN LEN 1 32 }  { m_axi_u_adjs_data_V_ARSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_ARBURST BURST 1 2 }  { m_axi_u_adjs_data_V_ARLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_ARCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_ARPROT PROT 1 3 }  { m_axi_u_adjs_data_V_ARQOS QOS 1 4 }  { m_axi_u_adjs_data_V_ARREGION REGION 1 4 }  { m_axi_u_adjs_data_V_ARUSER USER 1 1 }  { m_axi_u_adjs_data_V_RVALID VALID 0 1 }  { m_axi_u_adjs_data_V_RREADY READY 1 1 }  { m_axi_u_adjs_data_V_RDATA DATA 0 1024 }  { m_axi_u_adjs_data_V_RLAST LAST 0 1 }  { m_axi_u_adjs_data_V_RID ID 0 1 }  { m_axi_u_adjs_data_V_RUSER USER 0 1 }  { m_axi_u_adjs_data_V_RRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BVALID VALID 0 1 }  { m_axi_u_adjs_data_V_BREADY READY 1 1 }  { m_axi_u_adjs_data_V_BRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BID ID 0 1 }  { m_axi_u_adjs_data_V_BUSER USER 0 1 } } }
	u_adjs_data_V_offset { ap_none {  { u_adjs_data_V_offset in_data 0 25 } } }
}
set moduleName unite
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
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ num int 32 regular {axi_slave 0}  }
	{ u_adjs_data_V int 1024 regular {axi_master 0}  }
	{ u_adjs_data_V_offset int 25 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V", "interface" : "axi_master", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V_offset", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ m_axi_u_adjs_data_V_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WDATA sc_out sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_WSTRB sc_out sc_lv 128 signal 1 } 
	{ m_axi_u_adjs_data_V_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RDATA sc_in sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BUSER sc_in sc_lv 1 signal 1 } 
	{ u_adjs_data_V_offset sc_in sc_lv 25 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BUSER" }} , 
 	{ "name": "u_adjs_data_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "u_adjs_data_V_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unite",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_readItems_fu_176"}],
		"Port" : [
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_readItems_fu_176", "Port" : "adjs_data_V"}]},
			{"Name" : "u_adjs_data_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItems_fu_176", "Parent" : "0",
		"CDFG" : "readItems",
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
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "adjs_data_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "adjs_data_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "adjs_data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pipe_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unite {
		num {Type I LastRead 0 FirstWrite -1}
		u_adjs_data_V {Type I LastRead 9 FirstWrite -1}
		u_adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}}
	readItems {
		num {Type I LastRead 0 FirstWrite -1}
		adjs_data_V {Type I LastRead 9 FirstWrite -1}
		adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	u_adjs_data_V { m_axi {  { m_axi_u_adjs_data_V_AWVALID VALID 1 1 }  { m_axi_u_adjs_data_V_AWREADY READY 0 1 }  { m_axi_u_adjs_data_V_AWADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_AWID ID 1 1 }  { m_axi_u_adjs_data_V_AWLEN LEN 1 32 }  { m_axi_u_adjs_data_V_AWSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_AWBURST BURST 1 2 }  { m_axi_u_adjs_data_V_AWLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_AWCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_AWPROT PROT 1 3 }  { m_axi_u_adjs_data_V_AWQOS QOS 1 4 }  { m_axi_u_adjs_data_V_AWREGION REGION 1 4 }  { m_axi_u_adjs_data_V_AWUSER USER 1 1 }  { m_axi_u_adjs_data_V_WVALID VALID 1 1 }  { m_axi_u_adjs_data_V_WREADY READY 0 1 }  { m_axi_u_adjs_data_V_WDATA DATA 1 1024 }  { m_axi_u_adjs_data_V_WSTRB STRB 1 128 }  { m_axi_u_adjs_data_V_WLAST LAST 1 1 }  { m_axi_u_adjs_data_V_WID ID 1 1 }  { m_axi_u_adjs_data_V_WUSER USER 1 1 }  { m_axi_u_adjs_data_V_ARVALID VALID 1 1 }  { m_axi_u_adjs_data_V_ARREADY READY 0 1 }  { m_axi_u_adjs_data_V_ARADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_ARID ID 1 1 }  { m_axi_u_adjs_data_V_ARLEN LEN 1 32 }  { m_axi_u_adjs_data_V_ARSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_ARBURST BURST 1 2 }  { m_axi_u_adjs_data_V_ARLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_ARCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_ARPROT PROT 1 3 }  { m_axi_u_adjs_data_V_ARQOS QOS 1 4 }  { m_axi_u_adjs_data_V_ARREGION REGION 1 4 }  { m_axi_u_adjs_data_V_ARUSER USER 1 1 }  { m_axi_u_adjs_data_V_RVALID VALID 0 1 }  { m_axi_u_adjs_data_V_RREADY READY 1 1 }  { m_axi_u_adjs_data_V_RDATA DATA 0 1024 }  { m_axi_u_adjs_data_V_RLAST LAST 0 1 }  { m_axi_u_adjs_data_V_RID ID 0 1 }  { m_axi_u_adjs_data_V_RUSER USER 0 1 }  { m_axi_u_adjs_data_V_RRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BVALID VALID 0 1 }  { m_axi_u_adjs_data_V_BREADY READY 1 1 }  { m_axi_u_adjs_data_V_BRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BID ID 0 1 }  { m_axi_u_adjs_data_V_BUSER USER 0 1 } } }
	u_adjs_data_V_offset { ap_none {  { u_adjs_data_V_offset in_data 0 25 } } }
}
set moduleName unite
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
set C_modelName {unite}
set C_modelType { void 0 }
set C_modelArgList {
	{ num int 32 regular {axi_slave 0}  }
	{ u_adjs_data_V int 1024 regular {axi_master 0}  }
	{ u_adjs_data_V_offset int 25 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V", "interface" : "axi_master", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V_offset", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ m_axi_u_adjs_data_V_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WDATA sc_out sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_WSTRB sc_out sc_lv 128 signal 1 } 
	{ m_axi_u_adjs_data_V_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RDATA sc_in sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BUSER sc_in sc_lv 1 signal 1 } 
	{ u_adjs_data_V_offset sc_in sc_lv 25 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BUSER" }} , 
 	{ "name": "u_adjs_data_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "u_adjs_data_V_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unite",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_readItem0_fu_108"}],
		"Port" : [
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_readItem0_fu_108", "Port" : "adjs_data_V"}]},
			{"Name" : "u_adjs_data_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem0_fu_108", "Parent" : "0",
		"CDFG" : "readItem0",
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
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "adjs_data_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "adjs_data_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "adjs_data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pipe_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unite {
		num {Type I LastRead 0 FirstWrite -1}
		u_adjs_data_V {Type I LastRead 9 FirstWrite -1}
		u_adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}}
	readItem0 {
		num {Type I LastRead 0 FirstWrite -1}
		adjs_data_V {Type I LastRead 9 FirstWrite -1}
		adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	u_adjs_data_V { m_axi {  { m_axi_u_adjs_data_V_AWVALID VALID 1 1 }  { m_axi_u_adjs_data_V_AWREADY READY 0 1 }  { m_axi_u_adjs_data_V_AWADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_AWID ID 1 1 }  { m_axi_u_adjs_data_V_AWLEN LEN 1 32 }  { m_axi_u_adjs_data_V_AWSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_AWBURST BURST 1 2 }  { m_axi_u_adjs_data_V_AWLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_AWCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_AWPROT PROT 1 3 }  { m_axi_u_adjs_data_V_AWQOS QOS 1 4 }  { m_axi_u_adjs_data_V_AWREGION REGION 1 4 }  { m_axi_u_adjs_data_V_AWUSER USER 1 1 }  { m_axi_u_adjs_data_V_WVALID VALID 1 1 }  { m_axi_u_adjs_data_V_WREADY READY 0 1 }  { m_axi_u_adjs_data_V_WDATA DATA 1 1024 }  { m_axi_u_adjs_data_V_WSTRB STRB 1 128 }  { m_axi_u_adjs_data_V_WLAST LAST 1 1 }  { m_axi_u_adjs_data_V_WID ID 1 1 }  { m_axi_u_adjs_data_V_WUSER USER 1 1 }  { m_axi_u_adjs_data_V_ARVALID VALID 1 1 }  { m_axi_u_adjs_data_V_ARREADY READY 0 1 }  { m_axi_u_adjs_data_V_ARADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_ARID ID 1 1 }  { m_axi_u_adjs_data_V_ARLEN LEN 1 32 }  { m_axi_u_adjs_data_V_ARSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_ARBURST BURST 1 2 }  { m_axi_u_adjs_data_V_ARLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_ARCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_ARPROT PROT 1 3 }  { m_axi_u_adjs_data_V_ARQOS QOS 1 4 }  { m_axi_u_adjs_data_V_ARREGION REGION 1 4 }  { m_axi_u_adjs_data_V_ARUSER USER 1 1 }  { m_axi_u_adjs_data_V_RVALID VALID 0 1 }  { m_axi_u_adjs_data_V_RREADY READY 1 1 }  { m_axi_u_adjs_data_V_RDATA DATA 0 1024 }  { m_axi_u_adjs_data_V_RLAST LAST 0 1 }  { m_axi_u_adjs_data_V_RID ID 0 1 }  { m_axi_u_adjs_data_V_RUSER USER 0 1 }  { m_axi_u_adjs_data_V_RRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BVALID VALID 0 1 }  { m_axi_u_adjs_data_V_BREADY READY 1 1 }  { m_axi_u_adjs_data_V_BRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BID ID 0 1 }  { m_axi_u_adjs_data_V_BUSER USER 0 1 } } }
	u_adjs_data_V_offset { ap_none {  { u_adjs_data_V_offset in_data 0 25 } } }
}
set moduleName unite
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
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ num int 32 regular {axi_slave 0}  }
	{ u_adjs_data_V int 1024 regular {axi_master 0}  }
	{ u_adjs_data_V_offset int 25 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V", "interface" : "axi_master", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V_offset", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ m_axi_u_adjs_data_V_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WDATA sc_out sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_WSTRB sc_out sc_lv 128 signal 1 } 
	{ m_axi_u_adjs_data_V_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RDATA sc_in sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BUSER sc_in sc_lv 1 signal 1 } 
	{ u_adjs_data_V_offset sc_in sc_lv 25 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BUSER" }} , 
 	{ "name": "u_adjs_data_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "u_adjs_data_V_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unite",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_readItem0_fu_176"}],
		"Port" : [
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_readItem0_fu_176", "Port" : "adjs_data_V"}]},
			{"Name" : "u_adjs_data_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem0_fu_176", "Parent" : "0",
		"CDFG" : "readItem0",
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
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "adjs_data_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "adjs_data_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "adjs_data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pipe_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unite {
		num {Type I LastRead 0 FirstWrite -1}
		u_adjs_data_V {Type I LastRead 9 FirstWrite -1}
		u_adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}}
	readItem0 {
		num {Type I LastRead 0 FirstWrite -1}
		adjs_data_V {Type I LastRead 9 FirstWrite -1}
		adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	u_adjs_data_V { m_axi {  { m_axi_u_adjs_data_V_AWVALID VALID 1 1 }  { m_axi_u_adjs_data_V_AWREADY READY 0 1 }  { m_axi_u_adjs_data_V_AWADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_AWID ID 1 1 }  { m_axi_u_adjs_data_V_AWLEN LEN 1 32 }  { m_axi_u_adjs_data_V_AWSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_AWBURST BURST 1 2 }  { m_axi_u_adjs_data_V_AWLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_AWCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_AWPROT PROT 1 3 }  { m_axi_u_adjs_data_V_AWQOS QOS 1 4 }  { m_axi_u_adjs_data_V_AWREGION REGION 1 4 }  { m_axi_u_adjs_data_V_AWUSER USER 1 1 }  { m_axi_u_adjs_data_V_WVALID VALID 1 1 }  { m_axi_u_adjs_data_V_WREADY READY 0 1 }  { m_axi_u_adjs_data_V_WDATA DATA 1 1024 }  { m_axi_u_adjs_data_V_WSTRB STRB 1 128 }  { m_axi_u_adjs_data_V_WLAST LAST 1 1 }  { m_axi_u_adjs_data_V_WID ID 1 1 }  { m_axi_u_adjs_data_V_WUSER USER 1 1 }  { m_axi_u_adjs_data_V_ARVALID VALID 1 1 }  { m_axi_u_adjs_data_V_ARREADY READY 0 1 }  { m_axi_u_adjs_data_V_ARADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_ARID ID 1 1 }  { m_axi_u_adjs_data_V_ARLEN LEN 1 32 }  { m_axi_u_adjs_data_V_ARSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_ARBURST BURST 1 2 }  { m_axi_u_adjs_data_V_ARLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_ARCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_ARPROT PROT 1 3 }  { m_axi_u_adjs_data_V_ARQOS QOS 1 4 }  { m_axi_u_adjs_data_V_ARREGION REGION 1 4 }  { m_axi_u_adjs_data_V_ARUSER USER 1 1 }  { m_axi_u_adjs_data_V_RVALID VALID 0 1 }  { m_axi_u_adjs_data_V_RREADY READY 1 1 }  { m_axi_u_adjs_data_V_RDATA DATA 0 1024 }  { m_axi_u_adjs_data_V_RLAST LAST 0 1 }  { m_axi_u_adjs_data_V_RID ID 0 1 }  { m_axi_u_adjs_data_V_RUSER USER 0 1 }  { m_axi_u_adjs_data_V_RRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BVALID VALID 0 1 }  { m_axi_u_adjs_data_V_BREADY READY 1 1 }  { m_axi_u_adjs_data_V_BRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BID ID 0 1 }  { m_axi_u_adjs_data_V_BUSER USER 0 1 } } }
	u_adjs_data_V_offset { ap_none {  { u_adjs_data_V_offset in_data 0 25 } } }
}
set moduleName unite
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
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ num int 32 regular {axi_slave 0}  }
	{ u_adjs_data_V int 1024 regular {axi_master 0}  }
	{ u_adjs_data_V_offset int 25 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 32, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V", "interface" : "axi_master", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V_offset", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ m_axi_u_adjs_data_V_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WDATA sc_out sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_WSTRB sc_out sc_lv 128 signal 1 } 
	{ m_axi_u_adjs_data_V_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RDATA sc_in sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BUSER sc_in sc_lv 1 signal 1 } 
	{ u_adjs_data_V_offset sc_in sc_lv 25 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BUSER" }} , 
 	{ "name": "u_adjs_data_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "u_adjs_data_V_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "unite",
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
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_readItem0_fu_176"}],
		"Port" : [
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "1", "SubInstance" : "grp_readItem0_fu_176", "Port" : "adjs_data_V"}]},
			{"Name" : "u_adjs_data_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem0_fu_176", "Parent" : "0",
		"CDFG" : "readItem0",
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
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "adjs_data_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "adjs_data_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "adjs_data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pipe_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unite {
		num {Type I LastRead 0 FirstWrite -1}
		u_adjs_data_V {Type I LastRead 9 FirstWrite -1}
		u_adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}}
	readItem0 {
		num {Type I LastRead 0 FirstWrite -1}
		adjs_data_V {Type I LastRead 9 FirstWrite -1}
		adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "-1", "Max" : "-1"}
	, {"Name" : "Interval", "Min" : "-1", "Max" : "-1"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
	{"Pipeline" : "1", "EnableSignal" : "ap_enable_pp1"}
]}

set Spec2ImplPortList { 
	u_adjs_data_V { m_axi {  { m_axi_u_adjs_data_V_AWVALID VALID 1 1 }  { m_axi_u_adjs_data_V_AWREADY READY 0 1 }  { m_axi_u_adjs_data_V_AWADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_AWID ID 1 1 }  { m_axi_u_adjs_data_V_AWLEN LEN 1 32 }  { m_axi_u_adjs_data_V_AWSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_AWBURST BURST 1 2 }  { m_axi_u_adjs_data_V_AWLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_AWCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_AWPROT PROT 1 3 }  { m_axi_u_adjs_data_V_AWQOS QOS 1 4 }  { m_axi_u_adjs_data_V_AWREGION REGION 1 4 }  { m_axi_u_adjs_data_V_AWUSER USER 1 1 }  { m_axi_u_adjs_data_V_WVALID VALID 1 1 }  { m_axi_u_adjs_data_V_WREADY READY 0 1 }  { m_axi_u_adjs_data_V_WDATA DATA 1 1024 }  { m_axi_u_adjs_data_V_WSTRB STRB 1 128 }  { m_axi_u_adjs_data_V_WLAST LAST 1 1 }  { m_axi_u_adjs_data_V_WID ID 1 1 }  { m_axi_u_adjs_data_V_WUSER USER 1 1 }  { m_axi_u_adjs_data_V_ARVALID VALID 1 1 }  { m_axi_u_adjs_data_V_ARREADY READY 0 1 }  { m_axi_u_adjs_data_V_ARADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_ARID ID 1 1 }  { m_axi_u_adjs_data_V_ARLEN LEN 1 32 }  { m_axi_u_adjs_data_V_ARSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_ARBURST BURST 1 2 }  { m_axi_u_adjs_data_V_ARLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_ARCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_ARPROT PROT 1 3 }  { m_axi_u_adjs_data_V_ARQOS QOS 1 4 }  { m_axi_u_adjs_data_V_ARREGION REGION 1 4 }  { m_axi_u_adjs_data_V_ARUSER USER 1 1 }  { m_axi_u_adjs_data_V_RVALID VALID 0 1 }  { m_axi_u_adjs_data_V_RREADY READY 1 1 }  { m_axi_u_adjs_data_V_RDATA DATA 0 1024 }  { m_axi_u_adjs_data_V_RLAST LAST 0 1 }  { m_axi_u_adjs_data_V_RID ID 0 1 }  { m_axi_u_adjs_data_V_RUSER USER 0 1 }  { m_axi_u_adjs_data_V_RRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BVALID VALID 0 1 }  { m_axi_u_adjs_data_V_BREADY READY 1 1 }  { m_axi_u_adjs_data_V_BRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BID ID 0 1 }  { m_axi_u_adjs_data_V_BUSER USER 0 1 } } }
	u_adjs_data_V_offset { ap_none {  { u_adjs_data_V_offset in_data 0 25 } } }
}
set moduleName unite
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
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ num int 6 regular {axi_slave 0}  }
	{ u_adjs_data_V int 1024 regular {axi_master 0}  }
	{ u_adjs_data_V_offset int 25 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V", "interface" : "axi_master", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V_offset", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ m_axi_u_adjs_data_V_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WDATA sc_out sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_WSTRB sc_out sc_lv 128 signal 1 } 
	{ m_axi_u_adjs_data_V_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RDATA sc_in sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BUSER sc_in sc_lv 1 signal 1 } 
	{ u_adjs_data_V_offset sc_in sc_lv 25 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BUSER" }} , 
 	{ "name": "u_adjs_data_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "u_adjs_data_V_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "14347",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_readItem0_fu_144"}],
		"Port" : [
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_readItem0_fu_144", "Port" : "adjs_data_V"}]},
			{"Name" : "u_adjs_data_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_writeResult_fu_138", "Parent" : "0",
		"CDFG" : "writeResult",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "cnt_data_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem0_fu_144", "Parent" : "0",
		"CDFG" : "readItem0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "11265",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "adjs_data_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "adjs_data_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "adjs_data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pipe_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unite {
		num {Type I LastRead 0 FirstWrite -1}
		u_adjs_data_V {Type I LastRead 9 FirstWrite -1}
		u_adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}}
	writeResult {
		cnt_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem0 {
		num {Type I LastRead 0 FirstWrite -1}
		adjs_data_V {Type I LastRead 9 FirstWrite -1}
		adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "14347"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "14347"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	u_adjs_data_V { m_axi {  { m_axi_u_adjs_data_V_AWVALID VALID 1 1 }  { m_axi_u_adjs_data_V_AWREADY READY 0 1 }  { m_axi_u_adjs_data_V_AWADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_AWID ID 1 1 }  { m_axi_u_adjs_data_V_AWLEN LEN 1 32 }  { m_axi_u_adjs_data_V_AWSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_AWBURST BURST 1 2 }  { m_axi_u_adjs_data_V_AWLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_AWCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_AWPROT PROT 1 3 }  { m_axi_u_adjs_data_V_AWQOS QOS 1 4 }  { m_axi_u_adjs_data_V_AWREGION REGION 1 4 }  { m_axi_u_adjs_data_V_AWUSER USER 1 1 }  { m_axi_u_adjs_data_V_WVALID VALID 1 1 }  { m_axi_u_adjs_data_V_WREADY READY 0 1 }  { m_axi_u_adjs_data_V_WDATA DATA 1 1024 }  { m_axi_u_adjs_data_V_WSTRB STRB 1 128 }  { m_axi_u_adjs_data_V_WLAST LAST 1 1 }  { m_axi_u_adjs_data_V_WID ID 1 1 }  { m_axi_u_adjs_data_V_WUSER USER 1 1 }  { m_axi_u_adjs_data_V_ARVALID VALID 1 1 }  { m_axi_u_adjs_data_V_ARREADY READY 0 1 }  { m_axi_u_adjs_data_V_ARADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_ARID ID 1 1 }  { m_axi_u_adjs_data_V_ARLEN LEN 1 32 }  { m_axi_u_adjs_data_V_ARSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_ARBURST BURST 1 2 }  { m_axi_u_adjs_data_V_ARLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_ARCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_ARPROT PROT 1 3 }  { m_axi_u_adjs_data_V_ARQOS QOS 1 4 }  { m_axi_u_adjs_data_V_ARREGION REGION 1 4 }  { m_axi_u_adjs_data_V_ARUSER USER 1 1 }  { m_axi_u_adjs_data_V_RVALID VALID 0 1 }  { m_axi_u_adjs_data_V_RREADY READY 1 1 }  { m_axi_u_adjs_data_V_RDATA DATA 0 1024 }  { m_axi_u_adjs_data_V_RLAST LAST 0 1 }  { m_axi_u_adjs_data_V_RID ID 0 1 }  { m_axi_u_adjs_data_V_RUSER USER 0 1 }  { m_axi_u_adjs_data_V_RRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BVALID VALID 0 1 }  { m_axi_u_adjs_data_V_BREADY READY 1 1 }  { m_axi_u_adjs_data_V_BRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BID ID 0 1 }  { m_axi_u_adjs_data_V_BUSER USER 0 1 } } }
	u_adjs_data_V_offset { ap_none {  { u_adjs_data_V_offset in_data 0 25 } } }
}
set moduleName unite
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
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ num int 6 regular {axi_slave 0}  }
	{ u_adjs_data_V int 1024 regular {axi_master 0}  }
	{ u_adjs_data_V_offset int 25 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V", "interface" : "axi_master", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V_offset", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ m_axi_u_adjs_data_V_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WDATA sc_out sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_WSTRB sc_out sc_lv 128 signal 1 } 
	{ m_axi_u_adjs_data_V_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RDATA sc_in sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BUSER sc_in sc_lv 1 signal 1 } 
	{ u_adjs_data_V_offset sc_in sc_lv 25 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BUSER" }} , 
 	{ "name": "u_adjs_data_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "u_adjs_data_V_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "14347",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_readItem0_fu_144"}],
		"Port" : [
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_readItem0_fu_144", "Port" : "adjs_data_V"}]},
			{"Name" : "u_adjs_data_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_writeResult_fu_138", "Parent" : "0",
		"CDFG" : "writeResult",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "cnt_data_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItem0_fu_144", "Parent" : "0",
		"CDFG" : "readItem0",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "11265",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "adjs_data_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "adjs_data_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "adjs_data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pipe_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unite {
		num {Type I LastRead 0 FirstWrite -1}
		u_adjs_data_V {Type I LastRead 9 FirstWrite -1}
		u_adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}}
	writeResult {
		cnt_data_V {Type I LastRead 0 FirstWrite -1}}
	readItem0 {
		num {Type I LastRead 0 FirstWrite -1}
		adjs_data_V {Type I LastRead 9 FirstWrite -1}
		adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "14347"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "14347"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	u_adjs_data_V { m_axi {  { m_axi_u_adjs_data_V_AWVALID VALID 1 1 }  { m_axi_u_adjs_data_V_AWREADY READY 0 1 }  { m_axi_u_adjs_data_V_AWADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_AWID ID 1 1 }  { m_axi_u_adjs_data_V_AWLEN LEN 1 32 }  { m_axi_u_adjs_data_V_AWSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_AWBURST BURST 1 2 }  { m_axi_u_adjs_data_V_AWLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_AWCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_AWPROT PROT 1 3 }  { m_axi_u_adjs_data_V_AWQOS QOS 1 4 }  { m_axi_u_adjs_data_V_AWREGION REGION 1 4 }  { m_axi_u_adjs_data_V_AWUSER USER 1 1 }  { m_axi_u_adjs_data_V_WVALID VALID 1 1 }  { m_axi_u_adjs_data_V_WREADY READY 0 1 }  { m_axi_u_adjs_data_V_WDATA DATA 1 1024 }  { m_axi_u_adjs_data_V_WSTRB STRB 1 128 }  { m_axi_u_adjs_data_V_WLAST LAST 1 1 }  { m_axi_u_adjs_data_V_WID ID 1 1 }  { m_axi_u_adjs_data_V_WUSER USER 1 1 }  { m_axi_u_adjs_data_V_ARVALID VALID 1 1 }  { m_axi_u_adjs_data_V_ARREADY READY 0 1 }  { m_axi_u_adjs_data_V_ARADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_ARID ID 1 1 }  { m_axi_u_adjs_data_V_ARLEN LEN 1 32 }  { m_axi_u_adjs_data_V_ARSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_ARBURST BURST 1 2 }  { m_axi_u_adjs_data_V_ARLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_ARCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_ARPROT PROT 1 3 }  { m_axi_u_adjs_data_V_ARQOS QOS 1 4 }  { m_axi_u_adjs_data_V_ARREGION REGION 1 4 }  { m_axi_u_adjs_data_V_ARUSER USER 1 1 }  { m_axi_u_adjs_data_V_RVALID VALID 0 1 }  { m_axi_u_adjs_data_V_RREADY READY 1 1 }  { m_axi_u_adjs_data_V_RDATA DATA 0 1024 }  { m_axi_u_adjs_data_V_RLAST LAST 0 1 }  { m_axi_u_adjs_data_V_RID ID 0 1 }  { m_axi_u_adjs_data_V_RUSER USER 0 1 }  { m_axi_u_adjs_data_V_RRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BVALID VALID 0 1 }  { m_axi_u_adjs_data_V_BREADY READY 1 1 }  { m_axi_u_adjs_data_V_BRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BID ID 0 1 }  { m_axi_u_adjs_data_V_BUSER USER 0 1 } } }
	u_adjs_data_V_offset { ap_none {  { u_adjs_data_V_offset in_data 0 25 } } }
}
set moduleName unite
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
set C_modelName {unite}
set C_modelType { int 1024 }
set C_modelArgList {
	{ num int 6 regular {axi_slave 0}  }
	{ u_adjs_data_V int 1024 regular {axi_master 0}  }
	{ u_adjs_data_V_offset int 25 regular  }
}
set C_modelArgMapList {[ 
	{ "Name" : "num", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 6, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V", "interface" : "axi_master", "bitwidth" : 1024, "direction" : "READONLY"} , 
 	{ "Name" : "u_adjs_data_V_offset", "interface" : "wire", "bitwidth" : 25, "direction" : "READONLY"} , 
 	{ "Name" : "ap_return", "interface" : "axi_slave", "bundle":"","type":"ap_none","bitwidth" : 1024} ]}
# RTL Port declarations: 
set portNum 48
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ m_axi_u_adjs_data_V_AWVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_AWSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_AWCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_AWQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_AWUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WDATA sc_out sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_WSTRB sc_out sc_lv 128 signal 1 } 
	{ m_axi_u_adjs_data_V_WLAST sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_WUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARVALID sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREADY sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARADDR sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARID sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLEN sc_out sc_lv 32 signal 1 } 
	{ m_axi_u_adjs_data_V_ARSIZE sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARBURST sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARLOCK sc_out sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_ARCACHE sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARPROT sc_out sc_lv 3 signal 1 } 
	{ m_axi_u_adjs_data_V_ARQOS sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARREGION sc_out sc_lv 4 signal 1 } 
	{ m_axi_u_adjs_data_V_ARUSER sc_out sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RDATA sc_in sc_lv 1024 signal 1 } 
	{ m_axi_u_adjs_data_V_RLAST sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RUSER sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_RRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BVALID sc_in sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BREADY sc_out sc_logic 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BRESP sc_in sc_lv 2 signal 1 } 
	{ m_axi_u_adjs_data_V_BID sc_in sc_lv 1 signal 1 } 
	{ m_axi_u_adjs_data_V_BUSER sc_in sc_lv 1 signal 1 } 
	{ u_adjs_data_V_offset sc_in sc_lv 25 signal 2 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_AWUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "AWUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WDATA", "direction": "out", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WSTRB", "direction": "out", "datatype": "sc_lv", "bitwidth":128, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WSTRB" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WLAST", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_WUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "WUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARVALID", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREADY", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARADDR", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARADDR" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARID", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLEN", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLEN" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARSIZE", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARSIZE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARBURST", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARBURST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARLOCK", "direction": "out", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARLOCK" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARCACHE", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARCACHE" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARPROT", "direction": "out", "datatype": "sc_lv", "bitwidth":3, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARPROT" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARQOS", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARQOS" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARREGION", "direction": "out", "datatype": "sc_lv", "bitwidth":4, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARREGION" }} , 
 	{ "name": "m_axi_u_adjs_data_V_ARUSER", "direction": "out", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "ARUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RDATA", "direction": "in", "datatype": "sc_lv", "bitwidth":1024, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RDATA" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RLAST", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RLAST" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RUSER" }} , 
 	{ "name": "m_axi_u_adjs_data_V_RRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "RRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BVALID", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BVALID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BREADY", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BREADY" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BRESP", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BRESP" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BID", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BID" }} , 
 	{ "name": "m_axi_u_adjs_data_V_BUSER", "direction": "in", "datatype": "sc_lv", "bitwidth":1, "type": "signal", "bundle":{"name": "u_adjs_data_V", "role": "BUSER" }} , 
 	{ "name": "u_adjs_data_V_offset", "direction": "in", "datatype": "sc_lv", "bitwidth":25, "type": "signal", "bundle":{"name": "u_adjs_data_V_offset", "role": "default" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3"],
		"CDFG" : "unite",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "11", "EstimateLatencyMax" : "14347",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"WaitState" : [
			{"State" : "ap_ST_fsm_state2", "FSM" : "ap_CS_fsm", "SubInstance" : "grp_readItems_fu_144"}],
		"Port" : [
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "u_adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"SubConnect" : [
					{"ID" : "2", "SubInstance" : "grp_readItems_fu_144", "Port" : "adjs_data_V"}]},
			{"Name" : "u_adjs_data_V_offset", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_writeResult_fu_138", "Parent" : "0",
		"CDFG" : "writeResult",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "0", "ap_start" : "0", "ap_ready" : "0", "ap_done" : "0", "ap_continue" : "0", "ap_idle" : "0",
		"Pipeline" : "Aligned", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "1",
		"VariableLatency" : "0", "ExactLatency" : "7", "EstimateLatencyMin" : "7", "EstimateLatencyMax" : "7",
		"Combinational" : "0",
		"Datapath" : "1",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "cnt_data_V", "Type" : "None", "Direction" : "I"}]},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.grp_readItems_fu_144", "Parent" : "0",
		"CDFG" : "readItems",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "1", "EstimateLatencyMax" : "11265",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "num", "Type" : "None", "Direction" : "I"},
			{"Name" : "adjs_data_V", "Type" : "MAXI", "Direction" : "I",
				"BlockSignal" : [
					{"Name" : "adjs_data_V_blk_n_AR", "Type" : "RtlSignal"},
					{"Name" : "adjs_data_V_blk_n_R", "Type" : "RtlSignal"}]},
			{"Name" : "adjs_data_V_offset", "Type" : "None", "Direction" : "I"},
			{"Name" : "i_out_stream_V", "Type" : "Fifo", "Direction" : "O",
				"BlockSignal" : [
					{"Name" : "i_out_stream_V_blk_n", "Type" : "RtlSignal"}]}]},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.pipe_stream_V_fifo_U", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	unite {
		num {Type I LastRead 0 FirstWrite -1}
		u_adjs_data_V {Type I LastRead 9 FirstWrite -1}
		u_adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}}
	writeResult {
		cnt_data_V {Type I LastRead 0 FirstWrite -1}}
	readItems {
		num {Type I LastRead 0 FirstWrite -1}
		adjs_data_V {Type I LastRead 9 FirstWrite -1}
		adjs_data_V_offset {Type I LastRead 0 FirstWrite -1}
		i_out_stream_V {Type O LastRead -1 FirstWrite 11}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "11", "Max" : "14347"}
	, {"Name" : "Interval", "Min" : "11", "Max" : "14347"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	u_adjs_data_V { m_axi {  { m_axi_u_adjs_data_V_AWVALID VALID 1 1 }  { m_axi_u_adjs_data_V_AWREADY READY 0 1 }  { m_axi_u_adjs_data_V_AWADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_AWID ID 1 1 }  { m_axi_u_adjs_data_V_AWLEN LEN 1 32 }  { m_axi_u_adjs_data_V_AWSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_AWBURST BURST 1 2 }  { m_axi_u_adjs_data_V_AWLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_AWCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_AWPROT PROT 1 3 }  { m_axi_u_adjs_data_V_AWQOS QOS 1 4 }  { m_axi_u_adjs_data_V_AWREGION REGION 1 4 }  { m_axi_u_adjs_data_V_AWUSER USER 1 1 }  { m_axi_u_adjs_data_V_WVALID VALID 1 1 }  { m_axi_u_adjs_data_V_WREADY READY 0 1 }  { m_axi_u_adjs_data_V_WDATA DATA 1 1024 }  { m_axi_u_adjs_data_V_WSTRB STRB 1 128 }  { m_axi_u_adjs_data_V_WLAST LAST 1 1 }  { m_axi_u_adjs_data_V_WID ID 1 1 }  { m_axi_u_adjs_data_V_WUSER USER 1 1 }  { m_axi_u_adjs_data_V_ARVALID VALID 1 1 }  { m_axi_u_adjs_data_V_ARREADY READY 0 1 }  { m_axi_u_adjs_data_V_ARADDR ADDR 1 32 }  { m_axi_u_adjs_data_V_ARID ID 1 1 }  { m_axi_u_adjs_data_V_ARLEN LEN 1 32 }  { m_axi_u_adjs_data_V_ARSIZE SIZE 1 3 }  { m_axi_u_adjs_data_V_ARBURST BURST 1 2 }  { m_axi_u_adjs_data_V_ARLOCK LOCK 1 2 }  { m_axi_u_adjs_data_V_ARCACHE CACHE 1 4 }  { m_axi_u_adjs_data_V_ARPROT PROT 1 3 }  { m_axi_u_adjs_data_V_ARQOS QOS 1 4 }  { m_axi_u_adjs_data_V_ARREGION REGION 1 4 }  { m_axi_u_adjs_data_V_ARUSER USER 1 1 }  { m_axi_u_adjs_data_V_RVALID VALID 0 1 }  { m_axi_u_adjs_data_V_RREADY READY 1 1 }  { m_axi_u_adjs_data_V_RDATA DATA 0 1024 }  { m_axi_u_adjs_data_V_RLAST LAST 0 1 }  { m_axi_u_adjs_data_V_RID ID 0 1 }  { m_axi_u_adjs_data_V_RUSER USER 0 1 }  { m_axi_u_adjs_data_V_RRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BVALID VALID 0 1 }  { m_axi_u_adjs_data_V_BREADY READY 1 1 }  { m_axi_u_adjs_data_V_BRESP RESP 0 2 }  { m_axi_u_adjs_data_V_BID ID 0 1 }  { m_axi_u_adjs_data_V_BUSER USER 0 1 } } }
	u_adjs_data_V_offset { ap_none {  { u_adjs_data_V_offset in_data 0 25 } } }
}
