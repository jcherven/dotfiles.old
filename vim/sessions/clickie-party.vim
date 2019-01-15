" ~/dotfiles/vim/sessions/clickie-party.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 15 January 2019 at 16:37:39.
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
cd ~/Desktop/clickieparty-demo/src/Components/Wrapper
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/Desktop/clickieparty-demo/src/App.js
badd +1 ~/Desktop/clickieparty-demo/src/Components/Wrapper/index.js
badd +1 ~/Desktop/clickieparty-demo/src/Components/Wrapper/style.css
badd +1 ~/Desktop/clickieparty-demo/src/Components/Header/index.js
badd +1 ~/Desktop/clickieparty-demo/src/Components/Header/style.css
argglobal
silent! argdel *
edit ~/Desktop/clickieparty-demo/src/App.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 110) / 220)
exe 'vert 2resize ' . ((&columns * 93 + 110) / 220)
exe '3resize ' . ((&lines * 32 + 34) / 68)
exe 'vert 3resize ' . ((&columns * 94 + 110) / 220)
exe '4resize ' . ((&lines * 32 + 34) / 68)
exe 'vert 4resize ' . ((&columns * 94 + 110) / 220)
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
let s:l = 5 - ((4 * winheight(0) + 32) / 65)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/clickieparty-demo/src/Components/Wrapper/index.js') | buffer ~/Desktop/clickieparty-demo/src/Components/Wrapper/index.js | else | edit ~/Desktop/clickieparty-demo/src/Components/Wrapper/index.js | endif
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
3wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 110) / 220)
exe 'vert 2resize ' . ((&columns * 93 + 110) / 220)
exe '3resize ' . ((&lines * 32 + 34) / 68)
exe 'vert 3resize ' . ((&columns * 94 + 110) / 220)
exe '4resize ' . ((&lines * 32 + 34) / 68)
exe 'vert 4resize ' . ((&columns * 94 + 110) / 220)
tabedit ~/Desktop/clickieparty-demo/src/App.js
set splitbelow splitright
wincmd _ | wincmd |
vsplit
wincmd _ | wincmd |
vsplit
2wincmd h
wincmd w
wincmd w
wincmd _ | wincmd |
split
1wincmd k
wincmd w
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
exe 'vert 1resize ' . ((&columns * 31 + 110) / 220)
exe 'vert 2resize ' . ((&columns * 93 + 110) / 220)
exe '3resize ' . ((&lines * 32 + 34) / 68)
exe 'vert 3resize ' . ((&columns * 94 + 110) / 220)
exe '4resize ' . ((&lines * 32 + 34) / 68)
exe 'vert 4resize ' . ((&columns * 94 + 110) / 220)
argglobal
enew
" file ~/Desktop/clickieparty-demo/src/NERD_tree_9
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
let s:l = 1 - ((0 * winheight(0) + 32) / 65)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/clickieparty-demo/src/Components/Header/index.js') | buffer ~/Desktop/clickieparty-demo/src/Components/Header/index.js | else | edit ~/Desktop/clickieparty-demo/src/Components/Header/index.js | endif
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
if bufexists('~/Desktop/clickieparty-demo/src/Components/Header/style.css') | buffer ~/Desktop/clickieparty-demo/src/Components/Header/style.css | else | edit ~/Desktop/clickieparty-demo/src/Components/Header/style.css | endif
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
exe 'vert 1resize ' . ((&columns * 31 + 110) / 220)
exe 'vert 2resize ' . ((&columns * 93 + 110) / 220)
exe '3resize ' . ((&lines * 32 + 34) / 68)
exe 'vert 3resize ' . ((&columns * 94 + 110) / 220)
exe '4resize ' . ((&lines * 32 + 34) / 68)
exe 'vert 4resize ' . ((&columns * 94 + 110) / 220)
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
NERDTree ~/Desktop/clickieparty-demo
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 65|vert 1resize 31|2resize 65|vert 2resize 93|3resize 32|vert 3resize 94|4resize 32|vert 4resize 94|
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
1resize 65|vert 1resize 31|2resize 65|vert 2resize 93|3resize 32|vert 3resize 94|4resize 32|vert 4resize 94|
3wincmd w
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
