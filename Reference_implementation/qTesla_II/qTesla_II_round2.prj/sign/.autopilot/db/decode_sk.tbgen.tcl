set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
set moduleName decode_sk
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
set C_modelName {decode_sk}
set C_modelType { void 0 }
set C_modelArgList {
	{ seeds int 8 regular {array 64 { 0 3 } 0 1 }  }
	{ s int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ e int 32 regular {array 768 { 0 3 } 0 1 }  }
	{ sk int 8 regular {array 1600 { 1 3 } 1 1 }  }
}
set C_modelArgMapList {[ 
	{ "Name" : "seeds", "interface" : "memory", "bitwidth" : 8, "direction" : "WRITEONLY"} , 
 	{ "Name" : "s", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "e", "interface" : "memory", "bitwidth" : 32, "direction" : "WRITEONLY"} , 
 	{ "Name" : "sk", "interface" : "memory", "bitwidth" : 8, "direction" : "READONLY"} ]}
# RTL Port declarations: 
set portNum 21
set portList { 
	{ ap_clk sc_in sc_logic 1 clock -1 } 
	{ ap_rst sc_in sc_logic 1 reset -1 active_high_sync } 
	{ ap_start sc_in sc_logic 1 start -1 } 
	{ ap_done sc_out sc_logic 1 predone -1 } 
	{ ap_idle sc_out sc_logic 1 done -1 } 
	{ ap_ready sc_out sc_logic 1 ready -1 } 
	{ seeds_address0 sc_out sc_lv 6 signal 0 } 
	{ seeds_ce0 sc_out sc_logic 1 signal 0 } 
	{ seeds_we0 sc_out sc_logic 1 signal 0 } 
	{ seeds_d0 sc_out sc_lv 8 signal 0 } 
	{ s_address0 sc_out sc_lv 10 signal 1 } 
	{ s_ce0 sc_out sc_logic 1 signal 1 } 
	{ s_we0 sc_out sc_logic 1 signal 1 } 
	{ s_d0 sc_out sc_lv 32 signal 1 } 
	{ e_address0 sc_out sc_lv 10 signal 2 } 
	{ e_ce0 sc_out sc_logic 1 signal 2 } 
	{ e_we0 sc_out sc_logic 1 signal 2 } 
	{ e_d0 sc_out sc_lv 32 signal 2 } 
	{ sk_address0 sc_out sc_lv 11 signal 3 } 
	{ sk_ce0 sc_out sc_logic 1 signal 3 } 
	{ sk_q0 sc_in sc_lv 8 signal 3 } 
}
set NewPortList {[ 
	{ "name": "ap_clk", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "clock", "bundle":{"name": "ap_clk", "role": "default" }} , 
 	{ "name": "ap_rst", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "reset", "bundle":{"name": "ap_rst", "role": "default" }} , 
 	{ "name": "ap_start", "direction": "in", "datatype": "sc_logic", "bitwidth":1, "type": "start", "bundle":{"name": "ap_start", "role": "default" }} , 
 	{ "name": "ap_done", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "predone", "bundle":{"name": "ap_done", "role": "default" }} , 
 	{ "name": "ap_idle", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "done", "bundle":{"name": "ap_idle", "role": "default" }} , 
 	{ "name": "ap_ready", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "ready", "bundle":{"name": "ap_ready", "role": "default" }} , 
 	{ "name": "seeds_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":6, "type": "signal", "bundle":{"name": "seeds", "role": "address0" }} , 
 	{ "name": "seeds_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "ce0" }} , 
 	{ "name": "seeds_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "seeds", "role": "we0" }} , 
 	{ "name": "seeds_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "seeds", "role": "d0" }} , 
 	{ "name": "s_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "s", "role": "address0" }} , 
 	{ "name": "s_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "ce0" }} , 
 	{ "name": "s_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "s", "role": "we0" }} , 
 	{ "name": "s_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "s", "role": "d0" }} , 
 	{ "name": "e_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":10, "type": "signal", "bundle":{"name": "e", "role": "address0" }} , 
 	{ "name": "e_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "ce0" }} , 
 	{ "name": "e_we0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "e", "role": "we0" }} , 
 	{ "name": "e_d0", "direction": "out", "datatype": "sc_lv", "bitwidth":32, "type": "signal", "bundle":{"name": "e", "role": "d0" }} , 
 	{ "name": "sk_address0", "direction": "out", "datatype": "sc_lv", "bitwidth":11, "type": "signal", "bundle":{"name": "sk", "role": "address0" }} , 
 	{ "name": "sk_ce0", "direction": "out", "datatype": "sc_logic", "bitwidth":1, "type": "signal", "bundle":{"name": "sk", "role": "ce0" }} , 
 	{ "name": "sk_q0", "direction": "in", "datatype": "sc_lv", "bitwidth":8, "type": "signal", "bundle":{"name": "sk", "role": "q0" }}  ]}

set RtlHierarchyInfo {[
	{"ID" : "0", "Level" : "0", "Path" : "`AUTOTB_DUT_INST", "Parent" : "",
		"CDFG" : "decode_sk",
		"Protocol" : "ap_ctrl_hs",
		"ControlExist" : "1", "ap_start" : "1", "ap_ready" : "1", "ap_done" : "1", "ap_continue" : "0", "ap_idle" : "1",
		"Pipeline" : "None", "UnalignedPipeline" : "0", "RewindPipeline" : "0", "ProcessNetwork" : "0",
		"II" : "0",
		"VariableLatency" : "1", "ExactLatency" : "-1", "EstimateLatencyMin" : "3203", "EstimateLatencyMax" : "3203",
		"Combinational" : "0",
		"Datapath" : "0",
		"ClockEnable" : "0",
		"HasSubDataflow" : "0",
		"InDataflowNetwork" : "0",
		"HasNonBlockingOperation" : "0",
		"Port" : [
			{"Name" : "seeds", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "s", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "e", "Type" : "Memory", "Direction" : "O"},
			{"Name" : "sk", "Type" : "Memory", "Direction" : "I"}]}]}


set ArgLastReadFirstWriteLatency {
	decode_sk {
		seeds {Type O LastRead -1 FirstWrite 4}
		s {Type O LastRead -1 FirstWrite 2}
		e {Type O LastRead -1 FirstWrite 3}
		sk {Type I LastRead 3 FirstWrite -1}}}

set hasDtUnsupportedChannel 0

set PerformanceInfo {[
	{"Name" : "Latency", "Min" : "3203", "Max" : "3203"}
	, {"Name" : "Interval", "Min" : "3203", "Max" : "3203"}
]}

set PipelineEnableSignalInfo {[
]}

set Spec2ImplPortList { 
	seeds { ap_memory {  { seeds_address0 mem_address 1 6 }  { seeds_ce0 mem_ce 1 1 }  { seeds_we0 mem_we 1 1 }  { seeds_d0 mem_din 1 8 } } }
	s { ap_memory {  { s_address0 mem_address 1 10 }  { s_ce0 mem_ce 1 1 }  { s_we0 mem_we 1 1 }  { s_d0 mem_din 1 32 } } }
	e { ap_memory {  { e_address0 mem_address 1 10 }  { e_ce0 mem_ce 1 1 }  { e_we0 mem_we 1 1 }  { e_d0 mem_din 1 32 } } }
	sk { ap_memory {  { sk_address0 mem_address 1 11 }  { sk_ce0 mem_ce 1 1 }  { sk_q0 mem_dout 0 8 } } }
}
