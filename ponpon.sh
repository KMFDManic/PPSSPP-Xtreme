#!/bin/bash
TOOLCHAIN="/media/psclassic/easystore/armlibs/z.toolchain/arm32_gcc6.5_static/armv8-pony-linux-gnueabihf"
#TOOLCHAIN="/home/psclassic/toolchain/arm32/armv8-pon-linux-gnueabihf"
export SYSROOT=${TOOLCHAIN}"/armv8-pony-linux-gnueabihf/sysroot"
export BINPATH=${TOOLCHAIN}"/bin"

export CROSS=${BINPATH}/armv8-pony-linux-gnueabihf-

export CC=${CROSS}gcc 
export CXX=${CROSS}g++
export AS=${CROSS}as
export LD=${CROSS}ld
export RANLIB=${CROSS}ranlib
export STRIP=${CROSS}strip
export AR=${CROSS}ar

export CCFLAGS="-Ofast -mtune=cortex-a35 -mfpu=neon-vfpv4 -mfloat-abi=hard -ftree-vectorize -funsafe-math-optimizations --sysroot=/media/psclassic/easystore/armlibs/z.toolchain/arm32_gcc6.5_static/armv8-pony-linux-gnueabihf/armv8-pony-linux-gnueabihf/sysroot"
export CXXFLAGS="-Ofast -mtune=cortex-a35 -mfpu=neon-vfpv4 -mfloat-abi=hard -ftree-vectorize -funsafe-math-optimizations --sysroot=/media/psclassic/easystore/armlibs/z.toolchain/arm32_gcc6.5_static/armv8-pony-linux-gnueabihf/armv8-pony-linux-gnueabihf/sysroot"

#cmake -DCMAKE_INSTALL_PREFIX="/usr/lib/arm-linux-gnueabihf"

cmake -Bbuild-release8 -DCMAKE_TOOLCHAIN_FILE=cmake/Toolchains/generic.armv7.cmake
#./b.sh
#make -j3

#export CFLAGS="-O3 -marm -mtune=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=hard" 
#export CXXFLAGS="-O3 -marm -mtune=cortex-a7 -mfpu=neon-vfpv4 -mfloat-abi=hard"

#LD_LIBRARY_PATH="/usr/lib/arm-linux-gnueabihf"

#./configure --disable-x11 --host=arm-linux-gnueabihf --prefix=/home/psclassic/arm2/dosboxx_dyn/usr 
#--host=armv7l-unknown-linux-gnueabihf
#./autogen.sh
#make TARGET_PSC=1 -j4
#make clean
#make -j3
#LD_DEBUG=all make
