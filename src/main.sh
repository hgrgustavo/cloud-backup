#!/bin/zsh

source ../.env
source ./checksums.sh

mkdir -p "$BACKUP_DIRECTORY/$CURRENT_YEAR\_$LAST_MONTH"
#  TODO: weekly cron (get video files and move to a triage dir)

#  TODO: local sync 
rsync -av --delete "$SOURCE_DIRECTORY" "$BACKUP_DIRECTORY"

#  TODO: checksums
generate_checksum()

#  TODO: remote sync
#  TODO: monthly backup cron
