set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -Ofast -mtune=cortex-a35 -mfpu=neon-vfpv4 -mfloat-abi=hard -ftree-vectorize -funsafe-math-optimizations")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Ofast -mtune=cortex-a35 -mfpu=neon-vfpv4 -mfloat-abi=hard -ftree-vectorize -funsafe-math-optimizations")
set(CMAKE_ASM_FLAGS "${CMAKE_ASM_FLAGS} -Ofast -mtune=cortex-a35 -mfpu=neon-vfpv4 -mfloat-abi=hard -ftree-vectorize -funsafe-math-optimizations")
