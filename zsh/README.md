# ZSH instructions

I use [oh-my-zsh](https://github.com/robbyrussell/oh-my-zsh) for my zsh framework.

Before installing `oh-my-zsh` check that zsh is installed. Ubuntu does not have 
it installed as default. You can check if `zsh` is installed by running:

	whereis zsh

This should return `/bin/zsh`.

To install `oh-my-zsh`:

**via curl**

	curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

**via wget**

	wget --no-check-certificate https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | sh

`oh-my-zsh` should set zsh as the default shell, but if it does not run:

	chsh -s /bin/zsh

## Installing custom plugins

Create a system link between the plugins in `./plugins/{folder}` and `$HOME/.oh-my-zsh/custom/plugins/{folder}`

Remember to add the custom plugins/other plugins you would want to use to .zshrc