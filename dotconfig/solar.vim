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

let g:colors_name='solar'
let g:limelight_conceal_ctermfg=100
let g:limelight_conceal_guifg = '#a1a1a1'

let s:black           = { "gui": "#071e24", "cterm": "232" } " bg
let s:bg_contrast     = { "gui": "#002b36", "cterm": "232" } " bg contrast
let s:lighter_gray    = { "gui": "#93a1a1", "cterm": "251" } " fg 
let s:medium_gray     = { "gui": "#586e75", "cterm": "243" } " comments
let s:orange          = { "gui": "#cb4b16", "cterm": "167" } " orange
let s:yellow          = { "gui": "#b58900", "cterm": "11"  } " yellow
let s:dark_green      = { "gui": "#b9ca4a", "cterm": "2"   } " green
let s:light_green     = { "gui": "#859900", "cterm": "10"  } " light cyan
let s:light_blue      = { "gui": "#2aa198", "cterm": "153" } " dark cyan
let s:blue            = { "gui": "#268bd2", "cterm": "12"  } " blue
let s:dark_purple     = { "gui": "#6c71c4", "cterm": "134" } " magenta
let s:light_purple    = { "gui": "#d33682", "cterm": "134" }
let s:white           = { "gui": "#D5D9E2", "cterm": "15"  }
let s:light_black     = { "gui": "#323845", "cterm": "235" }
let s:light_gray      = { "gui": "#A8A8A8", "cterm": "248" }
let s:dark_red        = { "gui": "#dc322f", "cterm": "1"   }
let s:red             = s:dark_red

let s:background = &background

if &background == "dark"
  let s:bg              = s:black
  let s:bg_subtle       = s:medium_gray
  let s:bg_very_subtle  = s:bg_contrast
  let s:norm            = s:lighter_gray
else
  let s:bg              = s:white
  let s:bg_subtle       = s:light_gray
  let s:norm            = s:light_black
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
call s:h("Comment",       {"fg": s:medium_gray})
hi! link SpecialComment   Comment

call s:h("Constant",      {"fg": s:light_blue})
hi! link Character        Constant
hi! link String           Constant

hi! link typeScriptBraces       Normal
hi! link javaScriptBraces       Normal
hi! link typeScriptCall       Normal
hi! link typeScriptParamImpl       Normal
hi! link typeScriptObjectLabel       Normal
hi! link typeScriptFuncType       Normal
hi! link typeScriptBOMNavigatorProp       Normal
hi! link typeScriptGlobalMethod       Normal
hi! link typeScriptBOMWindowProp       Normal
hi! link typeScriptGlobal       Normal
hi! link typeScriptDestructureVariable       Normal
hi! link htmlTag       Normal
hi! link htmlEndTag       Normal
hi! link javaScript       Normal
hi! link jsonKeyword       Normal
hi! link goTypeConstructor Normal
hi! link hsVarSym Normal

call s:h("typeScriptRepeat",    {"fg": s:light_green})
hi! link typeScriptStatementKeyword        typeScriptRepeat
hi! link typeScriptConditional        typeScriptRepeat
hi! link javaScriptConditional        typeScriptRepeat
hi! link csConditional        typeScriptRepeat
hi! link csRepeat        typeScriptRepeat
hi! link goConditional        typeScriptRepeat
hi! link goStatement        typeScriptRepeat
hi! link hsStatement        typeScriptRepeat

call s:h("Identifier",    {"fg": s:blue})
hi! link Function         Identifier
hi! link Conditonal       Identifier
hi! link Repeat           Identifier
hi! link Label            Identifier
hi! link Exception        Identifier
hi! link jsonQuote        Identifier
hi! link goFunction    Identifier
hi! link hsStructure    Identifier
hi! link hsTypedef    Identifier

call s:h("Keyword",    {"fg": s:norm, "gui": "bold"})
hi! link typeScriptClassStatic Keyword
"hi! link ConId Keyword
hi! link typeScriptVariable Keyword
hi! link goLabel Keyword
hi! link goVar Keyword
hi! link goRepeat Keyword
hi! link goBuiltins Keyword

call s:h("typeScriptTypeReference",    {"fg": s:norm})

call s:h("typeScriptClassName",    {"fg": s:blue})
hi! link typeScriptAliasDeclaration typeScriptClassName
hi! link typeScriptMember typeScriptClassName
hi! link javaScriptFunction    typeScriptClassName
hi! link csClassType typeScriptClassName
hi! link typeScriptEnum typeScriptClassName
hi! link goTypeName typeScriptClassName
hi! link goReceiverType typeScriptClassName

call s:h("typeScriptNull",    {"fg": s:yellow})
hi! link Number typeScriptNull
hi! link Float            typeScriptNull
hi! link Boolean          typeScriptNull
hi! link javaScriptType typeScriptNull
hi! link typeScriptPredefinedType           typeScriptNull
hi! link goPredefinedIdentifiers           typeScriptNull
hi! link goType           typeScriptNull
hi! link goUnsignedInts           typeScriptNull
hi! link hsConSym typeScriptNull

call s:h("markdownH1", {"fg": s:yellow})
call s:h("markdownH1Delimiter", {"fg": s:orange})
call s:h("markdownH2", {"fg": s:light_green})
call s:h("markdownH2Delimiter", {"fg": s:dark_green})
call s:h("markdownH3", {"fg": s:light_blue})
call s:h("markdownH3Delimiter", {"fg": s:blue})
call s:h("markdownH4", {"fg": s:light_purple})
call s:h("markdownH4Delimiter", {"fg": s:dark_purple})
call s:h("markdownH5", {"fg": s:lighter_gray})
call s:h("markdownH5Delimiter", {"fg": s:light_purple})
call s:h("markdownH6", {"fg": s:lighter_gray})
call s:h("markdownH6Delimiter", {"fg": s:dark_red})

call s:h("htmlTagName",     {"fg": s:light_purple})
call s:h("htmlTagN",     {"fg": s:light_purple})

call s:h("Operator",      {"fg": s:norm, "cterm": "bold", "gui": "bold"})
hi! link cssClassName    Operator
hi! link htmlArg    Operator
hi! link typeScriptIdentifier    Operator

call s:h("Statement",    {"fg": s:medium_gray, "gui": "italic" })
call s:h("PreProc",     {"fg": s:light_green})
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link goPackage        PreProc
hi! link goImport        PreProc

call s:h("Type",          {"fg": s:dark_purple})
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type
hi! link goDeclaration        Type
hi! link javaScriptReserved Type

call s:h("Special",       {"fg": s:dark_purple})
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link Debug            Special

call s:h("Underlined",    {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",        {"fg": s:bg})
call s:h("Error",         {"fg": s:white, "bg": s:red, "cterm": "bold"})
call s:h("Todo",          {"fg": s:light_purple, "gui": "underline", "cterm": "underline"})
call s:h("SpecialKey",    {"fg": s:light_green})
call s:h("NonText",       {"fg": s:medium_gray})
call s:h("Directory",     {"fg": s:blue})
call s:h("ErrorMsg",      {"fg": s:red})
call s:h("IncSearch",     {"bg": s:bg_subtle, "fg": s:yellow})
call s:h("Search",        {"bg": s:bg_subtle, "fg": s:orange})
call s:h("MoreMsg",       {"fg": s:medium_gray, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:bg_subtle})
call s:h("CursorLineNr",  {"fg": s:lighter_gray, "bg": s:bg_very_subtle})
call s:h("Question",      {"fg": s:red})
call s:h("StatusLine",    {"bg": s:bg_very_subtle})
call s:h("StatusLineNC",  {"bg": s:bg_very_subtle, "fg": s:medium_gray})
call s:h("VertSplit",     {"bg": s:bg_very_subtle, "fg": s:bg_very_subtle})
call s:h("Title",         {"fg": s:blue})
call s:h("Visual",        {"fg": s:bg, "bg": s:light_green})
call s:h("VisualNOS",     {"bg": s:bg_subtle})
call s:h("WarningMsg",    {"fg": s:yellow})
call s:h("WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h("Folded",        {"fg": s:light_gray, "bg": s:light_black})
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
call s:h("CursorColumn",  {"bg": s:light_black})
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

