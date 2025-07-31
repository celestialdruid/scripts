#!/bin/bash

# Run with sudo to allow creation of backup directory.

source_dir="/home"
backup_dir="/mnt/backups"

# Create the backup directory if it doesn't exist
mkdir -p "$backup_dir"

# Perform the backup
timestamp=$(date +"%Y-%m-%d_%H-%M-%S")
backup_file="$backup_dir/backup_$timestamp.tar.gz"

echo "Beginning backup to: $backup_file"
tar -czf "$backup_file" "$source_dir"
echo "Backup complete: $backup_file"
