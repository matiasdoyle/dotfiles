# Mac

The following are over writes of the default values that make my Mac work as I like it. Tested only on Lion.

## Faster Mission Controll animations

From (OSXDaily)[http://osxdaily.com/2012/02/14/speed-up-misson-control-animations-mac-os-x/].

Run:

    defaults write com.apple.dock expose-animation-duration -float 0.15

Remember to restart the Dock after running.

    killall Dock
