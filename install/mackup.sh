#!/bin/sh

# Restores application data using Mackup https://github.com/lra/mackup
#TODO: Add configuration options for other cloud storage

GOOGLE_DRIVE_DIR="$HOME/Google Drive"
MACKUP_DIR="$GOOGLE_DRIVE_DIR/Backup/Mackup"

if ! [ -d "$GOOGLE_DRIVE_DIR" ]; then
  echo "Google Drive folder doesn't exist, setup Google Drive and try again"
  exit 1
fi

if ! [ -d "$MACKUP_DIR" ]; then
  echo "Can't find Mackup directory, please ensure files exist"
  exit 1
fi

if ! [ -x "$(command -v mackup)" ]; then
  echo "Please install Mackup first:\n\tbrew install mackup"
  exit 1
fi

echo "Copying Mackup configuration to home"
cp -R "$MACKUP_DIR"/{.mackup,.mackup.cfg} $HOME

echo "Running Mackup restore"
mackup restore