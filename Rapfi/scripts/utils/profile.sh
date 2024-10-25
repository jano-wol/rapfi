#!/bin/bash
set -ex
source "$(dirname "${0}")/../init.sh" relwithdebinfo
timestamp() {
    date +"%Y%m%d%H%M%S"
}
TS=$(timestamp)
OUT_NAME="${BUILD_FOLDER}/profile_${TS}.out"
valgrind --tool=callgrind --callgrind-out-file="${OUT_NAME}" "${BUILD_FOLDER}/pbrain-rapfi" BENCH
kcachegrind "${OUT_NAME}" >/dev/null 2>&1 &
