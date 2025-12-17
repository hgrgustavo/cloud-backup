#!/bin/bash

SOURCE="$1"
DESTINY="$2"

rclone sync $SOURCE $DESTINY
