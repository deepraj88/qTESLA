# ==============================================================
# File generated on Thu Oct 17 10:18:05 EDT 2019
# Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC v2018.3 (64-bit)
# SW Build 2405991 on Thu Dec  6 23:36:41 MST 2018
# IP Build 2404404 on Fri Dec  7 01:43:56 MST 2018
# Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
# ==============================================================
add_files -tb ../../newtest_sign.c -cflags { -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas}
add_files tests/aes.c
add_files sha3/fips202.c
add_files gauss.c
add_files pack.c
add_files poly.c
add_files tests/rng.c
add_files sample.c
add_files sign.c
set_part xc7a200tfbg676-2
create_clock -name default -period 15
