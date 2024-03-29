action=open

default:
	@echo "Hello you, I am a little blocker so you don't do anything too stupid. Since "
	@echo "running all targets accidentally might have unwanted consequences."
	@echo "\nIf you want to run all targets run: make all"

all: mac brew git ssh subl vim zsh

apps:
	@./mac/apps.sh $(action);
brew:
	@./brew/index.sh;
git:
	@./git/index.sh;
mac:
	@./mac/index.sh;
ssh:
	@./ssh/index.sh;
subl:
	@./subl/index.sh;
vim:
	@./vim/index.sh;
zsh:
	@./zsh/index.sh;

.PHONY: default all brew git mac ssh subl vim zsh
