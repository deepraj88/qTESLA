# ==============================================================
# File generated on Thu Jan 02 22:42:24 EST 2020
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../newtest_sign.c -cflags { -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas}
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
set_directive_inline load64 
set_directive_inline store64 
set_directive_allocation keccak_absorb keccak_absorb -limit 1 -type function
set_directive_inline keccak_absorb 
set_directive_allocation keccak_squeezeblocks keccak_squeezeblocks -limit 1 -type function
set_directive_inline keccak_squeezeblocks 
set_directive_allocation cshake128_simple_absorb cshake128_simple_absorb -limit 1 -type function
set_directive_inline cshake128_simple_absorb 
set_directive_allocation shake256 shake256 -limit 1 -type function
set_directive_inline shake256 
set_directive_unroll sparse_mul16/sparse_mul16_label2 -factor 16
