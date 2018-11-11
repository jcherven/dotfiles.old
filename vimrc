set nocompatible              " required
filetype off                  " required

" vim-plug plugin manager
call plug#begin('~/.vim/plugged')

    " Airline status bar
    Plug 'bling/vim-airline'
        " Color theming for vim-airline
        Plug 'vim-airline/vim-airline-themes'
        let g:airline_theme='violet'

    " List plugins below this line
    
    " Color Schemes
        " Spacemacs color theme
        Plug 'colepeters/spacemacs-theme.vim'

        " SerialExperimentsLain (dark, pastel, highlighted operators)
        Plug 'lu-ren/SerialExperimentsLain'

    " File system explorer
    Plug 'scrooloose/nerdtree'
        " Start NERDtree on opening vim with no files specified
        autocmd StdinReadPre * let s:std_in=1
        autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
    
    " Automatic toggling of rel/abs line numbering in normal/insert modes
    Plug 'jeffKreeftmeijer/vim-numbertoggle'

    " Physics-based visual scrolling
    Plug 'yuttie/comfortable-motion.vim'

    " Supposedly does syntax highlighting for JS but it must need some config
    Plug 'pangloss/vim-javascript'

    " Emmet snippets
    Plug 'mattn/emmet-vim'

    " Close HTML tags when the closing bracket is typed
    Plug 'alvan/vim-closetag'

    " Indentation Guides
    Plug 'yggdroot/indentline'
    " let g:indentLine_setColors = 0

    " Automatic closing of quotes, parens, brackets, etc w syntax awareness
    Plug 'raimondi/delimitmate'

    " Tab completion based on searching the current buffer
    Plug 'ervandew/supertab'

" End vim-plug declarations
call plug#end()

" Set default encoding
set encoding=utf-8

" Set 256 color mode for nicer colors
set t_Co=256

" syntax highlighting
syntax on

" Show the line and col markers of the cursor (not needed with vim-airline)
" set ruler

" Powerful backspacing
set backspace=indent,eol,start

" Hide current mode since vim-airline is being used
set noshowmode

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

" Format comments

" Use extended regex
set magic

" Line numbers
set number

" Clipboard
set clipboard=unnamed

" Cursor settings
    set cursorline

    " Block cursor in NORMAL, I beam in INSERT.
    " Tmux compatible, works in iTerm2
    let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
    let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
    let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\" 

    " Set the scrollbox distance from the top and bottom
    set scrolloff=20

" Specify which area of the screen to split
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set colorscheme
    if (has("termguicolors"))
        set termguicolors
    endif
    set background=dark

    colorscheme spacemacs-theme

" MacVim-specific settings
    " Set font
    set guifont=IBM\ Plex\ Mono:h12
