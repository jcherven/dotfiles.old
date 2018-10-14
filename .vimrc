set nocompatible              " required
filetype off                  " required

set encoding=utf-8

" set the runtime path to include Vundle and initialize
" set rtp+=~/.vim/bundle/Vundle.vim
" call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
" Plugin 'gmarik/Vundle.vim'

" add all your plugins here (note older versions of Vundle
" used Bundle instead of Plugin)
" Plugin 'tmhedberg/SimpylFold'
" Plugin 'vim-scripts/indentpython'
" Plugin 'Valloric/YouCompleteMe'
" Plugin 'vim-syntastic/syntastic'
" Plugin 'nvie/vim-flake8'
" Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


" ...

" All of your Plugins must be added before the following line
" call vundle#end()            " required
" filetype plugin indent on    " required

" Specify which area of the screen to split
set splitbelow
set splitright

" split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

" Add proper PEP8 indentation
"au BufNewFile,BufRead *.py:
"    \ set tabstop=4
"    \ set softtabstop=4
"    \ set shiftwidth=4
"    \ set textwidth=79
"    \ set expandtab
"    \ set autoindent
"    \ set fileformat=unix

" Indentation settings for other filetypes
"au BufNewFile,BufRead *.js, *.html, *.css:
"    \ set tabstop=2
"    \ set softtabstop=2
"    \ set shiftwidth=2

" Flag unnecessary whitespace
" au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" Clears the YoucompleteMe autocomplete window when finished using it
"let g:ycm_autoclose_preview_window_after_completion=1
" Defines a shortcut for goto definition
"map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

"python with virtualenv support
"py << EOF
"import os
"import sys
"if 'VIRTUAL_ENV' in os.environ:
"  project_base_dir = os.environ['VIRTUAL_ENV']
"    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
"      execfile(activate_this, dict(__file__=activate_this))
"      EOF

"let python_highlight_all=1
syntax on
set nu
set clipboard=unnamed
set cursorline
