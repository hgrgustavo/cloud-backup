#!/bin/bash

source ~/Projects/cloud-backup/.env

ls --sort=time "$BACKUP_VIDEO_DESTINY_PREVIOUS_MONTH" >>"$BACKUP_VIDEO_DESTINY_PREVIOUS_MONTH/list.log"
