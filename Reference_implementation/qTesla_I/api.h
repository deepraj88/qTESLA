/*************************************************************************************
* qTESLA: an efficient post-quantum signature scheme based on the R-LWE problem
*
* Abstract: API header file
**************************************************************************************/

#include "params.h"
#include <stdint.h>


#define CRYPTO_ALGNAME "qTesla-I"

#define CRYPTO_RANDOMBYTES 32
#define CRYPTO_SEEDBYTES 32
#define CRYPTO_C_BYTES 32
#define HM_BYTES 64

#define MLEN 3400

// Contains signature (z,c). z is a polynomial bounded by B, c is the output of a hashed string
#define CRYPTO_BYTES ((PARAM_N*(PARAM_B_BITS+1)+7)/8 + CRYPTO_C_BYTES)
// Contains polynomial s and e, and seeds seed_a and seed_y
#define CRYPTO_SECRETKEYBYTES (2*PARAM_S_BITS*PARAM_N/8 + 2*CRYPTO_SEEDBYTES)
// Contains seed_a and polynomial t
#define CRYPTO_PUBLICKEYBYTES ((PARAM_N*PARAM_Q_LOG+7)/8 + CRYPTO_SEEDBYTES)

int crypto_sign_keypair(unsigned char pk[CRYPTO_PUBLICKEYBYTES], unsigned char sk[CRYPTO_SECRETKEYBYTES]);

int crypto_sign(unsigned char sm[MLEN+CRYPTO_BYTES], unsigned long long smlen[1], const unsigned char m[MLEN], unsigned long long mlen, const unsigned char sk[CRYPTO_SECRETKEYBYTES]);

int crypto_sign_open(unsigned char m[MLEN], unsigned long long mlen[1], const unsigned char sm[MLEN+CRYPTO_BYTES], unsigned long long smlen, const unsigned char pk[CRYPTO_PUBLICKEYBYTES]);



