#!/bin/sh
gum style \
	--foreground 212 --border-foreground 212 --border double \
	--align center --width 50 --margin "1 2" --padding "1" \
	"Welcome to Rixcy's tmuxinator configurator"

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

