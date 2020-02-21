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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_9s_2s_32ns_32_1_1_U102", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_9s_2s_32ns_32_1_1_U103", "Parent" : "0"}]}


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
	s { ap_memory {  { s_address0 mem_address 1 11 }  { s_ce0 mem_ce 1 1 }  { s_q0 mem_dout 0 9 }  { s_address1 MemPortADDR2 1 11 }  { s_ce1 MemPortCE2 1 1 }  { s_q1 MemPortDOUT2 0 9 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 6 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 11 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 6 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_9s_2s_32ns_32_1_1_U85", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_9s_2s_32ns_32_1_1_U86", "Parent" : "0"}]}


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
	s { ap_memory {  { s_address0 mem_address 1 11 }  { s_ce0 mem_ce 1 1 }  { s_q0 mem_dout 0 9 }  { s_address1 MemPortADDR2 1 11 }  { s_ce1 MemPortCE2 1 1 }  { s_q1 MemPortDOUT2 0 9 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 6 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 11 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 6 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
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
	{ prod int 32 regular {array 2048 { 2 2 } 1 1 }  }
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
set portNum 28
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
	{ prod_address1 sc_out sc_lv 11 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
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
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4"],
		"CDFG" : "sparse_mul16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "252028", "EstimateLatencyMax" : "252028",
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U85", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U86", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U87", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U88", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul16 {
		prod {Type IO LastRead 5 FirstWrite 1}
		s {Type I LastRead 6 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "252028", "Max" : "252028"}
	, {"Name" : "Interval", "Min" : "252028", "Max" : "252028"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 11 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 11 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	s { ap_memory {  { s_address0 mem_address 1 11 }  { s_ce0 mem_ce 1 1 }  { s_q0 mem_dout 0 9 }  { s_address1 MemPortADDR2 1 11 }  { s_ce1 MemPortCE2 1 1 }  { s_q1 MemPortDOUT2 0 9 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 6 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 11 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 6 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
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
	{ prod int 32 regular {array 2048 { 2 2 } 1 1 }  }
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
set portNum 28
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
	{ prod_address1 sc_out sc_lv 11 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
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
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8"],
		"CDFG" : "sparse_mul16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "189564", "EstimateLatencyMax" : "189564",
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U85", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U86", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U87", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U88", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U89", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U90", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U91", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U92", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul16 {
		prod {Type IO LastRead 7 FirstWrite 1}
		s {Type I LastRead 8 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "189564", "Max" : "189564"}
	, {"Name" : "Interval", "Min" : "189564", "Max" : "189564"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 11 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 11 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	s { ap_memory {  { s_address0 mem_address 1 11 }  { s_ce0 mem_ce 1 1 }  { s_q0 mem_dout 0 9 }  { s_address1 MemPortADDR2 1 11 }  { s_ce1 MemPortCE2 1 1 }  { s_q1 MemPortDOUT2 0 9 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 6 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 11 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 6 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
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
	{ prod int 32 regular {array 2048 { 2 2 } 1 1 }  }
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
set portNum 28
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
	{ prod_address1 sc_out sc_lv 11 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
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
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16"],
		"CDFG" : "sparse_mul16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "158332", "EstimateLatencyMax" : "158332",
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U85", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U86", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U87", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U88", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U89", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U90", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U91", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U92", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U93", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U94", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U95", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U96", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U97", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U98", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U99", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U100", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul16 {
		prod {Type IO LastRead 9 FirstWrite 1}
		s {Type I LastRead 12 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "158332", "Max" : "158332"}
	, {"Name" : "Interval", "Min" : "158332", "Max" : "158332"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 11 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 11 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	s { ap_memory {  { s_address0 mem_address 1 11 }  { s_ce0 mem_ce 1 1 }  { s_q0 mem_dout 0 9 }  { s_address1 MemPortADDR2 1 11 }  { s_ce1 MemPortCE2 1 1 }  { s_q1 MemPortDOUT2 0 9 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 6 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 11 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 6 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
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
	{ prod int 32 regular {array 2048 { 2 2 } 1 1 }  }
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
set portNum 28
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
	{ prod_address1 sc_out sc_lv 11 signal 0 } 
	{ prod_ce1 sc_out sc_logic 1 signal 0 } 
	{ prod_we1 sc_out sc_logic 1 signal 0 } 
	{ prod_d1 sc_out sc_lv 32 signal 0 } 
	{ prod_q1 sc_in sc_lv 32 signal 0 } 
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
 	{ "name": "prod_address1", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "prod", "role": "address1" }} , 
 	{ "name": "prod_ce1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "ce1" }} , 
 	{ "name": "prod_we1", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "prod", "role": "we1" }} , 
 	{ "name": "prod_d1", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "d1" }} , 
 	{ "name": "prod_q1", "direction": "in", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "prod", "role": "q1" }} , 
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
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "", "Child" : ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32"],
		"CDFG" : "sparse_mul16",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "142716", "EstimateLatencyMax" : "142716",
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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U85", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U86", "Parent" : "0"},
	{"ID" : "3", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U87", "Parent" : "0"},
	{"ID" : "4", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U88", "Parent" : "0"},
	{"ID" : "5", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U89", "Parent" : "0"},
	{"ID" : "6", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U90", "Parent" : "0"},
	{"ID" : "7", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U91", "Parent" : "0"},
	{"ID" : "8", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U92", "Parent" : "0"},
	{"ID" : "9", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U93", "Parent" : "0"},
	{"ID" : "10", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U94", "Parent" : "0"},
	{"ID" : "11", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U95", "Parent" : "0"},
	{"ID" : "12", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U96", "Parent" : "0"},
	{"ID" : "13", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U97", "Parent" : "0"},
	{"ID" : "14", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U98", "Parent" : "0"},
	{"ID" : "15", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U99", "Parent" : "0"},
	{"ID" : "16", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U100", "Parent" : "0"},
	{"ID" : "17", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U101", "Parent" : "0"},
	{"ID" : "18", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U102", "Parent" : "0"},
	{"ID" : "19", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U103", "Parent" : "0"},
	{"ID" : "20", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U104", "Parent" : "0"},
	{"ID" : "21", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U105", "Parent" : "0"},
	{"ID" : "22", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U106", "Parent" : "0"},
	{"ID" : "23", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U107", "Parent" : "0"},
	{"ID" : "24", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U108", "Parent" : "0"},
	{"ID" : "25", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U109", "Parent" : "0"},
	{"ID" : "26", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U110", "Parent" : "0"},
	{"ID" : "27", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U111", "Parent" : "0"},
	{"ID" : "28", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U112", "Parent" : "0"},
	{"ID" : "29", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U113", "Parent" : "0"},
	{"ID" : "30", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U114", "Parent" : "0"},
	{"ID" : "31", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_mulsub_2s_9s_32ns_32_1_1_U115", "Parent" : "0"},
	{"ID" : "32", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_mac_muladd_2s_9s_32ns_32_1_1_U116", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul16 {
		prod {Type IO LastRead 13 FirstWrite 1}
		s {Type I LastRead 20 FirstWrite -1}
		pos_list {Type I LastRead 3 FirstWrite -1}
		sign_list {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "142716", "Max" : "142716"}
	, {"Name" : "Interval", "Min" : "142716", "Max" : "142716"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	prod { ap_memory {  { prod_address0 mem_address 1 11 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 MemPortADDR2 1 11 }  { prod_ce1 MemPortCE2 1 1 }  { prod_we1 MemPortWE2 1 1 }  { prod_d1 MemPortDIN2 1 32 }  { prod_q1 MemPortDOUT2 0 32 } } }
	s { ap_memory {  { s_address0 mem_address 1 11 }  { s_ce0 mem_ce 1 1 }  { s_q0 mem_dout 0 9 }  { s_address1 MemPortADDR2 1 11 }  { s_ce1 MemPortCE2 1 1 }  { s_q1 MemPortDOUT2 0 9 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 6 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 11 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 6 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
