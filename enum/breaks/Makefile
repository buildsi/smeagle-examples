CXX ?= g++
CXXFLAGS ?= -g -Wall

SUBDIRS := add_to_sizeenum

ifneq (${VERBOSE},1)
MUTE := @
endif

all: $(SUBDIRS)
.PHONY: all $(SUBDIRS)

$(SUBDIRS):
	@ echo Building $@
	${MUTE} $(MAKE) CXX="${CXX}" CXXFLAGS="${CXXFLAGS}" -C $@
