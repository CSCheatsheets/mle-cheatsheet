#!/bin/bash

# Directory containing the scripts (modify as needed)
SCRIPT_DIR=".scripts"

# Check if the directory exists
if [ ! -d "$SCRIPT_DIR" ]; then
    echo "Error: Directory '$SCRIPT_DIR' does not exist."
    exit 1
fi

# Find and execute all .sh scripts in the directory
for script in "$SCRIPT_DIR"/*.sh; do
    # Check if there are any .sh files
    if [ -f "$script" ]; then
        echo "Running: $script"
        bash "$script"
    fi
done
