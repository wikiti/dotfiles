#!/bin/sh

. ./install/functions/all.sh

rc_local=$DOTFILES_TARGET/config/terminal/rc
rc_home=$(find_profile_rc_file)

append "\n\n# Doftiles configuration\nsource $rc_local\n" "$rc_home"
