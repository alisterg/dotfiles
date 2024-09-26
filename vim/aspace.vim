" Name:       aspace.vim
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

let g:colors_name='aspace'
let g:limelight_conceal_ctermfg=100
let g:limelight_conceal_guifg = '#898d94'

let s:bg          = { "gui": "#16161c", "cterm": "232" }
let s:line_hl     = { "gui": "#23232d", "cterm": "232" }
let s:border      = { "gui": "#777777", "cterm": "232" }
let s:foreground  = { "gui": "#898d94", "cterm": "232" }
let s:comment     = { "gui": "#3B4253", "cterm": "232" }
let s:silver      = { "gui": "#C0C3CC", "cterm": "232" }
let s:yellow      = { "gui": "#E5CC93", "cterm": "232" }
let s:pink        = { "gui": "#D79BBF", "cterm": "232" }
let s:blue        = { "gui": "#5699af", "cterm": "153" }
let s:red         = { "gui": "#770000", "cterm": "153" }
let s:light_green = { "gui": "#38551E", "cterm": "153" }
" let s:dark_purple   = { "gui": "#b48ead", "cterm": "134" }

let s:background = &background
let s:bg_subtle      = s:line_hl
let s:bg_very_subtle = s:line_hl
let s:norm           = s:foreground

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

call s:h("Cursor",  { "bg": s:norm, "fg": s:norm })
call s:h("Comment", { "fg": s:comment, "gui": "italic"})
hi! link SpecialComment Comment

call s:h("Nothing", {"fg": s:norm})
hi! link Constant                      Nothing
hi! link Character                     Nothing
hi! link Number                        Nothing
hi! link Boolean                       Nothing
hi! link Float                         Nothing
hi! link String                        Nothing
hi! link javaScript                    Nothing
hi! link typeScriptBraces              Nothing
hi! link javaScriptBraces              Nothing
hi! link typeScriptCall                Nothing
hi! link typeScriptTypeReference       Nothing
hi! link typeScriptParamImpl           Nothing
hi! link typeScriptFuncType            Nothing
hi! link typeScriptDestructureVariable Nothing
hi! link typeScriptBOMNavigatorProp    Nothing
hi! link typeScriptConsoleMethod       Nothing
hi! link typeScriptFileReaderProp      Nothing
hi! link jsonKeyword                   Nothing
hi! link vimVar                        Nothing
hi! link goTypeConstructor             Nothing

call s:h("typeScriptMember", {"fg": s:yellow})
hi! link vimLet                typeScriptMember
hi! link vimCommand            typeScriptMember
hi! link vimHighlight          typeScriptMember
hi! link javaScriptFunction    typeScriptMember
hi! link typeScriptFuncName    typeScriptMember
hi! link pythonFunction        typeScriptMember
hi! link hsModule              typeScriptMember
hi! link hsStructure           typeScriptMember
hi! link goFunction            typeScriptMember
hi! link typeScriptObjectLabel typeScriptMember

call s:h("typeScriptRepeat", {"fg": s:silver})
hi! link typeScriptStatementKeyword typeScriptRepeat
hi! link typeScriptConditional      typeScriptRepeat
hi! link javaScriptConditional      typeScriptRepeat
hi! link csConditional              typeScriptRepeat
hi! link cConditional               typeScriptRepeat
hi! link csRepeat                   typeScriptRepeat
hi! link pythonConditional          typeScriptRepeat
hi! link hsConditional              typeScriptRepeat
hi! link goConditional              typeScriptRepeat
hi! link goStatement                typeScriptRepeat

call s:h("Statement", {"fg": s:norm})
hi! link Conditonal           Statement
hi! link Repeat               Statement
hi! link Label                Statement
hi! link Exception            Statement
hi! link jsonQuote            Statement
hi! link Identifier           Statement
hi! link Function             Statement
hi! link typeScriptIdentifier Statement

call s:h("typeScriptAliasDeclaration", {"fg": s:pink})
hi! link typeScriptClassName typeScriptAliasDeclaration
hi! link typeScriptEnum      typeScriptAliasDeclaration
hi! link csClassType         typeScriptAliasDeclaration
hi! link pythonBuiltin       typeScriptAliasDeclaration
hi! link ConId               typeScriptAliasDeclaration
hi! link goTypeName          typeScriptAliasDeclaration
hi! link goReceiverType      typeScriptAliasDeclaration
hi! link typeScriptAccessibilityModifier      typeScriptAliasDeclaration

call s:h("markdownH1", {"fg": s:blue})
call s:h("markdownH1Delimiter", {"fg": s:blue})
call s:h("markdownH2", {"fg": s:blue})
call s:h("markdownH2Delimiter", {"fg": s:blue})
call s:h("markdownH3", {"fg": s:blue})
call s:h("markdownH3Delimiter", {"fg": s:blue})
call s:h("markdownH4", {"fg": s:blue})
call s:h("markdownH4Delimiter", {"fg": s:blue})
call s:h("markdownH5", {"fg": s:blue})
call s:h("markdownH5Delimiter", {"fg": s:blue})
call s:h("markdownH6", {"fg": s:blue})
call s:h("markdownH6Delimiter", {"fg": s:blue})

call s:h("htmlTag", { "fg": s:silver})
call s:h("htmlEndTag", { "fg": s:silver})
call s:h("htmlArg", { "fg": s:silver})
call s:h("htmlTagName", { "fg": s:pink})
call s:h("htmlTagN",    { "fg": s:yellow})
hi! link tsxTagName     htmlTagN

call s:h("Operator", {"fg": s:silver})

call s:h("PreProc", {"fg": s:silver})
hi! link Include            PreProc
hi! link Define             PreProc
hi! link Macro              PreProc
hi! link PreCondit          PreProc
hi! link javaScriptReserved PreProc
hi! link cssMediaProp       PreProc
hi! link cssFlexibleBoxProp PreProc
hi! link cssFontProp        PreProc
hi! link cssTextProp        PreProc
hi! link cssBoxProp         PreProc
hi! link cssUIProp          PreProc
hi! link cssTransformProp   PreProc
hi! link cssColorProp       PreProc
hi! link cssTransitionProp  PreProc
hi! link cssPositioningProp PreProc
hi! link cssVendor          PreProc
hi! link goPackage          PreProc
hi! link goImport           PreProc

call s:h("Keyword", {"fg": s:norm})
hi! link typeScriptPredefinedType Keyword
hi! link typeScriptNull           Keyword
hi! link pythonStatement          Keyword
hi! link hsStatement              Keyword
hi! link goLabel                  Keyword
hi! link goVar                    Keyword
hi! link goRepeat                 Keyword
hi! link goBuiltins               Keyword
hi! link goPredefinedIdentifiers  Keyword
hi! link goType                   Keyword
hi! link goUnsignedInts           Keyword

call s:h("Type", {"fg": s:pink})
hi! link StorageClass  Type
hi! link Structure     Type
hi! link Typedef       Type
hi! link cssClassName  Type
hi! link cssTagName    Type
hi! link goDeclaration Type

call s:h("Special",       {"fg": s:silver})
hi! link SpecialChar      Special
hi! link Tag              Special
hi! link Delimiter        Special
hi! link Debug            Special

call s:h("Underlined",    {"fg": s:norm, "gui": "underline", "cterm": "underline"})
call s:h("Ignore",        {"fg": s:bg})
call s:h("Error",         {"fg": s:norm, "bg": s:red, "cterm": "bold"})
call s:h("Todo",          {"fg": s:bg, "bg": s:pink, "gui": "underline", "cterm": "underline"})
call s:h("SpecialKey",    {"fg": s:light_green})
call s:h("NonText",       {"fg": s:comment})
call s:h("EndOfBuffer",       {"fg": s:bg}) " The ~ symbols below editor
call s:h("Directory",     {"fg": s:blue})
call s:h("ErrorMsg",      {"fg": s:red})
call s:h("IncSearch",     {"bg": s:yellow, "fg": s:bg})
call s:h("TelescopeMatching",     {"fg": s:yellow})
call s:h("Search",        {"bg": s:pink, "fg": s:bg})
call s:h("MoreMsg",       {"fg": s:comment, "cterm": "bold", "gui": "bold"})
hi! link ModeMsg MoreMsg
call s:h("LineNr",        {"fg": s:bg_subtle})
call s:h("CursorLineNr",  {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("Question",      {"fg": s:red})
call s:h("StatusLine",    {"bg": s:bg_very_subtle})
call s:h("StatusLineNC",  {"bg": s:bg_very_subtle, "fg": s:comment})
call s:h("VertSplit",     {"bg": s:bg_very_subtle, "fg": s:bg_very_subtle})
call s:h("Title",         {"fg": s:blue})
call s:h("Visual",        {"fg": s:bg, "bg": s:pink})
call s:h("VisualNOS",     {"bg": s:bg_subtle})
call s:h("WarningMsg",    {"fg": s:yellow})
call s:h("WildMenu",      {"fg": s:bg, "bg": s:norm})
call s:h("Folded",        {"fg": s:norm, "bg": s:line_hl})
call s:h("FoldColumn",    {"fg": s:bg_subtle})
call s:h("DiffAdd",       {"fg": s:light_green})
call s:h("DiffDelete",    {"fg": s:red})
call s:h("DiffChange",    {"fg": s:yellow})
call s:h("DiffText",      {"fg": s:blue})
call s:h("SignColumn",    {"fg": s:light_green})


if has("gui_running")
  call s:h("SpellBad",    {"gui": "underline", "sp": s:red})
  call s:h("SpellCap",    {"gui": "underline", "sp": s:light_green})
  call s:h("SpellRare",   {"gui": "underline", "sp": s:pink})
  call s:h("SpellLocal",  {"gui": "underline", "sp": s:blue})
else
  call s:h("SpellBad",    {"cterm": "underline", "fg": s:red})
  call s:h("SpellCap",    {"cterm": "underline", "fg": s:light_green})
  call s:h("SpellRare",   {"cterm": "underline", "fg": s:pink})
  call s:h("SpellLocal",  {"cterm": "underline", "fg": s:blue})
endif

call s:h("Pmenu",         {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuSel",      {"fg": s:norm, "bg": s:pink})
call s:h("PmenuSbar",     {"fg": s:norm, "bg": s:bg_subtle})
call s:h("PmenuThumb",    {"fg": s:norm, "bg": s:bg_subtle})
call s:h("TabLine",       {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("TabLineSel",    {"fg": s:blue, "bg": s:bg_subtle, "gui": "bold", "cterm": "bold"})
call s:h("TabLineFill",   {"fg": s:norm, "bg": s:bg_very_subtle})
call s:h("CursorColumn",  {"bg": s:bg_very_subtle})
call s:h("CursorLine",    {"bg": s:bg_very_subtle})
"call s:h("CursorLine",    {"gui": "underline"})
call s:h("ColorColumn",   {"bg": s:bg_subtle})

call s:h("MatchParen",    {"bg": s:bg_subtle, "fg": s:norm})
call s:h("qfLineNr",      {"fg": s:comment})

call s:h("htmlH1",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH2",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH3",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH4",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH5",        {"bg": s:bg, "fg": s:norm})
call s:h("htmlH6",        {"bg": s:bg, "fg": s:norm})

" Synatastic
call s:h("SyntasticWarningSign",    {"fg": s:yellow})
call s:h("SyntasticWarning",        {"bg": s:yellow, "fg": s:line_hl, "gui": "bold", "cterm": "bold"})
call s:h("SyntasticErrorSign",      {"fg": s:red})
call s:h("SyntasticError",          {"bg": s:red, "fg": s:silver, "gui": "bold", "cterm": "bold"})

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
