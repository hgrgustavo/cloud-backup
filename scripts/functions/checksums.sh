#!/bin/bash

source ${HOME}/Projects/cloud-backup/.env

generate_checksums() {
  mkdir -p "${CHECKSUMS_PATH}"

  for file in $(find "$MONTHLY_DIRECTORY_PATH" -type f ! -name '*.sha256'); do
    checksum_file="${CHECKSUMS_PATH}/$(basename ${file}).sha256"

    if [[ ! -f "${checksum_file}" ]]; then
      sha256sum "$file" >"$checksum_file"
      chmod a-w "$checksum_file"
    fi
  done
}

verify_checksums() {
  log_file="${CHECKSUMS_PATH}/checksums_log.log"

  echo "$(LC_TIME=pt_BR.UTF-8 date)" >"$log_file"

  for checksum in $(find "${CHECKSUMS_PATH}" -type f -name "*.sha256"); do
    sha256sum -c "$checksum" 2>&1 | sed "s|.*/||" >>$"$log_file"
  done
}
