call plug#begin()
    if has("nvim")
	    Plug 'hoob3rt/lualine.nvim' " Status line
      Plug 'airblade/vim-gitgutter' " Git gutter icons
      Plug 'nvim-lua/plenary.nvim' " Dependency of Telescope
      Plug 'nvim-telescope/telescope.nvim'
      Plug 'neoclide/coc.nvim', {'branch': 'release'}
      Plug 'junegunn/limelight.vim' " Focus current paragraph
      Plug 'norcalli/nvim-colorizer.lua' " Colours hex codes
    endif
call plug#end()

