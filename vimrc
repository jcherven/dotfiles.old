""""""""""""""""""""""""""""""""""""""""
""
"" .vimrc
"" dependencies: ./vim/config/plugdef.vim
""
""""""""""""""""""""""""""""""""""""""""

" Avoid errors if sourced files are not present
" Use this function instead of 'source'-ing a script {
function! SourceIfExists(file)
  if filereadable(expand(a:file))
    exe 'source' a:file
  endif
endfunction
" }
"
set nocompatible              " required
filetype off                  " required
""""""""""""""""""""""""""""""""""""""""

" Keep swap files in one place; maybe but probs not improves performance on WSL
set directory^=$HOME/.vim/tmp//

"Map <leader> to spacebar
map <SPACE> <leader>

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

" vim-plug plugin manager and plugin declarations script
call SourceIfExists("~/dotfiles/vim/config/plugdef.vim")

" Powerful backspacing
set backspace=indent,eol,start

" Tabline presence; 2: always, 1: only if 2 or more tabs
set showtabline=2

" Display current mode if in insert, replace, or visual
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
let &showbreak = '├───'
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

" Use system clipboard
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

" Vim Tab (layout) Navigations"
nnoremap th :tabprev<CR>
nnoremap tl :tabnext<CR>

" Bind : to space for Ex commands
" : will still be available as normal
noremap <space> :

" Enable mouse interactions in all modes
set mouse=a

" Customize gutter
" Gutter width has space for linter symbols
set signcolumn=no

" Allow crontab to be saved from vim
au BufEnter /private/tmp/crontab.* setl backupcopy=yes

" Set 24-bit color
if (has("termguicolors"))
  set termguicolors
endif

set background=dark

"" Colorscheme must be set after plugins are installed and set termguicolors

" Selects the base16 color scheme currently enabled in the base16 shell script
if filereadable(expand("~/.vimrc_background"))
  let base16colorspace=256 " Access colors present in 256 colorspace
  call SourceIfExists("~/.vimrc_background")
endif

" MacVim or GVim-specific settings
if has('gui_running')
    " Set font
    set guifont=Iosevka Term:h13
    " Set transparancy on GUI window
    " set transparency:7
    " set blurradius:16
endif

