set nocompatible              " required
filetype off                  " required

" vim-plug plugin manager
call plug#begin('~/.vim/plugged')

    " Color Schemes
        " Spacemacs color theme
        Plug 'jcherven/spacemacs-theme.vim'

    " Airline status bar
    Plug 'bling/vim-airline'
        " Color theming for vim-airline
        Plug 'vim-airline/vim-airline-themes'
        let g:airline_theme='violet'

"""" List other plugins below this line
    
    " Linting for numerous languages
    "Plug 'vim-syntastic/syntastic'
    "    " Basic starter settings

    "    set statusline+=%#warningmsg#
    "    set statusline+=%{SyntasticStatuslineFlag()}
    "    set statusline+=%*

    "    let g:syntastic_always_populate_loc_list = 1
    "    let g:syntastic_auto_loc_list = 1
    "    let g:syntastic_check_on_open = 1
    "    let g:syntastic_check_on_wq = 0

        " Enabled language checkers
    "    let g:syntastic_checkers_javascript = ['javascript/eslint', 'javascript/jshint']
    "    let g:syntastic_checkers_html = ['html/eslint']
    "    let g:syntastic_checkers_sql = ['sql/sqlint']
    "    let g:syntastic_checkers_markdown = ['markdown/mdl']
    "    let g:syntastic_checkers_php = ['php/php']
    "    let g:syntastic_checkers_json = ['json/jsonlint']
    "    let g:syntastic_checkers_handlebars = ['handlebars/handlebars']
    "    let g:syntastic_checkers_css = ['css/csslint']
    "    let g:syntastic_checkers_sh = ['sh/shellcheck']
    " End syntactic options

    " YouCompleteMe
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py'  }
    
    " File system explorer sidebar
    Plug 'scrooloose/nerdtree'
         "Start NERDtree on opening vim with no files specified
         autocmd StdinReadPre * let s:std_in=1
         autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
        "
    " Automatic toggling of rel/abs line numbering in normal/insert modes
    Plug 'jeffKreeftmeijer/vim-numbertoggle'

    " Physics-based visual scrolling
    Plug 'yuttie/comfortable-motion.vim'

    " Recognition for weird filetypes, used for linting
        " Handlebars
        Plug 'mustache/vim-mustache-handlebars'

    " Does a little bit of syntax highlighting for JS
    Plug 'pangloss/vim-javascript'

    " Does better syntax highlighting for JS
    Plug 'jelera/vim-javascript-syntax'

    " Does even better syntax highlighting for js
    Plug 'othree/yajs.vim'

    " Javascript libraries syntax
    Plug 'othree/javascript-libraries-syntax.vim'
        let g:used_javascript_libs = "jquery,react,handlebars"

    " jsx highlighting and indenting
    Plug 'mxw/vim-jsx'

    " Comment selected lines; toggles on and off with gc (line) and gC (block)
    Plug 'tpope/vim-commentary'

    " Emmet snippets
    Plug 'mattn/emmet-vim'

    " Close HTML tags when the closing bracket is typed
    Plug 'alvan/vim-closetag'

    " Indentation Guides
    Plug 'yggdroot/indentline'

    " Automatic closing of quotes, parens, brackets, etc w syntax awareness
    Plug 'jiangmiao/auto-pairs'

    " Tab completion based on searching the current buffer
    Plug 'ervandew/supertab'

    " Transparent background in a windowed terminal
    Plug 'miyakogi/seiya.vim'
        let g:seiya_auto_enable=1
        let g:seiya_target_groups = has('nvim')? ['guibg'] : ['ctermbg']

" End vim-plug declarations
call plug#end()
"
"
"
" Vim native settings
"
" Set default encoding
set encoding=utf-8

" Set 256 color mode for nicer colors
set t_Co=256

" syntax highlighting
syntax on
filetype plugin on
syntax enable

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
set shiftwidth=2
set softtabstop=2

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
    set scrolloff=10

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
if has('gui_running')
    " Set font
    set guifont=IBM\ Plex\ Mono:h11
    " Set transparancy on GUI window
    set transparency:8
    set blurradius:4
endif
