#!/bin/bash
#
# Copyright (c) 2021 CloudedQuartz
#

# Script to set up environment to build an android kernel
# Assumes required packages are already installed

# Config
CURRENT_DIR="$(pwd)"
KERNELNAME="PolarKernel"
KERNEL_DIR="$CURRENT_DIR"
AK_DIR="$KERNEL_DIR/AnyKernel3"
GCC32_DIR="$HOME/Toolchains/arm32-gcc"
GCC64_DIR="$HOME/Toolchains/arm64-gcc"
# End Config

# clone_tc - clones proton clang to TC_DIR
clone_tc() {
	git clone --depth=1 https://github.com/mvaisakh/gcc-arm $GCC32_DIR
	git clone --depth=1 https://github.com/mvaisakh/gcc-arm64 $GCC64_DIR
}

# Actually do stuff
clone_tc

# Run build script
. ${CURRENT_DIR}/kernel_build.sh
