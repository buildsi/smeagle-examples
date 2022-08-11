CXX ?= g++
CXXFLAGS ?= -g -Wall

all: example breaks
.PHONY: example breaks

ifneq (${VERBOSE},1)
MUTE := @
endif

example:
	${MUTE} ${CXX} ${CXXFLAGS} -c -Wl,-E example.cpp -o lib.so

breaks:
	${MUTE} $(MAKE) CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" -C $@
