" ~/dotfiles/vim/sessions/classLaravelActivity.vim:
" Vim session script.
" Created by session.vim 2.13.1 on 23 January 2019 at 20:52:46.
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
cd ~/Desktop/classLaravelActivity/resources/views
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
badd +3 ~/Desktop/classLaravelActivity/server.php
badd +47 ~/Desktop/classLaravelActivity/public/index.php
badd +1 ~/Desktop/classLaravelActivity/routes/web.php
badd +1 ~/Desktop/classLaravelActivity/routes/console.php
badd +1 ~/Desktop/classLaravelActivity/routes/channels.php
badd +1 ~/Desktop/classLaravelActivity/routes/api.php
badd +1 ~/Desktop/classLaravelActivity/resources/views/welcome.blade.php
badd +28 ~/Desktop/classLaravelActivity/resources/js/app.js
badd +1 ~/Desktop/classLaravelActivity/app/Http/Controllers/WelcomeController.php
badd +17 ~/Desktop/classLaravelActivity/database/migrations/2019_01_24_001644_create_items_table.php
badd +1 ~/Desktop/classLaravelActivity/webpack.mix.js
badd +1 ~/Desktop/classLaravelActivity/app/Http/Controllers/ItemsController.php
badd +76 ~/Desktop/classLaravelActivity/resources/views/items.blade.php
badd +1 ~/Desktop/classLaravelActivity/app/Http/Controllers/Controller.php
badd +1 ~/Desktop/classLaravelActivity/app/User.php
badd +1 ~/Desktop/classLaravelActivity/database/seeds/DatabaseSeeder.php
badd +84 ~/Desktop/classLaravelActivity/resources/views/items/index.blade.php
badd +12 ~/Desktop/classLaravelActivity/.env
argglobal
silent! argdel *
set splitbelow splitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
enew
" file ~/Desktop/classLaravelActivity/NERD_tree_1
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal nofen
tabedit ~/Desktop/classLaravelActivity/resources/views/items.blade.php
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
" file ~/Desktop/classLaravelActivity/resources/views/NERD_tree_2
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
12,64fold
let s:l = 5 - ((4 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
5
normal! 0
wincmd w
argglobal
if bufexists('~/Desktop/classLaravelActivity/app/Http/Controllers/ItemsController.php') | buffer ~/Desktop/classLaravelActivity/app/Http/Controllers/ItemsController.php | else | edit ~/Desktop/classLaravelActivity/app/Http/Controllers/ItemsController.php | endif
setlocal fdm=manual
setlocal fde=0
setlocal fmr={{{,}}}
setlocal fdi=#
setlocal fdl=0
setlocal fml=1
setlocal fdn=20
setlocal fen
silent! normal! zE
let s:l = 2 - ((1 * winheight(0) + 16) / 33)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
2
normal! 0
wincmd w
2wincmd w
exe 'vert 1resize ' . ((&columns * 31 + 102) / 204)
exe 'vert 2resize ' . ((&columns * 85 + 102) / 204)
exe 'vert 3resize ' . ((&columns * 86 + 102) / 204)
tabnext 2
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
NERDTree ~/Desktop/classLaravelActivity
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1wincmd w
tabnext 2
let s:bufnr_save = bufnr("%")
let s:cwd_save = getcwd()
NERDTree ~/Desktop/classLaravelActivity/resources/views
if !getbufvar(s:bufnr_save, '&modified')
  let s:wipebuflines = getbufline(s:bufnr_save, 1, '$')
  if len(s:wipebuflines) <= 1 && empty(get(s:wipebuflines, 0, ''))
    silent execute 'bwipeout' s:bufnr_save
  endif
endif
execute "cd" fnameescape(s:cwd_save)
1resize 33|vert 1resize 31|2resize 33|vert 2resize 85|3resize 33|vert 3resize 86|
2wincmd w
tabnext 2
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
