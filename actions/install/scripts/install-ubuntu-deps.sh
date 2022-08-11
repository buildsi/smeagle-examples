#!/bin/bash

# Core deps for ubuntu base
apt-get update && apt-get install -y build-essential python3-pip libssl-dev vtable-dumper 
alias pip='pip3'
pip install --upgrade pip 

pip install ipython
CMAKE_VERSION=3.20.4
curl -s -L https://github.com/Kitware/CMake/releases/download/v$CMAKE_VERSION/cmake-$CMAKE_VERSION-linux-x86_64.sh > cmake.sh
sh cmake.sh --prefix=/usr/local --skip-license
rm cmake.sh

git clone https://github.com/vsoch/cle && \
cd cle && \

# archinfo, pyvex, pyelftools, then cle
pip install wheel && \
pip install git+https://github.com/angr/archinfo && \
pip install git+https://github.com/angr/pyvex && \
pip install git+https://github.com/eliben/pyelftools && \
pip install .
pip install git+https://github.com/vsoch/elfcall@tweaks
pip install git+https://github.com/buildsi/spliced@add/diff
cd ../
rm -rf ./cle

# Install abi-laboratory tools
git clone https://github.com/lvc/abi-dumper && \
cd abi-dumper && \
make install prefix=/usr && \
cd ../ && \
rm -rf abi-dumper && \
git clone https://github.com/lvc/abi-compliance-checker && \
cd abi-compliance-checker && \
make install prefix=/usr && \
cd ../ && \
rm -rf ./abi-compliance-checker

# Ensure abi laboratory script added to path
printf "Copying ${SCRIPTS_DIR}/run_abi_laboratory.sh to ${INSTALL_BIN}/run_abi_laboratory.sh\n"
cp ${SCRIPTS_DIR}/run_abi_laboratory.sh ${INSTALL_BIN}/run_abi_laboratory.sh