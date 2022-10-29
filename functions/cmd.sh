#!/bin/sh

run() {
  sh $1
}

cmd() {
  sh -c $1
}

prompt() {
  warn "$1 [Y/n]: " "-n"

  if [ $(os) = "MacOS" ]
  then
    read "response?" </dev/tty
  else
    read -r response </dev/tty
  fi

  [ -z "$response" ] || [ $response = "y" ] || [ $response = "Y" ]
}

quit() {
  exit 0
}
