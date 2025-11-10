#!/bin/bash

source ~/Projects/cloud-backup/.env

mv ~/Downloads/*.mp4 ~/Downloads/*.mov -t "$TRIAGE_VIDEO_PATH"
