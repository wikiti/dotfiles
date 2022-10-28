#!/bin/sh

. ./functions/all.sh

ok "Initializing..."

export DOTFILES_TARGET=${DOTFILES_TARGET:-$HOME/.dotfiles}
export DOTFILES_REPO=${DOTFILES_REPO:-git@github.com:wikiti/dotfiles.git}

clone $DOTFILES_REPO $DOTFILES_TARGET || exit 0
cd $DOTFILES_TARGET

for file in install/*.sh
do
	ok "Running $file..."
	run $file
done
