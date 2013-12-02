
function create_env() {
  if [ ! -d $HOME/env ]; then
    mkdir $HOME/env
  fi

  virtualenv $HOME/env/$1
}

function activate_env() {
  source $HOME/env/$1/bin/activate
}
