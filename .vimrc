" Normal commands go below this line
set nocompatible              " required
filetype off                  " required

" Set default encoding
set encoding=utf-8

" syntax highlighting
syntax on

" Show the line and col markers of the cursor
set ruler

" Powerful backspacing
set backspace=indent,eol,start

" Show current mode
set showmode

" Automatically reread changed files without asking
set autoread

" Preferred format precedence
set fileformats=unix,dos,mac

" Don't show matching brackets by flickering
set showmatch

" Search options
set incsearch
set hlsearch
set ignorecase
set smartcase

" Tab spacing
set expandtab
set shiftwidth=4
set softtabstop=4

" Indentation
set autoindent
set smartindent

" Break line at word boundaries
set linebreak

" Justify wrapped lines
set showbreak=…

" Set column width
set columns=80

" Format comments

" Use extended regex
set magic

" Line numbers
set nu

" Scroll past the last line
set scrolloff=20

" Clipboard
set clipboard=unnamed

" Cursor settings
set cursorline

" Block cursor in NORMAL, I beam in INSERT.
" Tmux compatible, works in iTerm2
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\" 

" Specify which area of the screen to split
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

call plug#begin('~/.vim/plugged')
 Airline status bar
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
let g:airline_theme='angr'

" List plugins below this line
" Zenburn color scheme
Plug 'vim-scripts/Zenburn'

" Emmet snippets
Plug 'mattn/emmet-vim'

" Indentation Guides
Plug 'yggdroot/indentline'
let g:indentLine_setColors = 0

" Physics-based visual scrolling
Plug 'yuttie/comfortable-motion.vim'

" Automatic closing of quotes, parens, brackts, etc w syntax awareness
Plug 'raimondi/delimitmate'

" Tab completion based on searching the current buffer
Plug 'ervandew/supertab'

" Supposedly does syntax highlighting for JS but it must need some config
Plug 'pangloss/vim-javascript'

" Close HTML tags when the closing bracket is typed
Plug 'alvan/vim-closetag'

" End vim-plug declarations

call plug#end()
