call plug#begin()
    if has("nvim")
	    Plug 'hoob3rt/lualine.nvim' " Delicious status line
      Plug 'airblade/vim-gitgutter' " Git gutter icons
      Plug 'nvim-lua/plenary.nvim' " Dependency of Telescope
      Plug 'nvim-telescope/telescope.nvim' " The best software I have ever used
      Plug 'neoclide/coc.nvim', {'branch': 'release'}
      Plug 'junegunn/limelight.vim'
      Plug 'norcalli/nvim-colorizer.lua' " Colours hex codes

      Plug 'nordtheme/vim'
      Plug 'EdenEast/nightfox.nvim'
      Plug 'ayu-theme/ayu-vim'
    endif
call plug#end()

