# Todo.txt

Todo.txt is a simple plain text todo manager that syncs via Dropbox.
See more at [todotxt.com](http://todotxt.com/).

To use todo.txt via the terminal download the latest package from 
https://github.com/ginatrapani/todo.txt-cli/downloads

Move `todo.sh` to somewhere in your `$PATH`. I use `/usr/local/bin/`.

Make it executable (if you do this after moving you would have to
run it with sudo):

	chmod +x /path/to/todo.sh

Move `todo.cfg` to `$HOME/.todo.cfg` if you are using the zsh custom
plugin (that is where it is referenced to).