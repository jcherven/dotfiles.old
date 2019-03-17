" Custom configuration for statusline (lightline.vim)
let g:lightline = {
      \ 'colorscheme': 'base16_JummiTerm_Dark',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ], [ 'gitbranch', 'modified', 'readonly' ], [ 'absolutepath' ] ],
      \   'right': [ ['percent'], ['lineinfo'], ['bufnum'],  ['filetype'] ]
      \ },
      \ 'inactive': {
      \   'left': [ ['absolutepath'] ],
      \   'right': [ ['percent'], ['lineinfo'], ['bufnum'], ['filetype'] ]
      \},
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head',
      \ },
      \ 'component': {
      \   'bufnum': 'b%n'
      \}
      \}

