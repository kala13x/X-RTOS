################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
$(FREERTOS_SOURCE_PATH)/portable/MemMang/heap_4.c 

OBJS += \
./FreeRTOS/portable/MemMang/heap_4.o 

C_DEPS += \
./FreeRTOS/portable/MemMang/heap_4.d 

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

# Each subdirectory must supply rules for building sources it contributes
./FreeRTOS/portable/MemMang/heap_4.o: $(FREERTOS_SOURCE_PATH)/portable/MemMang/heap_4.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc $(C_INCLUDES) $(C_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


