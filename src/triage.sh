#!/bin/bash

source ${HOME}/Projects/cloud-backup/.env
source ${HOME}/Projects/cloud-backup/src/functions/checksums.sh

mv ${HOME}/Downloads/*.mp4 -t "$TRIAGE_VIDEO_PATH"

generate_checksums
verify_checksums
