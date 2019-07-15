" =============================================================================
" Filename: autoload/lightline/colorscheme/lightline-jummiterm-dark.vim
" Lightline Name: "lightline-jummiterm-dark"
" Author: James Cherven
" License: MIT License
" Last Change: 2019-02-26
" =============================================================================

let s:red = '#df0000'
let s:green = '#008700'
let s:blue = '#ce537a'

let s:pink = '#afdf00'
let s:olive = '#dfaf5f'
let s:navy = '#df875f'

let s:orange = '#d75f00'
let s:purple = '#8959a8'
let s:aqua = '#ce537a'

" Basics:
let s:foreground = '#322544'
let s:background = '#444444'
let s:window = '#bc6ec5'
let s:status = '#b2b2b2'
let s:error = '#ce537a'

" Tabline:
let s:tabline_bg = '#444444'
let s:tabline_active_fg = '#322544'
let s:tabline_active_bg = '#20d699'
let s:tabline_inactive_fg = '#f7efff'
let s:tabline_inactive_bg = '#444444'

" Statusline:
let s:statusline_active_fg = '#322544'
let s:statusline_active_bg = '#20d699'
let s:statusline_inactive_fg = '#f7efff'
let s:statusline_inactive_bg = '#444444'

" Visual:
let s:visual_fg = '#f7efff'
let s:visual_bg = '#404374'

let s:p = {'normal': {}, 'inactive': {}, 'insert': {}, 'replace': {}, 'visual': {}, 'tabline': {}}
let s:p.normal.left = [ [ s:foreground, s:background ], [ s:statusline_active_fg, s:status ], [ s:statusline_active_fg, s:statusline_active_bg ] ]
let s:p.normal.right = [ [ s:foreground, s:background ], [ s:statusline_active_fg, s:status ], [ s:statusline_active_fg, s:statusline_active_bg ] ]
let s:p.normal.middle = [ [ s:statusline_active_fg, s:statusline_active_bg ]]
let s:p.inactive.right = [ [ s:foreground, s:background ], [ s:foreground, s:background ] ]
let s:p.inactive.left = [ [ s:foreground, s:background ], [ s:foreground, s:background ] ]
let s:p.inactive.middle = [ [ s:foreground, s:background ], ]
let s:p.insert.left = [ [ s:background, s:blue], [ s:statusline_active_fg, s:status ], [ s:statusline_active_fg, s:statusline_active_bg ] ]
let s:p.replace.left = [ [ s:background, s:pink ], [s:statusline_active_fg, s:status ], [ s:statusline_active_fg, s:statusline_active_bg ] ]
let s:p.visual.left = [ [ s:visual_fg, s:visual_bg ], [s:statusline_active_fg, s:status ], [ s:statusline_active_fg, s:statusline_active_bg ] ]
let s:p.tabline.left = [ [s:tabline_inactive_fg, s:tabline_inactive_bg ]]
let s:p.tabline.tabsel = [ [s:tabline_active_fg, s:tabline_active_bg ] ]
let s:p.tabline.middle = [ [s:tabline_bg, s:tabline_bg]]
let s:p.tabline.right = copy(s:p.normal.right)
let s:p.normal.error = [ [ s:background, s:error ] ]

let g:lightline#colorscheme#lightline-jummiterm-dark#palette = lightline#colorscheme#fill(s:p)
