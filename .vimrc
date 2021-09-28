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
