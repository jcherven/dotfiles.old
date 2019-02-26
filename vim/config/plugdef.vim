call plug#begin('~/.vim/plugged')

"""""""""""""""""""""""""""
"""" Interface Plugins """"
"""""""""""""""""""""""""""

" Spacemacs for web adapted from Vimterial_dark
" Plug 'jcherven/spacemacs_web'

" Helper for the base16 theme building architecture
Plug 'chriskempson/base16-vim'

" Lightline status bar
Plug 'itchyny/lightline.vim'
"   " Disable the default mode indicator
  set noshowmode
  let g:lightline = {
        \ 'colorscheme': 'PaperColor_dark',
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

" Customizable tab labels
Plug 'mkitt/tabline.vim'
" Enable taboo, a tab decoration builtin
Plug 'gcmt/taboo.vim'
  let g:airline#extensions#taboo#enabled = 1
  let g:taboo_tab_format = " %N:%P/%f %m "

" Git wrapper
Plug 'tpope/vim-fugitive'

" File system explorer sidebar
Plug 'scrooloose/nerdtree'
  "Start NERDtree with a blank buffer on opening vim with no files specified
  autocmd StdinReadPre * let s:std_in=1
  autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
  " Disable the extra heading lines
  let NERDTreeMinimalUI=1
  " Keep the NERDtree window on the left at all times
  let g:NERDTreeWinPos = "left"
  " Show line numbers in nerd tree
  let g:NERDTreeShowLineNumbers=1
  " Useful arrows in the dir tree
  let g:NERDTreeDirArrows = 1
  " Automatically kill the buffer of a deleted file
  let g:NERDTreeAutoDeleteBuffer = 1
  " Show dotfiles and hidden files
  let g:NERDTreeShowHidden = 1
  " Git flags for NERDtree
  Plug 'Xuyuanp/nerdtree-git-plugin'
  " Adds a command to the 'm' menu for copying the absolute path of the
  " highlighted node with 'b'
  Plug 'mortonfox/nerdtree-clip'

" Send contents of one buffer to another tmux pane
" Plug 'jgdavey/tslime.vim'
"   let g:tslime_always_current_session = 1
"   let g:tslime_always_current_window = 1
"   " keybindings for tslime
"   vmap <Leader>s <Plug>SendSelectionToTmux
"   nmap <Leader>s <Plug>NormalModeSendToTmux
"   nmap <C-c>r <Plug>SetTmuxVars
"
" Automatic toggling of rel/abs line numbering in normal/insert modes
Plug 'jeffKreeftmeijer/vim-numbertoggle'
" Indentation Guides
Plug 'yggdroot/indentline'
  let g:indentLine_char = '▏'
" Transparent background in a windowed terminal
Plug 'miyakogi/seiya.vim'
    let g:seiya_auto_enable=1
    let g:seiya_target_groups = has('nvim')? ['guibg'] : ['ctermbg']
" Pasting with indentation adjusted to the destination context
Plug 'sickill/vim-pasta'
" Color definition visualization
Plug 'chrisbra/Colorizer'
  let g:colorizer_auto_color = 0
  let g:colorizer_auto_filetype = 'css,html,php,vim'
  let g:colorizer_skip_comments = 1
  let g:colorizer_colornames = 0
  let g:colorizer_disable_bufleave = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""""""" Plugin-related Interface Command providers """"""""
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle NERDTree with <C-n>
map <C-n> :NERDTreeToggle<CR>
" Surround text; replace with `cs`, remove with `ds`, surround with
" `ysiw`, visually surround with `S`
Plug 'tpope/vim-surround'
" Comment selected lines; toggles on and off with gc (line) and gC (block)
 Plug 'tpope/vim-commentary'
" Highlights trailing whitespace, provides :FixWhitespace to delete it
Plug 'bronson/vim-trailing-whitespace'
" Easymotion; provides `<leader><leader>'
Plug 'easymotion/vim-easymotion'
" Swap windows with `\ww`
Plug 'wesq3/vim-windowswap'
" Session and workspace manager; provides :SaveSession and :OpenSession
Plug 'xolox/vim-session'
  let g:session_default_name = "session"
  " Required for vim-session
  Plug 'xolox/vim-misc'
" Physics-based visual scrolling when using ctrl-d and ctrl-u
Plug 'yuttie/comfortable-motion.vim'
" Improved autoread checking
Plug 'djoshea/vim-autoread'

""""""""""""""""""""""""""""""
"""" Languages and syntax """"
""""""""""""""""""""""""""""""
" YouCompleteMe (this slows down terminal vim a lot when enabled with syntax
" highlighting)
Plug 'Valloric/YouCompleteMe', { 'do': './install.py'  }
" Valloric's highlighting for matching XML/HTML tags
Plug 'valloric/matchtagalways'
  let g:mta_use_matchparen_group = 0
  let g:mta_filetypes = {
  \  'html': 1,
  \  'xhtml': 1,
  \  'xml': 1,
  \  'javascript.jsx': 1,
  \  'handlebars': 1
  \}
" Handlebars filetype recognition
Plug 'mustache/vim-mustache-handlebars'
" Javascript syntax highlighting provider
Plug 'pangloss/vim-javascript'
" javascript.jsx syntax highlighting and indenting (recommends pangloss/vim-javascript)
Plug 'mxw/vim-jsx'
" Javascript libraries syntax provider
Plug 'othree/javascript-libraries-syntax.vim'
    let g:used_javascript_libs = "jquery,react,handlebars"
" Emmet snippets with <c-y>,
Plug 'mattn/emmet-vim'
let g:user_emmet_settings = {
      \ 'xml' : { 'extends': 'html' },
      \ 'javascript-jsx' : { 'extends': 'html' },
      \}
" Close HTML tags when the closing bracket is typed, configured to work with jsx
Plug 'alvan/vim-closetag'
  let g:closetag_filenames = '*.html, *.xhtml, *.js, *.jsx, *.handlebars, *.hbs, *.ejs'
  let g:closetag_xhtml_filenames = '*.xhtml, *.html, *.jsx, *.js'
  let g:closetag_filetypes = 'html,xhtml,phtml,jsx'
  let g:closetag_xhtml_filetypes = 'xhtml,jsx'
  let g:closetag_emptyTags_caseSensitive = 1
  " Shortcut key which places the cursor indented inside the closed tag
  let g:closetag_shortcut = '>'
  let g:closetag_close_shortcut = '<leader>>'
" Structured editing of Lisp S-Expressions
Plug 'vim-scripts/paredit.vim'
" Automatic closing of quotes, parens, brackets, etc w syntax awareness
Plug 'jiangmiao/auto-pairs'

call plug#end()
