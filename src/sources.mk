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

# Source files to this variable
SOURCES = main.c\
	  memory.c
# Include paths to this variable
INCLUDES = -I../include/common/
# Additional source files and include paths for MSP432 platform
ifeq ($(PLATFORM), MSP432)
	SOURCES = $(SOURCES) \
		  interrupts_msp432p401r_gcc.c \
		  startup_msp432p401r_gcc.c \
		  system_msp432p401r.c
	INCLUDES = $(INCLUDES) \
		   -I../include/CMSIS/ \
		   -I../include/msp432/
endif
