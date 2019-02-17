" ~/dotfiles/vim/sessions/crux-client.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 16 February 2019 at 23:05:53.
" Open this file in Vim and run :source % to restore your session.

set guioptions=egmrL
silent! set guifont=IBM\ Plex\ Mono:h11
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
if &cp | set nocp | endif
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/Desktop/crux/client/src/components/auth
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
set stal=2
tabnew
tabnew
tabnew
tabnew
tabrewind
edit ~/Desktop/crux/client/src/components/layout/Navbar.js
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
exe 'vert 1resize ' . ((&columns * 31 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 71 + 87) / 174)
exe 'vert 3resize ' . ((&columns * 70 + 87) / 174)
argglobal
enew
" file ~/Desktop/crux/client/src/components/layout/NERD_tree_3
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
let s:l = 6 - ((5 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
6
normal! 0
wincmd w
argglobal
if bufexists("~/Desktop/crux/client/src/App.js") | buffer ~/Desktop/crux/client/src/App.js | else | edit ~/Desktop/crux/client/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 46 - ((22 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
46
normal! 016|
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 71 + 87) / 174)
exe 'vert 3resize ' . ((&columns * 70 + 87) / 174)
tabnext
edit ~/Desktop/crux/client/src/components/layout/CronWrapper.js
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
exe 'vert 1resize ' . ((&columns * 31 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 71 + 87) / 174)
exe 'vert 3resize ' . ((&columns * 70 + 87) / 174)
argglobal
enew
" file ~/Desktop/crux/client/src/components/layout/NERD_tree_4
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
let s:l = 1 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/Desktop/crux/client/src/App.js") | buffer ~/Desktop/crux/client/src/App.js | else | edit ~/Desktop/crux/client/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 71 + 87) / 174)
exe 'vert 3resize ' . ((&columns * 70 + 87) / 174)
tabnext
edit ~/Desktop/crux/client/src/components/layout/Footer.js
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
exe 'vert 1resize ' . ((&columns * 31 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 71 + 87) / 174)
exe 'vert 3resize ' . ((&columns * 70 + 87) / 174)
argglobal
enew
" file ~/Desktop/crux/client/src/components/layout/NERD_tree_5
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
let s:l = 1 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/Desktop/crux/client/src/App.js") | buffer ~/Desktop/crux/client/src/App.js | else | edit ~/Desktop/crux/client/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 018|
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 71 + 87) / 174)
exe 'vert 3resize ' . ((&columns * 70 + 87) / 174)
tabnext
edit ~/Desktop/crux/client/src/components/auth/Login.js
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
exe 'vert 1resize ' . ((&columns * 31 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 71 + 87) / 174)
exe 'vert 3resize ' . ((&columns * 70 + 87) / 174)
argglobal
enew
" file ~/Desktop/crux/client/src/components/layout/NERD_tree_6
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
let s:l = 1 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists("~/Desktop/crux/client/src/App.js") | buffer ~/Desktop/crux/client/src/App.js | else | edit ~/Desktop/crux/client/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 71 + 87) / 174)
exe 'vert 3resize ' . ((&columns * 70 + 87) / 174)
tabnext
edit ~/Desktop/crux/client/src/components/auth/Reg.js
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
exe 'vert 1resize ' . ((&columns * 31 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 71 + 87) / 174)
exe 'vert 3resize ' . ((&columns * 70 + 87) / 174)
argglobal
enew
" file ~/Desktop/crux/client/src/components/layout/NERD_tree_7
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
let s:l = 16 - ((8 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
16
normal! 0
wincmd w
argglobal
if bufexists("~/Desktop/crux/client/src/App.js") | buffer ~/Desktop/crux/client/src/App.js | else | edit ~/Desktop/crux/client/src/App.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 87) / 174)
exe 'vert 2resize ' . ((&columns * 71 + 87) / 174)
exe 'vert 3resize ' . ((&columns * 70 + 87) / 174)
tabnext 5
set stal=1
badd +1 ~/Desktop/crux/client/src/components/layout/Navbar.js
badd +1 ~/Desktop/crux/client/src/App.js
badd +1 ~/Desktop/crux/client/src/components/layout/CronWrapper.js
badd +1 ~/Desktop/crux/client/src/components/layout/Footer.js
badd +1 ~/Desktop/crux/client/src/components/auth/Login.js
badd +1 ~/Desktop/crux/client/src/components/auth/Reg.js
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
"   silent exe 'bwipe ' . s:wipebuf
endif
" unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOFc
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch

" Support for special windows like quick-fix and plug-in windows.
" Everything down here is generated by vim-session (not supported
" by :mksession out of the box).

1wincmd w
tabnext 1
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/crux
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 43|vert 1resize 31|2resize 43|vert 2resize 71|3resize 43|vert 3resize 70|
1wincmd w
tabnext 2
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/crux/client/src
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 43|vert 1resize 31|2resize 43|vert 2resize 71|3resize 43|vert 3resize 70|
1wincmd w
tabnext 3
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/crux/client/src
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 43|vert 1resize 31|2resize 43|vert 2resize 71|3resize 43|vert 3resize 70|
1wincmd w
tabnext 4
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/crux/client/src
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 43|vert 1resize 31|2resize 43|vert 2resize 71|3resize 43|vert 3resize 70|
1wincmd w
tabnext 5
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/crux/client/src
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 43|vert 1resize 31|2resize 43|vert 2resize 71|3resize 43|vert 3resize 70|
2wincmd w
tabnext 5
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
