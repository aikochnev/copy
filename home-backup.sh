#!/bin/bash

SRC="$HOME/"
DST="/tmp/backup/"
TAG="home-backup"

if rsync -av --delete --checksum --exclude='.*' "$SRC" "$DST"; then
    logger -t "$TAG" "SUCCESS: backup from $SRC to $DST completed"
else
    logger -t "$TAG" "ERROR: backup from $SRC to $DST failed"
    exit 1
fi
