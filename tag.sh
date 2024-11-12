#!/bin/bash

# Get the current date
current_date=$(date +"%Y-%m-%d")

# Create the annotated tag
git tag -a "v$current_date" -m "Tag v$current_date"

echo "Created annotated tag 'v$current_date'"
