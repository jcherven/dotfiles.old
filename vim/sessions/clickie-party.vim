" ~/dotfiles/vim/sessions/clickie-party.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 17 January 2019 at 18:18:36.
" Open this file in Vim and run :source % to restore your session.

if exists('g:syntax_on') != 1 | syntax on | endif
if exists('g:did_load_filetypes') != 1 | filetype on | endif
if exists('g:did_load_ftplugin') != 1 | filetype plugin on | endif
if exists('g:did_indent_on') != 1 | filetype indent on | endif
if &background != 'dark'
	set background=dark
endif
if !exists('g:colors_name') || g:colors_name != 'spacemacs-theme' | colorscheme spacemacs-theme | endif
call setqflist([])
let SessionLoad = 1
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
cd ~/Desktop/clickieparty-demo/src/Components/GameOver
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +6 ~/Desktop/clickieparty-demo/src/App.js
badd +1 ~/Desktop/clickieparty-demo/src/Components/Wrapper/index.js
badd +1 ~/Desktop/clickieparty-demo/src/Components/Wrapper/style.css
badd +8 ~/Desktop/clickieparty-demo/src/Components/Header/index.js
badd +1 ~/Desktop/clickieparty-demo/src/Components/Header/style.css
badd +1 ~/Desktop/clickieparty-demo/src/Components/GameArea/index.js
badd +1 ~/Desktop/clickieparty-demo/src/Components/Tile/index.js
badd +1 ~/Desktop/clickieparty-demo/src/Components/Footer/index.js
badd +4 ~/Desktop/clickieparty-demo/src/index.js
badd +1 ~/Desktop/clickieparty-demo/src/style.css
badd +1 ~/Desktop/clickieparty-demo/src/Components/GameArea/style.css
badd +1 ~/Desktop/clickieparty-demo/src/Components/Tile/style.css
badd +1 ~/Desktop/clickieparty-demo/src/Components/Footer/style.css
badd +1 ~/Desktop/clickieparty-demo/src/tiles.json
badd +1 ~/Desktop/clickieparty-demo/src/Components/Navbar/index.js
badd +0 ~/Desktop/clickieparty-demo/src/Components/Navbar/style.css
badd +1 ~/Desktop/clickieparty-demo/src/Components/GameOver/index.js
argglobal
silent! argdel *
edit ~/Desktop/clickieparty-demo/src/Components/Wrapper/index.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 106) / 213)
exe '2resize ' . ((&lines * 28 + 32) / 64)
exe 'vert 2resize ' . ((&columns * 93 + 106) / 213)
exe '3resize ' . ((&lines * 32 + 32) / 64)
exe 'vert 3resize ' . ((&columns * 93 + 106) / 213)
exe 'vert 4resize ' . ((&columns * 87 + 106) / 213)
argglobal
enew
" file ~/Desktop/clickieparty-demo/src/NERD_tree_2
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
let s:l = 1 - ((0 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/clickieparty-demo/src/Components/Wrapper/style.css') | buffer ~/Desktop/clickieparty-demo/src/Components/Wrapper/style.css | else | edit ~/Desktop/clickieparty-demo/src/Components/Wrapper/style.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/clickieparty-demo/src/App.js') | buffer ~/Desktop/clickieparty-demo/src/App.js | else | edit ~/Desktop/clickieparty-demo/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 19 - ((17 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
19
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 106) / 213)
exe '2resize ' . ((&lines * 28 + 32) / 64)
exe 'vert 2resize ' . ((&columns * 93 + 106) / 213)
exe '3resize ' . ((&lines * 32 + 32) / 64)
exe 'vert 3resize ' . ((&columns * 93 + 106) / 213)
exe 'vert 4resize ' . ((&columns * 87 + 106) / 213)
tabedit ~/Desktop/clickieparty-demo/src/Components/Navbar/index.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 106) / 213)
exe '2resize ' . ((&lines * 30 + 32) / 64)
exe 'vert 2resize ' . ((&columns * 89 + 106) / 213)
exe '3resize ' . ((&lines * 30 + 32) / 64)
exe 'vert 3resize ' . ((&columns * 89 + 106) / 213)
exe 'vert 4resize ' . ((&columns * 91 + 106) / 213)
argglobal
enew
" file ~/Desktop/clickieparty-demo/src/NERD_tree_4
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
let s:l = 14 - ((13 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
14
normal! 022|
wincmd w
argglobal
if bufexists('~/Desktop/clickieparty-demo/src/Components/Navbar/style.css') | buffer ~/Desktop/clickieparty-demo/src/Components/Navbar/style.css | else | edit ~/Desktop/clickieparty-demo/src/Components/Navbar/style.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 9 - ((8 * winheight(0) + 15) / 30)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 019|
wincmd w
argglobal
if bufexists('~/Desktop/clickieparty-demo/src/App.js') | buffer ~/Desktop/clickieparty-demo/src/App.js | else | edit ~/Desktop/clickieparty-demo/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 34 - ((33 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
34
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 106) / 213)
exe '2resize ' . ((&lines * 30 + 32) / 64)
exe 'vert 2resize ' . ((&columns * 89 + 106) / 213)
exe '3resize ' . ((&lines * 30 + 32) / 64)
exe 'vert 3resize ' . ((&columns * 89 + 106) / 213)
exe 'vert 4resize ' . ((&columns * 91 + 106) / 213)
tabedit ~/Desktop/clickieparty-demo/src/Components/GameArea/index.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 106) / 213)
exe '2resize ' . ((&lines * 28 + 32) / 64)
exe 'vert 2resize ' . ((&columns * 93 + 106) / 213)
exe '3resize ' . ((&lines * 32 + 32) / 64)
exe 'vert 3resize ' . ((&columns * 93 + 106) / 213)
exe 'vert 4resize ' . ((&columns * 87 + 106) / 213)
argglobal
enew
" file ~/Desktop/clickieparty-demo/src/NERD_tree_5
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
let s:l = 1 - ((0 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 026|
wincmd w
argglobal
if bufexists('~/Desktop/clickieparty-demo/src/Components/GameArea/style.css') | buffer ~/Desktop/clickieparty-demo/src/Components/GameArea/style.css | else | edit ~/Desktop/clickieparty-demo/src/Components/GameArea/style.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 4 - ((3 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
4
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/clickieparty-demo/src/App.js') | buffer ~/Desktop/clickieparty-demo/src/App.js | else | edit ~/Desktop/clickieparty-demo/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 106) / 213)
exe '2resize ' . ((&lines * 28 + 32) / 64)
exe 'vert 2resize ' . ((&columns * 93 + 106) / 213)
exe '3resize ' . ((&lines * 32 + 32) / 64)
exe 'vert 3resize ' . ((&columns * 93 + 106) / 213)
exe 'vert 4resize ' . ((&columns * 87 + 106) / 213)
tabedit ~/Desktop/clickieparty-demo/src/Components/Tile/index.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 106) / 213)
exe '2resize ' . ((&lines * 28 + 32) / 64)
exe 'vert 2resize ' . ((&columns * 80 + 106) / 213)
exe '3resize ' . ((&lines * 32 + 32) / 64)
exe 'vert 3resize ' . ((&columns * 80 + 106) / 213)
exe 'vert 4resize ' . ((&columns * 100 + 106) / 213)
argglobal
enew
" file ~/Desktop/clickieparty-demo/src/NERD_tree_6
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
let s:l = 10 - ((9 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
10
normal! 010|
wincmd w
argglobal
if bufexists('~/Desktop/clickieparty-demo/src/Components/Tile/style.css') | buffer ~/Desktop/clickieparty-demo/src/Components/Tile/style.css | else | edit ~/Desktop/clickieparty-demo/src/Components/Tile/style.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 7 - ((6 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
7
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/clickieparty-demo/src/App.js') | buffer ~/Desktop/clickieparty-demo/src/App.js | else | edit ~/Desktop/clickieparty-demo/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 30 - ((29 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
30
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 106) / 213)
exe '2resize ' . ((&lines * 28 + 32) / 64)
exe 'vert 2resize ' . ((&columns * 80 + 106) / 213)
exe '3resize ' . ((&lines * 32 + 32) / 64)
exe 'vert 3resize ' . ((&columns * 80 + 106) / 213)
exe 'vert 4resize ' . ((&columns * 100 + 106) / 213)
tabedit ~/Desktop/clickieparty-demo/src/Components/Footer/index.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 106) / 213)
exe '2resize ' . ((&lines * 28 + 32) / 64)
exe 'vert 2resize ' . ((&columns * 93 + 106) / 213)
exe '3resize ' . ((&lines * 32 + 32) / 64)
exe 'vert 3resize ' . ((&columns * 93 + 106) / 213)
exe 'vert 4resize ' . ((&columns * 87 + 106) / 213)
argglobal
enew
" file ~/Desktop/clickieparty-demo/src/NERD_tree_7
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
let s:l = 8 - ((7 * winheight(0) + 14) / 28)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
8
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/clickieparty-demo/src/Components/Footer/style.css') | buffer ~/Desktop/clickieparty-demo/src/Components/Footer/style.css | else | edit ~/Desktop/clickieparty-demo/src/Components/Footer/style.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 16) / 32)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/clickieparty-demo/src/App.js') | buffer ~/Desktop/clickieparty-demo/src/App.js | else | edit ~/Desktop/clickieparty-demo/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 6 - ((5 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 106) / 213)
exe '2resize ' . ((&lines * 28 + 32) / 64)
exe 'vert 2resize ' . ((&columns * 93 + 106) / 213)
exe '3resize ' . ((&lines * 32 + 32) / 64)
exe 'vert 3resize ' . ((&columns * 93 + 106) / 213)
exe 'vert 4resize ' . ((&columns * 87 + 106) / 213)
tabedit ~/Desktop/clickieparty-demo/src/Components/GameOver/index.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 106) / 213)
exe 'vert 2resize ' . ((&columns * 90 + 106) / 213)
exe 'vert 3resize ' . ((&columns * 90 + 106) / 213)
argglobal
enew
" file ~/Desktop/clickieparty-demo/src/NERD_tree_8
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
let s:l = 9 - ((8 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
9
normal! 024|
wincmd w
argglobal
if bufexists('~/Desktop/clickieparty-demo/src/App.js') | buffer ~/Desktop/clickieparty-demo/src/App.js | else | edit ~/Desktop/clickieparty-demo/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 30) / 61)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 039|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 106) / 213)
exe 'vert 2resize ' . ((&columns * 90 + 106) / 213)
exe 'vert 3resize ' . ((&columns * 90 + 106) / 213)
tabnext 6
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
NERDTree ~/Desktop/clickieparty-demo
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 61|vert 1resize 31|2resize 28|vert 2resize 93|3resize 32|vert 3resize 93|4resize 61|vert 4resize 87|
1wincmd w
tabnext 2
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/clickieparty-demo/src
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 61|vert 1resize 31|2resize 30|vert 2resize 89|3resize 30|vert 3resize 89|4resize 61|vert 4resize 91|
1wincmd w
tabnext 3
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/clickieparty-demo/src
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 61|vert 1resize 31|2resize 28|vert 2resize 93|3resize 32|vert 3resize 93|4resize 61|vert 4resize 87|
1wincmd w
tabnext 4
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/clickieparty-demo/src
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 61|vert 1resize 31|2resize 28|vert 2resize 80|3resize 32|vert 3resize 80|4resize 61|vert 4resize 100|
1wincmd w
tabnext 5
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/clickieparty-demo/src
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 61|vert 1resize 31|2resize 28|vert 2resize 93|3resize 32|vert 3resize 93|4resize 61|vert 4resize 87|
1wincmd w
tabnext 6
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/clickieparty-demo/src
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 61|vert 1resize 31|2resize 61|vert 2resize 90|3resize 61|vert 3resize 90|
2wincmd w
tabnext 6
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
