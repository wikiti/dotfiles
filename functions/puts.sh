#!/bin/sh

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
NOCOLOR='\033[0m'

puts() {
  echo $2 $1
}

ok() {
  echo $2 "$GREEN* $1$NOCOLOR"
}

fail() {
  echo $2 "$RED- $1$NOCOLOR"
}

warn() {
  echo $2 "$YELLOW? $1$NOCOLOR"
}
