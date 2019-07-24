" Automatically install vim-plug if it doesn't exist
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Load defined plugins
call plug#begin('~/.vim/plugged')

"""""""""""""""""""""""""""
"""" Interface Plugins """"
"""""""""""""""""""""""""""

" Spacemacs for web adapted from Vimterial_dark
" Plug 'jcherven/spacemacs_web'

" Helper for the base16 theme building architecture
Plug 'chriskempson/base16-vim'

" Lightline status bar
"Plug 'itchyny/lightline.vim'
"  " Disable the default mode indicator
"  set noshowmode
"  " Set up the custom Lightline configuration
"  " SourceIfExists() is defined in the vimrc
"  call SourceIfExists("~/dotfiles/vim/config/jums-lightline.vim")

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
  " Use h and l keys for expanding or backing out of directories
  let g:NERDTreeMapJumpParent = "h"
  let g:NERDTreeMapActivateNode = "l"
  " Git flags for NERDtree
  Plug 'Xuyuanp/nerdtree-git-plugin'
  " Adds a command to the 'm' menu for copying the absolute path of the
  " highlighted node with 'b'
  Plug 'mortonfox/nerdtree-clip'

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
  let g:colorizer_auto_filetype = 'vim'
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
" Comment selected lines; toggles on and off with gc
 Plug 'tpope/vim-commentary'
" Highlights trailing whitespace, provides :FixWhitespace to delete it
Plug 'bronson/vim-trailing-whitespace'
" Easymotion; provides `<leader><leader>'
Plug 'easymotion/vim-easymotion'
" Swap windows with `\ww`
Plug 'wesq3/vim-windowswap'
" Session and workspace manager; provides :SaveSession and :OpenSession
Plug 'xolox/vim-session'
  let g:session_autosave = 'no'
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
  " Sets the matchtag highlight color to vim's paren hilite group
  let g:mta_set_default_matchtag_color = 0
  let g:mta_use_matchparen_group = 1

  let g:mta_filetypes = {
  \  'html': 1,
  \  'xhtml': 1,
  \  'xml': 1,
  \  'javascript.jsx': 1,
  \  'handlebars': 1
  \}

" Ale for async linting
Plug 'w0rp/ale'
  " Explicitly define linters
  let g:ale_linters_explicit=1
  " Fix files when saving
  let g:ale_fix_on_save=1
  " Disable linting on text change
  let g:ale_lint_on_text_changed = 'never'
  let g:ale_linters = {
        \ 'javascript': ['eslint']
        \}
  let g:ale_fixers = {
        \ 'javascript': ['eslint']
        \}

" Prettier code format checking and fixing
Plug 'prettier/vim-prettier', {
      \ 'do': 'yarn install',
      \ 'branch': 'release/1.x',
      \ 'for': [
      \   'javascript',
      \   'css',
      \   'scss',
      \   'json',
      \   'markdown',
      \   'html'
      \ ]}
  " Disables quick-fix buffer auto-open when errors are found
  let g:prettier#quickfix_enabled=0
  " Default to async operation
  let g:prettier#exec_cmd_async=1
  " vim-prettier formatting settings
    " max line length that prettier will wrap on
    " Prettier default: 80
    let g:prettier#config#print_width = 80
    " number of spaces per indentation level
    " Prettier default: 2
    let g:prettier#config#tab_width = 2
    " use tabs over spaces
    " Prettier default: false
    let g:prettier#config#use_tabs = 'false'
    " print semicolons
    " Prettier default: true
    let g:prettier#config#semi = 'true'
    " single quotes over double quotes
    " Prettier default: false
    let g:prettier#config#single_quote = 'true'
    " print spaces between brackets
    " Prettier default: true
    let g:prettier#config#bracket_spacing = 'false'
    " put > on the last line instead of new line
    " Prettier default: false
    let g:prettier#config#jsx_bracket_same_line = 'false'
    " avoid|always
    " Prettier default: avoid
    let g:prettier#config#arrow_parens = 'always'
    " none|es5|all
    " Prettier default: none
    let g:prettier#config#trailing_comma = 'all'
    " flow|babylon|typescript|css|less|scss|json|graphql|markdown
    " Prettier default: babylon
    let g:prettier#config#parser = 'flow'
    " cli-override|file-override|prefer-file
    let g:prettier#config#config_precedence = 'prefer-file'
    " always|never|preserve
    let g:prettier#config#prose_wrap = 'preserve'
    " css|strict|ignore
    let g:prettier#config#html_whitespace_sensitivity = 'css'
" Handlebars filetype recognition
Plug 'mustache/vim-mustache-handlebars'
" Javascript syntax highlighting provider
Plug 'pangloss/vim-javascript'
" javascript.jsx syntax highlighting and indenting (recommends pangloss/vim-javascript)
Plug 'mxw/vim-jsx'
" Javascript libraries syntax provider
Plug 'othree/javascript-libraries-syntax.vim'
    let g:used_javascript_libs = "jquery,react,handlebars"
" JSON highlighting and such
Plug 'elzr/vim-json'
  let g:vim_json_syntax_conceal = 0
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
" CSS3 syntax support for vim's builtin syntax/css.vim
Plug 'hail2u/vim-css3-syntax'
" A very fast, multi-syntax color-sensitive color name highlighter
Plug 'ap/vim-css-color'

call plug#end()

