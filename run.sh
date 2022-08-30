#!/bin/sh
gum style \
	--foreground 212 --border-foreground 212 --border double \
	--align center --width 50 --margin "1 2" --padding "1" \
	"Welcome to Rixcy's tmuxinator configurator"

# Check if OSX
if [ "$(uname)" != "Darwin" ]; then
  gum format -- "# This script is intended for OSX sorry!"
  exit 1
fi

# Check if tmuxinator is installed
if ! command -v tmuxinator &> /dev/null
then
  # Check if homebrew is installed
  if ! command -v brew &> /dev/null
  then
    gum confirm "Homebrew isn't installed. Install it?" && \
      "/bin/bash -c \"$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\"" || \
      gum format -- "# Cancelling" | \
      exit 1
  fi
  gum confirm "Tmuxinator isn't installed. Install it?" && \
    "brew install tmuxinator" || \
    gum format -- "# Cancelling" | \
    exit 1
fi

folder=${PWD##*/}

FILE=".tmuxinator.yml"
if test -f "$FILE"
then
  gum confirm "$FILE exists. Would you like to delete it?" && rm $FILE || exit 1
fi

DEVCOMMAND=$(gum input --placeholder "dev command")

touch ./.tmuxinator.yml
echo "# ./tmuxinator.yml\n" >> ./.tmuxinator.yml
echo "name: $folder" >> ./.tmuxinator.yml
echo "root: ." >> ./.tmuxinator.yml

echo "windows:" >> ./.tmuxinator.yml
echo "  - editor: nvim ." >> ./.tmuxinator.yml
echo "  - server: $DEVCOMMAND" >> ./.tmuxinator.yml

gum format -- "# Tmuxinator config created 🚀"
gum format -- "Create a session with __'tmuxinator start $folder'__"

exit 0

