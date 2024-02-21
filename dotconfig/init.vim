nnoremap <Space> <Nop>
let mapleader=" "

let maplocalleader=" "
autocmd! 
scriptencoding utf-8 " set script encoding

runtime ./plug.vim

" THEME ---------------------------------------------------------------------
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set termguicolors

  " Dark theme ---------------------------
  set background=dark
  runtime ./tmoz.vim
  "runtime ./space.vim
  "runtime ./molo.vim

  " Light theme --------------------------
  "set background=light
  "runtime ./light_space.vim
 
  " For theme with transparent background
  highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40
  highlight Search cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey50
  highlight IncSearch cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey70

  set cursorline
endif

filetype plugin indent on
let g:markdown_folding = 1
set scrolloff=10
set expandtab
set ignorecase
set number
set mouse=a
set shiftwidth=4
set tabstop=4
set ai "Auto indent
set si "Smart indent
set wrap "Soft Wrap lines
set foldmethod=indent
set foldnestmax=3
set foldlevel=3

set formatoptions+=r " Add asterisks in block comments

" Automatically start colorizer (highlights hash colours)
autocmd VimEnter * :ColorizerToggle

let g:netrw_banner = 0 " Hide Netrw banner by default
let g:netrw_liststyle = 3 " Tree view

"-----------------------------
" KEYMAPS

nnoremap gb :Telescope buffers<CR>

" Insert current datetime
nmap <leader>d a[<esc>"=strftime("%F %H:%M")<CR>pa] 
inoremap <C-d> [<esc>"=strftime("%F %H:%M")<CR>pa] 

"--------------------------
"Git Gutter
set signcolumn=yes
let g:gitgutter_sign_added = '|'
let g:gitgutter_sign_modified = '|'
let g:gitgutter_sign_removed = '|'
let g:gitgutter_sign_removed_first_line = '|'
let g:gitgutter_sign_removed_above_and_below = '|'
let g:gitgutter_sign_modified_removed = '|'

" Updates gitgutter every 200ms
set updatetime=200

" Display the syntax highlight group of the symbol under cursor
nnoremap <leader>ii :echo "hi<" . synIDattr(synID(line("."),col("."),1),"name") . '> trans<'
\ . synIDattr(synID(line("."),col("."),0),"name") . "> lo<"
\ . synIDattr(synIDtrans(synID(line("."),col("."),1)),"name") . ">"<CR>
