#!/bin/sh

clone() {
  repo="$1"
  target="$2"
  shift 2

  echo "Cloning $repo..."

  if [ -d "$target" ]; then
    if prompt "Repo was already cloned. Do you want to re-clone?"; then
      rm -Rf "$target"
    else
      return 1
    fi
  fi

  git clone "$repo" "$target" "$@"
}
