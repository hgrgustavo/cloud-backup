#!/bin/zsh

source /home/hgrgustavo/Projects/cloud-backup/.env

generate_checksums() {
  mkdir -p "$TRIAGE_VIDEO_CHECKSUMS_PATH"

  for file in $(find "$TRIAGE_VIDEO_CHECKSUMS_PATH" -type f); do
    if [[ ! -f "${file}.sha256" ]]; then
      sha256sum "$file" >"${TRIAGE_VIDEO_CHECKSUMS_PATH}/${file}.sha256"
    fi
  done
}

verify_checksums() {
  for file in $(find "$TRIAGE_VIDEO_CHECKSUMS_PATH" -type f); do
    sha256sum -c "$file" >>"${TRIAGE_VIDEO_CHECKSUMS_PATH}/checksums_log.log"
  done
}
