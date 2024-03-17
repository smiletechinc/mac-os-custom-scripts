#!/bin/bash

# Use Spotlight to find the folder path
folder_path=$(mdfind -name custom-scripts-setup | head -n 1)

# Check if the folder exists
if [ -z "$folder_path" ]; then
    echo "Folder not found!"
    exit 1
fi

# Remove symbolic link if already exixted
sudo rm /usr/local/bin/scripts

# Create a symbolic link for the script
sudo ln -s "$(pwd)/open_terminal_at_custom_scripts.sh" /usr/local/bin/scripts
