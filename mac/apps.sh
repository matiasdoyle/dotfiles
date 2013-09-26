#!/usr/bin/env bash

open_dl() {
  links=(
    'http://www.google.com/mac/'
    'http://www.alfredapp.com/'
    'http://www.kaleidoscopeapp.com/download'
    'http://justgetflux.com/'
    'http://www.sublimetext.com/3'
    'https://agilebits.com/downloads/1Password/Mac'
    'https://www.hipchat.com/mac'
    'http://www.iterm2.com/#/section/home'
    'http://toketaware.com/ithoughtsx-main/'
    'http://mouapp.com/#download'
    'https://www.spotify.com/uk/download/mac/'
  )

  for i in ${links[@]}
  do
    open $i
  done
}

expand_dl() {
  dir=~/Downloads

  if ls -U $dir/*.zip &> /dev/null;
  then
    for zip in $dir/*.zip
    do
      unzip "${zip}" -d /Applications/
    done
  fi

  if ls -U $dir/.dmg &> /dev/null;
  then
    for dmg in $dir/*.dmg
    do
      echo "Mounting dmg: ${dmg}"
      volume=`hdiutil attach "${dmg}" | tail -n1 | perl -nle '/(\/Volumes\/.+)/; print $1'`
      app=`find "${volume}" -name '*.app' -maxdepth 1 -type d -print0`
      cp -R "${app}" /Applications
      hdiutil unmount "${volume}" -quiet
    done
  fi
}

args=("$@")

case ${args[0]} in
  'open')
    open_dl;;
  'move')
    expand_dl;;
  *)
    echo "Unknown command."
    exit 1;;
esac
