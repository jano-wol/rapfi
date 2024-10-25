#!/bin/bash
set -ex
source "$(dirname "${0}")/init.sh"
rm -rf "${BUILD_FOLDER}"
mkdir -p "${BUILD_FOLDER}"
cd "${BUILD_FOLDER}"
cmake "${RAPFI_FOLDER}" -DCMAKE_BUILD_TYPE=Release

