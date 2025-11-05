#!/bin/bash

# NOTE: review

SERVICE="$1"
SOURCE="$2"
DESTINY="$3"
ADAPTER="./adapters/${SERVICE}.sh"

if ![ -f "$ADAPTER" ]; then
  echo "Adapter for '$SERVICE' not found."
  exit 1
fi

"$ADAPTER" "$SOURCE" "$DESTINY"
