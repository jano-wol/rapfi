#!/bin/bash
set -ex	
if [[ $1 != "debug" ]] && [[ $1 != "release" ]] && [[ $1 != "relwithdebinfo" ]]; then
    echo "First command line argument should be debug or release or relwithdebinfo"
    exit 1
fi	
CMAKE_BUILD_TYPE=$1
CMAKE_CXX_COMPILER=clang++ # g++ is also possible

SCRIPT_FOLDER=$(dirname "$(realpath "${BASH_SOURCE[0]}")")
RAPFI_FOLDER=$(readlink -e "${SCRIPT_FOLDER}/../")
BUILD_FOLDER="${RAPFI_FOLDER}/build/${CMAKE_BUILD_TYPE}"

