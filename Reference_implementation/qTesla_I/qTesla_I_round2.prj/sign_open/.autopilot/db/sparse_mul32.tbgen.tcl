set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_jbC_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_kbM_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 mem_address 1 9 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_g8j_U42", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_hbi_U43", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 mem_address 1 9 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_jbC_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_kbM_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 mem_address 1 9 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_jbC_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_kbM_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 mem_address 1 9 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_jbC_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_kbM_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 mem_address 1 9 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_jbC_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_kbM_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 mem_address 1 9 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_jbC_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_kbM_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 mem_address 1 9 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_jbC_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_kbM_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 mem_address 1 9 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_jbC_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_kbM_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 mem_address 1 9 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_jbC_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_kbM_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 mem_address 1 9 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_jbC_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_kbM_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 mem_address 1 9 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_jbC_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_kbM_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 mem_address 1 9 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_jbC_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_kbM_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 mem_address 1 9 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_jbC_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_kbM_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 mem_address 1 9 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_jbC_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_kbM_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 mem_address 1 9 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_jbC_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_kbM_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 mem_address 1 9 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U43", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31294", "EstimateLatencyMax" : "31294",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U41", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 5 FirstWrite 1}
		pk {Type I LastRead 6 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "31294", "Max" : "31294"}
	, {"Name" : "Interval", "Min" : "31294", "Max" : "31294"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23614", "EstimateLatencyMax" : "23614",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U45", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 7 FirstWrite 1}
		pk {Type I LastRead 8 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "23614", "Max" : "23614"}
	, {"Name" : "Interval", "Min" : "23614", "Max" : "23614"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19774", "EstimateLatencyMax" : "19774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U53", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 9 FirstWrite 1}
		pk {Type I LastRead 12 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19774", "Max" : "19774"}
	, {"Name" : "Interval", "Min" : "19774", "Max" : "19774"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17854", "EstimateLatencyMax" : "17854",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U53", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U54", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U55", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U56", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U57", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U58", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U59", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U60", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U61", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U62", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U63", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U64", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U65", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U66", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U67", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U68", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U69", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 13 FirstWrite 1}
		pk {Type I LastRead 20 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17854", "Max" : "17854"}
	, {"Name" : "Interval", "Min" : "17854", "Max" : "17854"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16894", "EstimateLatencyMax" : "16894",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U53", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U54", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U55", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U56", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U57", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U58", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U59", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U60", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U61", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U62", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U63", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U64", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U65", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U66", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U67", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U68", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U69", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U70", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U71", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U72", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U73", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U74", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U75", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U76", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U77", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U78", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U79", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U80", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U81", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U82", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U83", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U84", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U85", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U86", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U87", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U88", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U89", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U90", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U91", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U92", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U93", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U94", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U95", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U96", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U97", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U98", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U99", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U100", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U101", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 21 FirstWrite 1}
		pk {Type I LastRead 36 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16894", "Max" : "16894"}
	, {"Name" : "Interval", "Min" : "16894", "Max" : "16894"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16414", "EstimateLatencyMax" : "16414",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U53", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U54", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U55", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U56", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U57", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U58", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U59", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U60", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U61", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U62", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U63", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U64", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U65", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U66", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U67", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U68", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U69", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U70", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U71", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U72", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U73", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U74", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U75", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U76", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U77", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U78", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U79", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U80", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U81", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U82", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U83", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U84", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U85", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U86", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U87", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U88", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U89", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U90", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U91", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U92", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U93", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U94", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U95", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U96", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U97", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U98", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U99", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U100", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U101", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U102", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U103", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U104", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U105", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U106", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U107", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U108", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U109", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U110", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U111", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U112", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U113", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U114", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U115", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U116", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U117", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U118", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U119", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U120", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U121", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U122", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U123", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U124", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U125", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U126", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U127", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U128", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U129", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U130", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U131", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U132", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U133", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U134", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U135", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U136", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U137", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U138", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U139", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U140", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U141", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U142", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U143", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U144", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U145", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U146", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U147", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U148", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U149", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U150", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U151", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U152", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U153", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U154", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U155", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U156", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U157", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U158", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U159", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U160", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U161", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U162", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U163", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U164", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U165", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 37 FirstWrite 1}
		pk {Type I LastRead 68 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16414", "Max" : "16414"}
	, {"Name" : "Interval", "Min" : "16414", "Max" : "16414"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16174", "EstimateLatencyMax" : "16174",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U53", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U54", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U55", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U56", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U57", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U58", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U59", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U60", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U61", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U62", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U63", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U64", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U65", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U66", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U67", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U68", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U69", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U70", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U71", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U72", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U73", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U74", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U75", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U76", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U77", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U78", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U79", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U80", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U81", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U82", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U83", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U84", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U85", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U86", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U87", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U88", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U89", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U90", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U91", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U92", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U93", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U94", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U95", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U96", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U97", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U98", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U99", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U100", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U101", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U102", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U103", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U104", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U105", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U106", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U107", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U108", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U109", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U110", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U111", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U112", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U113", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U114", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U115", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U116", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U117", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U118", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U119", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U120", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U121", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U122", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U123", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U124", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U125", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U126", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U127", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U128", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U129", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U130", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U131", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U132", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U133", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U134", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U135", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U136", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U137", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U138", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U139", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U140", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U141", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U142", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U143", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U144", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U145", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U146", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U147", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U148", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U149", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U150", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U151", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U152", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U153", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U154", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U155", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U156", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U157", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U158", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U159", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U160", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U161", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U162", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U163", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U164", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U165", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U166", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U167", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U168", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U169", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U170", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U171", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U172", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U173", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U174", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U175", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U176", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U177", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U178", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U179", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U180", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U181", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U182", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U183", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U184", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U185", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U186", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U187", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U188", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U189", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U190", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U191", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U192", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U193", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U194", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U195", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U196", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U197", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U198", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U199", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U200", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U201", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U202", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U203", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U204", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U205", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U206", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U207", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U208", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U209", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U210", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U211", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U212", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U213", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U214", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U215", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U216", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U217", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U218", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U219", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U220", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U221", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U222", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U223", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U224", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U225", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U226", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U227", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U228", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U229", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U230", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U231", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U232", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U233", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U234", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U235", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U236", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U237", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U238", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U239", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U240", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U241", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U242", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U243", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U244", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U245", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U246", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U247", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U248", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U249", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U250", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U251", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U252", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U253", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U254", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U255", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U256", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U257", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U258", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U259", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U260", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U261", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U262", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U263", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U264", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U265", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U266", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U267", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U268", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U269", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U270", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U271", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U272", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U273", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U274", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U275", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U276", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U277", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U278", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U279", "Parent" : "0"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U280", "Parent" : "0"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U281", "Parent" : "0"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U282", "Parent" : "0"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U283", "Parent" : "0"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U284", "Parent" : "0"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U285", "Parent" : "0"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U286", "Parent" : "0"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U287", "Parent" : "0"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U288", "Parent" : "0"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U289", "Parent" : "0"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U290", "Parent" : "0"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U291", "Parent" : "0"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U292", "Parent" : "0"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U293", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 69 FirstWrite 1}
		pk {Type I LastRead 132 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16174", "Max" : "16174"}
	, {"Name" : "Interval", "Min" : "16174", "Max" : "16174"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 0 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15876", "EstimateLatencyMax" : "15876",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 3 FirstWrite 1}
		pk {Type I LastRead 4 FirstWrite -1}
		pos_list {Type I LastRead 2 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15876", "Max" : "15876"}
	, {"Name" : "Interval", "Min" : "15876", "Max" : "15876"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15876", "EstimateLatencyMax" : "15876",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U41", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 2 FirstWrite -1}
		sign_list {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15876", "Max" : "15876"}
	, {"Name" : "Interval", "Min" : "15876", "Max" : "15876"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15878", "EstimateLatencyMax" : "15878",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U45", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 7 FirstWrite -1}
		pos_list {Type I LastRead 2 FirstWrite -1}
		sign_list {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15878", "Max" : "15878"}
	, {"Name" : "Interval", "Min" : "15878", "Max" : "15878"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15882", "EstimateLatencyMax" : "15882",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U53", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 6 FirstWrite 1}
		pk {Type I LastRead 11 FirstWrite -1}
		pos_list {Type I LastRead 2 FirstWrite -1}
		sign_list {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15882", "Max" : "15882"}
	, {"Name" : "Interval", "Min" : "15882", "Max" : "15882"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15890", "EstimateLatencyMax" : "15890",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U53", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U54", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U55", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U56", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U57", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U58", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U59", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U60", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U61", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U62", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U63", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U64", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U65", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U66", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U67", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U68", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U69", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 10 FirstWrite 1}
		pk {Type I LastRead 19 FirstWrite -1}
		pos_list {Type I LastRead 2 FirstWrite -1}
		sign_list {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15890", "Max" : "15890"}
	, {"Name" : "Interval", "Min" : "15890", "Max" : "15890"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15906", "EstimateLatencyMax" : "15906",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U53", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U54", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U55", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U56", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U57", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U58", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U59", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U60", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U61", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U62", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U63", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U64", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U65", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U66", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U67", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U68", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U69", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U70", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U71", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U72", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U73", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U74", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U75", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U76", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U77", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U78", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U79", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U80", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U81", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U82", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U83", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U84", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U85", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U86", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U87", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U88", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U89", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U90", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U91", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U92", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U93", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U94", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U95", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U96", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U97", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U98", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U99", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U100", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U101", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 18 FirstWrite 1}
		pk {Type I LastRead 35 FirstWrite -1}
		pos_list {Type I LastRead 2 FirstWrite -1}
		sign_list {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15906", "Max" : "15906"}
	, {"Name" : "Interval", "Min" : "15906", "Max" : "15906"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15938", "EstimateLatencyMax" : "15938",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U53", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U54", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U55", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U56", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U57", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U58", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U59", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U60", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U61", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U62", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U63", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U64", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U65", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U66", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U67", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U68", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U69", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U70", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U71", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U72", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U73", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U74", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U75", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U76", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U77", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U78", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U79", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U80", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U81", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U82", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U83", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U84", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U85", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U86", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U87", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U88", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U89", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U90", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U91", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U92", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U93", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U94", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U95", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U96", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U97", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U98", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U99", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U100", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U101", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U102", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U103", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U104", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U105", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U106", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U107", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U108", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U109", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U110", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U111", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U112", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U113", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U114", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U115", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U116", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U117", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U118", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U119", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U120", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U121", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U122", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U123", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U124", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U125", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U126", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U127", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U128", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U129", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U130", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U131", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U132", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U133", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U134", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U135", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U136", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U137", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U138", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U139", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U140", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U141", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U142", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U143", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U144", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U145", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U146", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U147", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U148", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U149", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U150", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U151", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U152", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U153", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U154", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U155", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U156", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U157", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U158", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U159", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U160", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U161", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U162", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U163", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U164", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U165", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 34 FirstWrite 1}
		pk {Type I LastRead 67 FirstWrite -1}
		pos_list {Type I LastRead 2 FirstWrite -1}
		sign_list {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15938", "Max" : "15938"}
	, {"Name" : "Interval", "Min" : "15938", "Max" : "15938"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16002", "EstimateLatencyMax" : "16002",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U53", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U54", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U55", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U56", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U57", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U58", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U59", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U60", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U61", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U62", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U63", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U64", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U65", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U66", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U67", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U68", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U69", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U70", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U71", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U72", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U73", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U74", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U75", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U76", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U77", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U78", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U79", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U80", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U81", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U82", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U83", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U84", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U85", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U86", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U87", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U88", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U89", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U90", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U91", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U92", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U93", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U94", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U95", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U96", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U97", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U98", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U99", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U100", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U101", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U102", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U103", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U104", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U105", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U106", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U107", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U108", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U109", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U110", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U111", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U112", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U113", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U114", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U115", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U116", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U117", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U118", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U119", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U120", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U121", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U122", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U123", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U124", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U125", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U126", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U127", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U128", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U129", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U130", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U131", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U132", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U133", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U134", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U135", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U136", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U137", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U138", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U139", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U140", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U141", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U142", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U143", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U144", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U145", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U146", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U147", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U148", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U149", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U150", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U151", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U152", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U153", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U154", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U155", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U156", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U157", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U158", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U159", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U160", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U161", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U162", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U163", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U164", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U165", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U166", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U167", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U168", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U169", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U170", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U171", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U172", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U173", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U174", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U175", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U176", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U177", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U178", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U179", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U180", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U181", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U182", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U183", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U184", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U185", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U186", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U187", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U188", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U189", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U190", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U191", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U192", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U193", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U194", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U195", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U196", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U197", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U198", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U199", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U200", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U201", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U202", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U203", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U204", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U205", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U206", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U207", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U208", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U209", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U210", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U211", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U212", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U213", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U214", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U215", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U216", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U217", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U218", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U219", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U220", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U221", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U222", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U223", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U224", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U225", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U226", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U227", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U228", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U229", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U230", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U231", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U232", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U233", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U234", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U235", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U236", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U237", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U238", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U239", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U240", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U241", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U242", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U243", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U244", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U245", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U246", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U247", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U248", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U249", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U250", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U251", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U252", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U253", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U254", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U255", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U256", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U257", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U258", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U259", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U260", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U261", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U262", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U263", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U264", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U265", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U266", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U267", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U268", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U269", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U270", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U271", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U272", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U273", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U274", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U275", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U276", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U277", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U278", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U279", "Parent" : "0"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U280", "Parent" : "0"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U281", "Parent" : "0"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U282", "Parent" : "0"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U283", "Parent" : "0"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U284", "Parent" : "0"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U285", "Parent" : "0"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U286", "Parent" : "0"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U287", "Parent" : "0"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U288", "Parent" : "0"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U289", "Parent" : "0"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U290", "Parent" : "0"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U291", "Parent" : "0"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U292", "Parent" : "0"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U293", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 66 FirstWrite 1}
		pk {Type I LastRead 131 FirstWrite -1}
		pos_list {Type I LastRead 2 FirstWrite -1}
		sign_list {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16002", "Max" : "16002"}
	, {"Name" : "Interval", "Min" : "16002", "Max" : "16002"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U43", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 3 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 23
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "46654", "EstimateLatencyMax" : "46654",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "46654", "Max" : "46654"}
	, {"Name" : "Interval", "Min" : "46654", "Max" : "46654"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "31294", "EstimateLatencyMax" : "31294",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U41", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 5 FirstWrite 1}
		pk {Type I LastRead 6 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "31294", "Max" : "31294"}
	, {"Name" : "Interval", "Min" : "31294", "Max" : "31294"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "23614", "EstimateLatencyMax" : "23614",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U45", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 7 FirstWrite 1}
		pk {Type I LastRead 8 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "23614", "Max" : "23614"}
	, {"Name" : "Interval", "Min" : "23614", "Max" : "23614"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "19774", "EstimateLatencyMax" : "19774",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U53", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 9 FirstWrite 1}
		pk {Type I LastRead 12 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "19774", "Max" : "19774"}
	, {"Name" : "Interval", "Min" : "19774", "Max" : "19774"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "17854", "EstimateLatencyMax" : "17854",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U53", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U54", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U55", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U56", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U57", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U58", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U59", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U60", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U61", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U62", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U63", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U64", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U65", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U66", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U67", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U68", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U69", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 13 FirstWrite 1}
		pk {Type I LastRead 20 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "17854", "Max" : "17854"}
	, {"Name" : "Interval", "Min" : "17854", "Max" : "17854"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16894", "EstimateLatencyMax" : "16894",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U53", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U54", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U55", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U56", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U57", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U58", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U59", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U60", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U61", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U62", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U63", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U64", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U65", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U66", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U67", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U68", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U69", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U70", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U71", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U72", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U73", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U74", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U75", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U76", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U77", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U78", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U79", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U80", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U81", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U82", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U83", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U84", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U85", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U86", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U87", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U88", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U89", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U90", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U91", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U92", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U93", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U94", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U95", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U96", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U97", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U98", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U99", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U100", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U101", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 21 FirstWrite 1}
		pk {Type I LastRead 36 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16894", "Max" : "16894"}
	, {"Name" : "Interval", "Min" : "16894", "Max" : "16894"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16414", "EstimateLatencyMax" : "16414",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U53", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U54", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U55", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U56", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U57", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U58", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U59", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U60", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U61", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U62", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U63", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U64", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U65", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U66", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U67", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U68", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U69", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U70", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U71", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U72", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U73", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U74", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U75", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U76", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U77", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U78", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U79", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U80", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U81", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U82", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U83", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U84", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U85", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U86", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U87", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U88", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U89", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U90", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U91", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U92", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U93", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U94", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U95", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U96", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U97", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U98", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U99", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U100", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U101", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U102", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U103", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U104", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U105", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U106", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U107", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U108", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U109", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U110", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U111", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U112", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U113", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U114", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U115", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U116", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U117", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U118", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U119", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U120", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U121", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U122", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U123", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U124", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U125", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U126", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U127", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U128", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U129", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U130", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U131", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U132", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U133", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U134", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U135", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U136", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U137", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U138", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U139", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U140", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U141", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U142", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U143", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U144", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U145", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U146", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U147", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U148", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U149", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U150", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U151", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U152", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U153", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U154", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U155", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U156", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U157", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U158", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U159", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U160", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U161", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U162", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U163", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U164", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U165", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 37 FirstWrite 1}
		pk {Type I LastRead 68 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16414", "Max" : "16414"}
	, {"Name" : "Interval", "Min" : "16414", "Max" : "16414"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16174", "EstimateLatencyMax" : "16174",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U53", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U54", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U55", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U56", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U57", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U58", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U59", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U60", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U61", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U62", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U63", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U64", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U65", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U66", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U67", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U68", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U69", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U70", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U71", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U72", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U73", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U74", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U75", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U76", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U77", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U78", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U79", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U80", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U81", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U82", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U83", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U84", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U85", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U86", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U87", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U88", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U89", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U90", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U91", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U92", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U93", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U94", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U95", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U96", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U97", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U98", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U99", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U100", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U101", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U102", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U103", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U104", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U105", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U106", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U107", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U108", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U109", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U110", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U111", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U112", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U113", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U114", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U115", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U116", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U117", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U118", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U119", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U120", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U121", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U122", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U123", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U124", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U125", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U126", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U127", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U128", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U129", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U130", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U131", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U132", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U133", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U134", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U135", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U136", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U137", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U138", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U139", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U140", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U141", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U142", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U143", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U144", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U145", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U146", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U147", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U148", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U149", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U150", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U151", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U152", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U153", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U154", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U155", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U156", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U157", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U158", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U159", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U160", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U161", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U162", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U163", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U164", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U165", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U166", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U167", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U168", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U169", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U170", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U171", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U172", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U173", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U174", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U175", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U176", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U177", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U178", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U179", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U180", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U181", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U182", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U183", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U184", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U185", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U186", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U187", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U188", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U189", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U190", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U191", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U192", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U193", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U194", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U195", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U196", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U197", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U198", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U199", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U200", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U201", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U202", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U203", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U204", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U205", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U206", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U207", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U208", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U209", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U210", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U211", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U212", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U213", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U214", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U215", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U216", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U217", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U218", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U219", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U220", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U221", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U222", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U223", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U224", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U225", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U226", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U227", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U228", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U229", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U230", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U231", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U232", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U233", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U234", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U235", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U236", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U237", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U238", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U239", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U240", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U241", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U242", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U243", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U244", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U245", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U246", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U247", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U248", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U249", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U250", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U251", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U252", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U253", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U254", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U255", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U256", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U257", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U258", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U259", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U260", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U261", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U262", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U263", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U264", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U265", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U266", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U267", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U268", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U269", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U270", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U271", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U272", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U273", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U274", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U275", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U276", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U277", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U278", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U279", "Parent" : "0"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U280", "Parent" : "0"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U281", "Parent" : "0"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U282", "Parent" : "0"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U283", "Parent" : "0"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U284", "Parent" : "0"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U285", "Parent" : "0"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U286", "Parent" : "0"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U287", "Parent" : "0"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U288", "Parent" : "0"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U289", "Parent" : "0"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U290", "Parent" : "0"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U291", "Parent" : "0"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_23ns_2s_32ns_32_1_1_U292", "Parent" : "0"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_23ns_2s_32ns_32_1_1_U293", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 69 FirstWrite 1}
		pk {Type I LastRead 132 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16174", "Max" : "16174"}
	, {"Name" : "Interval", "Min" : "16174", "Max" : "16174"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 0 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 27
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15876", "EstimateLatencyMax" : "15876",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 3 FirstWrite 1}
		pk {Type I LastRead 4 FirstWrite -1}
		pos_list {Type I LastRead 2 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15876", "Max" : "15876"}
	, {"Name" : "Interval", "Min" : "15876", "Max" : "15876"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15876", "EstimateLatencyMax" : "15876",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U41", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 2 FirstWrite -1}
		sign_list {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15876", "Max" : "15876"}
	, {"Name" : "Interval", "Min" : "15876", "Max" : "15876"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15878", "EstimateLatencyMax" : "15878",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U45", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 4 FirstWrite 1}
		pk {Type I LastRead 7 FirstWrite -1}
		pos_list {Type I LastRead 2 FirstWrite -1}
		sign_list {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15878", "Max" : "15878"}
	, {"Name" : "Interval", "Min" : "15878", "Max" : "15878"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15882", "EstimateLatencyMax" : "15882",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U53", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 6 FirstWrite 1}
		pk {Type I LastRead 11 FirstWrite -1}
		pos_list {Type I LastRead 2 FirstWrite -1}
		sign_list {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15882", "Max" : "15882"}
	, {"Name" : "Interval", "Min" : "15882", "Max" : "15882"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15890", "EstimateLatencyMax" : "15890",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U53", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U54", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U55", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U56", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U57", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U58", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U59", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U60", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U61", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U62", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U63", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U64", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U65", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U66", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U67", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U68", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U69", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 10 FirstWrite 1}
		pk {Type I LastRead 19 FirstWrite -1}
		pos_list {Type I LastRead 2 FirstWrite -1}
		sign_list {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15890", "Max" : "15890"}
	, {"Name" : "Interval", "Min" : "15890", "Max" : "15890"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15906", "EstimateLatencyMax" : "15906",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U53", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U54", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U55", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U56", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U57", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U58", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U59", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U60", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U61", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U62", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U63", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U64", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U65", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U66", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U67", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U68", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U69", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U70", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U71", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U72", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U73", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U74", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U75", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U76", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U77", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U78", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U79", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U80", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U81", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U82", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U83", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U84", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U85", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U86", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U87", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U88", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U89", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U90", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U91", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U92", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U93", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U94", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U95", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U96", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U97", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U98", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U99", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U100", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U101", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 18 FirstWrite 1}
		pk {Type I LastRead 35 FirstWrite -1}
		pos_list {Type I LastRead 2 FirstWrite -1}
		sign_list {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15906", "Max" : "15906"}
	, {"Name" : "Interval", "Min" : "15906", "Max" : "15906"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "15938", "EstimateLatencyMax" : "15938",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U53", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U54", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U55", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U56", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U57", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U58", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U59", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U60", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U61", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U62", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U63", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U64", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U65", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U66", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U67", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U68", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U69", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U70", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U71", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U72", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U73", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U74", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U75", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U76", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U77", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U78", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U79", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U80", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U81", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U82", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U83", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U84", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U85", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U86", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U87", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U88", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U89", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U90", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U91", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U92", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U93", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U94", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U95", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U96", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U97", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U98", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U99", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U100", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U101", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U102", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U103", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U104", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U105", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U106", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U107", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U108", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U109", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U110", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U111", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U112", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U113", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U114", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U115", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U116", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U117", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U118", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U119", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U120", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U121", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U122", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U123", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U124", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U125", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U126", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U127", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U128", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U129", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U130", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U131", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U132", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U133", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U134", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U135", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U136", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U137", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U138", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U139", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U140", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U141", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U142", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U143", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U144", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U145", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U146", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U147", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U148", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U149", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U150", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U151", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U152", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U153", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U154", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U155", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U156", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U157", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U158", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U159", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U160", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U161", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U162", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U163", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U164", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U165", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 34 FirstWrite 1}
		pk {Type I LastRead 67 FirstWrite -1}
		pos_list {Type I LastRead 2 FirstWrite -1}
		sign_list {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "15938", "Max" : "15938"}
	, {"Name" : "Interval", "Min" : "15938", "Max" : "15938"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
set moduleName sparse_mul32
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
set C_modelName {sparse_mul32}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 512 { 2 2 } 1 1 }  }
	{ pk int 23 regular {array 512 { 1 1 } 1 1 }  }
	{ pos_list int 9 regular {array 30 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 30 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "pk", "interface" : "memory", "bitwidth" : 23, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "sign_list", "interface" : "memory", "bitwidth" : 2, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 28
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ prod_address0 sc_out sc_lv 9 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ prod_address1 sc_out sc_lv 9 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
	{ pk_address0 sc_out sc_lv 9 signal 1 } 
	{ pk_ce0 sc_out sc_logic 1 signal 1 } 
	{ pk_q0 sc_in sc_lv 23 signal 1 } 
	{ pk_address1 sc_out sc_lv 9 signal 1 } 
	{ pk_ce1 sc_out sc_logic 1 signal 1 } 
	{ pk_q1 sc_in sc_lv 23 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 5 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 9 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 5 signal 3 } 
	{ sign_list_ce0 sc_out sc_logic 1 signal 3 } 
	{ sign_list_q0 sc_in sc_lv 2 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
 	{ "name": "pk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address0" }} , 
 	{ "name": "pk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce0" }} , 
 	{ "name": "pk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q0" }} , 
 	{ "name": "pk_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pk", "role": "address1" }} , 
 	{ "name": "pk_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pk", "role": "ce1" }} , 
 	{ "name": "pk_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":23, "type": "signal", "bundle":{"name": "pk", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":5, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52", "53", "54", "55", "56", "57", "58", "59", "60", "61", "62", "63", "64", "65", "66", "67", "68", "69", "70", "71", "72", "73", "74", "75", "76", "77", "78", "79", "80", "81", "82", "83", "84", "85", "86", "87", "88", "89", "90", "91", "92", "93", "94", "95", "96", "97", "98", "99", "100", "101", "102", "103", "104", "105", "106", "107", "108", "109", "110", "111", "112", "113", "114", "115", "116", "117", "118", "119", "120", "121", "122", "123", "124", "125", "126", "127", "128", "129", "130", "131", "132", "133", "134", "135", "136", "137", "138", "139", "140", "141", "142", "143", "144", "145", "146", "147", "148", "149", "150", "151", "152", "153", "154", "155", "156", "157", "158", "159", "160", "161", "162", "163", "164", "165", "166", "167", "168", "169", "170", "171", "172", "173", "174", "175", "176", "177", "178", "179", "180", "181", "182", "183", "184", "185", "186", "187", "188", "189", "190", "191", "192", "193", "194", "195", "196", "197", "198", "199", "200", "201", "202", "203", "204", "205", "206", "207", "208", "209", "210", "211", "212", "213", "214", "215", "216", "217", "218", "219", "220", "221", "222", "223", "224", "225", "226", "227", "228", "229", "230", "231", "232", "233", "234", "235", "236", "237", "238", "239", "240", "241", "242", "243", "244", "245", "246", "247", "248", "249", "250", "251", "252", "253", "254", "255", "256"],
		"CDFG" : "sparse_mul32",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "16002", "EstimateLatencyMax" : "16002",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "pk", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U39", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U40", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U41", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U42", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U43", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U44", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U45", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U46", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U47", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U48", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U49", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U50", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U51", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U52", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U53", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U54", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U55", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U56", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U57", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U58", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U59", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U60", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U61", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U62", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U63", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U64", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U65", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U66", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U67", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U68", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U69", "Parent" : "0"},
	{"ID" : "33", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U70", "Parent" : "0"},
	{"ID" : "34", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U71", "Parent" : "0"},
	{"ID" : "35", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U72", "Parent" : "0"},
	{"ID" : "36", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U73", "Parent" : "0"},
	{"ID" : "37", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U74", "Parent" : "0"},
	{"ID" : "38", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U75", "Parent" : "0"},
	{"ID" : "39", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U76", "Parent" : "0"},
	{"ID" : "40", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U77", "Parent" : "0"},
	{"ID" : "41", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U78", "Parent" : "0"},
	{"ID" : "42", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U79", "Parent" : "0"},
	{"ID" : "43", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U80", "Parent" : "0"},
	{"ID" : "44", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U81", "Parent" : "0"},
	{"ID" : "45", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U82", "Parent" : "0"},
	{"ID" : "46", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U83", "Parent" : "0"},
	{"ID" : "47", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U84", "Parent" : "0"},
	{"ID" : "48", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U85", "Parent" : "0"},
	{"ID" : "49", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U86", "Parent" : "0"},
	{"ID" : "50", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U87", "Parent" : "0"},
	{"ID" : "51", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U88", "Parent" : "0"},
	{"ID" : "52", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U89", "Parent" : "0"},
	{"ID" : "53", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U90", "Parent" : "0"},
	{"ID" : "54", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U91", "Parent" : "0"},
	{"ID" : "55", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U92", "Parent" : "0"},
	{"ID" : "56", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U93", "Parent" : "0"},
	{"ID" : "57", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U94", "Parent" : "0"},
	{"ID" : "58", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U95", "Parent" : "0"},
	{"ID" : "59", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U96", "Parent" : "0"},
	{"ID" : "60", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U97", "Parent" : "0"},
	{"ID" : "61", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U98", "Parent" : "0"},
	{"ID" : "62", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U99", "Parent" : "0"},
	{"ID" : "63", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U100", "Parent" : "0"},
	{"ID" : "64", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U101", "Parent" : "0"},
	{"ID" : "65", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U102", "Parent" : "0"},
	{"ID" : "66", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U103", "Parent" : "0"},
	{"ID" : "67", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U104", "Parent" : "0"},
	{"ID" : "68", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U105", "Parent" : "0"},
	{"ID" : "69", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U106", "Parent" : "0"},
	{"ID" : "70", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U107", "Parent" : "0"},
	{"ID" : "71", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U108", "Parent" : "0"},
	{"ID" : "72", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U109", "Parent" : "0"},
	{"ID" : "73", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U110", "Parent" : "0"},
	{"ID" : "74", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U111", "Parent" : "0"},
	{"ID" : "75", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U112", "Parent" : "0"},
	{"ID" : "76", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U113", "Parent" : "0"},
	{"ID" : "77", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U114", "Parent" : "0"},
	{"ID" : "78", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U115", "Parent" : "0"},
	{"ID" : "79", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U116", "Parent" : "0"},
	{"ID" : "80", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U117", "Parent" : "0"},
	{"ID" : "81", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U118", "Parent" : "0"},
	{"ID" : "82", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U119", "Parent" : "0"},
	{"ID" : "83", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U120", "Parent" : "0"},
	{"ID" : "84", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U121", "Parent" : "0"},
	{"ID" : "85", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U122", "Parent" : "0"},
	{"ID" : "86", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U123", "Parent" : "0"},
	{"ID" : "87", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U124", "Parent" : "0"},
	{"ID" : "88", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U125", "Parent" : "0"},
	{"ID" : "89", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U126", "Parent" : "0"},
	{"ID" : "90", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U127", "Parent" : "0"},
	{"ID" : "91", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U128", "Parent" : "0"},
	{"ID" : "92", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U129", "Parent" : "0"},
	{"ID" : "93", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U130", "Parent" : "0"},
	{"ID" : "94", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U131", "Parent" : "0"},
	{"ID" : "95", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U132", "Parent" : "0"},
	{"ID" : "96", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U133", "Parent" : "0"},
	{"ID" : "97", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U134", "Parent" : "0"},
	{"ID" : "98", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U135", "Parent" : "0"},
	{"ID" : "99", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U136", "Parent" : "0"},
	{"ID" : "100", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U137", "Parent" : "0"},
	{"ID" : "101", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U138", "Parent" : "0"},
	{"ID" : "102", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U139", "Parent" : "0"},
	{"ID" : "103", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U140", "Parent" : "0"},
	{"ID" : "104", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U141", "Parent" : "0"},
	{"ID" : "105", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U142", "Parent" : "0"},
	{"ID" : "106", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U143", "Parent" : "0"},
	{"ID" : "107", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U144", "Parent" : "0"},
	{"ID" : "108", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U145", "Parent" : "0"},
	{"ID" : "109", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U146", "Parent" : "0"},
	{"ID" : "110", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U147", "Parent" : "0"},
	{"ID" : "111", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U148", "Parent" : "0"},
	{"ID" : "112", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U149", "Parent" : "0"},
	{"ID" : "113", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U150", "Parent" : "0"},
	{"ID" : "114", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U151", "Parent" : "0"},
	{"ID" : "115", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U152", "Parent" : "0"},
	{"ID" : "116", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U153", "Parent" : "0"},
	{"ID" : "117", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U154", "Parent" : "0"},
	{"ID" : "118", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U155", "Parent" : "0"},
	{"ID" : "119", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U156", "Parent" : "0"},
	{"ID" : "120", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U157", "Parent" : "0"},
	{"ID" : "121", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U158", "Parent" : "0"},
	{"ID" : "122", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U159", "Parent" : "0"},
	{"ID" : "123", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U160", "Parent" : "0"},
	{"ID" : "124", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U161", "Parent" : "0"},
	{"ID" : "125", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U162", "Parent" : "0"},
	{"ID" : "126", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U163", "Parent" : "0"},
	{"ID" : "127", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U164", "Parent" : "0"},
	{"ID" : "128", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U165", "Parent" : "0"},
	{"ID" : "129", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U166", "Parent" : "0"},
	{"ID" : "130", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U167", "Parent" : "0"},
	{"ID" : "131", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U168", "Parent" : "0"},
	{"ID" : "132", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U169", "Parent" : "0"},
	{"ID" : "133", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U170", "Parent" : "0"},
	{"ID" : "134", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U171", "Parent" : "0"},
	{"ID" : "135", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U172", "Parent" : "0"},
	{"ID" : "136", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U173", "Parent" : "0"},
	{"ID" : "137", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U174", "Parent" : "0"},
	{"ID" : "138", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U175", "Parent" : "0"},
	{"ID" : "139", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U176", "Parent" : "0"},
	{"ID" : "140", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U177", "Parent" : "0"},
	{"ID" : "141", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U178", "Parent" : "0"},
	{"ID" : "142", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U179", "Parent" : "0"},
	{"ID" : "143", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U180", "Parent" : "0"},
	{"ID" : "144", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U181", "Parent" : "0"},
	{"ID" : "145", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U182", "Parent" : "0"},
	{"ID" : "146", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U183", "Parent" : "0"},
	{"ID" : "147", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U184", "Parent" : "0"},
	{"ID" : "148", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U185", "Parent" : "0"},
	{"ID" : "149", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U186", "Parent" : "0"},
	{"ID" : "150", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U187", "Parent" : "0"},
	{"ID" : "151", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U188", "Parent" : "0"},
	{"ID" : "152", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U189", "Parent" : "0"},
	{"ID" : "153", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U190", "Parent" : "0"},
	{"ID" : "154", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U191", "Parent" : "0"},
	{"ID" : "155", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U192", "Parent" : "0"},
	{"ID" : "156", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U193", "Parent" : "0"},
	{"ID" : "157", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U194", "Parent" : "0"},
	{"ID" : "158", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U195", "Parent" : "0"},
	{"ID" : "159", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U196", "Parent" : "0"},
	{"ID" : "160", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U197", "Parent" : "0"},
	{"ID" : "161", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U198", "Parent" : "0"},
	{"ID" : "162", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U199", "Parent" : "0"},
	{"ID" : "163", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U200", "Parent" : "0"},
	{"ID" : "164", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U201", "Parent" : "0"},
	{"ID" : "165", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U202", "Parent" : "0"},
	{"ID" : "166", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U203", "Parent" : "0"},
	{"ID" : "167", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U204", "Parent" : "0"},
	{"ID" : "168", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U205", "Parent" : "0"},
	{"ID" : "169", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U206", "Parent" : "0"},
	{"ID" : "170", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U207", "Parent" : "0"},
	{"ID" : "171", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U208", "Parent" : "0"},
	{"ID" : "172", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U209", "Parent" : "0"},
	{"ID" : "173", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U210", "Parent" : "0"},
	{"ID" : "174", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U211", "Parent" : "0"},
	{"ID" : "175", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U212", "Parent" : "0"},
	{"ID" : "176", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U213", "Parent" : "0"},
	{"ID" : "177", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U214", "Parent" : "0"},
	{"ID" : "178", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U215", "Parent" : "0"},
	{"ID" : "179", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U216", "Parent" : "0"},
	{"ID" : "180", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U217", "Parent" : "0"},
	{"ID" : "181", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U218", "Parent" : "0"},
	{"ID" : "182", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U219", "Parent" : "0"},
	{"ID" : "183", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U220", "Parent" : "0"},
	{"ID" : "184", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U221", "Parent" : "0"},
	{"ID" : "185", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U222", "Parent" : "0"},
	{"ID" : "186", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U223", "Parent" : "0"},
	{"ID" : "187", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U224", "Parent" : "0"},
	{"ID" : "188", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U225", "Parent" : "0"},
	{"ID" : "189", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U226", "Parent" : "0"},
	{"ID" : "190", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U227", "Parent" : "0"},
	{"ID" : "191", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U228", "Parent" : "0"},
	{"ID" : "192", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U229", "Parent" : "0"},
	{"ID" : "193", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U230", "Parent" : "0"},
	{"ID" : "194", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U231", "Parent" : "0"},
	{"ID" : "195", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U232", "Parent" : "0"},
	{"ID" : "196", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U233", "Parent" : "0"},
	{"ID" : "197", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U234", "Parent" : "0"},
	{"ID" : "198", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U235", "Parent" : "0"},
	{"ID" : "199", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U236", "Parent" : "0"},
	{"ID" : "200", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U237", "Parent" : "0"},
	{"ID" : "201", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U238", "Parent" : "0"},
	{"ID" : "202", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U239", "Parent" : "0"},
	{"ID" : "203", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U240", "Parent" : "0"},
	{"ID" : "204", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U241", "Parent" : "0"},
	{"ID" : "205", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U242", "Parent" : "0"},
	{"ID" : "206", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U243", "Parent" : "0"},
	{"ID" : "207", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U244", "Parent" : "0"},
	{"ID" : "208", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U245", "Parent" : "0"},
	{"ID" : "209", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U246", "Parent" : "0"},
	{"ID" : "210", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U247", "Parent" : "0"},
	{"ID" : "211", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U248", "Parent" : "0"},
	{"ID" : "212", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U249", "Parent" : "0"},
	{"ID" : "213", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U250", "Parent" : "0"},
	{"ID" : "214", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U251", "Parent" : "0"},
	{"ID" : "215", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U252", "Parent" : "0"},
	{"ID" : "216", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U253", "Parent" : "0"},
	{"ID" : "217", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U254", "Parent" : "0"},
	{"ID" : "218", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U255", "Parent" : "0"},
	{"ID" : "219", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U256", "Parent" : "0"},
	{"ID" : "220", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U257", "Parent" : "0"},
	{"ID" : "221", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U258", "Parent" : "0"},
	{"ID" : "222", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U259", "Parent" : "0"},
	{"ID" : "223", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U260", "Parent" : "0"},
	{"ID" : "224", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U261", "Parent" : "0"},
	{"ID" : "225", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U262", "Parent" : "0"},
	{"ID" : "226", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U263", "Parent" : "0"},
	{"ID" : "227", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U264", "Parent" : "0"},
	{"ID" : "228", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U265", "Parent" : "0"},
	{"ID" : "229", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U266", "Parent" : "0"},
	{"ID" : "230", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U267", "Parent" : "0"},
	{"ID" : "231", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U268", "Parent" : "0"},
	{"ID" : "232", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U269", "Parent" : "0"},
	{"ID" : "233", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U270", "Parent" : "0"},
	{"ID" : "234", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U271", "Parent" : "0"},
	{"ID" : "235", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U272", "Parent" : "0"},
	{"ID" : "236", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U273", "Parent" : "0"},
	{"ID" : "237", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U274", "Parent" : "0"},
	{"ID" : "238", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U275", "Parent" : "0"},
	{"ID" : "239", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U276", "Parent" : "0"},
	{"ID" : "240", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U277", "Parent" : "0"},
	{"ID" : "241", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U278", "Parent" : "0"},
	{"ID" : "242", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U279", "Parent" : "0"},
	{"ID" : "243", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U280", "Parent" : "0"},
	{"ID" : "244", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U281", "Parent" : "0"},
	{"ID" : "245", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U282", "Parent" : "0"},
	{"ID" : "246", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U283", "Parent" : "0"},
	{"ID" : "247", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U284", "Parent" : "0"},
	{"ID" : "248", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U285", "Parent" : "0"},
	{"ID" : "249", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U286", "Parent" : "0"},
	{"ID" : "250", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U287", "Parent" : "0"},
	{"ID" : "251", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U288", "Parent" : "0"},
	{"ID" : "252", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U289", "Parent" : "0"},
	{"ID" : "253", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U290", "Parent" : "0"},
	{"ID" : "254", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U291", "Parent" : "0"},
	{"ID" : "255", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_mulsub_2s_23ns_32ns_32_1_1_U292", "Parent" : "0"},
	{"ID" : "256", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_mac_muladd_2s_23ns_32ns_32_1_1_U293", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 66 FirstWrite 1}
		pk {Type I LastRead 131 FirstWrite -1}
		pos_list {Type I LastRead 2 FirstWrite -1}
		sign_list {Type I LastRead 2 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "16002", "Max" : "16002"}
	, {"Name" : "Interval", "Min" : "16002", "Max" : "16002"}
]}

set PipelineEnableSignalInfo {[
	{"Pipeline" : "0", "EnableSignal" : "ap_enable_pp0"}
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 9 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 MemPortADDR2 1 9 }  { pk_ce1 MemPortCE2 1 1 }  { pk_q1 MemPortDOUT2 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
