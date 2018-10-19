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
set autoindent

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

" Tell Vim which characters to show for expanded TABs,
" trailing whitespace, and end-of-lines. VERY useful!
if &listchars ==# 'eol:$'
  " set listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
  set listchars=tab:>\ ,extends:>,precedes:<,nbsp:+
endif


