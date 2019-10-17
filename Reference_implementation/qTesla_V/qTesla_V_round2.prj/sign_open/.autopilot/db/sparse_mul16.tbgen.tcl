set moduleName sparse_mul16
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
set C_modelName {sparse_mul16}
set C_modelType { void 0 }
set C_modelArgList {
	{ prod int 32 regular {array 2048 { 2 3 } 1 1 }  }
	{ s int 9 regular {array 2048 { 1 1 } 1 1 }  }
	{ pos_list int 11 regular {array 61 { 1 3 } 1 1 }  }
	{ sign_list int 2 regular {array 61 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "prod", "interface" : "memory", "bitwidth" : 32, "direction" : "READWRITE"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 9, "direction" : "READONLY"} , 
 	{ "Name" : "pos_list", "interface" : "memory", "bitwidth" : 11, "direction" : "READONLY"} , 
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
	{ prod_address0 sc_out sc_lv 11 signal 0 } 
	{ prod_ce0 sc_out sc_logic 1 signal 0 } 
	{ prod_we0 sc_out sc_logic 1 signal 0 } 
	{ prod_d0 sc_out sc_lv 32 signal 0 } 
	{ prod_q0 sc_in sc_lv 32 signal 0 } 
	{ s_address0 sc_out sc_lv 11 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_q0 sc_in sc_lv 9 signal 1 } 
	{ s_address1 sc_out sc_lv 11 signal 1 } 
	{ s_ce1 sc_out sc_logic 1 signal 1 } 
	{ s_q1 sc_in sc_lv 9 signal 1 } 
	{ pos_list_address0 sc_out sc_lv 6 signal 2 } 
	{ pos_list_ce0 sc_out sc_logic 1 signal 2 } 
	{ pos_list_q0 sc_in sc_lv 11 signal 2 } 
	{ sign_list_address0 sc_out sc_lv 6 signal 3 } 
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
 	{ "name": "prod_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "prod", "role": "address0" }} , 
 	{ "name": "prod_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce0" }} , 
 	{ "name": "prod_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we0" }} , 
 	{ "name": "prod_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d0" }} , 
 	{ "name": "prod_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "s", "role": "q0" }} , 
 	{ "name": "s_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "s", "role": "address1" }} , 
 	{ "name": "s_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce1" }} , 
 	{ "name": "s_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":9, "type": "signal", "bundle":{"name": "s", "role": "q1" }} , 
 	{ "name": "pos_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "pos_list", "role": "address0" }} , 
 	{ "name": "pos_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "pos_list", "role": "ce0" }} , 
 	{ "name": "pos_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "pos_list", "role": "q0" }} , 
 	{ "name": "sign_list_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "sign_list", "role": "address0" }} , 
 	{ "name": "sign_list_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sign_list", "role": "ce0" }} , 
 	{ "name": "sign_list_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":2, "type": "signal", "bundle":{"name": "sign_list", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2"],
		"CDFG" : "sparse_mul16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "376956", "EstimateLatencyMax" : "376956",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "prod", "Type" : "Memory", "Direction" : "IO"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "pos_list", "Type" : "Memory", "Direction" : "I"},
			{"Name" : "sign_list", "Type" : "Memory", "Direction" : "I"}]},
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mrcU_U85", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_msc4_U86", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul16 {
		prod {Type IO LastRead 4 FirstWrite 1}
		s {Type I LastRead 5 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "376956", "Max" : "376956"}
	, {"Name" : "Interval", "Min" : "376956", "Max" : "376956"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 11 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 } } }
	s { ap_memory {  { s_address0 mem_address 1 11 }  { s_ce0 mem_ce 1 1 }  { s_q0 mem_dout 0 9 }  { s_address1 mem_address 1 11 }  { s_ce1 mem_ce 1 1 }  { s_q1 mem_dout 0 9 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 6 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 11 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 6 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
