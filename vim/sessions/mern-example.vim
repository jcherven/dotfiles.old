" ~/dotfiles/vim/sessions/mern-example.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 23 January 2019 at 11:56:59.
" Open this file in Vim and run :source % to restore your session.

if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'spacemacs_web' | colorscheme spacemacs_web | endif
call setqflist([])
let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/client/src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +16 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/09-Stu_AJAXBooks/Solved/server.js
badd +1 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/09-Stu_AJAXBooks/Solved/routes/index.js
badd +1 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/09-Stu_AJAXBooks/Solved/routes/api/index.js
badd +1 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/09-Stu_AJAXBooks/Solved/routes/api/books.js
badd +1 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/09-Stu_AJAXBooks/Solved/models/book.js
badd +0 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/09-Stu_AJAXBooks/Solved/models/index.js
badd +1 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/package.json
badd +5 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/client/package.json
badd +0 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/client/README.md
badd +0 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/README.md
badd +11 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/client/src/App.js
badd +6 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/12-Stu_Deployment/README.md
badd +1 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/server.js
badd +1 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/routes/api/index.js
badd +3 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/routes/api/books.js
badd +1 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/controllers/booksController.js
badd +1 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/models/index.js
badd +2 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/models/book.js
badd +1 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/routes/index.js
badd +10 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/client/public/index.html
badd +24 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/client/src/pages/Books.js
badd +1 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/client/src/pages/Detail.js
badd +1 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/client/src/pages/NoMatch.js
badd +1 ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/client/src/utils/API.js
argglobal
silent! argdel *
edit ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/20-react/20.2/11-Stu_ReactRouter/Solved/client/src/App.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
1wincmd h
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 172 + 102) / 204)
argglobal
enew
" file ~/Desktop/bootcamp/UCFVW201808FSF2/class-content/NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
wincmd w
argglobal
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 8 - ((7 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 172 + 102) / 204)
tabnext 1
if exists('s:wipebuf') && getbufvar(s:wipebuf, '&buftype') isnot# 'terminal'
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 winminheight=1 winminwidth=1 shortmess=filnxtToOFc
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/bootcamp/UCFVW201808FSF2/class-content
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 37|vert 1resize 31|2resize 37|vert 2resize 172|
2wincmd w
tabnext 1
if exists('s:wipebuf')
  if empty(bufname(s:wipebuf))
if !getbufvar(s:wipebuf, '&modified')
  let s:wipebuflines = getbufline(s:wipebuf, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:wipebuf
  endif
endif
  endif
endif
doautoall SessionLoadPost
unlet SessionLoad
" vim: ft=vim ro nowrap smc=128
