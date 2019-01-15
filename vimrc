set nocompatible              " required
filetype off                  " required
" Set default encoding
set encoding=utf-8

" Preferred format precedence
set fileformats=unix,dos,mac

" Set 256 color mode for nicer colors
set t_Co=256

" vim-plug plugin manager
call plug#begin('~/.vim/plugged')

"""""""""""""""""""""""""""
"""" Interface Plugins """"
"""""""""""""""""""""""""""

    " Spacemacs color theme
    Plug 'jcherven/spacemacs-theme.vim'

    " Airline status bar
    Plug 'bling/vim-airline'
      " Color theming for vim-airline
      Plug 'vim-airline/vim-airline-themes'
      let g:airline_theme='violet'
      " Skip the text encoding string if it matches utf-8
      let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
      " Remove separators for empty sections
      let g:airline_skip_empty_secitons = 1
      " Enable the tabline displaying all buffers when only one tab is open
      let g:airline#extensions#tabline#enabled = 1
      " Disable airline on FocusLost autocommand (e.g. when Vim loses focus)
      let g:airline_focuslost_inactive = 0
      " Customizable tab labels
      Plug 'mkitt/tabline.vim'
      " Enable taboo, a tab decoration builtin
      Plug 'gcmt/taboo.vim'
        let g:airline#extensions#taboo#enabled = 1
        let g:taboo_tab_format = " %N:%P%m "
      " Git wrapper
      Plug 'tpope/vim-fugitive'

    " File system explorer sidebar
    Plug 'scrooloose/nerdtree'
      "Start NERDtree with a blank buffer on opening vim with no files specified
      autocmd StdinReadPre * let s:std_in=1
      autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
      " autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
      " Minimal mode
      let NERDTreeMinimalUI=1
      " Keep the NERDtree window on the left at all times
      let g:NERDTreeWinPos = "left"
      " Show line numbers in nerd tree
      let g:NERDTreeShowLineNumbers=1
      " Useful arrows in the dir tree
      let g:NERDTreeDirArrows = 1
      " Automatically kill the buffer of a deleted file
      let g:NERDTreeAutoDeleteBuffer = 1
      " Git flags for NERDtree
      Plug 'Xuyuanp/nerdtree-git-plugin'
      " Copy path of selected node with 'm,b'
      Plug 'mortonfox/nerdtree-clip'

    " Automatic toggling of rel/abs line numbering in normal/insert modes
    Plug 'jeffKreeftmeijer/vim-numbertoggle'

    " Physics-based visual scrolling when using ctrl-d and ctrl-u
    Plug 'yuttie/comfortable-motion.vim'

    " Indentation Guides
    Plug 'yggdroot/indentline'

    " Session and workspace manager
    Plug 'xolox/vim-session'
      let g:session_default_name = "session"
      " Required for vim-session
      Plug 'xolox/vim-misc'

    " Swap windows with <leader>ww
    Plug 'wesq3/vim-windowswap'

    " Transparent background in a windowed terminal
    Plug 'miyakogi/seiya.vim'
        let g:seiya_auto_enable=1
        let g:seiya_target_groups = has('nvim')? ['guibg'] : ['ctermbg']

    " Easymotion
    Plug 'easymotion/vim-easymotion'

    " Pasting with indentation adjusted to the destination context
    Plug 'sickill/vim-pasta'

    " Highlights trailing whitespace, provides :FixWhitespace to delete it
    Plug 'bronson/vim-trailing-whitespace'

""""""""""""""""""""""""""""""
"""" Languages and syntax """"
""""""""""""""""""""""""""""""

    " YouCompleteMe
    Plug 'Valloric/YouCompleteMe', { 'do': './install.py'  }

    " Valloric's highlighting for matching XML/HTML tags
    Plug 'valloric/matchtagalways'
      let g:mta_use_matchparen_group = 0
      let g:mta_filetypes = {
      \  'html': 1,
      \  'xhtml': 1,
      \  'xml': 1,
      \  'javascript.jsx': 1,
      \  'handlebars': 1
      \}

    " Handlebars filetype recognition
    Plug 'mustache/vim-mustache-handlebars'

    " Does a little bit of syntax highlighting for JS
    Plug 'pangloss/vim-javascript'

    " JSX highlighting and indenting (recommends pangloss/vim-javascript)
    Plug 'mxw/vim-jsx'

    " Does better syntax highlighting for JS
    " Plug 'jelera/vim-javascript-syntax'

    " Does even better syntax highlighting for js
    " Plug 'othree/yajs.vim'

    " Javascript libraries syntax
    Plug 'othree/javascript-libraries-syntax.vim'
        let g:used_javascript_libs = "jquery,react,handlebars"

    " Comment selected lines; toggles on and off with gc (line) and gC (block)
    Plug 'tpope/vim-commentary'

    " Emmet snippets
    Plug 'mattn/emmet-vim'

    " Close HTML tags when the closing bracket is typed, configured to work with jsx
    Plug 'alvan/vim-closetag'
      let g:closetag_filenames = '*.html, *.xhtml, *.js, *.jsx, *.handlebars, *.hbs, *.ejs'
      let g:closetag_xhtml_filenames = '*.xhtml, *.html, *.jsx, *.js'
      let g:closetag_filetypes = 'html,xhtml,phtml,jsx'
      let g:closetag_xhtml_filetypes = 'xhtml,jsx'
      let g:closetag_emptyTags_caseSensitive = 1
      " Shortcut key which places the cursor indented inside the closed tag
      let g:closetag_shortcut = '>'
      let g:closetag_close_shortcut = '<leader>>'

    " Automatic closing of quotes, parens, brackets, etc w syntax awareness
    Plug 'jiangmiao/auto-pairs'

    " Tab completion based on searching the current buffer
    Plug 'ervandew/supertab'

call plug#end()
"""""""""""""""""""""""""""""""""""
"""" End vim-plug declarations """"
"""""""""""""""""""""""""""""""""""
""""
""""
""""
""""
""""
"""""""""""""""""""""""""""""
"""" Vim native settings """"
"""""""""""""""""""""""""""""
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
let &showbreak = '+++ '

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

    " Block cursor in NORMAL, I beam in INSERT.
    " Tmux compatible, works in iTerm2
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

" Set colorscheme
    if (has("termguicolors"))
        set termguicolors
    endif
    set background=dark

    colorscheme spacemacs-theme

" MacVim or GVim-specific settings
if has('gui_running')
    " Set font
    set guifont=IBM\ Plex\ Mono:h11
    " Set transparancy on GUI window
    set transparency:8
    set blurradius:16
endif
