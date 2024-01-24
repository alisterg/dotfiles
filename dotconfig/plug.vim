call plug#begin()
    if has("nvim")
	    Plug 'hoob3rt/lualine.nvim' " Delicious status line
      Plug 'airblade/vim-gitgutter' " Git gutter icons
      Plug 'nvim-lua/plenary.nvim' " Dependency of Telescope
      Plug 'nvim-telescope/telescope.nvim' " The best software I have ever used
      Plug 'neoclide/coc.nvim', {'branch': 'release'}
      Plug 'junegunn/limelight.vim'
      Plug 'norcalli/nvim-colorizer.lua' " Colours hex codes
    endif
call plug#end()

