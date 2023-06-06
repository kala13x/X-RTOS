################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
$(METAL_SDK_PATH)/src/atomic.c \
$(METAL_SDK_PATH)/src/button.c \
$(METAL_SDK_PATH)/src/cache.c \
$(METAL_SDK_PATH)/src/clock.c \
$(METAL_SDK_PATH)/src/cpu.c \
$(METAL_SDK_PATH)/src/gpio.c \
$(METAL_SDK_PATH)/src/hpm.c \
$(METAL_SDK_PATH)/src/i2c.c \
$(METAL_SDK_PATH)/src/init.c \
$(METAL_SDK_PATH)/src/interrupt.c \
$(METAL_SDK_PATH)/src/led.c \
$(METAL_SDK_PATH)/src/lock.c \
$(METAL_SDK_PATH)/src/memory.c \
$(METAL_SDK_PATH)/src/pmp.c \
$(METAL_SDK_PATH)/src/privilege.c \
$(METAL_SDK_PATH)/src/pwm.c \
$(METAL_SDK_PATH)/src/rtc.c \
$(METAL_SDK_PATH)/src/shutdown.c \
$(METAL_SDK_PATH)/src/spi.c \
$(METAL_SDK_PATH)/src/switch.c \
$(METAL_SDK_PATH)/src/synchronize_harts.c \
$(METAL_SDK_PATH)/src/time.c \
$(METAL_SDK_PATH)/src/timer.c \
$(METAL_SDK_PATH)/src/tty.c \
$(METAL_SDK_PATH)/src/uart.c \
$(METAL_SDK_PATH)/src/watchdog.c

S_UPPER_SRCS += \
$(METAL_SDK_PATH)/src/entry.S \
$(METAL_SDK_PATH)/src/scrub.S \
$(METAL_SDK_PATH)/src/trap.S \
$(METAL_SDK_PATH)/src/vector.S 

OBJS += \
./MetalSDK/src/atomic.o \
./MetalSDK/src/button.o \
./MetalSDK/src/cache.o \
./MetalSDK/src/clock.o \
./MetalSDK/src/cpu.o \
./MetalSDK/src/entry.o \
./MetalSDK/src/gpio.o \
./MetalSDK/src/hpm.o \
./MetalSDK/src/i2c.o \
./MetalSDK/src/init.o \
./MetalSDK/src/interrupt.o \
./MetalSDK/src/led.o \
./MetalSDK/src/lock.o \
./MetalSDK/src/memory.o \
./MetalSDK/src/pmp.o \
./MetalSDK/src/privilege.o \
./MetalSDK/src/pwm.o \
./MetalSDK/src/rtc.o \
./MetalSDK/src/scrub.o \
./MetalSDK/src/shutdown.o \
./MetalSDK/src/spi.o \
./MetalSDK/src/switch.o \
./MetalSDK/src/synchronize_harts.o \
./MetalSDK/src/time.o \
./MetalSDK/src/timer.o \
./MetalSDK/src/trap.o \
./MetalSDK/src/tty.o \
./MetalSDK/src/uart.o \
./MetalSDK/src/vector.o \
./MetalSDK/src/watchdog.o 

C_DEPS += \
./MetalSDK/src/atomic.d \
./MetalSDK/src/button.d \
./MetalSDK/src/cache.d \
./MetalSDK/src/clock.d \
./MetalSDK/src/cpu.d \
./MetalSDK/src/gpio.d \
./MetalSDK/src/hpm.d \
./MetalSDK/src/i2c.d \
./MetalSDK/src/init.d \
./MetalSDK/src/interrupt.d \
./MetalSDK/src/led.d \
./MetalSDK/src/lock.d \
./MetalSDK/src/memory.d \
./MetalSDK/src/pmp.d \
./MetalSDK/src/privilege.d \
./MetalSDK/src/pwm.d \
./MetalSDK/src/rtc.d \
./MetalSDK/src/shutdown.d \
./MetalSDK/src/spi.d \
./MetalSDK/src/switch.d \
./MetalSDK/src/synchronize_harts.d \
./MetalSDK/src/time.d \
./MetalSDK/src/timer.d \
./MetalSDK/src/tty.d \
./MetalSDK/src/uart.d \
./MetalSDK/src/watchdog.d 

C_INCLUDES := \
	-I"$(PROJECT_ROOT)" \
	-I"$(METAL_SDK_PATH)" \
	-I"$(FREERTOS_SOURCE)/include" \
	-I"$(FREERTOS_SOURCE)/portable/GCC/RISC-V" \
	-I"$(PROJECT_ROOT)/bsp/install/include" \

C_FLAGS := \
	-O0 -g3 -Wall -Wextra -c -fmessage-length=0 \
	-march=rv32imac -mabi=ilp32 -mcmodel=medlow \
	--specs=nano.specs -Wno-unused-parameter \
	-ffunction-sections -fdata-sections

ASM_INCLUDES := -I"$(FREERTOS_SOURCE)/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions"

# Each subdirectory must supply rules for building sources it contributes
./MetalSDK/src/%.o: $(METAL_SDK_PATH)/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc $(C_INCLUDES) $(C_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

./MetalSDK/src/%.o: $(METAL_SDK_PATH)/src/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medlow -c -g3 $(ASM_INCLUDES) -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


