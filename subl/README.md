# Sublime Text 2 settings

You will find a `Preferences` file in this directory this is 
my current `Preferences.sublime-settings` file. Just a warning:
this file might not work without installing the font 
[Meslo](https://github.com/andreberg/Meslo-Font) and the Soda
theme.

Package Control is vital part of Sublime Text 2 (currently) so
install it from [here](http://wbond.net/sublime_packages/package_control/installation).

**Installing the Soda theme**

Since Soda is not a part of Package Control at the moment you have
to install it manually.

	$ cd /path/to/sublime/Packages/
	$ git clone https://github.com/buymeasoda/soda-theme/ "Theme - Soda"

## Recommended packages

**General packages**

- AdvancedNewFile
- Gist
- SublimeTODO
- Whitespace Corrector
- ZenCoding

**Language specific** 

- Nodejs
- Jade
- HTML5
- LESS
- Markdown Preview

## Install the `subl` cli

The subl gives you a fast way of opening Sublime Text 2 from the command
line.

**For OSX**

Double check with [this page](http://www.sublimetext.com/docs/2/osx_command_line.html)
that nothing has changed.

	$ sudo ln -s "/Applications/Sublime Text 2.app/Contents/SharedSupport/bin/subl" /usr/local/bin/subl

**For Linux**

	$ sudo ln -s /path/to/sublime_text /usr/local/bin/subl