set nocompatible              " required
filetype off                  " required

set encoding=utf-8

syntax on

" Tab spacing
set expandtab
set shiftwidth=4
set softtabstop=4

" Line numbers
set nu

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

