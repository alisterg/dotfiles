call plug#begin()
    if has("nvim")
	    Plug 'hoob3rt/lualine.nvim'
      Plug 'airblade/vim-gitgutter'
      Plug 'nvim-lua/plenary.nvim' " Dependency of Telescope
      Plug 'nvim-telescope/telescope.nvim'
      Plug 'neoclide/coc.nvim', {'branch': 'release'}
      Plug 'norcalli/nvim-colorizer.lua' " Colours hex codes

      Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' } " golang
      Plug 'junegunn/vim-easy-align' " align text
    endif
call plug#end()

