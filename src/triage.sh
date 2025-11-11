#!/bin/bash

source /home/hgrgustavo/Projects/cloud-backup/.env
source /home/hgrgustavo/Projects/cloud-backup/src/functions/checksums.sh

mv /home/hgrgustavo/Downloads/*.mp4 -t "$TRIAGE_VIDEO_PATH"
mv /home/hgrgustavo/Downloads/*.mov -t "$TRIAGE_VIDEO_PATH"

generate_checksums()
verify_checksums()
