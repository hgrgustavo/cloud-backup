#!/bin/zsh

source ../.env

generate_checksum() {
  for file in $(find "$BACKUP_DIRECTORY" -type f); do
    sha256sum "$file" >"${file}.sha256"
  done
}

verify_checksum() {
  for file in $(find "$BACKUP_DIRECTORY" -type f); do
    sha256sum -c "$file" >>"logs.txt"
  done
}
