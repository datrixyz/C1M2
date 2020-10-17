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

# Source files and include path is provided for HOST platform.
# MSP432 platform source files and include paths will be added in Makefile
# in proper condition.

# Source files to this variable
SOURCES =main.c\
	 memory.c
# Include paths to this variable
INCLUDES = -I../include/common
