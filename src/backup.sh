#!/bin/bash

source ~/Projects/cloud-backup/.env

mv ~/Design/videos/*.mp4 ~/Design/videos/*.mov -t "$BACKUP_VIDEO_DESTINY"
