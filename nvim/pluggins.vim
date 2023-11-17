call plug#begin('~/.config/nvim/plugged')

  " Autopairs
  Plug 'jiangmiao/auto-pairs'

  " Airline
  " Plug 'vim-airline/vim-airline'
  " Plug 'vim-airline/vim-airline-themes'

  " Autoclose tags
  Plug 'alvan/vim-closetag'

  " Icons
  Plug 'ryanoasis/vim-devicons'

  " NerdTree
  Plug 'preservim/nerdtree'

  " Themes
  Plug 'rose-pine/neovim'
  Plug 'kaicataldo/material.vim', { 'branch': 'main' }
  Plug 'Mofiqul/adwaita.nvim'
  Plug 'Mofiqul/dracula.nvim'
  Plug 'catppuccin/nvim', { 'as': 'catppuccin' }

  " Development
  Plug 'neoclide/coc.nvim', {'branch': 'release'}
  Plug 'itspriddle/vim-shellcheck'

call plug#end()
