/*************************************************************************************
* qTESLA: an efficient post-quantum signature scheme based on the R-LWE problem
*
* Abstract: CDT constants for the Gaussian sampler
**************************************************************************************/

#ifndef CDTSAMP
#define CDTSAMP

#include <stdint.h>
#include "params.h"


// Sigma = 8.5, 64-bit precision

#define CDT_ROWS 78
#define CDT_COLS 2

static const int32_t cdt_v[CDT_ROWS*CDT_COLS] = {
    0x00000000L, 0x00000000L, // 0
    0x0601F22AL, 0x280663D4L, // 1
    0x11F09FFAL, 0x162FE23DL, // 2
    0x1DA089E9L, 0x437226E8L, // 3
    0x28EAB25DL, 0x04C51FE2L, // 4
    0x33AC2F26L, 0x14FDBA70L, // 5
    0x3DC767DCL, 0x4565C960L, // 6
    0x4724FC62L, 0x3342C78AL, // 7
    0x4FB448F4L, 0x5229D06DL, // 8
    0x576B8599L, 0x7423407FL, // 9
    0x5E4786DAL, 0x3210BAF7L, // 10
    0x644B2C92L, 0x431B3947L, // 11
    0x697E90CEL, 0x77C362C4L, // 12
    0x6DEE0B96L, 0x2798C9CEL, // 13
    0x71A92144L, 0x5765FCE4L, // 14
    0x74C16FD5L, 0x1E2A0990L, // 15
    0x7749AC92L, 0x0DF36EEBL, // 16
    0x7954BFA4L, 0x28079289L, // 17
    0x7AF5067AL, 0x2EDC2050L, // 18
    0x7C3BC17CL, 0x123D5E7BL, // 19
    0x7D38AD76L, 0x2A9381D9L, // 20
    0x7DF9C5DFL, 0x0E868CA7L, // 21
    0x7E8B2ABAL, 0x18E5C811L, // 22
    0x7EF7237CL, 0x00908272L, // 23
    0x7F4637C5L, 0x6DBA5126L, // 24
    0x7F7F5707L, 0x4A52EDEBL, // 25
    0x7FA808CCL, 0x23290599L, // 26
    0x7FC4A083L, 0x69BDF2D5L, // 27
    0x7FD870CAL, 0x42275558L, // 28
    0x7FE5FB5DL, 0x3EF82C1BL, // 29
    0x7FEF1BFAL, 0x6C03A362L, // 30
    0x7FF52D4EL, 0x316C2C8CL, // 31
    0x7FF927BAL, 0x12AE54AFL, // 32
    0x7FFBBA43L, 0x749CC0E2L, // 33
    0x7FFD5E3DL, 0x4524AD91L, // 34
    0x7FFE6664L, 0x535785B5L, // 35
    0x7FFF0A41L, 0x0B291681L, // 36
    0x7FFF6E81L, 0x132C3D6FL, // 37
    0x7FFFAAFEL, 0x4DBC6BEDL, // 38
    0x7FFFCEFDL, 0x7A1E2D14L, // 39
    0x7FFFE41EL, 0x4C6EC115L, // 40
    0x7FFFF059L, 0x319503C8L, // 41
    0x7FFFF754L, 0x5DDD0D40L, // 42
    0x7FFFFB43L, 0x0B9E9823L, // 43
    0x7FFFFD71L, 0x76B81AE1L, // 44
    0x7FFFFEA3L, 0x7E66A1ECL, // 45
    0x7FFFFF49L, 0x26F6E191L, // 46
    0x7FFFFFA1L, 0x2FA31694L, // 47
    0x7FFFFFCFL, 0x5247BEC9L, // 48
    0x7FFFFFE7L, 0x4F4127C7L, // 49
    0x7FFFFFF3L, 0x6FAA69FDL, // 50
    0x7FFFFFFAL, 0x0630D073L, // 51
    0x7FFFFFFDL, 0x0F2957BBL, // 52
    0x7FFFFFFEL, 0x4FD29432L, // 53
    0x7FFFFFFFL, 0x2CFAD60DL, // 54
    0x7FFFFFFFL, 0x5967A930L, // 55
    0x7FFFFFFFL, 0x6E4C9DFFL, // 56
    0x7FFFFFFFL, 0x77FDCCC8L, // 57
    0x7FFFFFFFL, 0x7C6CE89EL, // 58
    0x7FFFFFFFL, 0x7E6D116FL, // 59
    0x7FFFFFFFL, 0x7F50FA31L, // 60
    0x7FFFFFFFL, 0x7FB50089L, // 61
    0x7FFFFFFFL, 0x7FE04C2DL, // 62
    0x7FFFFFFFL, 0x7FF2C7C1L, // 63
    0x7FFFFFFFL, 0x7FFA8FE3L, // 64
    0x7FFFFFFFL, 0x7FFDCB1BL, // 65
    0x7FFFFFFFL, 0x7FFF1DE2L, // 66
    0x7FFFFFFFL, 0x7FFFA6B7L, // 67
    0x7FFFFFFFL, 0x7FFFDD39L, // 68
    0x7FFFFFFFL, 0x7FFFF2A3L, // 69
    0x7FFFFFFFL, 0x7FFFFAEFL, // 70
    0x7FFFFFFFL, 0x7FFFFE1BL, // 71
    0x7FFFFFFFL, 0x7FFFFF4DL, // 72
    0x7FFFFFFFL, 0x7FFFFFBFL, // 73
    0x7FFFFFFFL, 0x7FFFFFE9L, // 74
    0x7FFFFFFFL, 0x7FFFFFF8L, // 75
    0x7FFFFFFFL, 0x7FFFFFFDL, // 76
    0x7FFFFFFFL, 0x7FFFFFFFL, // 77
}; // cdt_v

// memory requirements:
//     2048 samples: 25512 bytes
//     1024 samples: 13224 bytes
//      512 samples:  7080 bytes
//      256 samples:  4008 bytes
//      128 samples:  2472 bytes
//       64 samples:  1704 bytes
//       32 samples:  1320 bytes
// table alone: 624 bytes

#endif 