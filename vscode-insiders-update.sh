#!/bin/sh

# This script assumes that there is only one VSCode package to be updated
# Check for the presence of a file starting with 'code-insiders-' in the Downloads folder

pkg_name="code-insiders-"
found=$(find "$HOME/Downloads" -name "${pkg_name}*")

# If a matching file is found, extract the package name
if [ -n "$found" ]; then
    pkg=$(basename "$found")

    # Silently install the package using 'dnf localinstall'
    if sudo dnf localinstall -y "$HOME/Downloads/$pkg" >/dev/null 2>&1; then
        echo "  Visual Studio Code Insiders updated successfully."

        # Remove the downloaded package if the installation was successful
        if rm "$HOME/Downloads/$pkg" >/dev/null 2>&1; then
            echo " 󰆴 Visual Studio Code Insiders package removed."
        else
            echo " 󰚌 Error removing Visual Studio Code Insiders package."
        fi
    else
        echo " 󰚌 Error updating Visual Studio Code Insiders."
    fi
else
    echo "  No Visual Studio Code Insiders package found for installation."
fi
