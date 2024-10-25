#!/bin/bash
set -ex
source "$(dirname "${0}")/init.sh"
${BUILD_FOLDER}/pbrain-rapfi BENCH

