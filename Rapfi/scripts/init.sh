#!/bin/bash
set -ex	
SCRIPT_FOLDER=$(dirname "${0}") 
RAPFI_FOLDER=$(readlink -e "${SCRIPT_FOLDER}/../")
BUILD_FOLDER="${RAPFI_FOLDER}/build/"

