#!/bin/sh

. ./functions/all.sh

rc_local=$DOTFILES_TARGET/config/terminal/rc
rc_home=$(find_profile_rc_file)

if grep -q "$rc_local" $rc_home
then
  warn "rc entry was already added to $rc_home"
else
  puts "Adding entry to $rc_home"
  echo "\n# Doftiles configuration\nsource $rc_local\n" >> $rc_home
fi
