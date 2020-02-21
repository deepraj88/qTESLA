# ==============================================================
# File generated on Sat Dec 28 14:17:44 EST 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../newtest_sign.c -cflags { -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas}
add_files tests/aes.c
add_files consts.c
add_files sha3/fips202.c
add_files gauss.c
add_files pack.c
add_files poly.c
add_files tests/rng.c
add_files sample.c
add_files sign.c
set_part xc7a200tfbg676-2
create_clock -name default -period 15
config_interface -clock_enable=0
config_interface -expose_global=1
config_interface -m_axi_addr64=0
config_interface -m_axi_offset=off
config_interface -register_io=off
config_interface -trim_dangling_port=0
set_directive_allocation keccak_absorb keccak_absorb -limit 1 -type function
set_directive_inline keccak_absorb 
set_directive_allocation keccak_squeezeblocks keccak_squeezeblocks -limit 1 -type function
set_directive_inline keccak_squeezeblocks 
set_directive_allocation shake128 shake128 -limit 1 -type function
set_directive_inline shake128 
set_directive_allocation cshake128_simple cshake128_simple -limit 1 -type function
set_directive_inline cshake128_simple 
set_directive_allocation knuthMergeExchangeG knuthMergeExchangeG -limit 1 -type function
set_directive_inline knuthMergeExchangeG 
set_directive_unroll check_ES/check_ES_label0 -factor 128
set_directive_pipeline check_ES/check_ES_label0 
set_directive_unroll ntt/ntt_label1 -factor 128
set_directive_pipeline ntt/ntt_label1 
set_directive_unroll nttinv/nttinv_label2 -factor 128
set_directive_pipeline nttinv/nttinv_label2 
set_directive_unroll kmxGauss/kmxGauss_label3 -factor 128
set_directive_pipeline kmxGauss/kmxGauss_label3 
set_directive_unroll kmxGauss/kmxGauss_label4 -factor 128
set_directive_pipeline kmxGauss/kmxGauss_label4 
set_directive_unroll kmxGauss/kmxGauss_label5 -factor 128
set_directive_pipeline kmxGauss/kmxGauss_label5 
set_directive_unroll kmxGauss/kmxGauss_label6 -factor 128
set_directive_pipeline kmxGauss/kmxGauss_label6 
set_directive_unroll kmxGauss/kmxGauss_label7 -factor 128
set_directive_pipeline kmxGauss/kmxGauss_label7 
set_directive_unroll kmxGauss/kmxGauss_label8 -factor 128
set_directive_pipeline kmxGauss/kmxGauss_label8 
