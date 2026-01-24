#!/usr/bin/env bash
set -euo pipefail

install_papirus_folders() {
  echo "installing papirus folders..."
  if [ -d "$HOME/.local" ]; then
    wget -qo- https://git.io/papirus-folders-install | env prefix="$HOME"/.local sh
  fi
  echo "Papirus Folders installation complete!"
}

change_folder_color() {
  echo "Changing Papirus Folders Color to $1..."
  papirus-folders -C "$1"
  echo "Folder color changed to $1!"
}

# Main
install_papirus_folders
change_folder_color "Violet"
