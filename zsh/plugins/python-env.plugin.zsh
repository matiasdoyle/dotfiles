
# Create a Python virtualenv.
#
# If $HOME/env does not exist the directory gets created.
#
#   Usage: create_env <name>
#
function create_env() {
  if [ ! -d $HOME/env ]; then
    mkdir $HOME/env
  fi

  virtualenv $HOME/env/$1
}

# Activate a Python virtualenv.
#
#   Usage: activate_env <name>
#
function activate_env() {
  source $HOME/env/$1/bin/activate
}
