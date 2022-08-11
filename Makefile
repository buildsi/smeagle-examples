# default compiler
CXX ?= g++
CC ?= gcc

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  ?= -g -Wall
CXXFLAGS ?= -g -Wall
LIBS = ./
BREAKS = ./*/breaks

all: libs breaks
.PHONY: libs breaks

breaks: $(BREAKS)/*
	for dir in $^ ; do \
		echo "Building break" $${dir} ; \
		$(MAKE) CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" -C $${dir}; \
	done


libs: $(LIBS)/*
	for dir in $^ ; do \
		echo "Building" $${dir} ; \
		$(MAKE) "${CXX}" CXXFLAGS="${CXXFLAGS}" -C $${dir}; \
	done

