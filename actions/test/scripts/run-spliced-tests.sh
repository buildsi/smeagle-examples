#!/bin/bash

printf "CXX: ${CXX}\n"
printf "results_dir: ${results_dir}\n"
printf "skip smeagle: ${skip_smeagle}\n"
printf "compiler: ${compiler}\n"
printf "Smeagle Cache: ${SPLICED_SMEAGLE_CACHE_DIR}\n"
printf "Abi Laboratory Cache: ${SPLICED_ABILAB_CACHE_DIR}\n"

root=$PWD 
export PATH=/usr/local/bin:${HOME}/.local/bin:/usr/bin:$PATH
mkdir -p ${results_dir} ${SPLICED_SMEAGLE_CACHE_DIR} ${SPLICED_ABILAB_CACHE_DIR}
ls

build_script=$(dirname ${SCRIPTS_DIR})
build_script=$(dirname ${build_script})
build_script=$(dirname ${build_script})

printf "Looking for build.sh..."
ls

# _development script should not be run
rm -rf _development

CXX=${CXX} /bin/bash ${build_script}/build.sh
for category in $(ls -d */); do
    printf "Inspecting category ${category}\n"
    cd ${root}/${category}
    ls
    original=$(realpath ./lib.so)
    if ! test -f ${original}; then
        printf "${original} does not exist\n"
        exit 1
    fi
    printf "Found libA ${original}\n"
    if test -d ./breaks; then
        for dir in $(ls ./breaks); do
            printf "Looking at break ${dir}\n"
            break_dir=${root}/${category}/breaks/${dir}
            cd ${break_dir}
            ls
            splice=$(realpath ./lib.so)
            if ! test -f ${splice}; then
                printf "${splice} does not exist\n"
                exit 1
            fi
            printf "Found libB ${splice}\n"
            outdir="${results_dir}/${category}${dir}/${compiler}"
            mkdir -p ${outdir}
            experiment=${original}-${splice}-${compiler}
            outfile="${outdir}/experiment.json"
            echo ${compiler} >> ${outdir}/compiler.txt
            cmd="spliced diff --package ${original} --splice ${splice} --experiment ${experiment} --runner manual --outfile ${outfile} --skip spack-test" 
            if [ "${skip_smeagle}" == "true" ]; then
                cmd="${cmd} --skip-smeagle"
            fi
            printf "${cmd}\n"
            ${cmd}
            if [[ "$?" -ne "0" ]]; then
                printf "Issue running: ${cmd}\n"
                exit 1
            fi
            cat ${outfile}
        done
    fi
done

if [[ $? -neq "0" ]]; then
   echo no
fi