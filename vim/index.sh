#!/usr/bin/env bash

##
# Vim helper
#
# Copies vimrc to your home directory and installing Pathogen and other used
# plugins.
##

echo "# Vim #"

if [[ ${PWD##*/} == "vim" ]]; then
  cur="."
else
  cur="./vim"
fi

# Make pathogen required folders.
mkdir -p ~/.vim/autoload ~/.vim/bundle;

# Get pathogen from GitHub.
if [[ ! -d ~/.vim/autoload/pathogen.vim ]]; then
  curl -Sso ~/.vim/autoload/pathogen.vim \
    https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim
fi

# Install Tomorrow Night theme.
if [[ ! -d ~/.vim/bundle/tomorrow-night/ ]]; then
  mkdir -p ~/.vim/bundle/tomorrow-night/colors
  curl -Sso ~/.vim/bundle/tomorrow-night/colors/Tomorrow-Night.vim \
    https://raw.github.com/chriskempson/tomorrow-theme/master/vim/colors/Tomorrow-Night.vim
fi

# Install NERDTree
if [[ ! -d ~/.vim/bundle/nerdtree/ ]]; then
  git clone https://github.com/scrooloose/nerdtree.git \
    ~/.vim/bundle/nerdtree
fi

# Copy vimrc
cp $cur/vimrc ~/.vimrc

echo "Vim done"