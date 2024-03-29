################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
$(FREEDOM_METAL_PATH)/gloss/nanosleep.c \
$(FREEDOM_METAL_PATH)/gloss/sys_access.c \
$(FREEDOM_METAL_PATH)/gloss/sys_chdir.c \
$(FREEDOM_METAL_PATH)/gloss/sys_chmod.c \
$(FREEDOM_METAL_PATH)/gloss/sys_chown.c \
$(FREEDOM_METAL_PATH)/gloss/sys_clock_gettime.c \
$(FREEDOM_METAL_PATH)/gloss/sys_close.c \
$(FREEDOM_METAL_PATH)/gloss/sys_execve.c \
$(FREEDOM_METAL_PATH)/gloss/sys_exit.c \
$(FREEDOM_METAL_PATH)/gloss/sys_faccessat.c \
$(FREEDOM_METAL_PATH)/gloss/sys_fork.c \
$(FREEDOM_METAL_PATH)/gloss/sys_fstat.c \
$(FREEDOM_METAL_PATH)/gloss/sys_fstatat.c \
$(FREEDOM_METAL_PATH)/gloss/sys_ftime.c \
$(FREEDOM_METAL_PATH)/gloss/sys_getcwd.c \
$(FREEDOM_METAL_PATH)/gloss/sys_getpid.c \
$(FREEDOM_METAL_PATH)/gloss/sys_gettimeofday.c \
$(FREEDOM_METAL_PATH)/gloss/sys_isatty.c \
$(FREEDOM_METAL_PATH)/gloss/sys_kill.c \
$(FREEDOM_METAL_PATH)/gloss/sys_link.c \
$(FREEDOM_METAL_PATH)/gloss/sys_lseek.c \
$(FREEDOM_METAL_PATH)/gloss/sys_lstat.c \
$(FREEDOM_METAL_PATH)/gloss/sys_open.c \
$(FREEDOM_METAL_PATH)/gloss/sys_openat.c \
$(FREEDOM_METAL_PATH)/gloss/sys_read.c \
$(FREEDOM_METAL_PATH)/gloss/sys_sbrk.c \
$(FREEDOM_METAL_PATH)/gloss/sys_stat.c \
$(FREEDOM_METAL_PATH)/gloss/sys_sysconf.c \
$(FREEDOM_METAL_PATH)/gloss/sys_times.c \
$(FREEDOM_METAL_PATH)/gloss/sys_unlink.c \
$(FREEDOM_METAL_PATH)/gloss/sys_utime.c \
$(FREEDOM_METAL_PATH)/gloss/sys_wait.c \
$(FREEDOM_METAL_PATH)/gloss/sys_write.c

S_UPPER_SRCS += \
$(FREEDOM_METAL_PATH)/gloss/crt0.S 

OBJS += \
./MetalSDK/gloss/crt0.o \
./MetalSDK/gloss/nanosleep.o \
./MetalSDK/gloss/sys_access.o \
./MetalSDK/gloss/sys_chdir.o \
./MetalSDK/gloss/sys_chmod.o \
./MetalSDK/gloss/sys_chown.o \
./MetalSDK/gloss/sys_clock_gettime.o \
./MetalSDK/gloss/sys_close.o \
./MetalSDK/gloss/sys_execve.o \
./MetalSDK/gloss/sys_exit.o \
./MetalSDK/gloss/sys_faccessat.o \
./MetalSDK/gloss/sys_fork.o \
./MetalSDK/gloss/sys_fstat.o \
./MetalSDK/gloss/sys_fstatat.o \
./MetalSDK/gloss/sys_ftime.o \
./MetalSDK/gloss/sys_getcwd.o \
./MetalSDK/gloss/sys_getpid.o \
./MetalSDK/gloss/sys_gettimeofday.o \
./MetalSDK/gloss/sys_isatty.o \
./MetalSDK/gloss/sys_kill.o \
./MetalSDK/gloss/sys_link.o \
./MetalSDK/gloss/sys_lseek.o \
./MetalSDK/gloss/sys_lstat.o \
./MetalSDK/gloss/sys_open.o \
./MetalSDK/gloss/sys_openat.o \
./MetalSDK/gloss/sys_read.o \
./MetalSDK/gloss/sys_sbrk.o \
./MetalSDK/gloss/sys_stat.o \
./MetalSDK/gloss/sys_sysconf.o \
./MetalSDK/gloss/sys_times.o \
./MetalSDK/gloss/sys_unlink.o \
./MetalSDK/gloss/sys_utime.o \
./MetalSDK/gloss/sys_wait.o \
./MetalSDK/gloss/sys_write.o 

C_DEPS += \
./MetalSDK/gloss/nanosleep.d \
./MetalSDK/gloss/sys_access.d \
./MetalSDK/gloss/sys_chdir.d \
./MetalSDK/gloss/sys_chmod.d \
./MetalSDK/gloss/sys_chown.d \
./MetalSDK/gloss/sys_clock_gettime.d \
./MetalSDK/gloss/sys_close.d \
./MetalSDK/gloss/sys_execve.d \
./MetalSDK/gloss/sys_exit.d \
./MetalSDK/gloss/sys_faccessat.d \
./MetalSDK/gloss/sys_fork.d \
./MetalSDK/gloss/sys_fstat.d \
./MetalSDK/gloss/sys_fstatat.d \
./MetalSDK/gloss/sys_ftime.d \
./MetalSDK/gloss/sys_getcwd.d \
./MetalSDK/gloss/sys_getpid.d \
./MetalSDK/gloss/sys_gettimeofday.d \
./MetalSDK/gloss/sys_isatty.d \
./MetalSDK/gloss/sys_kill.d \
./MetalSDK/gloss/sys_link.d \
./MetalSDK/gloss/sys_lseek.d \
./MetalSDK/gloss/sys_lstat.d \
./MetalSDK/gloss/sys_open.d \
./MetalSDK/gloss/sys_openat.d \
./MetalSDK/gloss/sys_read.d \
./MetalSDK/gloss/sys_sbrk.d \
./MetalSDK/gloss/sys_stat.d \
./MetalSDK/gloss/sys_sysconf.d \
./MetalSDK/gloss/sys_times.d \
./MetalSDK/gloss/sys_unlink.d \
./MetalSDK/gloss/sys_utime.d \
./MetalSDK/gloss/sys_wait.d \
./MetalSDK/gloss/sys_write.d 

C_INCLUDES := \
	-I"$(XRTOS_ROOT_PATH)" \
	-I"$(FREEDOM_METAL_PATH)" \
	-I"$(FREERTOS_SOURCE_PATH)/include" \
	-I"$(FREERTOS_SOURCE_PATH)/portable/GCC/RISC-V" \
	-I"$(XRTOS_ROOT_PATH)/bsp/install/include" \

C_FLAGS := \
	-O0 -g3 -Wall -Wextra -c -fmessage-length=0 \
	-march=rv32imac -mabi=ilp32 -mcmodel=medlow \
	--specs=nano.specs -Wno-unused-parameter \
	-ffunction-sections -fdata-sections

ASM_INCLUDES := -I"$(FREERTOS_SOURCE_PATH)/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions"

# Each subdirectory must supply rules for building sources it contributes
./MetalSDK/gloss/%.o: $(FREEDOM_METAL_PATH)/gloss/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medlow -c -g3 $(ASM_INCLUDES) -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

./MetalSDK/gloss/%.o: $(FREEDOM_METAL_PATH)/gloss/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc $(C_INCLUDES) $(C_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


