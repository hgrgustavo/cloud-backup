#!/bin/bash

source ${HOME}/Projects/cloud-backup/.env

if ! mountpoint -q "${BACKUP_ROOT}"; then
  echo "Device not mounted. Mounting it now..."
  sudo mount "$BACKUP_DEVICE" "$BACKUP_ROOT"
fi

mv ${HOME}/Design/videos/* -t "${BACKUP_VIDEO_DESTINY}"
