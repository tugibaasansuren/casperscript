#!/usr/bin/env bash

# First check, if Mojave has been downloaded already. If so, delete the setup app.
file="/Applications/Install macOS Mojave.app"

if rm -r "$file"; then
    echo "Mojave deleted."
else
    echo "Mojave not found."
fi

# Deactivate automatic OS update downloads
update_defaults="defaults write /Library/Preferences/com.apple.SoftwareUpdate.plist AutomaticDownload -bool NO"

if $update_defaults; then 
    echo "Automatic OS Update downloads deactivated."
else
    exit $?
fi
