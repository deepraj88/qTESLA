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
	{"ID" : "1", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_jbC_U38", "Parent" : "0"},
	{"ID" : "2", "Level" : "1", "Path" : "`AUTOTB_DUT_INST.crypto_sign_open_kbM_U39", "Parent" : "0"}]}


set ArgLastReadFirstWriteLatency {
	sparse_mul32 {
		prod {Type IO LastRead 3 FirstWrite 1}
		pk {Type I LastRead 4 FirstWrite -1}
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
	prod { ap_memory {  { prod_address0 mem_address 1 9 }  { prod_ce0 mem_ce 1 1 }  { prod_we0 mem_we 1 1 }  { prod_d0 mem_din 1 32 }  { prod_q0 mem_dout 0 32 }  { prod_address1 mem_address 1 9 }  { prod_ce1 mem_ce 1 1 }  { prod_we1 mem_we 1 1 }  { prod_d1 mem_din 1 32 } } }
	pk { ap_memory {  { pk_address0 mem_address 1 9 }  { pk_ce0 mem_ce 1 1 }  { pk_q0 mem_dout 0 23 }  { pk_address1 mem_address 1 9 }  { pk_ce1 mem_ce 1 1 }  { pk_q1 mem_dout 0 23 } } }
	pos_list { ap_memory {  { pos_list_address0 mem_address 1 5 }  { pos_list_ce0 mem_ce 1 1 }  { pos_list_q0 mem_dout 0 9 } } }
	sign_list { ap_memory {  { sign_list_address0 mem_address 1 5 }  { sign_list_ce0 mem_ce 1 1 }  { sign_list_q0 mem_dout 0 2 } } }
}
