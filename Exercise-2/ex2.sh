#!/usr/bin/env bash
# Exercise 2 - System Scripting Lab 1
# This script prints a welcome message and then lists the home directory contents.

# Print a welcome message using the current username ($USER)
echo "Welcome $USER to System Scripting Lab 1"

# List the contents of the user's home directory (~)
ls -la ~
