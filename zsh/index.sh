#!/usr/bin/env bash

echo "# zsh and oh-my-zsh #"

if [[ ${PWD##*/} == "zsh" ]]; then
  cur="."
else
  cur="./zsh"
fi

# 
# Install oh-my-zsh
# 

# Clone oh-my-zsh repo to ~/.oh-my-zsh
git clone git://github.com/robbyrussell/oh-my-zsh.git ~/.oh-my-zsh

# Copy the custom .zshrc file
cp $cur/zshrc ~/.zshrc

# Set zsh to the default shell
chsh -s /bin/zsh

echo "zsh done."
