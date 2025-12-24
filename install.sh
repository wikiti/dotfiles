#!/bin/sh

export DOTFILES_TARGET=${DOTFILES_TARGET:-$HOME/.dotfiles}
export DOTFILES_REPO=${DOTFILES_REPO:-git@github.com:wikiti/dotfiles.git}
export DOTFILES_TMP=${DOTFILES_TMP:-$(mktemp -d)}

if [ ! -d "$DOTFILES_TARGET/.git" ]; then
  git clone "$DOTFILES_REPO" "$DOTFILES_TMP"
  cd "$DOTFILES_TMP" && . ./install/functions/all.sh && cd -
  ok "Initializing..."
  move "$DOTFILES_TMP" "$DOTFILES_TARGET" || quit
fi

cd "$DOTFILES_TARGET"

for file in install/*.sh
do
  ok "Running $file..."
  run $file
done

ok "Done! Don't forget to reload your terminal!"
