#!/bin/bash

export PATH=$PATH:/opt/risk-v/toolchains/riscv64-unknown-elf-toolchain-10.2.0-x86_64/bin/
export FREERTOS_SOURCE=/opt/risk-v/FreeRTOS/FreeRTOS/Source
export METAL_SDK_PATH=/opt/risk-v/freedom-metal
export PROJECT_ROOT=/opt/risk-v/workplace/X-RTOS

make -j $(nproc) all
