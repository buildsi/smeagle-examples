#!/bin/bash

here="$(dirname "${BASH_SOURCE[0]}")"
here="$(realpath "${here}")"
CXX=${CXX:-"g++"}

echo "CXX: ${CXX}"

for category in $(ls -d ./*); do
    if [ ! -d "$here/${category}" ]; then
        continue
    fi
    cd ${here}/${category}
    if [ ! -f "Makefile" ]; then
        continue
    fi
    make CXX=${CXX}
    printf "Building test-suite category ${category}\n"
    breaks_dir=${here}/${category}/breaks
    if test -d ${breaks_dir}; then
        for dir in $(ls ${breaks_dir}); do
            break_dir=${here}/${category}/breaks/${dir}
            cd ${break_dir}
            printf "    Building break ${dir}\n"
            if [ ! -f "Makefile" ]; then
                continue
            fi
            make CXX=${CXX}
        done
    fi
done

