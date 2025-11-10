# TODO: implement google drive adapter

# example
#!/bin/bash
SOURCE="$1"
DEST="$2"
rclone sync "$SOURCE" "drive:$DEST" --progress
