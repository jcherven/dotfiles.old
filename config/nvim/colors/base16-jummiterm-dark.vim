" vi:syntax=vim

" THIS IS THE FILE BASE16-VIM USES
" ~/dotfiles/config/nvim/colors/base16-jummiterm-dark.vim
"
" base16-vim (https://github.com/chriskempson/base16-vim)
" by Chris Kempson (http://chriskempson.com)
" Jummiterm-Dark scheme by James Cherven (https://github.com/jcherven)

" This enables the coresponding base16-shell script to run so that
" :colorscheme works in terminals supported by base16-shell scripts
" User must set this variable in .vimrc
"   let g:base16_shell_path=base16-builder/output/shell/
if !has('gui_running')
  if exists("g:base16_shell_path")
    execute "silent !/bin/sh ".g:base16_shell_path."/base16-jummiterm-dark.sh"
  endif
endif

" GUI color definitions
let g:guiCursorBG   = "b1951d" " #b1951d
let g:guiCursorFG   = "292b2e" " #292b2e
let s:guiBG         = "292b2e" " #292b2e
let s:guiFG         = "b2b2b2" " #b2b2b2
let s:guiGray00     = "68727c" " #68727c
let s:guiGray05     = "444444" " #444444
let s:guiPurple00   = "806aa8" " #806aa8
let s:guiPurple01   = "404374" " #404374
let s:guiPurple05   = "322544" " #322544
let s:guiPink00     = "ff9bf1" " #ff9bf1
let s:guiPink01     = "bc6ec5" " #bc6ec5
let s:guiPink02     = "d3a2d8" " #d3a2d8
let s:guiPink03     = "ce537a" " #ce537a
let s:guiPink04     = "f7efff" " #f7efff
let s:guiGreen00    = "19a878" " #19a878
let s:guiGreenMiku  = "20d699" " #20d699
let s:guiBlue00     = "21bbc7" " #21bbc7
let s:guiBlue01     = "098f99" " #098f99

" Terminal color definitions
let s:cterm00        = "00"
let s:cterm03        = "08"
let s:cterm05        = "07"
let s:cterm07        = "15"
let s:cterm08        = "01"
let s:cterm0A        = "03"
let s:cterm0B        = "02"
let s:cterm0C        = "06"
let s:cterm0D        = "04"
let s:cterm0E        = "05"
if exists('base16colorspace') && base16colorspace == "256"
  let s:cterm01        = "18"
  let s:cterm02        = "19"
  let s:cterm04        = "20"
  let s:cterm06        = "21"
  let s:cterm09        = "16"
  let s:cterm0F        = "17"
else
  let s:cterm01        = "10"
  let s:cterm02        = "11"
  let s:cterm04        = "12"
  let s:cterm06        = "13"
  let s:cterm09        = "09"
  let s:cterm0F        = "14"
endif

" Neovim terminal colours
if has("nvim")
  let g:terminal_color_0 =  "#1f2022"
  let g:terminal_color_1 =  "#f2241f"
  let g:terminal_color_2 =  "#67b11d"
  let g:terminal_color_3 =  "#b1951d"
  let g:terminal_color_4 =  "#4f97d7"
  let g:terminal_color_5 =  "#a31db1"
  let g:terminal_color_6 =  "#2d9574"
  let g:terminal_color_7 =  "#a3a3a3"
  let g:terminal_color_8 =  "#585858"
  let g:terminal_color_9 =  "#f2241f"
  let g:terminal_color_10 = "#67b11d"
  let g:terminal_color_11 = "#b1951d"
  let g:terminal_color_12 = "#4f97d7"
  let g:terminal_color_13 = "#a31db1"
  let g:terminal_color_14 = "#2d9574"
  let g:terminal_color_15 = "#f8f8f8"
  let g:terminal_color_background = g:terminal_color_0
  let g:terminal_color_foreground = g:terminal_color_5
  if &background == "light"
    let g:terminal_color_background = g:terminal_color_7
    let g:terminal_color_foreground = g:terminal_color_2
  endif
elseif has('terminal')
  let g:terminal_ansi_colors = [
        \ "#1f2022",
        \ "#f2241f",
        \ "#67b11d",
        \ "#b1951d",
        \ "#4f97d7",
        \ "#a31db1",
        \ "#2d9574",
        \ "#a3a3a3",
        \ "#585858",
        \ "#f2241f",
        \ "#67b11d",
        \ "#b1951d",
        \ "#4f97d7",
        \ "#a31db1",
        \ "#2d9574",
        \ "#f8f8f8",
        \ ]
endif

" Theme setup
hi clear
syntax reset
let g:colors_name = "base16-jummiterm-dark"

" Highlighting function
" Optional variables are attributes and guisp
function! g:Base16hi(group, guifg, guibg, ctermfg, ctermbg, ...)
	let a:attr = get(a:, 1, "")
	let a:guisp = get(a:, 2, "")

  if a:guifg != ""
    exec "hi " . a:group . " guifg=#" . a:guifg
  endif
  if a:guibg != ""
    exec "hi " . a:group . " guibg=#" . a:guibg
  endif
  if a:ctermfg != ""
    exec "hi " . a:group . " ctermfg=" . a:ctermfg
  endif
  if a:ctermbg != ""
    exec "hi " . a:group . " ctermbg=" . a:ctermbg
  endif
  if a:attr != ""
    exec "hi " . a:group . " gui=" . a:attr . " cterm=" . a:attr
  endif
  if a:guisp != ""
    exec "hi " . a:group . " guisp=#" . a:guisp
  endif
endfunction


fun <sid>hi(group, guifg, guibg, ctermfg, ctermbg, attr, guisp)
  call g:Base16hi(a:group, a:guifg, a:guibg, a:ctermfg, a:ctermbg, a:attr, a:guisp)
endfun

" Vim editor colors
call <sid>hi("Normal",        s:guiFG,  "",  s:cterm05,  "",  "",         "")
call <sid>hi("Bold",          "",       "",       "",         "",         "bold",     "")
call <sid>hi("Debug",         s:guiGreen00, "", s:cterm08, "", "", "")
call <sid>hi("Directory",     s:guiPink01, "", s:cterm0D, "", "", "")
call <sid>hi("Error",         s:guiBG, s:guiGreen00, s:cterm00, s:cterm08, "", "")
call <sid>hi("ErrorMsg",      s:guiGreen00, s:guiBG, s:cterm08, s:cterm00, "", "")
call <sid>hi("Exception",     s:guiGreen00, "", s:cterm08, "", "", "")
call <sid>hi("FoldColumn",    s:guiPurple00, s:guiPurple05, s:cterm0C, s:cterm01, "", "")
call <sid>hi("Folded",        s:guiGray00, s:guiPurple05, s:cterm03, s:cterm01, "", "")
call <sid>hi("IncSearch",     s:guiPurple05, s:guiGreenMiku, s:cterm01, s:cterm09, "none", "")
call <sid>hi("Italic",        "", "", "", "", "italic", "")
call <sid>hi("Macro",         s:guiGreen00, "", s:cterm08, "", "", "")
call <sid>hi("MatchParen",    "", s:guiGray05, "", s:cterm07,  "", "")
call <sid>hi("ModeMsg",       s:guiPink04, s:guiPink03, s:cterm04, s:cterm0F, "italic", "")
call <sid>hi("MoreMsg",       s:guiPink03, "", s:cterm0F, "", "", "")
call <sid>hi("Question",      s:guiPink01, "", s:cterm0D, "", "", "")
call <sid>hi("Search",        s:guiPurple05, s:guiBlue00, s:cterm01, s:cterm0A,  "", "")
call <sid>hi("Substitute",    s:guiPurple05, s:guiBlue00, s:cterm01, s:cterm0A, "none", "")
call <sid>hi("SpecialKey",    s:guiGray00, "", s:cterm03, "", "", "")
call <sid>hi("TooLong",       s:guiGreen00, "", s:cterm08, "", "", "")
call <sid>hi("Underlined",    s:guiGreen00, "", s:cterm08, "", "", "")
call <sid>hi("Visual",        "", s:guiPurple01, "", s:cterm02, "none", "")
call <sid>hi("VisualNOS",     s:guiGreen00, "", s:cterm08, "", "none", "")
call <sid>hi("WarningMsg",    s:guiGreen00, "", s:cterm08, "", "", "")
call <sid>hi("WildMenu",      s:guiGray05, s:guiBlue00, s:cterm07, s:cterm0A, "", "")
call <sid>hi("Title",         s:guiPink01, "", s:cterm0D, "", "none", "")
call <sid>hi("Conceal",       s:guiPink01, s:guiBG, s:cterm0D, s:cterm00, "", "")
call <sid>hi("Cursor",        g:guiCursorBG, g:guiCursorFG, s:cterm00, s:cterm05, "", "")
call <sid>hi("NonText",       s:guiGray00, "", s:cterm03, "", "", "")
call <sid>hi("LineNr",        s:guiGray00, s:guiGray05, s:cterm03, s:cterm07, "", "")
call <sid>hi("SignColumn",    s:guiGray00, s:guiPurple05, s:cterm03, s:cterm01, "", "")
call <sid>hi("StatusLine",    s:guiGray05, s:guiGreenMiku, s:cterm07, s:cterm09, "none", "")
call <sid>hi("StatusLineNC",  s:guiGray00, s:guiGray05, s:cterm03, s:cterm07, "none", "")
call <sid>hi("VertSplit",     s:guiGray05, s:guiGray05, s:cterm07, s:cterm07, "none", "")
call <sid>hi("ColorColumn",   "", s:guiPurple05, "", s:cterm01, "none", "")
call <sid>hi("CursorColumn",  "", s:guiPurple05, "", s:cterm01, "none", "")
call <sid>hi("CursorLine",    "", s:guiPurple05, "", s:cterm01, "none", "")
call <sid>hi("CursorLineNr",  s:guiPurple01, s:guiPurple05, s:cterm04, s:cterm01, "", "")
call <sid>hi("QuickFixLine",  "", s:guiPurple05, "", s:cterm01, "none", "")
call <sid>hi("PMenu",         s:guiFG, s:guiPurple05, s:cterm05, s:cterm01, "none", "")
call <sid>hi("PMenuSel",      s:guiPurple05, s:guiFG, s:cterm01, s:cterm05, "", "")
call <sid>hi("TabLine",       s:guiPurple05, s:guiGray05, s:cterm01, s:cterm07, "none", "")
call <sid>hi("TabLineFill",   s:guiPurple05, s:guiGray05, s:cterm01, s:cterm07, "none", "")
call <sid>hi("TabLineSel",    s:guiPurple05, s:guiGreenMiku, s:cterm01, s:cterm09, "none", "")

" Standard syntax highlighting
call <sid>hi("Boolean",      s:guiGreenMiku, "", s:cterm09, "", "", "")
call <sid>hi("Character",    s:guiGreen00, "", s:cterm08, "", "", "")
call <sid>hi("Comment",      s:guiGray00, "", s:cterm03, "", "italic", "")
call <sid>hi("Conditional",  s:guiPink02, "", s:cterm0E, "", "italic", "")
call <sid>hi("Constant",     s:guiGreenMiku, "", s:cterm09, "", "", "")
call <sid>hi("Define",       s:guiPink02, "", s:cterm0E, "", "none", "")
call <sid>hi("Delimiter",    s:guiPurple00, "", s:cterm0C, "", "", "")
call <sid>hi("Float",        s:guiGreenMiku, "", s:cterm09, "", "", "")
call <sid>hi("Function",     s:guiPink01, "", s:cterm0D, "", "", "")
call <sid>hi("Identifier",   s:guiPink01, "", s:cterm0D, "", "none", "")
call <sid>hi("Include",      s:guiPink01, "", s:cterm0D, "", "", "")
call <sid>hi("Keyword",      s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("Label",        s:guiPurple00, "", s:cterm0C, "", "", "")
call <sid>hi("Number",       s:guiGreenMiku, "", s:cterm09, "", "", "")
call <sid>hi("Operator",     s:guiFG, "", s:cterm05, "", "none", "")
call <sid>hi("PreProc",      s:guiBlue00, "", s:cterm0A, "", "", "")
call <sid>hi("Repeat",       s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("Special",      s:guiPurple00, "", s:cterm0C, "", "", "")
call <sid>hi("SpecialChar",  s:guiPink03, "", s:cterm0F, "", "", "")
call <sid>hi("Statement",    s:guiBlue01, "", s:cterm0B, "", "", "")
call <sid>hi("StorageClass", s:guiBlue00, "", s:cterm0A, "", "", "")
call <sid>hi("String",       s:guiBlue01, "", s:cterm0B, "", "", "")
call <sid>hi("Structure",    s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("Tag",          s:guiPurple00, "", s:cterm0C, "", "", "")
call <sid>hi("Todo",         s:guiBlue00, s:guiPurple05, s:cterm0A, s:cterm01, "", "")
call <sid>hi("Type",         s:guiPurple00, "", s:cterm0C, "", "italic", "")
call <sid>hi("Typedef",      s:guiBlue00, "", s:cterm0A, "", "", "")

" C highlighting
call <sid>hi("cOperator",   s:guiPurple00, "", s:cterm0C, "", "", "")
call <sid>hi("cPreCondit",  s:guiPink02, "", s:cterm0E, "", "", "")

" C# highlighting
call <sid>hi("csClass",                 s:guiBlue00, "", s:cterm0A, "", "", "")
call <sid>hi("csAttribute",             s:guiBlue00, "", s:cterm0A, "", "", "")
call <sid>hi("csModifier",              s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("csType",                  s:guiGreen00, "", s:cterm08, "", "", "")
call <sid>hi("csUnspecifiedStatement",  s:guiPink01, "", s:cterm0D, "", "", "")
call <sid>hi("csContextualStatement",   s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("csNewDecleration",        s:guiGreen00, "", s:cterm08, "", "", "")

" CSS highlighting
call <sid>hi("cssBraces",      s:guiFG, "", s:cterm05, "", "", "")
call <sid>hi("cssClassName",   s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("cssColor",       s:guiPurple00, "", s:cterm0C, "", "", "")

" Diff highlighting
call <sid>hi("DiffAdd",      s:guiBlue01, s:guiPurple05,  s:cterm0B, s:cterm01, "", "")
call <sid>hi("DiffChange",   s:guiGray00, s:guiPurple05,  s:cterm03, s:cterm01, "", "")
call <sid>hi("DiffDelete",   s:guiGreen00, s:guiPurple05,  s:cterm08, s:cterm01, "", "")
call <sid>hi("DiffText",     s:guiPink01, s:guiPurple05,  s:cterm0D, s:cterm01, "", "")
call <sid>hi("DiffAdded",    s:guiBlue01, s:guiBG,  s:cterm0B, s:cterm00, "", "")
call <sid>hi("DiffFile",     s:guiGreen00, s:guiBG,  s:cterm08, s:cterm00, "", "")
call <sid>hi("DiffNewFile",  s:guiBlue01, s:guiBG,  s:cterm0B, s:cterm00, "", "")
call <sid>hi("DiffLine",     s:guiPink01, s:guiBG,  s:cterm0D, s:cterm00, "", "")
call <sid>hi("DiffRemoved",  s:guiGreen00, s:guiBG,  s:cterm08, s:cterm00, "", "")

" Git highlighting
call <sid>hi("gitcommitOverflow",       s:guiGreen00, "", s:cterm08, "", "", "")
call <sid>hi("gitcommitSummary",        s:guiBlue01, "", s:cterm0B, "", "", "")
call <sid>hi("gitcommitComment",        s:guiGray00, "", s:cterm03, "", "", "")
call <sid>hi("gitcommitUntracked",      s:guiGray00, "", s:cterm03, "", "", "")
call <sid>hi("gitcommitDiscarded",      s:guiGray00, "", s:cterm03, "", "", "")
call <sid>hi("gitcommitSelected",       s:guiGray00, "", s:cterm03, "", "", "")
call <sid>hi("gitcommitHeader",         s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("gitcommitSelectedType",   s:guiPink01, "", s:cterm0D, "", "", "")
call <sid>hi("gitcommitUnmergedType",   s:guiPink01, "", s:cterm0D, "", "", "")
call <sid>hi("gitcommitDiscardedType",  s:guiPink01, "", s:cterm0D, "", "", "")
call <sid>hi("gitcommitBranch",         s:guiGreenMiku, "", s:cterm09, "", "bold", "")
call <sid>hi("gitcommitUntrackedFile",  s:guiBlue00, "", s:cterm0A, "", "", "")
call <sid>hi("gitcommitUnmergedFile",   s:guiGreen00, "", s:cterm08, "", "bold", "")
call <sid>hi("gitcommitDiscardedFile",  s:guiGreen00, "", s:cterm08, "", "bold", "")
call <sid>hi("gitcommitSelectedFile",   s:guiBlue01, "", s:cterm0B, "", "bold", "")

" GitGutter highlighting
call <sid>hi("GitGutterAdd",     s:guiBlue01, s:guiPurple05, s:cterm0B, s:cterm01, "", "")
call <sid>hi("GitGutterChange",  s:guiPink01, s:guiPurple05, s:cterm0D, s:cterm01, "", "")
call <sid>hi("GitGutterDelete",  s:guiGreen00, s:guiPurple05, s:cterm08, s:cterm01, "", "")
call <sid>hi("GitGutterChangeDelete",  s:guiPink02, s:guiPurple05, s:cterm0E, s:cterm01, "", "")

" HTML highlighting
call <sid>hi("htmlBold",    s:guiBlue00, "", s:cterm0A, "", "", "")
call <sid>hi("htmlItalic",  s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("htmlEndTag",  s:guiFG, "", s:cterm05, "", "", "")
call <sid>hi("htmlTag",     s:guiFG, "", s:cterm05, "", "", "")

" JavaScript highlighting
call <sid>hi("javaScript",        s:guiFG, "", s:cterm05, "", "", "")
call <sid>hi("javaScriptBraces",  s:guiFG, "", s:cterm05, "", "", "")
call <sid>hi("javaScriptNumber",  s:guiGreenMiku, "", s:cterm09, "", "", "")
" pangloss/vim-javascript highlighting
call <sid>hi("jsOperator",          s:guiPink01, "", s:cterm0D, "", "", "")
call <sid>hi("jsStatement",         s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("jsReturn",            s:guiPink02, "", s:cterm0E, "", "italic", "")
call <sid>hi("jsThis",              s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("jsClassDefinition",   s:guiBlue00, "", s:cterm0A, "", "", "")
call <sid>hi("jsFunction",          s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("jsFuncName",          s:guiPink01, "", s:cterm0D, "", "", "")
call <sid>hi("jsFuncCall",          s:guiPink01, "", s:cterm0D, "", "", "")
call <sid>hi("jsClassFuncName",     s:guiPink01, "", s:cterm0D, "", "", "")
call <sid>hi("jsClassMethodType",   s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("jsRegexpString",      s:guiPurple00, "", s:cterm0C, "", "", "")
call <sid>hi("jsGlobalObjects",     s:guiBlue00, "", s:cterm0A, "", "", "")
call <sid>hi("jsGlobalNodeObjects", s:guiGreenMiku, "", s:cterm09, "", "", "")
call <sid>hi("jsExceptions",        s:guiBlue00, "", s:cterm0A, "", "", "")
call <sid>hi("jsBuiltins",          s:guiBlue00, "", s:cterm0A, "", "", "")
call <sid>hi("jsStorageClass",      s:guiBlue00, "", s:cterm0A, "", "italic", "")

" Mail highlighting
call <sid>hi("mailQuoted1",  s:guiBlue00, "", s:cterm0A, "", "", "")
call <sid>hi("mailQuoted2",  s:guiBlue01, "", s:cterm0B, "", "", "")
call <sid>hi("mailQuoted3",  s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("mailQuoted4",  s:guiPurple00, "", s:cterm0C, "", "", "")
call <sid>hi("mailQuoted5",  s:guiPink01, "", s:cterm0D, "", "", "")
call <sid>hi("mailQuoted6",  s:guiBlue00, "", s:cterm0A, "", "", "")
call <sid>hi("mailURL",      s:guiPink01, "", s:cterm0D, "", "", "")
call <sid>hi("mailEmail",    s:guiPink01, "", s:cterm0D, "", "", "")

" Markdown highlighting
call <sid>hi("markdownCode",              s:guiBlue01, "", s:cterm0B, "", "", "")
call <sid>hi("markdownError",             s:guiFG, s:guiBG, s:cterm05, s:cterm00, "", "")
call <sid>hi("markdownCodeBlock",         s:guiBlue01, "", s:cterm0B, "", "", "")
call <sid>hi("markdownHeadingDelimiter",  s:guiPink01, "", s:cterm0D, "", "", "")

" NERDTree highlighting
call <sid>hi("NERDTreeDirSlash",  s:guiPink01, "", s:cterm0D, "", "", "")
call <sid>hi("NERDTreeExecFile",  s:guiFG, "", s:cterm05, "", "", "")

" PHP highlighting
call <sid>hi("phpMemberSelector",  s:guiFG, "", s:cterm05, "", "", "")
call <sid>hi("phpComparison",      s:guiFG, "", s:cterm05, "", "", "")
call <sid>hi("phpParent",          s:guiFG, "", s:cterm05, "", "", "")
call <sid>hi("phpMethodsVar",      s:guiPurple00, "", s:cterm0C, "", "", "")

" Python highlighting
call <sid>hi("pythonOperator",  s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("pythonRepeat",    s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("pythonInclude",   s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("pythonStatement", s:guiPink02, "", s:cterm0E, "", "", "")

" Ruby highlighting
call <sid>hi("rubyAttribute",               s:guiPink01, "", s:cterm0D, "", "", "")
call <sid>hi("rubyConstant",                s:guiBlue00, "", s:cterm0A, "", "", "")
call <sid>hi("rubyInterpolationDelimiter",  s:guiPink03, "", s:cterm0F, "", "", "")
call <sid>hi("rubyRegexp",                  s:guiPurple00, "", s:cterm0C, "", "", "")
call <sid>hi("rubySymbol",                  s:guiBlue01, "", s:cterm0B, "", "", "")
call <sid>hi("rubyStringDelimiter",         s:guiBlue01, "", s:cterm0B, "", "", "")

" SASS highlighting
call <sid>hi("sassidChar",     s:guiGreen00, "", s:cterm08, "", "", "")
call <sid>hi("sassClassChar",  s:guiGreenMiku, "", s:cterm09, "", "", "")
call <sid>hi("sassInclude",    s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("sassMixing",     s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("sassMixinName",  s:guiPink01, "", s:cterm0D, "", "", "")

" Signify highlighting
call <sid>hi("SignifySignAdd",     s:guiBlue01, s:guiPurple05, s:cterm0B, s:cterm01, "", "")
call <sid>hi("SignifySignChange",  s:guiPink01, s:guiPurple05, s:cterm0D, s:cterm01, "", "")
call <sid>hi("SignifySignDelete",  s:guiGreen00, s:guiPurple05, s:cterm08, s:cterm01, "", "")

" Spelling highlighting
call <sid>hi("SpellBad",     "", "", "", "", "undercurl", s:guiGreen00)
call <sid>hi("SpellLocal",   "", "", "", "", "undercurl", s:guiPurple00)
call <sid>hi("SpellCap",     "", "", "", "", "undercurl", s:guiPink01)
call <sid>hi("SpellRare",    "", "", "", "", "undercurl", s:guiPink02)

" Startify highlighting
call <sid>hi("StartifyBracket",  s:guiGray00, "", s:cterm03, "", "", "")
call <sid>hi("StartifyFile",     s:guiGray05, "", s:cterm07, "", "", "")
call <sid>hi("StartifyFooter",   s:guiGray00, "", s:cterm03, "", "", "")
call <sid>hi("StartifyHeader",   s:guiBlue01, "", s:cterm0B, "", "", "")
call <sid>hi("StartifyNumber",   s:guiGreenMiku, "", s:cterm09, "", "", "")
call <sid>hi("StartifyPath",     s:guiGray00, "", s:cterm03, "", "", "")
call <sid>hi("StartifySection",  s:guiPink02, "", s:cterm0E, "", "", "")
call <sid>hi("StartifySelect",   s:guiPurple00, "", s:cterm0C, "", "", "")
call <sid>hi("StartifySlash",    s:guiGray00, "", s:cterm03, "", "", "")
call <sid>hi("StartifySpecial",  s:guiGray00, "", s:cterm03, "", "", "")

" Java highlighting
call <sid>hi("javaOperator",     s:guiPink01, "", s:cterm0D, "", "", "")

" Remove functions
delf <sid>hi

" Remove color variables
unlet s:guiBG s:guiPurple05 s:guiPurple01 s:guiGray00  s:guiPink04  s:guiFG  s:guiPink00  s:guiGray05  s:guiGreen00  s:guiGreenMiku s:guiBlue00  s:guiBlue01  s:guiPurple00  s:guiPink01  s:guiPink02  s:guiPink03
unlet s:cterm00 s:cterm01 s:cterm02 s:cterm03 s:cterm04 s:cterm05 s:cterm06 s:cterm07 s:cterm08 s:cterm09 s:cterm0A s:cterm0B s:cterm0C s:cterm0D s:cterm0E s:cterm0F
