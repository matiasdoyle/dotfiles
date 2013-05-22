#!/usr/bin/env bash

##
# SSH helper
#
# Creates ssh keys and copies them to the clipboard.
##

echo "# SSH #"

# Generate SSH key.
ssh-keygen -t rsa -C "hello@matiasdoyle.com"

# Copy SSH key to clipboard.
pbcopy < ~/.ssh/id_rsa.pub

echo "SSH key copied to clipboard."
echo "SSH done"
