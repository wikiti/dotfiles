#!/bin/sh

find_profile_rc_file() {
  if [ $(os) = "MacOS" ]
  then
    echo "$HOME/.zshrc"
  else
    echo "$HOME/.bashrc"
  fi
}

mklink() {
  puts "Creating symlink at $2"

  if [ -f "$2" ]
  then
    if ! prompt "File $2 already exists. Would you like to overwrite it?"
    then
      return 0
    fi
  fi

  ln -s $1 $2
}
