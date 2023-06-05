################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include freedom-metal/src/drivers/subdir.mk
-include freedom-metal/src/subdir.mk
-include freedom-metal/gloss/subdir.mk
-include FreeRTOS/portable/MemMang/subdir.mk
-include FreeRTOS/portable/GCC/RISC-V/subdir.mk
-include FreeRTOS/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 

# All Target
all: X-RTOS

X_FLAGS := \
	-nostartfiles -Xlinker --gc-sections -Wl,-Map,X-RTOS.map \
	-T./bsp/metal.default.lds -march=rv32imac -mabi=ilp32 \
	-mcmodel=medlow -Wl,--start-group -lc -lgcc -Wl,--end-group \
	--specs=nano.specs -Xlinker --defsym=__heap_max=1

# Tool invocations
X-RTOS: $(OBJS) $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: Cross GCC Linker'
	riscv64-unknown-elf-gcc $(X_FLAGS) -o "X-RTOS" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '
	$(MAKE) --no-print-directory post-build

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(C_DEPS) X-RTOS X-RTOS.bin X-RTOS.map
	-@echo ' '

post-build:
	-riscv64-unknown-elf-objcopy -O binary X-RTOS X-RTOS.bin
	-@echo ' '

.PHONY: all clean dependents post-build

-include makefile.targets
