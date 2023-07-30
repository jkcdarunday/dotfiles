-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Vimpeccable allows vimrc to be written in lua
  use 'svermeulen/vimpeccable'

  -- Gruvbox Colorscheme
  -- use {'morhetz/gruvbox'}

  -- Material Darker Colorscheme
  use { 'kaicataldo/material.vim', branch = 'main' }

  -- Searching
  -- use 'ctrlpvim/ctrlp.vim'
  -- use { 'junegunn/fzf', run = './install --all' }
  -- use 'junegunn/fzf.vim'

  use { 'ibhagwan/fzf-lua', requires = { 'kyazdani42/nvim-web-devicons' } }

  -- File Explorer
  use { 'kyazdani42/nvim-tree.lua', requires = { 'kyazdani42/nvim-web-devicons' }, tag = 'nightly' }

  -- use 'terryma/vim-multiple-cursors' -- Multiple cursors
  use 'tpope/vim-sleuth' -- Detects Indents
  -- use 'mhinz/vim-startify' -- Startup Screen

  use 'git@github.com:github/copilot.vim.git' -- Github Copilot

  use 'psliwka/vim-smoothie' -- Smooth Scrolling
  use { 'neoclide/coc.nvim', branch = 'release' } -- Completion

  -- Statusline
  use { 'vim-airline/vim-airline', { 'vim-airline/vim-airline-themes' } }

  -- TPope plugins --
  use 'tpope/vim-commentary' -- Commenting
--   use 'tpope/vim-surround' -- Surrounding
  use 'tpope/vim-repeat' -- Repeat
  use 'tpope/vim-fugitive' -- Git
  use 'tpope/vim-rhubarb' -- Rhubarb

  use 'kylechui/nvim-surround'

  use 'lewis6991/impatient.nvim' -- Speedup startup 

  use 'stevearc/dressing.nvim' -- Popup styling

  -- Top tab bars
  use {'akinsho/bufferline.nvim', tag = 'v2.*', requires = 'kyazdani42/nvim-web-devicons'}

  -- Startup
  use {
    'goolord/alpha-nvim',
    config = function ()
  --    require'alpha'.setup(require'alpha.themes.dashboard'.config)
      require('alpha').setup(require('plugins/dashboard').config)
    end
  }

  -- Fuzzy finder
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.x', requires = { {'nvim-lua/plenary.nvim'} } }

  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }

  -- use nvim-treesitter
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' }


  -- lsp package manager
  -- use { 'williamboman/mason.nvim' }

  -- jj and kk escaping
  use { 'max397574/better-escape.nvim', config = function() require('better_escape').setup() end }

  use { 'akinsho/toggleterm.nvim', tag = 'v2.*' }

  -- Automatic number toggling
  use { 'sitiom/nvim-numbertoggle' }

  use { 'numToStr/Comment.nvim' }

  -- Minimap
  -- use { 'wfxr/minimap.vim' }

  -- Scrollbar
  use 'petertriho/nvim-scrollbar'

  -- Easy motion
  use 'easymotion/vim-easymotion'

  -- Unified easymotion
  -- use 'ggandor/lightspeed.nvim'

  -- Error messages
  use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" }

  -- TODO comments
  use { 'folke/todo-comments.nvim', requires = 'nvim-lua/plenary.nvim' }

  --== IDE-like Plugs like autocompletion ==--
  -- Partly based on https://github.com/BUGBOUNTYchrisg8691/nvim-config/blob/b4f0e0df1b85d5adac3cb0d0df0869e7abd2689f/lua/plugins.lua

  -- autocomplete brackets, parentheses, and quotes
  -- use 'jiangmiao/auto-pairs'
  use 'windwp/nvim-autopairs'

  -- Git Integration
  use 'airblade/vim-gitgutter'

  -- Class suggestions
  use 'majutsushi/tagbar'

  -- React plugins
  use 'MaxMEllon/vim-jsx-pretty'
  use 'pangloss/vim-javascript'

  -- Language Specific Plugs
  -- Lua
  use 'tbastos/vim-lua'

  -- Java
  use 'artur-shaik/vim-javacomplete2'
  use 'uiiaoo/java-syntax.vim'

  -- Python
  use 'davidhalter/jedi-vim'

  -- Fish
  use 'dag/vim-fish'

  -- Solidity
  use 'thesis/vim-solidity'

  -- Rust
  use 'rust-lang/rust.vim'

end)
