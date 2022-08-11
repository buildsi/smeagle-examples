# default compiler
CC = gcc

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CFLAGS  = -g -Wall
LIBS = ./
BREAKS = ./*/breaks

all: libs breaks

.PHONY: all $(SUBDIRS)

libs: $(LIBS)/*
	for dir in $^ ; do \
		echo "Building" $${dir} ; \
		$(MAKE) CC=$${CC} CLFAGS=${CFLAGS} -C $${dir}; \
	done

breaks: $(BREAKS)/*
	for dir in $^ ; do \
		echo "Building break" $${dir} ; \
		$(MAKE) CC=$${CC} CLFAGS=${CFLAGS} -C $${dir}; \
	done
