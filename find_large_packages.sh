#!/bin/bash

# Check if a directory is provided as an argument
if [ -z "$1" ]; then
	echo "Usage: $0 <directory>"
	exit 1
fi

# Traverse the directory and find files larger than 99MB
find "$1" -type f -size +99M -print
