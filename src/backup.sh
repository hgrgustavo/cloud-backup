#!/bin/bash

source /home/hgrgustavo/Projects/cloud-backup/.env

if ! mountpoint -q "$MOUNT_POINT"; then
  echo "Device not mounted. Mounting it now..."
  sudo mount "$BACKUP_DEVICE" "$BACKUP_ROOT"
fi

mv /home/hgrgustavo/Design/videos/* -t "${BACKUP_VIDEO_DESTINY}"
