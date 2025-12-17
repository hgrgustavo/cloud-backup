#!/bin/bash

source ${HOME}/Projects/cloud-backup/.env
source ${SHELL_FUNCTIONS_PATH}/checksums.sh

mv ${HOME}/Downloads/*.mp4 -t "$MONTHLY_DIRECTORY_PATH"

generate_checksums
verify_checksums
