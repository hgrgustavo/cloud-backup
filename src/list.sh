#!/bin/bash

source ${HOME}/Projects/cloud-backup/.env

ls --sort=time "$BACKUP_VIDEO_DESTINY" >"${BACKUP_VIDEO_DESTINY}/list.log"
