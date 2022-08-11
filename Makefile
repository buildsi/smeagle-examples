# default compiler
CXX ?= g++

# compiler flags:
#  -g    adds debugging information to the executable file
#  -Wall turns on most, but not all, compiler warnings
CXXFLAGS ?= -g -Wall

ifneq (${VERBOSE},1)
MUTE := @
endif

EXAMPLES := allocation array callsite callsite-as-parameter class-inheritance \
            complex-double empty-func enum _exception _exception-basic \
            fixed-sized-array function-pointer function-with-pointer \
            global-variables global-variables-pointers inline int128 \
            pointer-hell static-member-func struct-typedef \
            structure-arrays-of-arrays structure-array-structures \
            structure-simple structure-with-structure union

all: $(EXAMPLES)
.PHONY: all $(EXAMPLES)

$(EXAMPLES):
	@ echo Building $@
	${MUTE} $(MAKE) CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" -C $@
