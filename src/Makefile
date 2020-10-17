#******************************************************************************
# Copyright (C) 2017 by Alex Fosdick - University of Colorado
#
# Redistribution, modification or use of this software in source or binary
# forms is permitted as long as the files maintain this copyright. Users are 
# permitted to modify this and use it to learn about the field of embedded
# software. Alex Fosdick and the University of Colorado are not liable for any
# misuse of this material. 
#
#*****************************************************************************

#------------------------------------------------------------------------------
# Makefile for the host machine(linux) and TI MSP432 build system
#
# Use: make [TARGET] [PLATFORM-OVERRIDES]
#
# Build Targets:
#      <FILE>.i - Generates the preprocessed output file(s)
#      <FILE>.asm - Generates assembly output file(s)
#      <FILE>.o - Builds object file(s)
#      compile-all - Compiles all object files
#      build - Compiles all object files and link into a final executable
#      clean - Removes all generated files
#
# Platform Overrides:
#      HOST - Native host compilation
#      MSP432 - Cross compilation
#
#------------------------------------------------------------------------------
include sources.mk

# Platform Overrides
PLATFORM = HOST
TARGET = c1m2

# Architectures Specific Flags(ARM only)
ifeq($(PLATFORM), MSP432)
	LINKER_FILE := ../msp432p401r.lds
	CPU := cortex-m4
	ARCH := armv7e-m
	SPECS := nosys.specS
endif
# Compiler Flags and Defines
ifeq($(PLATFORM), MSP432)
	CC = arm-none-eabi-gcc
	LD = arm-none-eabi-ld
	LDFLAGS = -Wl, -MAP=$(TARGET).map -T $(LINKER_FILE)
	CFLAGS = -Wall -Werror -g -O0 -std=c99  -mcpu=$(CPU) \
		 -march=$(ARCH) -mthumb --specs=$(SPECS) \
		 -mfpu=fpv4-sp-d16 -mfolat-abi=hard
	CPPFLAGS = -D$(PLATFORM)
endif
else
	CC = gcc
	LD = ld
	LDFLAGS = -Wl, -MAP=$(TARGET).map
	CFLAGS = -Wall -Werror -g -O0 -std=c99
	CPPFLAGS = -D$(PLATFORM) 
endif

