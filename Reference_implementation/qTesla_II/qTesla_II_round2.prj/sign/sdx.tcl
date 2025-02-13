# ==============================================================
# File generated on Thu Jan 02 22:25:54 EST 2020
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../newtest_sign.c -cflags { -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas}
add_files sign.c
add_files sample.c
add_files tests/rng.c
add_files poly.c
add_files pack.c
add_files gauss.c
add_files sha3/fips202.c
add_files tests/aes.c
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
set_directive_allocation cshake128_simple_absorb cshake128_simple_absorb -limit 1 -type function
set_directive_inline cshake128_simple_absorb 
set_directive_inline load64 
set_directive_inline store64 
set_directive_allocation shake128 shake128 -limit 1 -type function
set_directive_inline shake128 
set_directive_allocation load64 load64 -limit 1 -type function
set_directive_allocation store64 store64 -limit 1 -type function
set_directive_allocation NTT NTT -limit 1 -type function
set_directive_inline NTT 
set_directive_allocation invNTT invNTT -limit 1 -type function
set_directive_inline invNTT 
set_directive_unroll nttInit/nttInit_label0 -factor 128
set_directive_pipeline nttInit/nttInit_label0 
