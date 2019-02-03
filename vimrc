set nocompatible              " required
filetype off                  " required
""""""""""""""""""""""""""""""""""""""""

" Set default encoding
set encoding=utf-8

" Preferred format precedence
set fileformats=unix,dos,mac

" Set 256 color mode for nicer colors
set t_Co=256

" don't redraw while executing macros
  set lazyredraw

" syntax highlighting
" syntax on
filetype plugin on
if !exists("g:syntax_on")
  syntax enable
endif

" vim-plug plugin manager
source ~/dotfiles/vim/config/plugdef.vim

" Powerful backspacing
set backspace=indent,eol,start

" Hide current mode since vim-airline is being used
set noshowmode

" Automatically reread changed files without asking
set autoread

" Don't show matching brackets by flickering
set showmatch

" Search options
set incsearch
set hlsearch
set ignorecase
set smartcase

" Tab spacing
set expandtab
set shiftwidth=2
set softtabstop=2

" Indentation
set autoindent
set smartindent

" Break line at word boundaries instead of letter boundaries
set linebreak

" Justify wrapped lines
let &showbreak = '├── '
" Wrap lines at indent level
set breakindent

" Use extended regex
set magic

" Line numbers
set number

" Set current working directory to that of the focused window without messing
" up plugins
set autochdir
" autocmd Bufenter * silent! lcd %:p:h

" Clipboard
set clipboard=unnamed

" Cursor settings
set cursorline

" Block cursor in NORMAL, I beam in INSERT (tmux and iTerm2 compatible).
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" Set the scrollbox distance from the top and bottom
set scrolloff=8

" Default split directions for Hsplits and Vsplits
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Buffer navigations

" Enable mouse interactions
set mouse=nv

" Disable concealing of quotation marks in .json files
set cole=0

" Customize gutter
" Gutter width has space for linter symbols
set signcolumn=no

" Allow crontab to be saved from vim
au BufEnter /private/tmp/crontab.* setl backupcopy=yes

" Set vim's builtin terminal size
set termwinsize=16x0

" Set colorscheme
    if (has("termguicolors"))
      set termguicolors
    endif

    set background=dark
    colorscheme spacemacs_web

" MacVim or GVim-specific settings
if has('gui_running')
    " Set font
    set guifont=IBM\ Plex\ Mono:h11
    " Set transparancy on GUI window
    set transparency:8
    set blurradius:16
endif
