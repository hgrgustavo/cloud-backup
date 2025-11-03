#!/bin/zsh

source ../.env

mkdir -p "$BACKUP_DIRECTORY" "$ENCRYPTED_DIRECTORY"
rsync -av --delete "$SOURCE_DIRECTORY" "$BACKUP_DIRECTORY"

#checksums
