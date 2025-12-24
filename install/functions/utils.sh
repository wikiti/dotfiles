#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RESET='\033[0m'

puts() {
  echo $1
}

ok() {
  print_formatted "$GREEN* $1$RESET" $2
}

fail() {
  print_formatted "$RED- $1$RESET" $2
}

warn() {
  print_formatted "$YELLOW- $1$RESET" $2
}

print_formatted() {
  if [ "$2" = "-n" ]
  then
    printf "$1"
  else
    printf "$1\n"
  fi
}

trim() {
  printf '%s' "$1" | sed -e 's/^\(\\n\|\\t\|\\r\)\+//'  -e 's/\(\\n\|\\t\|\\r\)\+$//'
}

