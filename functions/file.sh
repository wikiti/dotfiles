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
    if prompt "File $2 already exists. Would you like to overwrite it?"
    then
      rm $2
    else
      return 0
    fi
  fi

  ln -s $1 $2
}

move() {
  echo "Copying $1 into $2..."

  if [ -d $2 ]
  then
    if prompt "dotfiles was already installed in $2. Do you want to replace it?"
    then
      rm -Rf $2
    else
      return 1
    fi
  fi

  mv $1 $2
}
