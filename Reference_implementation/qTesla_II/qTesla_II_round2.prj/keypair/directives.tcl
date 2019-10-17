############################################################
## This file is generated automatically by Vivado HLS.
## Please DO NOT edit it.
## Copyright (C) 1986-2018 Xilinx, Inc. All Rights Reserved.
############################################################
set_directive_inline "keccak_absorb"
set_directive_allocation -limit 1 -type function "keccak_absorb" keccak_absorb
set_directive_allocation -limit 1 -type function "keccak_squeezeblocks" keccak_squeezeblocks
set_directive_inline "keccak_squeezeblocks"
set_directive_allocation -limit 1 -type function "shake128" shake128
set_directive_inline "shake128"
set_directive_unroll -factor 64 "nttInit/nttInit_label0"
set_directive_allocation -limit 1 -type function "knuthMergeExchangeG" knuthMergeExchangeG
set_directive_inline "knuthMergeExchangeG"
set_directive_unroll -factor 64 "kmxGauss/kmxGauss_label3"
set_directive_pipeline "kmxGauss/kmxGauss_label3"
set_directive_unroll -factor 64 "kmxGauss/kmxGauss_label4"
set_directive_pipeline "kmxGauss/kmxGauss_label4"
set_directive_unroll -factor 64 "kmxGauss/kmxGauss_label5"
set_directive_pipeline "kmxGauss/kmxGauss_label5"
set_directive_unroll -factor 64 "kmxGauss/kmxGauss_label6"
set_directive_pipeline "kmxGauss/kmxGauss_label6"
set_directive_unroll -factor 64 "kmxGauss/kmxGauss_label7"
set_directive_pipeline "kmxGauss/kmxGauss_label7"
set_directive_unroll -factor 64 "kmxGauss/kmxGauss_label8"
set_directive_pipeline "kmxGauss/kmxGauss_label8"
set_directive_unroll -factor 64 "check_ES/check_ES_label0"
set_directive_pipeline "check_ES/check_ES_label0"
set_directive_unroll -factor 64 "NTT/NTT_label1"
set_directive_pipeline "NTT/NTT_label1"
set_directive_unroll -factor 64 "invNTT/invNTT_label2"
set_directive_pipeline "invNTT/invNTT_label2"
set_directive_allocation -limit 1 -type function "cshake128_simple" cshake128_simple
set_directive_inline "cshake128_simple"
