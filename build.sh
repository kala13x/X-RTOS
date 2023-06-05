#!/bin/bash

export PROJECT_ROOT=/opt/risk-v/workplace/X-RTOS
export FREERTOS_SOURCE=/opt/risk-v/FreeRTOS/FreeRTOS/Source
export PATH=$PATH:/opt/risk-v/toolchains/riscv64-unknown-elf-toolchain-10.2.0-2020.12.8-x86_64-linux-centos6/bin/

make -j $(nproc) all
