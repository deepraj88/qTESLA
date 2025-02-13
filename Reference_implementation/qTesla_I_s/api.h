/*************************************************************************************
* qTESLA: an efficient post-quantum signature scheme based on the R-LWE problem
*
* Abstract: API header file
**************************************************************************************/

#include "params.h"
#include <stdint.h>


#define CRYPTO_ALGNAME "qTesla-I-s"

#define CRYPTO_RANDOMBYTES 32
#define CRYPTO_SEEDBYTES 32
#define CRYPTO_C_BYTES 32
#define HM_BYTES 64

#define SPLIT_KEY 1  // Use public key splitting technique to reduce public key size

// Contains signature (z,c,h). z is a polynomial bounded by B, c is the output of a hashed string, h is a hint for reducing the pk size
#define CRYPTO_BYTES ((PARAM_N*(PARAM_B_BITS+1)+7)/8 + CRYPTO_C_BYTES + (3*PARAM_N)/8)
// Contains polynomial s and e, and seeds seed_a and seed_y
#define CRYPTO_SECRETKEYBYTES ((2*PARAM_S_BITS+PARAM_SPLIT)*PARAM_N/8 + 2*CRYPTO_SEEDBYTES)
// Contains seed_a and polynomial t
#define CRYPTO_PUBLICKEYBYTES ((PARAM_N*(PARAM_Q_LOG-PARAM_SPLIT)+7)/8 + CRYPTO_SEEDBYTES)

int crypto_sign_keypair(
    unsigned char *,
    unsigned char *
    );

int crypto_sign(
    unsigned char *,unsigned long long *,
    const unsigned char *,unsigned long long,
    const unsigned char *
    );

int crypto_sign_open(
    unsigned char *,unsigned long long *,
    const unsigned char *,unsigned long long,
    const unsigned char *
    );


