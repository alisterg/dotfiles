" Name:       ume.vim
" Version:    0.1.0
" Maintainer: github.com/alisterg
" License:    The MIT License (MIT)
"
" Based on the paramount colorschemes:
"
"""
hi clear

if exists('syntax on')
    syntax reset
endif

let g:colors_name='space'
let g:limelight_conceal_ctermfg=100
let g:limelight_conceal_guifg = '#a1a1a1'

let s:bg           = { "gui": "#eff1f5", "cterm": "232" } " bg
"let s:bg           = { "gui": "#d5d7df", "cterm": "232" } " bg
let s:fg           = { "gui": "#2B303B", "cterm": "232" } " bg
let s:primary      = { "gui": "#b48ead", "cterm": "232" } " bg
let s:secondary    = { "gui": "#8fa1b3", "cterm": "232" } " bg
let s:tertiary     = { "gui": "#d08770", "cterm": "232" } " bg

let s:black           = { "gui": "#2B303B", "cterm": "232" } " bg
let s:bg_contrast     = { "gui": "#232830", "cterm": "232" } " bg contrast
let s:lighter_gray    = { "gui": "#dfe1e8", "cterm": "251" } " fg 
let s:medium_gray     = { "gui": "#a7adba", "cterm": "243" } " comments
let s:dark_red        = { "gui": "#bf616a", "cterm": "1"   } " red
let s:orange          = { "gui": "#d08770", "cterm": "167" } " orange
let s:blue            = { "gui": "#8fa1b3", "cterm": "12"  } " blue
let s:light_blue      = { "gui": "#5699af", "cterm": "153" } " dark cyan
let s:dark_green      = { "gui": "#a3be8c", "cterm": "2"   } " green
let s:light_green     = { "gui": "#88c0d0", "cterm": "10"  } " light cyan
let s:light_purple    = { "gui": "#1D7CB4", "cterm": "134" } " magenta
let s:dark_purple     = { "gui": "#b48ead", "cterm": "134" } " magenta
let s:yellow          = { "gui": "#ecbe7b", "cterm": "11"  } " yellow
let s:white           = { "gui": "#D5D9E2", "cterm": "15"  }
let s:light_black     = { "gui": "#323845", "cterm": "235" }
let s:light_gray      = { "gui": "#A8A8A8", "cterm": "248" }
let s:lightest_gray   = { "gui": "#E0E4EC", "cterm": "255" }
let s:light_red       = { "gui": "#D98282", "cterm": "1"   }
let s:norm_subtle     = s:medium_gray
let s:red             = s:light_red

let s:background = &background

if &background == "dark"
  let s:bg              = s:black
  let s:bg_subtle       = s:medium_gray
  let s:bg_very_subtle  = s:bg_contrast
  let s:norm            = s:lighter_gray
else
  let s:bg_subtle       = s:medium_gray
  let s:bg_very_subtle  = s:lighter_gray
  let s:norm            = s:fg
endif

" https://github.com/noahfrederick/vim-hemisu/
function! s:h(group, style)
  execute "highlight" a:group
    \ "guifg="   (has_key(a:style, "fg")    ? a:style.fg.gui   : "NONE")
    \ "guibg="   (has_key(a:style, "bg")    ? a:style.bg.gui   : "NONE")
    \ "guisp="   (has_key(a:style, "sp")    ? a:style.sp.gui   : "NONE")
    \ "gui="     (has_key(a:style, "gui")   ? a:style.gui      : "NONE")
    \ "ctermfg=" (has_key(a:style, "fg")    ? a:style.fg.cterm : "NONE")
    \ "ctermbg=" (has_key(a:style, "bg")    ? a:style.bg.cterm : "NONE")
    \ "cterm="   (has_key(a:style, "cterm") ? a:style.cterm    : "NONE")
endfunction

call s:h("Normal",        {"bg": s:bg, "fg": s:norm})

" restore &background's value in case changing Normal changed &background (:help :hi-normal-cterm)
if &background != s:background
   execute "set background=" . s:background
endif

call s:h("Cursor",        {"bg": s:light_purple, "fg": s:norm })
call s:h("Comment",       {"fg": s:secondary, "gui": "italic"})
hi! link SpecialComment   Comment

call s:h("Constant",      {"fg": s:light_purple})
hi! link Character        Constant
hi! link Number           Constant
hi! link Boolean          Constant
hi! link Float            Constant
hi! link String           Constant

hi! link typeScriptBraces       Normal
hi! link javaScriptBraces       Normal
hi! link typeScriptCall       Normal
hi! link typeScriptTypeReference       Normal
hi! link typeScriptParamImpl       Normal
hi! link typeScriptObjectLabel       Normal
hi! link typeScriptFuncType       Normal
hi! link typeScriptPredefinedType       Normal
hi! link htmlTag       Normal
hi! link htmlEndTag       Normal
hi! link javaScript       Normal
hi! link jsonKeyword       Normal

call s:h("typeScriptMember",    {"fg": s:primary, "gui": "bold"})

call s:h("typeScriptRepeat",    {"fg": s:dark_red, "gui": "bold"})
hi! link typeScriptStatementKeyword        typeScriptRepeat
hi! link typeScriptConditional        typeScriptRepeat
hi! link javaScriptConditional        typeScriptRepeat
hi! link csConditional        typeScriptRepeat
hi! link csRepeat        typeScriptRepeat

call s:h("Special",       {"fg": s:norm, "gui": "bold"})
hi! link Keyword          Special
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link Debug            Special

call s:h("typeScriptVariable",    {"fg": s:fg, "gui": "italic"})

call s:h("Identifier",    {"fg": s:fg, "gui": "italic"})
hi! link Function         Identifier
hi! link typeScriptIdentifier Identifier
hi! link csAccessModifier Identifier
hi! link csType Identifier
hi! link typeScriptPredefinedType Identifier
hi! link typeScriptNull Identifier

call s:h("typeScriptAliasDeclaration",    {"fg": s:tertiary, "gui": "bold"})
hi! link typeScriptClassName typeScriptAliasDeclaration
hi! link typeScriptEnum typeScriptAliasDeclaration
hi! link csClassType typeScriptAliasDeclaration

call s:h("Statement",     {"fg": s:secondary})
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Exception        Statement
hi! link jsonQuote    Statement
hi! link markdownH1 Statement
hi! link markdownH2 Statement
hi! link markdownH3 Statement
hi! link markdownH4 Statement
hi! link markdownH5 Statement
hi! link markdownH6 Statement

call s:h("htmlTagName", {"fg": s:secondary, "cterm": "bold", "gui": "bold"})
call s:h("htmlTagN",    {"fg": s:dark_red, "gui": "bold"})

call s:h("Operator",      {"fg": s:norm, "cterm": "bold", "gui": "bold"})

call s:h("PreProc",     {"fg": s:light_blue})
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc

call s:h("Type",          {"fg": s:fg})
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type

call s:h("Underlined",    {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",        {"fg": s:bg})
call s:h("Error",         {"fg": s:white, "bg": s:red, "cterm": "bold"})
call s:h("Todo",          {"bg": s:orange, "gui": "underline", "cterm": "underline"})
call s:h("SpecialKey",    {"fg": s:light_green})
call s:h("NonText",       {"fg": s:medium_gray})
call s:h("Directory",     {"fg": s:blue})
call s:h("ErrorMsg",      {"fg": s:red})
call s:h("IncSearch",     {"bg": s:yellow, "fg": s:black})
call s:h("Search",        {"bg": s:orange, "fg": s:black})
call s:h("MoreMsg",       {"fg": s:medium_gray, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:bg_subtle})
call s:h("CursorLineNr",  {"fg": s:fg, "bg": s:bg_very_subtle})
call s:h("Question",      {"fg": s:red})
call s:h("StatusLine",    {"bg": s:bg_very_subtle})
call s:h("StatusLineNC",  {"bg": s:bg_very_subtle, "fg": s:medium_gray})
call s:h("VertSplit",     {"bg": s:bg_very_subtle, "fg": s:bg_very_subtle})
call s:h("Title",         {"fg": s:blue})
call s:h("Visual",        {"fg": s:norm, "bg": s:dark_purple})
call s:h("VisualNOS",     {"bg": s:bg_subtle})
call s:h("WarningMsg",    {"fg": s:yellow})
call s:h("WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h("Folded",        {"bg": s:bg_very_subtle})
call s:h("FoldColumn",    {"fg": s:bg_subtle})
call s:h("DiffAdd",       {"fg": s:light_green})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:yellow})
call s:h("DiffText",      {"fg": s:blue})
call s:h("SignColumn",    {"fg": s:light_green})


if has("gui_running")
  call s:h("SpellBad",    {"gui": "underline", "sp": s:red})
  call s:h("SpellCap",    {"gui": "underline", "sp": s:light_green})
  call s:h("SpellRare",   {"gui": "underline", "sp": s:light_purple})
  call s:h("SpellLocal",  {"gui": "underline", "sp": s:dark_green})
else
  call s:h("SpellBad",    {"cterm": "underline", "fg": s:red})
  call s:h("SpellCap",    {"cterm": "underline", "fg": s:light_green})
  call s:h("SpellRare",   {"cterm": "underline", "fg": s:light_purple})
  call s:h("SpellLocal",  {"cterm": "underline", "fg": s:dark_green})
endif

call s:h("Pmenu",         {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:light_purple})
call s:h("PmenuSbar",     {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuThumb",    {"fg": s:norm, "bg": s:bg_subtle})
call s:h("TabLine",       {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("TabLineSel",    {"fg": s:blue, "bg": s:bg_subtle, "gui": "bold", "cterm": "bold"})
call s:h("TabLineFill",   {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("CursorColumn",  {"bg": s:light_green})
call s:h("CursorLine",    {"bg": s:bg_very_subtle})
call s:h("ColorColumn",   {"bg": s:bg_subtle})

call s:h("MatchParen",    {"bg": s:bg_subtle, "fg": s:norm})
call s:h("qfLineNr",      {"fg": s:medium_gray})

call s:h("htmlH1",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH2",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH3",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH4",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH5",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH6",        {"bg": s:bg, "fg": s:norm})

" Synatastic
call s:h("SyntasticWarningSign",    {"fg": s:yellow})
call s:h("SyntasticWarning",        {"bg": s:yellow, "fg": s:black, "gui": "bold", "cterm": "bold"})
call s:h("SyntasticErrorSign",      {"fg": s:red})
call s:h("SyntasticError",          {"bg": s:red, "fg": s:white, "gui": "bold", "cterm": "bold"})

" Neomake
hi link NeomakeWarningSign	SyntasticWarningSign
hi link NeomakeErrorSign	SyntasticErrorSign

" ALE
hi link ALEWarningSign	SyntasticWarningSign
hi link ALEErrorSign	SyntasticErrorSign

" Signify, git-gutter
hi link SignifySignAdd              LineNr
hi link SignifySignDelete           LineNr
hi link SignifySignChange           LineNr
hi link GitGutterAdd                LineNr
hi link GitGutterDelete             LineNr
hi link GitGutterChange             LineNr
hi link GitGutterChangeDelete       LineNr

