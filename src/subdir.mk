################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
./src/main.c \
./src/sifive.c 

OBJS += \
./src/main.o \
./src/sifive.o 

C_DEPS += \
./src/main.d \
./src/sifive.d 

C_INCLUDES += \
	-I"$(PROJECT_ROOT)" \
	-I"$(FREERTOS_SOURCE)/include" \
	-I"$(FREERTOS_SOURCE)/portable/GCC/RISC-V" \
	-I"$(PROJECT_ROOT)/bsp/install/include" \
	-I"$(PROJECT_ROOT)/freedom-metal"

C_FLAGS := \
	-O0 -g3 -Wall -Wextra -c -fmessage-length=0 \
	-march=rv32imac -mabi=ilp32 -mcmodel=medlow \
	--specs=nano.specs -Wno-unused-parameter \
	-ffunction-sections -fdata-sections

# Each subdirectory must supply rules for building sources it contributes
./%.o: ./%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc $(C_INCLUDES) $(C_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


