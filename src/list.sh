#!/bin/bash

source /home/hgrgustavo/Projects/cloud-backup/.env

ls --sort=time "$BACKUP_VIDEO_DESTINY" >"${BACKUP_VIDEO_DESTINY}/list.log"
