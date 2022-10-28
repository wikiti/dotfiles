#!/bin/sh

. ./functions/all.sh

config_dir=$DOTFILES_TARGET/config

mklink $config_dir/git/.gitconfig $HOME/.gitconfig
mklink $config_dir/git/.gitignore_global $HOME/.gitignore_global
mklink $config_dir/ssh/config $HOME/.ssh/config
