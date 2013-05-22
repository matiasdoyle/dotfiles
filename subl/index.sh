#!/usr/bin/env bash

##
# Sublime Text helper
#
# Expects that Sublime Text 3 is installed. It also expects that Package Control
# (http://wbond.net/sublime_packages/package_control) and the Source Code Pro font is
# installed (https://github.com/adobe/source-code-pro).
#
# Copies Sublime Text settings and subl executable to /usr/local/bin.
##

echo "# Sublime Text #"

if [[ ${PWD##*/} == "subl" ]]; then
  cur="."
else
  cur="./subl"
fi

# Create subl system link to /usr/local/bin
if [[ ! -f /usr/local/bin/subl ]]; then
  ln -s "/Applications/Sublime Text.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl
fi

# Move preferences
echo "Moving preferences"
echo "Remember install font Source Code Pro"
cp $cur/*.sublime-settings ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/
cp $cur/syntax-specific/* ~/Library/Application\ Support/Sublime\ Text\ 3/Packages/User/

echo "Sublime Text done"
