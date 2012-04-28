# VIM instructions

To get started with VIM

**Install `pathogen`**

Create the folders:

	~/.vim/autoload/
	~/.vim/bundle/

Download pathogen to `~/.vim/autoload/pathogen.vim`:

	$ cd ~/.vim/autoload/
	$ (curl|wget) https://raw.github.com/tpope/vim-pathogen/HEAD/autoload/pathogen.vim

**Install `colorscheme solarized`**

	$ cd ~/.vim/bundle/
	$ git clone git://github.com/altercation/vim-colors-solarized.git

**Install `NERDTree`**

	$ cd ~/.vim/bundle/
	$ git clone https://github.com/scrooloose/nerdtree.git

Now copy (or create a system link) the vimrc file to `~/.vimrc`. **Warning** currently 
I am using Meslo as the GUI font. Comment out that line or set another font if you don't
have it installed.

You might also want to change the `let g:solarized_termcolors=16` line depending on how
many colours your terminal has.