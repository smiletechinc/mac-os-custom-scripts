#!/bin/bash

# Use Spotlight to find the folder path
folder_path=$(mdfind -name custom-scripts-setup | head -n 1)

osascript -e "tell application \"Terminal\" to do script \"cd '$folder_path'\""
osascript -e "tell application \"System Events\" to tell process \"Terminal\" to keystroke \"t\" using command down"
osascript -e "tell application \"Terminal\" to do script \"clear\" in selected tab of the front window"
osascript -e "tell application \"System Events\" to tell process \"Terminal\" to keystroke \"t\" using command down"
osascript -e "tell application \"Terminal\" to do script \"clear\" in selected tab of the front window"
