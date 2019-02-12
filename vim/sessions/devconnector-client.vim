" ~/dotfiles/vim/sessions/devconnector-client.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 11 February 2019 at 22:20:34.
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
cd ~/Desktop/devconnector/client/src
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/Desktop/devconnector/client/src/components/layout/Navbar.js
badd +9 ~/Desktop/devconnector/client/src/App.js
badd +1 ~/Desktop/devconnector/client/src/components/layout/Footer.js
badd +1 ~/Desktop/devconnector/client/src/App.css
badd +1 ~/Desktop/devconnector/client/src/components/layout/Landing.js
badd +1 ~/Desktop/devconnector/client/src/components/auth/Login.js
badd +1 ~/Desktop/devconnector/client/src/components/auth/Register.js
badd +9 ~/Desktop/devconnector_theme/register.html
badd +1 ~/Desktop/devconnector_theme/login.html
badd +1 ~/Desktop/devconnector/client/src/store.js
badd +1 ~/Desktop/devconnector/client/src/reducers/index.js
badd +1 ~/Desktop/devconnector/client/src/reducers/authReducer.js
argglobal
silent! argdel *
set stal=2
edit ~/Desktop/devconnector/client/src/components/layout/Footer.js
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
exe 'vert 1resize ' . ((&columns * 105 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 104 + 105) / 210)
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
let s:l = 1 - ((0 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/devconnector/client/src/App.js') | buffer ~/Desktop/devconnector/client/src/App.js | else | edit ~/Desktop/devconnector/client/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 11 - ((10 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
11
normal! 022|
wincmd w
exe 'vert 1resize ' . ((&columns * 105 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 104 + 105) / 210)
tabedit ~/Desktop/devconnector/client/src/components/layout/Navbar.js
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
exe 'vert 1resize ' . ((&columns * 105 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 104 + 105) / 210)
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
let s:l = 2 - ((1 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/devconnector/client/src/App.js') | buffer ~/Desktop/devconnector/client/src/App.js | else | edit ~/Desktop/devconnector/client/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 016|
wincmd w
exe 'vert 1resize ' . ((&columns * 105 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 104 + 105) / 210)
tabedit ~/Desktop/devconnector/client/src/components/layout/Landing.js
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
exe 'vert 1resize ' . ((&columns * 105 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 104 + 105) / 210)
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
let s:l = 8 - ((7 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 018|
wincmd w
argglobal
if bufexists('~/Desktop/devconnector/client/src/App.js') | buffer ~/Desktop/devconnector/client/src/App.js | else | edit ~/Desktop/devconnector/client/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 25 - ((23 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 105 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 104 + 105) / 210)
tabedit ~/Desktop/devconnector/client/src/components/auth/Login.js
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
exe 'vert 1resize ' . ((&columns * 105 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 104 + 105) / 210)
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
let s:l = 9 - ((8 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/devconnector/client/src/App.js') | buffer ~/Desktop/devconnector/client/src/App.js | else | edit ~/Desktop/devconnector/client/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 32 - ((31 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
32
normal! 03|
wincmd w
exe 'vert 1resize ' . ((&columns * 105 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 104 + 105) / 210)
tabedit ~/Desktop/devconnector/client/src/components/auth/Register.js
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
exe 'vert 1resize ' . ((&columns * 105 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 104 + 105) / 210)
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
let s:l = 4 - ((3 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/devconnector/client/src/App.js') | buffer ~/Desktop/devconnector/client/src/App.js | else | edit ~/Desktop/devconnector/client/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 14 - ((12 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 105 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 104 + 105) / 210)
tabedit ~/Desktop/devconnector/client/src/store.js
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
exe 'vert 1resize ' . ((&columns * 105 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 104 + 105) / 210)
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
let s:l = 8 - ((7 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/devconnector/client/src/App.js') | buffer ~/Desktop/devconnector/client/src/App.js | else | edit ~/Desktop/devconnector/client/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 25 - ((24 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 051|
wincmd w
exe 'vert 1resize ' . ((&columns * 105 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 104 + 105) / 210)
tabedit ~/Desktop/devconnector/client/src/reducers/index.js
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
exe 'vert 1resize ' . ((&columns * 105 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 104 + 105) / 210)
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
let s:l = 6 - ((5 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/devconnector/client/src/App.js') | buffer ~/Desktop/devconnector/client/src/App.js | else | edit ~/Desktop/devconnector/client/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 9 - ((8 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 105 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 104 + 105) / 210)
tabedit ~/Desktop/devconnector/client/src/reducers/authReducer.js
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
exe 'vert 1resize ' . ((&columns * 105 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 104 + 105) / 210)
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
let s:l = 8 - ((7 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 05|
wincmd w
argglobal
if bufexists('~/Desktop/devconnector/client/src/App.js') | buffer ~/Desktop/devconnector/client/src/App.js | else | edit ~/Desktop/devconnector/client/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 9 - ((8 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 105 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 104 + 105) / 210)
tabedit ~/Desktop/devconnector_theme/login.html
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
exe 'vert 1resize ' . ((&columns * 31 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 178 + 105) / 210)
argglobal
enew
" file ~/Desktop/devconnector/client/src/NERD_tree_2
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
let s:l = 45 - ((23 * winheight(0) + 28) / 57)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
45
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 105) / 210)
exe 'vert 2resize ' . ((&columns * 178 + 105) / 210)
tabnext 9
set stal=1
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
tabnext 9
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/devconnector/client/src
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 57|vert 1resize 31|2resize 57|vert 2resize 178|
1wincmd w
tabnext 9
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
