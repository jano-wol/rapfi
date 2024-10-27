#!/bin/bash
set -ex
source "$(dirname "${0}")/init.sh"
cmake --build "${BUILD_FOLDER}" -j 4 -v

NETWORK_FOLDER="${RAPFI_FOLDER}/../Networks/"
CONFIG_FOLDER="${NETWORK_FOLDER}/config-example/"
CLASSICAL_FOLDER="${NETWORK_FOLDER}/classical/"
MIX9_FOLDER="${NETWORK_FOLDER}/mix9nnue/"

if [ $? -eq 0 ]; then
    cp ${CLASSICAL_FOLDER}/* "${BUILD_FOLDER}"
    cp ${MIX9_FOLDER}/* "${BUILD_FOLDER}"
    cp ${CONFIG_FOLDER}/config.toml "${BUILD_FOLDER}"
fi

