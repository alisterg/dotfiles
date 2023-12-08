call plug#begin()
  if has("nvim")
    Plug 'hoob3rt/lualine.nvim' " Delicious status line
    Plug 'airblade/vim-gitgutter' " Git gutter icons
    Plug 'nvim-lua/plenary.nvim' " Dependency of Telescope
    Plug 'nvim-telescope/telescope.nvim'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
  endif
call plug#end()
