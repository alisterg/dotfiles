nnoremap <Space> <Nop>
let mapleader=" "

let maplocalleader=" "
" init autocmd
autocmd!
" set script encoding
scriptencoding utf-8
" stop loading config if it's on tiny or small
if !1 | finish | endif

runtime ./plug.vim

" THEME "{{{
" ---------------------------------------------------------------------
" true color
if exists("&termguicolors") && exists("&winblend")
  syntax enable
  set winblend=0
  set wildoptions=pum
  set pumblend=5
  set termguicolors

  " Dark theme ---------------------------
  set background=dark
  runtime ./space.vim
  "runtime ./molo.vim
  "runtime ./gruv.vim
  "runtime ./tmoz.vim
  "runtime ./ume.vim

  " Light theme --------------------------
  "set background=light
  "runtime ./light_space.vim
 
  " For theme with transparent background
  "highlight Visual cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey40 " for transparent bg
  "highlight Search cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey50 " for transparent bg
  "highlight IncSearch cterm=NONE ctermbg=236 ctermfg=NONE guibg=Grey70 " for transparent bg

  set cursorline
endif

let g:markdown_folding = 1
set showcmd
set cmdheight=1
set laststatus=2
set autoindent
set scrolloff=10
set shell=fish
set expandtab
set ignorecase
set smarttab
set number " enable line numbers
"set nonumber " disable line numbers
set mouse=a

filetype plugin indent on
set shiftwidth=2
set tabstop=2
set ai "Auto indent
set si "Smart indent
set wrap "Soft Wrap lines
set foldmethod=indent
set foldnestmax=2
set foldlevel=2

" Add asterisks in block comments
set formatoptions+=r

" Automatically start colorizer (highlights hash colours)
autocmd VimEnter * :ColorizerToggle

"-----------------------------
" Netrw - file explorer
let g:netrw_banner = 0 " Hide banner by default
let g:netrw_browse_split = 4 " Open files in previous window (main window usually)
let g:netrw_winsize = 15 " Width of the window
let g:netrw_liststyle = 3 " Tree view
" Open on vim start
"augroup ProjectDrawer
"  autocmd!
"  autocmd VimEnter * :Vexplore
"augroup END

let g:NetrwIsOpen=0

function! ToggleNetrw()
    if g:NetrwIsOpen
        let i = bufnr("$")
        while (i >= 1)
            if (getbufvar(i, "&filetype") == "netrw")
                silent exe "bwipeout " . i 
            endif
            let i-=1
        endwhile
        let g:NetrwIsOpen=0
    else
        let g:NetrwIsOpen=1
        silent :Vexplore
    endif
endfunction

noremap <silent> <C-e> :call ToggleNetrw()<CR>
inoremap <silent> <C-e> :call ToggleNetrw()<CR>

"-----------------------------
" KEYMAPS

" Select all
nmap <C-a> gg<S-v>G

nnoremap gb :Telescope buffers<CR>

" MOVING LINES
" Normal mode
nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==
" Insert mode
inoremap <C-j> <ESC>:m .+1<CR>==gi
inoremap <C-k> <ESC>:m .-2<CR>==gi
" Visual mode
vnoremap <C-j> :m '>+1<CR>gv=gv
vnoremap <C-k> :m '<-2<CR>gv=gv

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
