################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
$(FREERTOS_SOURCE_PATH)/portable/GCC/RISC-V/port.c 

S_UPPER_SRCS += \
$(FREERTOS_SOURCE_PATH)/portable/GCC/RISC-V/portASM.S 

OBJS += \
./FreeRTOS/portable/GCC/RISC-V/port.o \
./FreeRTOS/portable/GCC/RISC-V/portASM.o 

C_DEPS += \
./FreeRTOS/portable/GCC/RISC-V/port.d 

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
./FreeRTOS/portable/GCC/RISC-V/port.o: $(FREERTOS_SOURCE_PATH)/portable/GCC/RISC-V/port.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc $(C_INCLUDES) $(C_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

./FreeRTOS/portable/GCC/RISC-V/portASM.o: $(FREERTOS_SOURCE_PATH)/portable/GCC/RISC-V/portASM.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medlow -c -g3 $(ASM_INCLUDES) -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


