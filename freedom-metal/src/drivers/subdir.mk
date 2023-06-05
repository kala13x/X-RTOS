################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
./freedom-metal/src/drivers/fixed-clock.c \
./freedom-metal/src/drivers/fixed-factor-clock.c \
./freedom-metal/src/drivers/inline.c \
./freedom-metal/src/drivers/riscv_clint0.c \
./freedom-metal/src/drivers/riscv_cpu.c \
./freedom-metal/src/drivers/riscv_plic0.c \
./freedom-metal/src/drivers/sifive_buserror0.c \
./freedom-metal/src/drivers/sifive_ccache0.c \
./freedom-metal/src/drivers/sifive_clic0.c \
./freedom-metal/src/drivers/sifive_fe310-g000_hfrosc.c \
./freedom-metal/src/drivers/sifive_fe310-g000_hfxosc.c \
./freedom-metal/src/drivers/sifive_fe310-g000_lfrosc.c \
./freedom-metal/src/drivers/sifive_fe310-g000_pll.c \
./freedom-metal/src/drivers/sifive_fe310-g000_prci.c \
./freedom-metal/src/drivers/sifive_global-external-interrupts0.c \
./freedom-metal/src/drivers/sifive_gpio-buttons.c \
./freedom-metal/src/drivers/sifive_gpio-leds.c \
./freedom-metal/src/drivers/sifive_gpio-switches.c \
./freedom-metal/src/drivers/sifive_gpio0.c \
./freedom-metal/src/drivers/sifive_i2c0.c \
./freedom-metal/src/drivers/sifive_l2pf0.c \
./freedom-metal/src/drivers/sifive_local-external-interrupts0.c \
./freedom-metal/src/drivers/sifive_pwm0.c \
./freedom-metal/src/drivers/sifive_rtc0.c \
./freedom-metal/src/drivers/sifive_simuart0.c \
./freedom-metal/src/drivers/sifive_spi0.c \
./freedom-metal/src/drivers/sifive_test0.c \
./freedom-metal/src/drivers/sifive_trace.c \
./freedom-metal/src/drivers/sifive_uart0.c \
./freedom-metal/src/drivers/sifive_wdog0.c \
./freedom-metal/src/drivers/ucb_htif0.c 

OBJS += \
./freedom-metal/src/drivers/fixed-clock.o \
./freedom-metal/src/drivers/fixed-factor-clock.o \
./freedom-metal/src/drivers/inline.o \
./freedom-metal/src/drivers/riscv_clint0.o \
./freedom-metal/src/drivers/riscv_cpu.o \
./freedom-metal/src/drivers/riscv_plic0.o \
./freedom-metal/src/drivers/sifive_buserror0.o \
./freedom-metal/src/drivers/sifive_ccache0.o \
./freedom-metal/src/drivers/sifive_clic0.o \
./freedom-metal/src/drivers/sifive_fe310-g000_hfrosc.o \
./freedom-metal/src/drivers/sifive_fe310-g000_hfxosc.o \
./freedom-metal/src/drivers/sifive_fe310-g000_lfrosc.o \
./freedom-metal/src/drivers/sifive_fe310-g000_pll.o \
./freedom-metal/src/drivers/sifive_fe310-g000_prci.o \
./freedom-metal/src/drivers/sifive_global-external-interrupts0.o \
./freedom-metal/src/drivers/sifive_gpio-buttons.o \
./freedom-metal/src/drivers/sifive_gpio-leds.o \
./freedom-metal/src/drivers/sifive_gpio-switches.o \
./freedom-metal/src/drivers/sifive_gpio0.o \
./freedom-metal/src/drivers/sifive_i2c0.o \
./freedom-metal/src/drivers/sifive_l2pf0.o \
./freedom-metal/src/drivers/sifive_local-external-interrupts0.o \
./freedom-metal/src/drivers/sifive_pwm0.o \
./freedom-metal/src/drivers/sifive_rtc0.o \
./freedom-metal/src/drivers/sifive_simuart0.o \
./freedom-metal/src/drivers/sifive_spi0.o \
./freedom-metal/src/drivers/sifive_test0.o \
./freedom-metal/src/drivers/sifive_trace.o \
./freedom-metal/src/drivers/sifive_uart0.o \
./freedom-metal/src/drivers/sifive_wdog0.o \
./freedom-metal/src/drivers/ucb_htif0.o 

C_DEPS += \
./freedom-metal/src/drivers/fixed-clock.d \
./freedom-metal/src/drivers/fixed-factor-clock.d \
./freedom-metal/src/drivers/inline.d \
./freedom-metal/src/drivers/riscv_clint0.d \
./freedom-metal/src/drivers/riscv_cpu.d \
./freedom-metal/src/drivers/riscv_plic0.d \
./freedom-metal/src/drivers/sifive_buserror0.d \
./freedom-metal/src/drivers/sifive_ccache0.d \
./freedom-metal/src/drivers/sifive_clic0.d \
./freedom-metal/src/drivers/sifive_fe310-g000_hfrosc.d \
./freedom-metal/src/drivers/sifive_fe310-g000_hfxosc.d \
./freedom-metal/src/drivers/sifive_fe310-g000_lfrosc.d \
./freedom-metal/src/drivers/sifive_fe310-g000_pll.d \
./freedom-metal/src/drivers/sifive_fe310-g000_prci.d \
./freedom-metal/src/drivers/sifive_global-external-interrupts0.d \
./freedom-metal/src/drivers/sifive_gpio-buttons.d \
./freedom-metal/src/drivers/sifive_gpio-leds.d \
./freedom-metal/src/drivers/sifive_gpio-switches.d \
./freedom-metal/src/drivers/sifive_gpio0.d \
./freedom-metal/src/drivers/sifive_i2c0.d \
./freedom-metal/src/drivers/sifive_l2pf0.d \
./freedom-metal/src/drivers/sifive_local-external-interrupts0.d \
./freedom-metal/src/drivers/sifive_pwm0.d \
./freedom-metal/src/drivers/sifive_rtc0.d \
./freedom-metal/src/drivers/sifive_simuart0.d \
./freedom-metal/src/drivers/sifive_spi0.d \
./freedom-metal/src/drivers/sifive_test0.d \
./freedom-metal/src/drivers/sifive_trace.d \
./freedom-metal/src/drivers/sifive_uart0.d \
./freedom-metal/src/drivers/sifive_wdog0.d \
./freedom-metal/src/drivers/ucb_htif0.d 

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
./%.o: ./freedom-metal/src/drivers/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: Cross GCC Compiler'
	riscv64-unknown-elf-gcc $(C_INCLUDES) $(C_FLAGS) -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


