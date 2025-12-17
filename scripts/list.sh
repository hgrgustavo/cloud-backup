#!/bin/bash

source ${HOME}/Projects/cloud-backup/.env

ls --sort=time "$MONTHLY_DIRECTORY_PATH" >"${MONTHLY_DIRECTORY_PATH}/files.log"
