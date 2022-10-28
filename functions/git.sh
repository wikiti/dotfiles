#!/bin/sh

clone() {
  echo "Cloning $1..."

  if [ -d $2 ]
  then
    if prompt "Repo was already cloned. Do you want to re-clone?"
    then
      rm -Rf $2
    else
      return 1
    fi
  fi

  git clone $1 $2
}
