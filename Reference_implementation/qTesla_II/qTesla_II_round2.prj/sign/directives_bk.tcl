############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_allocation -limit 1 -type function "keccak_absorb" keccak_absorb
set_directive_inline "keccak_absorb"
set_directive_allocation -limit 1 -type function "keccak_squeezeblocks" keccak_squeezeblocks
set_directive_inline "keccak_squeezeblocks"
set_directive_allocation -limit 1 -type function "cshake128_simple_absorb" cshake128_simple_absorb
set_directive_inline "cshake128_simple_absorb"
set_directive_inline "load64"
set_directive_inline "store64"
set_directive_allocation -limit 1 -type function "shake128" shake128
set_directive_inline "shake128"
set_directive_allocation -limit 1 -type function "load64" load64
set_directive_allocation -limit 1 -type function "store64" store64
set_directive_allocation -limit 1 -type function "NTT" NTT
set_directive_inline "NTT"
set_directive_allocation -limit 1 -type function "invNTT" invNTT
set_directive_inline "invNTT"
set_directive_unroll -factor 128 "nttInit/nttInit_label0"
set_directive_pipeline "nttInit/nttInit_label0"
