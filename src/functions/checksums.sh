#!/bin/bash

source /home/hgrgustavo/Projects/cloud-backup/.env

generate_checksums() {
  mkdir -p "${TRIAGE_VIDEO_CHECKSUMS_PATH}"

  for file in $(find "$TRIAGE_VIDEO_PATH" -type f); do
    checksum_file="${file}.sha256"

    if [[ ! -f "$checksum_file" ]]; then
      sha256sum "$file" >"${TRIAGE_VIDEO_CHECKSUMS_PATH}/$checksum_file"
      chmod a-w "$checksum_file"
    fi

  done
}

verify_checksums() {
  log_file="${TRIAGE_VIDEO_CHECKSUMS_PATH}/checksums_log.log"

  echo "$(date): " >"$log_file"

  for checksum in $(find "$TRIAGE_VIDEO_CHECKSUMS_PATH" -type f -name "*.sha256"); do
    sha256sum -c "$checksum_file" >>"$log_file" 2>&1
  done
}
