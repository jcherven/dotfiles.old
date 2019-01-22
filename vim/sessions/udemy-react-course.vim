" ~/dotfiles/vim/sessions/udemy-react-course.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 22 January 2019 at 13:35:28.
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
cd ~/Desktop/react-complete-guide/src/containers
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +1 ~/Desktop/react-complete-guide/src/containers/App.js
badd +1 ~/Desktop/react-complete-guide/src/index.js
badd +1 ~/Desktop/react-complete-guide/src/components/Cockpit/Cockpit.js
badd +1 ~/Desktop/react-complete-guide/src/components/Persons/Persons.js
badd +1 ~/Desktop/react-complete-guide/src/components/Cockpit/Cockpit.css
badd +1 ~/Desktop/react-complete-guide/src/components/Persons/Person/Person.js
argglobal
silent! argdel *
edit ~/Desktop/react-complete-guide/src/containers/App.js
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
exe 'vert 1resize ' . ((&columns * 31 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 99 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 72 + 102) / 204)
argglobal
enew
" file ~/Desktop/react-complete-guide/src/containers/NERD_tree_2
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
let s:l = 1 - ((0 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/react-complete-guide/src/index.js') | buffer ~/Desktop/react-complete-guide/src/index.js | else | edit ~/Desktop/react-complete-guide/src/index.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 024|
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 99 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 72 + 102) / 204)
tabedit ~/Desktop/react-complete-guide/src/containers/App.js
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
exe 'vert 1resize ' . ((&columns * 31 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 83 + 102) / 204)
exe '3resize ' . ((&lines * 1 + 20) / 40)
exe 'vert 3resize ' . ((&columns * 88 + 102) / 204)
exe '4resize ' . ((&lines * 35 + 20) / 40)
exe 'vert 4resize ' . ((&columns * 88 + 102) / 204)
argglobal
enew
" file ~/Desktop/react-complete-guide/src/containers/NERD_tree_3
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
29,51fold
29
silent! normal! zo
let s:l = 74 - ((33 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
74
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/react-complete-guide/src/components/Cockpit/Cockpit.js') | buffer ~/Desktop/react-complete-guide/src/components/Cockpit/Cockpit.js | else | edit ~/Desktop/react-complete-guide/src/components/Cockpit/Cockpit.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 0) / 1)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/react-complete-guide/src/components/Cockpit/Cockpit.css') | buffer ~/Desktop/react-complete-guide/src/components/Cockpit/Cockpit.css | else | edit ~/Desktop/react-complete-guide/src/components/Cockpit/Cockpit.css | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 1 - ((0 * winheight(0) + 17) / 35)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
1
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 83 + 102) / 204)
exe '3resize ' . ((&lines * 1 + 20) / 40)
exe 'vert 3resize ' . ((&columns * 88 + 102) / 204)
exe '4resize ' . ((&lines * 35 + 20) / 40)
exe 'vert 4resize ' . ((&columns * 88 + 102) / 204)
tabedit ~/Desktop/react-complete-guide/src/containers/App.js
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
exe 'vert 1resize ' . ((&columns * 31 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 85 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 86 + 102) / 204)
argglobal
enew
" file ~/Desktop/react-complete-guide/src/containers/NERD_tree_4
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
let s:l = 25 - ((15 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
25
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/react-complete-guide/src/components/Persons/Persons.js') | buffer ~/Desktop/react-complete-guide/src/components/Persons/Persons.js | else | edit ~/Desktop/react-complete-guide/src/components/Persons/Persons.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 5 - ((2 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 022|
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 85 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 86 + 102) / 204)
tabedit ~/Desktop/react-complete-guide/src/containers/App.js
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
exe 'vert 1resize ' . ((&columns * 31 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 81 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 90 + 102) / 204)
argglobal
enew
" file ~/Desktop/react-complete-guide/src/containers/NERD_tree_5
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
let s:l = 28 - ((14 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
28
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/react-complete-guide/src/components/Persons/Person/Person.js') | buffer ~/Desktop/react-complete-guide/src/components/Persons/Person/Person.js | else | edit ~/Desktop/react-complete-guide/src/components/Persons/Person/Person.js | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 22 - ((21 * winheight(0) + 18) / 37)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
22
normal! 0
wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 81 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 90 + 102) / 204)
tabnext 3
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
NERDTree ~/Desktop/react-complete-guide/src/containers
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 37|vert 1resize 31|2resize 37|vert 2resize 99|3resize 37|vert 3resize 72|
1wincmd w
tabnext 2
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/react-complete-guide/src/containers
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 37|vert 1resize 31|2resize 37|vert 2resize 83|3resize 1|vert 3resize 88|4resize 35|vert 4resize 88|
1wincmd w
tabnext 3
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/react-complete-guide/src/containers
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 37|vert 1resize 31|2resize 37|vert 2resize 85|3resize 37|vert 3resize 86|
1wincmd w
tabnext 4
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/react-complete-guide/src/containers
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 37|vert 1resize 31|2resize 37|vert 2resize 81|3resize 37|vert 3resize 90|
2wincmd w
tabnext 3
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
