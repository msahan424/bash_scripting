#!/bin/bash
# Exercise 4 script:
# Move all files using globbing, rename folder2, cd into it,
# grant group read+execute permissions, and list details.

mkdir -p folder1 folder2

# Create five files in folder1
touch folder1/file{1..5}.txt

# Move all files using globbing (one command)
mv folder1/* folder2/

# Rename folder2 to folder2_renamed
mv folder2 folder2_renamed

# Change into the renamed folder
cd folder2_renamed || exit 1

# Grant group read and execute permissions to all files in this folder
chmod g+rx *

# Print full list to verify permissions
ls -l
