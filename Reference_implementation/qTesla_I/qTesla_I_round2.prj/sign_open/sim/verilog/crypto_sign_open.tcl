
log_wave -r /
set designtopgroup [add_wave_group "Design Top Signals"]
set cinoutgroup [add_wave_group "C InOuts" -into $designtopgroup]
set mlen_group [add_wave_group mlen(memory) -into $cinoutgroup]
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/mlen_q0 -into $mlen_group -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/mlen_d0 -into $mlen_group -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/mlen_we0 -into $mlen_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/mlen_ce0 -into $mlen_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/mlen_address0 -into $mlen_group -radix hex
set coutputgroup [add_wave_group "C Outputs" -into $designtopgroup]
set return_group [add_wave_group return(wire) -into $coutputgroup]
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/ap_return -into $return_group -radix hex
set m_group [add_wave_group m(memory) -into $coutputgroup]
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/m_d0 -into $m_group -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/m_we0 -into $m_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/m_ce0 -into $m_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/m_address0 -into $m_group -radix hex
set cinputgroup [add_wave_group "C Inputs" -into $designtopgroup]
set zetainv_group [add_wave_group zetainv(memory) -into $cinputgroup]
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/zetainv_q0 -into $zetainv_group -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/zetainv_ce0 -into $zetainv_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/zetainv_address0 -into $zetainv_group -radix hex
set zeta_group [add_wave_group zeta(memory) -into $cinputgroup]
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/zeta_q0 -into $zeta_group -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/zeta_ce0 -into $zeta_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/zeta_address0 -into $zeta_group -radix hex
set pk_group [add_wave_group pk(memory) -into $cinputgroup]
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/pk_q1 -into $pk_group -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/pk_ce1 -into $pk_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/pk_address1 -into $pk_group -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/pk_q0 -into $pk_group -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/pk_ce0 -into $pk_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/pk_address0 -into $pk_group -radix hex
set smlen_group [add_wave_group smlen(wire) -into $cinputgroup]
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/smlen -into $smlen_group -radix hex
set sm_group [add_wave_group sm(memory) -into $cinputgroup]
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/sm_q1 -into $sm_group -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/sm_ce1 -into $sm_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/sm_address1 -into $sm_group -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/sm_q0 -into $sm_group -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/sm_ce0 -into $sm_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/sm_address0 -into $sm_group -radix hex
set blocksiggroup [add_wave_group "Block-level IO Handshake" -into $designtopgroup]
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/ap_start -into $blocksiggroup
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/ap_done -into $blocksiggroup
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/ap_idle -into $blocksiggroup
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/ap_ready -into $blocksiggroup
set resetgroup [add_wave_group "Reset" -into $designtopgroup]
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/ap_rst -into $resetgroup
set clockgroup [add_wave_group "Clock" -into $designtopgroup]
add_wave /apatb_crypto_sign_open_top/AESL_inst_crypto_sign_open/ap_clk -into $clockgroup
set testbenchgroup [add_wave_group "Test Bench Signals"]
set tbinternalsiggroup [add_wave_group "Internal Signals" -into $testbenchgroup]
set tb_simstatus_group [add_wave_group "Simulation Status" -into $tbinternalsiggroup]
set tb_portdepth_group [add_wave_group "Port Depth" -into $tbinternalsiggroup]
add_wave /apatb_crypto_sign_open_top/AUTOTB_TRANSACTION_NUM -into $tb_simstatus_group -radix hex
add_wave /apatb_crypto_sign_open_top/ready_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_crypto_sign_open_top/done_cnt -into $tb_simstatus_group -radix hex
add_wave /apatb_crypto_sign_open_top/LENGTH_m -into $tb_portdepth_group -radix hex
add_wave /apatb_crypto_sign_open_top/LENGTH_mlen -into $tb_portdepth_group -radix hex
add_wave /apatb_crypto_sign_open_top/LENGTH_sm -into $tb_portdepth_group -radix hex
add_wave /apatb_crypto_sign_open_top/LENGTH_smlen -into $tb_portdepth_group -radix hex
add_wave /apatb_crypto_sign_open_top/LENGTH_pk -into $tb_portdepth_group -radix hex
add_wave /apatb_crypto_sign_open_top/LENGTH_zeta -into $tb_portdepth_group -radix hex
add_wave /apatb_crypto_sign_open_top/LENGTH_zetainv -into $tb_portdepth_group -radix hex
add_wave /apatb_crypto_sign_open_top/LENGTH_ap_return -into $tb_portdepth_group -radix hex
set tbcinoutgroup [add_wave_group "C InOuts" -into $testbenchgroup]
set tb_mlen_group [add_wave_group mlen(memory) -into $tbcinoutgroup]
add_wave /apatb_crypto_sign_open_top/mlen_q0 -into $tb_mlen_group -radix hex
add_wave /apatb_crypto_sign_open_top/mlen_d0 -into $tb_mlen_group -radix hex
add_wave /apatb_crypto_sign_open_top/mlen_we0 -into $tb_mlen_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/mlen_ce0 -into $tb_mlen_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/mlen_address0 -into $tb_mlen_group -radix hex
set tbcoutputgroup [add_wave_group "C Outputs" -into $testbenchgroup]
set tb_return_group [add_wave_group return(wire) -into $tbcoutputgroup]
add_wave /apatb_crypto_sign_open_top/ap_return -into $tb_return_group -radix hex
set tb_m_group [add_wave_group m(memory) -into $tbcoutputgroup]
add_wave /apatb_crypto_sign_open_top/m_d0 -into $tb_m_group -radix hex
add_wave /apatb_crypto_sign_open_top/m_we0 -into $tb_m_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/m_ce0 -into $tb_m_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/m_address0 -into $tb_m_group -radix hex
set tbcinputgroup [add_wave_group "C Inputs" -into $testbenchgroup]
set tb_zetainv_group [add_wave_group zetainv(memory) -into $tbcinputgroup]
add_wave /apatb_crypto_sign_open_top/zetainv_q0 -into $tb_zetainv_group -radix hex
add_wave /apatb_crypto_sign_open_top/zetainv_ce0 -into $tb_zetainv_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/zetainv_address0 -into $tb_zetainv_group -radix hex
set tb_zeta_group [add_wave_group zeta(memory) -into $tbcinputgroup]
add_wave /apatb_crypto_sign_open_top/zeta_q0 -into $tb_zeta_group -radix hex
add_wave /apatb_crypto_sign_open_top/zeta_ce0 -into $tb_zeta_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/zeta_address0 -into $tb_zeta_group -radix hex
set tb_pk_group [add_wave_group pk(memory) -into $tbcinputgroup]
add_wave /apatb_crypto_sign_open_top/pk_q1 -into $tb_pk_group -radix hex
add_wave /apatb_crypto_sign_open_top/pk_ce1 -into $tb_pk_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/pk_address1 -into $tb_pk_group -radix hex
add_wave /apatb_crypto_sign_open_top/pk_q0 -into $tb_pk_group -radix hex
add_wave /apatb_crypto_sign_open_top/pk_ce0 -into $tb_pk_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/pk_address0 -into $tb_pk_group -radix hex
set tb_smlen_group [add_wave_group smlen(wire) -into $tbcinputgroup]
add_wave /apatb_crypto_sign_open_top/smlen -into $tb_smlen_group -radix hex
set tb_sm_group [add_wave_group sm(memory) -into $tbcinputgroup]
add_wave /apatb_crypto_sign_open_top/sm_q1 -into $tb_sm_group -radix hex
add_wave /apatb_crypto_sign_open_top/sm_ce1 -into $tb_sm_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/sm_address1 -into $tb_sm_group -radix hex
add_wave /apatb_crypto_sign_open_top/sm_q0 -into $tb_sm_group -radix hex
add_wave /apatb_crypto_sign_open_top/sm_ce0 -into $tb_sm_group -color #ffff00 -radix hex
add_wave /apatb_crypto_sign_open_top/sm_address0 -into $tb_sm_group -radix hex
save_wave_config crypto_sign_open.wcfg
run all
quit

