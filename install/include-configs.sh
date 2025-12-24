#!/bin/sh

. ./install/functions/all.sh

dotfile_config="$HOME/.ssh/dotfile_config"

puts "Including dotfile_config in SSH config..."
append "\n\nInclude $dotfile_config\n" "$HOME/.ssh/config"
