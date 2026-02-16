#!/bin/bash

source ${HOME}/Projects/cloud-backup/.env
source ${SHELL_FUNCTIONS_PATH}/checksums.sh

mkdir -p "$MONTHLY_DIRECTORY_PATH"
mv ${HOME}/Downloads/*.mp4 $MONTHLY_DIRECTORY_PATH

generate_checksums
verify_checksums
