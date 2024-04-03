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

let s:bg            = { "gui": "#e5e6eb", "cterm": "1" }
"let s:bg            = { "gui": "#dfe1e8", "cterm": "1" }
let s:norm          = { "gui": "#000000", "cterm": "232" }
let s:black         = { "gui": "#2B303B", "cterm": "232" }
let s:norm_contrast = { "gui": "#586e75", "cterm": "232" }
let s:lighter_gray  = { "gui": "#dfe1e8", "cterm": "251" }
let s:medium_gray   = { "gui": "#a7adba", "cterm": "243" } " comments
let s:yellowgrey    = { "gui": "#f3efe5", "cterm": "1" }
let s:accent   = { "gui": "#0085a1", "cterm": "243" } " comments

let s:background = &background
let s:norm = s:black

"let s:primary      = { "gui": "#FC550C", "cterm": "232" }
let s:blue         = { "gui": "#1f76b6", "cterm": "232" }
let s:cyan         = { "gui": "#217d74", "cterm": "232" }
"let s:cyan         = { "gui": "#2aa198", "cterm": "232" }
let s:green        = { "gui": "#677600", "cterm": "232" }
let s:violet       = { "gui": "#6c71c4", "cterm": "232" }
let s:magenta      = { "gui": "#d33682", "cterm": "232" }
let s:yellow       = { "gui": "#b58900", "cterm": "11"  }
let s:orange       = { "gui": "#cb4b16", "cterm": "167" } " orange
let s:red          = { "gui": "#dc322f", "cterm": "1"   } " red
let s:light_purple = { "gui": "#1D7CB4", "cterm": "134" }
let s:dark_purple  = { "gui": "#b48ead", "cterm": "134" }

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

call s:h("Normal",        {"bg": s:bg,"fg": s:norm})

" restore &background's value in case changing Normal changed &background (:help :hi-normal-cterm)
if &background != s:background
   execute "set background=" . s:background
endif

call s:h("Cursor",        {"bg": s:light_purple, "fg": s:norm })
call s:h("Comment",       {"fg": s:medium_gray, "gui": "italic"})
hi! link SpecialComment   Comment

call s:h("String",      {"fg": s:cyan})

call s:h("typeScriptNull", {"fg": s:yellow})
hi! link Number                   typeScriptNull
hi! link Constant                 typeScriptNull
hi! link Float                    typeScriptNull
hi! link Boolean                  typeScriptNull
hi! link javaScriptType           typeScriptNull
hi! link typeScriptPredefinedType typeScriptNull
hi! link goPredefinedIdentifiers  typeScriptNull
hi! link goType                   typeScriptNull
hi! link goUnsignedInts           typeScriptNull
hi! link hsConSym                 typeScriptNull

call s:h("Nothing", {"fg": s:norm})
hi! link typeScriptBraces              Nothing
hi! link javaScriptBraces              Nothing
hi! link typeScriptCall                Nothing
hi! link typeScriptParamImpl           Nothing
hi! link typeScriptObjectLabel         Nothing
hi! link typeScriptFuncType            Nothing
hi! link typeScriptParens              Nothing
hi! link typeScriptBOMNavigatorProp    Nothing
hi! link typeScriptGlobalMethod        Nothing
hi! link typeScriptBOMWindowProp       Nothing
hi! link typeScriptGlobal              Nothing
hi! link typeScriptDestructureVariable Nothing
hi! link htmlTag                       Nothing
hi! link htmlEndTag                    Nothing
hi! link javaScript                    Nothing
hi! link jsonKeyword                   Nothing
hi! link goTypeConstructor             Nothing
hi! link hsVarSym                      Nothing

call s:h("typeScriptRepeat", {"fg": s:green})
hi! link typeScriptStatementKeyword typeScriptRepeat
hi! link typeScriptConditional      typeScriptRepeat
hi! link javaScriptConditional      typeScriptRepeat
hi! link csConditional              typeScriptRepeat
hi! link csRepeat                   typeScriptRepeat
hi! link goConditional              typeScriptRepeat
hi! link goStatement                typeScriptRepeat
hi! link hsStatement                typeScriptRepeat

call s:h("markdownH1",          { "fg": s:yellow})
call s:h("markdownH1Delimiter", { "fg": s:orange})
call s:h("markdownH2",          { "fg": s:cyan})
call s:h("markdownH2Delimiter", { "fg": s:green})
call s:h("markdownH3",          { "fg": s:violet})
call s:h("markdownH3Delimiter", { "fg": s:blue})
call s:h("markdownH4",          { "fg": s:light_purple})
call s:h("markdownH4Delimiter", { "fg": s:dark_purple})
call s:h("markdownH5",          { "fg": s:lighter_gray})
call s:h("markdownH5Delimiter", { "fg": s:light_purple})
call s:h("markdownH6",          { "fg": s:lighter_gray})
call s:h("markdownH6Delimiter", { "fg": s:red})

call s:h("Keyword", {"fg": s:norm})
hi! link typeScriptClassStatic   Keyword
hi! link typeScriptVariable      Keyword
hi! link typeScriptTypeReference Keyword
hi! link goLabel                 Keyword
hi! link goVar                   Keyword
hi! link goRepeat                Keyword
hi! link goBuiltins              Keyword

call s:h("Special", {"fg": s:norm_contrast})
hi! link SpecialChar Special
hi! link Tag         Special
hi! link Delimiter   Special
hi! link Debug       Special
hi! link Identifier  Special
hi! link Function    Special
hi! link Conditonal  Special
hi! link Repeat      Special
hi! link Label       Special
hi! link Exception   Special
hi! link jsonQuote   Special
hi! link hsStructure Special
hi! link hsTypedef   Special

call s:h("Operator", {"fg": s:norm_contrast, "gui": "bold"})
hi! link cssClassName         Operator
hi! link htmlArg              Operator
hi! link typeScriptIdentifier Operator
hi! link goDeclaration        Operator

call s:h("typeScriptClassName", {"fg": s:magenta})
hi! link typeScriptAliasDeclaration typeScriptClassName
hi! link typeScriptEnum             typeScriptClassName

call s:h("typeScriptMember", {"fg": s:blue})
hi! link javaScriptFunction typeScriptMember
hi! link csClassType        typeScriptMember
hi! link goTypeName         typeScriptMember
hi! link goReceiverType     typeScriptMember
hi! link goFunction         typeScriptMember

call s:h("Statement",     {"fg": s:violet})
hi! link Conditonal       Statement
hi! link Repeat           Statement
hi! link Label            Statement
hi! link Exception        Statement
hi! link jsonQuote    Statement

call s:h("htmlTagName", {"fg": s:blue, "cterm": "bold", "gui": "bold"})
call s:h("htmlTagN",    {"fg": s:green, "gui": "bold"})

call s:h("PreProc",     {"fg": s:accent})
hi! link Include          PreProc
hi! link Define           PreProc
hi! link Macro            PreProc
hi! link PreCondit        PreProc
hi! link goPackage PreProc
hi! link goImport  PreProc

call s:h("Type", {"fg": s:magenta})
hi! link StorageClass       Type
hi! link Structure          Type
hi! link Typedef            Type
hi! link javaScriptReserved Type

call s:h("Underlined",    {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",        {"fg": s:bg})
call s:h("Error",         {"fg": s:lighter_gray, "bg": s:red, "cterm": "bold"})
call s:h("Todo",          {"bg": s:orange, "gui": "underline", "cterm": "underline"})
call s:h("SpecialKey",    {"fg": s:green})
call s:h("NonText",       {"fg": s:medium_gray})
call s:h("Directory",     {"fg": s:blue})
call s:h("ErrorMsg",      {"fg": s:red})
call s:h("IncSearch",     {"bg": s:yellow, "fg": s:black})
call s:h("Search",        {"bg": s:orange, "fg": s:black})
call s:h("MoreMsg",       {"fg": s:medium_gray, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:medium_gray})
call s:h("CursorLineNr",  {"fg": s:norm, "bg": s:lighter_gray})
call s:h("Question",      {"fg": s:red})
call s:h("StatusLine",    {"bg": s:lighter_gray})
call s:h("StatusLineNC",  {"bg": s:lighter_gray, "fg": s:medium_gray})
call s:h("VertSplit",     {"bg": s:lighter_gray, "fg": s:medium_gray})
call s:h("Title",         {"fg": s:blue})
call s:h("Visual",        {"fg": s:norm, "bg": s:dark_purple})
call s:h("VisualNOS",     {"bg": s:medium_gray})
call s:h("WarningMsg",    {"fg": s:yellow})
call s:h("WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h("Folded",        {"bg": s:lighter_gray})
call s:h("FoldColumn",    {"fg": s:medium_gray})
call s:h("DiffAdd",       {"fg": s:green})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:yellow})
call s:h("DiffText",      {"fg": s:blue})
call s:h("SignColumn",    {"fg": s:green})


if has("gui_running")
  call s:h("SpellBad",    {"gui": "underline", "sp": s:red})
  call s:h("SpellCap",    {"gui": "underline", "sp": s:green})
  call s:h("SpellRare",   {"gui": "underline", "sp": s:light_purple})
  call s:h("SpellLocal",  {"gui": "underline", "sp": s:green})
else
  call s:h("SpellBad",    {"cterm": "underline", "fg": s:red})
  call s:h("SpellCap",    {"cterm": "underline", "fg": s:green})
  call s:h("SpellRare",   {"cterm": "underline", "fg": s:light_purple})
  call s:h("SpellLocal",  {"cterm": "underline", "fg": s:green})
endif

call s:h("Pmenu",         {"fg": s:norm, "bg": s:medium_gray})
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:light_purple})
call s:h("PmenuSbar",     {"fg": s:norm, "bg": s:medium_gray})
call s:h("PmenuThumb",    {"fg": s:norm, "bg": s:medium_gray})
call s:h("TabLine",       {"fg": s:norm, "bg": s:lighter_gray})
call s:h("TabLineSel",    {"fg": s:blue, "bg": s:medium_gray, "gui": "bold", "cterm": "bold"})
call s:h("TabLineFill",   {"fg": s:norm, "bg": s:lighter_gray})
call s:h("CursorColumn",  {"bg": s:dark_purple})
"call s:h("CursorLine",    {"gui": "underline"})
call s:h("CursorLine",    {"bg": s:lighter_gray})
call s:h("ColorColumn",   {"bg": s:medium_gray})

call s:h("MatchParen",    {"bg": s:medium_gray, "fg": s:norm})
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
call s:h("SyntasticError",          {"bg": s:red, "fg": s:lighter_gray, "gui": "bold", "cterm": "bold"})

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
