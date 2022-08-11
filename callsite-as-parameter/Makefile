CXX ?= g++
CXXFLAGS ?= -g -Wall

all:
	${CXX} ${CXXFLAGS} -c -Wl,-E -fPIC -shared -o lib.so example.cpp
