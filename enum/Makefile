CXX ?= g++
CXXFLAGS ?= -g -Wall

all: example breaks
.PHONY: example breaks

ifneq (${VERBOSE},1)
MUTE := @
endif

all:
	${MUTE} ${CXX} ${CXXFLAGS} -c -Wl,-E -fPIC -shared -o lib.so example.cpp
