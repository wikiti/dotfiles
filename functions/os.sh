#!/bin/sh

os() {
  if [[ $(uname -s) == "Darwin" ]]
  then
    echo "MacOS"
  else
    echo $(uname -s)
  fi
}
