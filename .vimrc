"PLUGINS

"Vundle plugins
set nocompatible              " be iMproved, required
filetype off                  " required
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'ycm-core/YouCompleteMe'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"Vim-plug plugins
call plug#begin()

	"Nerdtree
	Plug 'preservim/nerdtree'

	"Lightline status bar
	Plug 'itchyny/lightline.vim'

	"Markdown preview
	"If you don't have nodejs and yarn
	"Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}
	"If you have nodejs and yarn
	Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }

	"emmet-vim
	Plug 'mattn/emmet-vim'

	"vim-fugitive
	Plug 'tpope/vim-fugitive'

	"vim-prettier
	Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

	"vim-signature for marks
	Plug 'kshenoy/vim-signature'

call plug#end()


"Lightline
set laststatus=2

let g:lightline = {
      \ 'colorscheme': 'wombat',
      \ }


"GENERAL COMMANDS

"keeps 100 items in history
set history=100

"sets line numbers
set number

"show cursor position
set ruler

"show incomplete commands
set showcmd

"show completion of commands when using tab completion
set wildmenu

"keep lines above and below cursor
set scrolloff=3

"ignore case when searching
set ignorecase

"turn off wrap
set nowrap

"make backup of file before saving it
set backup
"set backup extension
set bex=!

"don't break word up when wrapping
set lbr

"copy indentation from current line when creating another line
set ai
"smart indenting for programming
set si

"syntax highlighting, background, visual mode
syntax enable
set background=dark
highlight Visual cterm=bold ctermbg=Red ctermfg=NONE

"set color with (color <color>) and colorscheme with (colorscheme <colorscheme>)
colorscheme codedark

"Cause all splits to happen below the editor
set splitbelow

"Set tab to 4
set tabstop=4

"Open terminal on startup and resize it
"term
"winc k
"resize +10


