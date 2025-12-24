#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RESET='\033[0m'

puts() {
  echo $2 $1
}

ok() {
  printf $2 "$GREEN* $1$RESET"
}

fail() {
  printf $2 "$RED- $1$RESET"
}

warn() {
  printf $2 "$YELLOW- $1$RESET"
}

trim() {
  printf '%s' "$1" | sed -e 's/^\(\\n\|\\t\|\\r\)\+//'  -e 's/\(\\n\|\\t\|\\r\)\+$//'
}

