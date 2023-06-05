################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
./freedom-metal/src/atomic.c \
./freedom-metal/src/button.c \
./freedom-metal/src/cache.c \
./freedom-metal/src/clock.c \
./freedom-metal/src/cpu.c \
./freedom-metal/src/gpio.c \
./freedom-metal/src/hpm.c \
./freedom-metal/src/i2c.c \
./freedom-metal/src/init.c \
./freedom-metal/src/interrupt.c \
./freedom-metal/src/led.c \
./freedom-metal/src/lock.c \
./freedom-metal/src/memory.c \
./freedom-metal/src/pmp.c \
./freedom-metal/src/privilege.c \
./freedom-metal/src/pwm.c \
./freedom-metal/src/rtc.c \
./freedom-metal/src/shutdown.c \
./freedom-metal/src/spi.c \
./freedom-metal/src/switch.c \
./freedom-metal/src/synchronize_harts.c \
./freedom-metal/src/time.c \
./freedom-metal/src/timer.c \
./freedom-metal/src/tty.c \
./freedom-metal/src/uart.c \
./freedom-metal/src/watchdog.c 

S_UPPER_SRCS += \
./freedom-metal/src/entry.S \
./freedom-metal/src/scrub.S \
./freedom-metal/src/trap.S \
./freedom-metal/src/vector.S 

OBJS += \
./freedom-metal/src/atomic.o \
./freedom-metal/src/button.o \
./freedom-metal/src/cache.o \
./freedom-metal/src/clock.o \
./freedom-metal/src/cpu.o \
./freedom-metal/src/entry.o \
./freedom-metal/src/gpio.o \
./freedom-metal/src/hpm.o \
./freedom-metal/src/i2c.o \
./freedom-metal/src/init.o \
./freedom-metal/src/interrupt.o \
./freedom-metal/src/led.o \
./freedom-metal/src/lock.o \
./freedom-metal/src/memory.o \
./freedom-metal/src/pmp.o \
./freedom-metal/src/privilege.o \
./freedom-metal/src/pwm.o \
./freedom-metal/src/rtc.o \
./freedom-metal/src/scrub.o \
./freedom-metal/src/shutdown.o \
./freedom-metal/src/spi.o \
./freedom-metal/src/switch.o \
./freedom-metal/src/synchronize_harts.o \
./freedom-metal/src/time.o \
./freedom-metal/src/timer.o \
./freedom-metal/src/trap.o \
./freedom-metal/src/tty.o \
./freedom-metal/src/uart.o \
./freedom-metal/src/vector.o \
./freedom-metal/src/watchdog.o 

C_DEPS += \
./freedom-metal/src/atomic.d \
./freedom-metal/src/button.d \
./freedom-metal/src/cache.d \
./freedom-metal/src/clock.d \
./freedom-metal/src/cpu.d \
./freedom-metal/src/gpio.d \
./freedom-metal/src/hpm.d \
./freedom-metal/src/i2c.d \
./freedom-metal/src/init.d \
./freedom-metal/src/interrupt.d \
./freedom-metal/src/led.d \
./freedom-metal/src/lock.d \
./freedom-metal/src/memory.d \
./freedom-metal/src/pmp.d \
./freedom-metal/src/privilege.d \
./freedom-metal/src/pwm.d \
./freedom-metal/src/rtc.d \
./freedom-metal/src/shutdown.d \
./freedom-metal/src/spi.d \
./freedom-metal/src/switch.d \
./freedom-metal/src/synchronize_harts.d \
./freedom-metal/src/time.d \
./freedom-metal/src/timer.d \
./freedom-metal/src/tty.d \
./freedom-metal/src/uart.d \
./freedom-metal/src/watchdog.d 

C_INCLUDES := \
	-I"$(PROJECT_ROOT)" \
	-I"$(FREERTOS_SOURCE)/include" \
	-I"$(FREERTOS_SOURCE)/portable/GCC/RISC-V" \
	-I"$(PROJECT_ROOT)/bsp/install/include" \
	-I"$(PROJECT_ROOT)/freedom-metal" \

C_FLAGS := \
	-O0 -g3 -Wall -Wextra -c -fmessage-length=0 \
	-march=rv32imac -mabi=ilp32 -mcmodel=medlow \
	--specs=nano.specs -Wno-unused-parameter \
	-ffunction-sections -fdata-sections

# Each subdirectory must supply rules for building sources it contributes
./freedom-metal/src/%.o: ./freedom-metal/src/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc $(C_INCLUDES) $(C_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '

./freedom-metal/src/%.o: ./freedom-metal/src/%.S
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Assembler'
	riscv64-unknown-elf-gcc -march=rv32imac -mabi=ilp32 -mcmodel=medlow -c -g3 -I"$(FREERTOS_SOURCE)/portable/GCC/RISC-V/chip_specific_extensions/RV32I_CLINT_no_extensions" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


