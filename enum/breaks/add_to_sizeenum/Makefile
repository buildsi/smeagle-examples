CXX ?= g++
CXXFLAGS ?= -g -Wall

ifneq (${VERBOSE},1)
MUTE := @
endif

all:
	${MUTE} ${CXX} ${CXXFLAGS} -c -Wl,-E example.cpp -o example
