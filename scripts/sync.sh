#!/bin/bash

source ${HOME}/Projects/cloud-backup/.env

SERVICE="$1"
SOURCE="$2"
DESTINY="$3"
ADAPTER="${CLOUD_ADAPTERS_PATH}/${SERVICE}.sh"

if ![ -f "$ADAPTER" ]; then
  echo "Adapter for '$SERVICE' not found."
  exit 1
fi

"$ADAPTER" "$SOURCE" "$DESTINY" >${HOME}/Design/backup/weekly_sync.log
