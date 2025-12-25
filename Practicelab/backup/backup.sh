#!/usr/bin/env bash
# Backup script: asks for a folder name, creates backup_<name>, copies files, lists result.

echo "Enter the folder name you want to back up (example: source):"
read FOLDER

# Check if the folder exists
if [ ! -d "$FOLDER" ]; then
  echo "Error: Folder does not exist: $FOLDER"
  exit 1
fi

BACKUP_DIR="backup_${FOLDER}"

# Create the backup folder
mkdir -p "$BACKUP_DIR"

# Copy everything from the folder into the backup folder
cp -r "$FOLDER"/* "$BACKUP_DIR"/

# Show what was backed up
echo "Backup created: $BACKUP_DIR"
echo "Contents of $BACKUP_DIR:"
ls -l "$BACKUP_DIR"

