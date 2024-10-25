#!/bin/bash
set -ex
source "$(dirname "${0}")/../init.sh"
valgrind --leak-check=full --track-origins=yes ${BUILD_FOLDER}/pbrain-rapfi BENCH

