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
    read "response?"
  else
    read -r response
  fi

  [ -z "$response" ] || [ $response = "y" ] || [ $response = "Y" ]
}
