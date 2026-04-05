#!/bin/bash

# log-cleanup.sh — deletes logs older than 7 days

LOG_DIR="/var/log/myapp"
DAYS=7

find "$LOG_DIR" -type f -name "*.log" -mtime +$DAYS -exec rm -f {} \;

echo " Logs older than $DAYS days deleted from $LOG_DIR"
