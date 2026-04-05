#!/bin/bash

SOURCE="/home/user/projects"
DEST="/home/user/backups"
DATE=$(date +%Y-%m-%d_%H-%M)

mkdir -p "$DEST"
tar -czf "$DEST/backup_$DATE.tar.gz" "$SOURCE"

echo " Backup done: backup_$DATE.tar.gz"
