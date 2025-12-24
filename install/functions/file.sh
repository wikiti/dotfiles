#!/bin/sh

find_profile_rc_file() {
  if command -v zsh >/dev/null 2>&1
  then
    echo "$HOME/.zshrc"
  else
    echo "$HOME/.bashrc"
  fi
}

mklink() {
  puts "Creating symlink at $2"

  if [ -e "$2" ] || [ -L "$2" ]; then
    if prompt "File or symlink $2 already exists. Would you like to overwrite it?"; then
      rm -rf "$2"
    else
      return 0
    fi
  fi

  ln -s "$1" "$2"
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

append() {
  puts "Appending $1 to $2..."

  if grep -q $(trim $1) "$2"
  then
    warn "'$(trim "$1")' is already present in $2"
    return 0
  fi

  printf "$1" >> $2
}
