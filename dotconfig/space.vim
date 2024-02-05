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
let g:limelight_conceal_guifg = '#898d94'

let s:black           = { "gui": "#16171d", "cterm": "232" } " bg
let s:alt_black       = { "gui": "#1c1f28", "cterm": "232" } " bg
let s:bg_contrast     = { "gui": "#383a4b", "cterm": "232" } " bg contrast
let s:lighter_gray    = { "gui": "#c0c4cd", "cterm": "251" } " fg 
let s:medium_gray     = { "gui": "#616E88", "cterm": "243" } " comments
let s:dark_red        = { "gui": "#bf616a", "cterm": "1"   } " red
let s:orange          = { "gui": "#d08770", "cterm": "167" } " orange
let s:yellow          = { "gui": "#ebca8a", "cterm": "11"  } " yellow
let s:dark_green      = { "gui": "#a3be8c", "cterm": "2"   } " green
let s:light_green     = { "gui": "#88c0d0", "cterm": "10"  } " light cyan
let s:light_blue      = { "gui": "#5699af", "cterm": "153" } " dark cyan
let s:blue            = { "gui": "#8fa1b3", "cterm": "12"  } " blue
let s:blue_grey            = { "gui": "#8fa0b2", "cterm": "12"  } " blue
let s:dark_purple     = { "gui": "#b48ead", "cterm": "134" } " magenta
let s:light_purple    = { "gui": "#e298c2", "cterm": "134" } " magenta
let s:white           = { "gui": "#D5D9E2", "cterm": "15"  }
let s:light_black     = { "gui": "#323845", "cterm": "235" }
let s:light_gray      = { "gui": "#898d94", "cterm": "248" }
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
  let s:bg              = s:white
  let s:bg_subtle       = s:light_gray
  let s:bg_very_subtle  = s:lightest_gray
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
call s:h("Comment",       {"fg": s:dark_green, "gui": "italic"})
hi! link SpecialComment   Comment

call s:h("Constant",      {"fg": s:light_blue})
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
hi! link typeScriptDestructureVariable       Normal
hi! link htmlTag       Normal
hi! link htmlEndTag       Normal
hi! link javaScript       Normal
hi! link jsonKeyword       Normal
hi! link vimVar       Normal

call s:h("typeScriptMember",    {"fg": s:blue_grey})
hi! link vimLet       typeScriptMember
hi! link vimCommand       typeScriptMember
hi! link vimHighlight       typeScriptMember
hi! link javaScriptFunction       typeScriptMember
hi! link typeScriptFuncName       typeScriptMember
hi! link pythonFunction typeScriptMember
hi! link hsModule typeScriptMember
hi! link hsStructure typeScriptMember

call s:h("typeScriptRepeat",    {"fg": s:yellow})
hi! link typeScriptStatementKeyword        typeScriptRepeat
hi! link typeScriptConditional        typeScriptRepeat
hi! link javaScriptConditional        typeScriptRepeat
hi! link csConditional        typeScriptRepeat
hi! link cConditional        typeScriptRepeat
hi! link csRepeat        typeScriptRepeat
hi! link pythonConditional        typeScriptRepeat
hi! link hsConditional        typeScriptRepeat

call s:h("Statement",     {"fg": s:norm_subtle})
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Exception        Statement
hi! link jsonQuote    Statement
call s:h("Identifier",    {"fg": s:norm_subtle})
hi! link Function         Identifier
hi! link typeScriptIdentifier Identifier

call s:h("Keyword",    {"fg": s:dark_purple})
hi! link typeScriptPredefinedType Keyword
hi! link typeScriptNull Keyword
hi! link pythonStatement Keyword
hi! link hsStatement Keyword

call s:h("typeScriptAliasDeclaration",    {"fg": s:light_purple})
hi! link typeScriptClassName typeScriptAliasDeclaration
hi! link typeScriptEnum typeScriptAliasDeclaration
hi! link csClassType typeScriptAliasDeclaration
hi! link pythonBuiltin typeScriptAliasDeclaration
hi! link ConId typeScriptAliasDeclaration

call s:h("markdownH1", {"fg": s:dark_green})
call s:h("markdownH1Delimiter", {"fg": s:blue})
call s:h("markdownH2", {"fg": s:light_green})
call s:h("markdownH2Delimiter", {"fg": s:light_blue})
call s:h("markdownH3", {"fg": s:light_red})
call s:h("markdownH3Delimiter", {"fg": s:dark_red})
call s:h("markdownH4", {"fg": s:light_red})
call s:h("markdownH4Delimiter", {"fg": s:dark_red})
call s:h("markdownH5", {"fg": s:light_purple})
call s:h("markdownH5Delimiter", {"fg": s:dark_purple})
call s:h("markdownH6", {"fg": s:dark_green})
call s:h("markdownH6Delimiter", {"fg": s:dark_green})

call s:h("htmlTagName",     {"fg": s:light_purple})
call s:h("htmlTagN",     {"fg": s:orange})
hi! link tsxTagName          htmlTagN

call s:h("Operator",      {"fg": s:norm, "cterm": "bold", "gui": "bold"})

call s:h("PreProc",     {"fg": s:blue_grey})
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc
hi! link javaScriptReserved        PreProc
hi! link cssMediaProp          PreProc
hi! link cssFlexibleBoxProp          PreProc
hi! link cssFontProp          PreProc
hi! link cssTextProp          PreProc
hi! link cssBoxProp          PreProc
hi! link cssUIProp          PreProc
hi! link cssTransformProp          PreProc
hi! link cssColorProp          PreProc
hi! link cssTransitionProp          PreProc
hi! link cssPositioningProp          PreProc
hi! link cssVendor      PreProc

call s:h("Type",          {"fg": s:dark_purple})
hi! link StorageClass     Type
hi! link Structure        Type
hi! link Typedef          Type
hi! link cssClassName          Type
hi! link cssTagName          Type

call s:h("Special",       {"fg": s:blue_grey})
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link Debug            Special

call s:h("Underlined",    {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",        {"fg": s:bg})
call s:h("Error",         {"fg": s:white, "bg": s:red, "cterm": "bold"})
call s:h("Todo",          {"fg": s:dark_red, "gui": "underline", "cterm": "underline"})
call s:h("SpecialKey",    {"fg": s:light_green})
call s:h("NonText",       {"fg": s:medium_gray})
call s:h("Directory",     {"fg": s:blue})
call s:h("ErrorMsg",      {"fg": s:red})
call s:h("IncSearch",     {"bg": s:yellow, "fg": s:black})
call s:h("Search",        {"bg": s:orange, "fg": s:black})
call s:h("MoreMsg",       {"fg": s:medium_gray, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:bg_subtle})
call s:h("CursorLineNr",  {"fg": s:lighter_gray, "bg": s:bg_very_subtle})
call s:h("Question",      {"fg": s:red})
call s:h("StatusLine",    {"bg": s:bg_very_subtle})
call s:h("StatusLineNC",  {"bg": s:bg_very_subtle, "fg": s:medium_gray})
call s:h("VertSplit",     {"bg": s:bg_very_subtle, "fg": s:bg_very_subtle})
call s:h("Title",         {"fg": s:blue})
call s:h("Visual",        {"fg": s:norm, "bg": s:dark_purple})
call s:h("VisualNOS",     {"bg": s:bg_subtle})
call s:h("WarningMsg",    {"fg": s:yellow})
call s:h("WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h("Folded",        {"fg": s:light_gray, "bg": s:alt_black})
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
call s:h("CursorColumn",  {"bg": s:bg_very_subtle})
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
