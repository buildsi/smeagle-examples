#!/bin/bash

here="$(dirname "${BASH_SOURCE[0]}")"
here="$(realpath "${here}")"
CXX=${CXX:-"g++"}

echo "CXX: ${CXX}"

for category in $(ls -d ./*); do
    printf "Building test-suite category ${category}\n"
    cd ${here}/${category}
    make CXX=${CXX}
    breaks_dir=${here}/${category}/breaks
    if test -d ${breaks_dir}; then
        for dir in $(ls ${breaks_dir}); do
            printf "    Building break ${dir}\n"
            break_dir=${here}/${category}/breaks/${dir}
            cd ${break_dir}
            make CXX=${CXX}
        done
    fi
done

