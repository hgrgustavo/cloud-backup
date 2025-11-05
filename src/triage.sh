#!/bin/bash

source ../.env

mv ~/Downloads/*.mp4 ~/Downloads/*.mov -t "$TRIAGE_VIDEO_PATH"
