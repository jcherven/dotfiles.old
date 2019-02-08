call plug#begin('~/.vim/plugged')

"""""""""""""""""""""""""""
"""" Interface Plugins """"
"""""""""""""""""""""""""""

    " Spacemacs for web adapted from Vimterial_dark
    Plug 'jcherven/spacemacs_web'

    " Airline status bar and associated plugins
    Plug 'bling/vim-airline'
      " Color theming for vim-airline
      Plug 'vim-airline/vim-airline-themes'
      let g:airline_theme='spacemacs_web'
      " Enable the tabline displaying all buffers when only one tab is open
      let g:airline#extensions#tabline#enabled = 0
      " Show the buffer number (not working?)
      let g:airline#extensions#tabline#show_buffers = 1
      let g:airline#extensions#tabline#buffer_nr_show = 1
      " Skip the text encoding string if it matches utf-8
      let g:airline#parts#ffenc#skip_expected_string='utf-8[unix]'
      " Remove separators for empty sections
      let g:airline_skip_empty_sections = 1
      " Disable airline on FocusLost autocommand (e.g. when Vim loses focus)
      let g:airline_focuslost_inactive = 0
      "Enable paste detection
      let g:airline_detect_paste = 1
      " Customizable tab labels
      Plug 'mkitt/tabline.vim'
      " Enable taboo, a tab decoration builtin
      Plug 'gcmt/taboo.vim'
        let g:airline#extensions#taboo#enabled = 1
        let g:taboo_tab_format = " %N:%P%m "
      " Git wrapper
      Plug 'tpope/vim-fugitive'

    " File system explorer sidebar
    Plug 'scrooloose/nerdtree'
      "Start NERDtree with a blank buffer on opening vim with no files specified
      autocmd StdinReadPre * let s:std_in=1
      autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
      " Close vim if nerdtree is the last window left open
      " autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
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
    " Comment assistance
    Plug 'scrooloose/nerdcommenter'

    " Automatic toggling of rel/abs line numbering in normal/insert modes
    Plug 'jeffKreeftmeijer/vim-numbertoggle'

    " Indentation Guides
    Plug 'yggdroot/indentline'
      let g:indentLine_char = '│ '

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

    """""""""""""""""""""""""""""""
    """"""" Interface Command providers """"""
    """""""""""""""""""""""""""""""
    " Surround text; replace with `cs`, remove with `ds`, surround with
    " `ysiw`, visually surround with `S`
    Plug 'tpope/vim-surround'

    " Comment selected lines; toggles on and off with gc (line) and gC (block)
    Plug 'tpope/vim-commentary'

    " Highlights trailing whitespace, provides :FixWhitespace to delete it
    Plug 'bronson/vim-trailing-whitespace'

    " Easymotion; provides `\\`
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
    " YouCompleteMe
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

    " " Javascript libraries syntax provider
    Plug 'othree/javascript-libraries-syntax.vim'
        let g:used_javascript_libs = "jquery,react,handlebars"

    " " Emmet snippets
    " Plug 'mattn/emmet-vim'

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

    " Automatic closing of quotes, parens, brackets, etc w syntax awareness
    Plug 'jiangmiao/auto-pairs'

    " " Tab completion based on searching the current buffer
    " Plug 'ervandew/supertab'

call plug#end()
"""""""""""""""""""""""""""""""""""
"""" End vim-plug declarations """"
"""""""""""""""""""""""""""""""""""
