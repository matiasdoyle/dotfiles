#!/usr/bin/env bash

##
# Git helper
#
# Copies the gitconfig and gitignore_global to your home directory.
#
# The gitconfig uses Kaleidoscope (http://www.kaleidoscopeapp.com/) as the difftool and
# requires that the ksdiff tool is installed.
##

echo "# Git #"
echo "Coping config files"

cp ./git/gitconfig ~/.gitconfig
cp ./git/gitignore_global ~/.gitignore_global

echo "Git done"
