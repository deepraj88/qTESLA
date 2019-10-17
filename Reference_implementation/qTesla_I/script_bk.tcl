############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
open_project qTesla_I_round2.prj
set_top crypto_sign_open
add_files sign.c
add_files sample.c
add_files tests/rng.c
add_files poly.c
add_files pack.c
add_files gauss.c
add_files sha3/fips202.c
add_files consts.c
add_files tests/aes.c
add_files -tb newtest_sign.c -cflags "-Wno-unknown-pragmas -Wno-unknown-pragmas -Wno-unknown-pragmas"
open_solution "sign_open"
set_part {xc7a200tfbg676-2}
create_clock -period 15 -name default
config_interface  -expose_global  -m_axi_offset off -register_io off 
source "./qTesla_I_round2.prj/sign_open/directives_bk.tcl"
#csim_design
csynth_design
cosim_design
#export_design -rtl verilog -format ip_catalog
exit
