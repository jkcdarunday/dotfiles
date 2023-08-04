-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'svermeulen/vimpeccable' -- Allows vimrc to be written in lua
  use 'marko-cerovac/material.nvim'
  use { 'ibhagwan/fzf-lua', requires = { 'kyazdani42/nvim-web-devicons' } } -- Search
  use { "nvim-neo-tree/neo-tree.nvim", branch = "v3.x", requires = { "nvim-lua/plenary.nvim", "nvim-tree/nvim-web-devicons", "MunifTanjim/nui.nvim" } }
  use 'git@github.com:github/copilot.vim.git' -- Github Copilot
  use 'psliwka/vim-smoothie' -- Smooth Scrolling
  use { 'neoclide/coc.nvim', branch = 'release' } -- Completion
  use 'nvim-lualine/lualine.nvim' -- Statusline
  use 'kylechui/nvim-surround' -- Surrounding
  use 'lewis6991/impatient.nvim' -- Speedup startup 
  use 'stevearc/dressing.nvim' -- Popup styling
  use {'akinsho/bufferline.nvim', tag = 'v2.*', requires = 'kyazdani42/nvim-web-devicons'} -- Top bars
  use { 'goolord/alpha-nvim' } -- Startup screen
  use { 'nvim-telescope/telescope.nvim', tag = '0.1.x', requires = { {'nvim-lua/plenary.nvim'} } } -- Fuzzy finder
  use { 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' } -- Source code tree parser
  use { 'max397574/better-escape.nvim' } -- jj and kk escaping
  use { 'akinsho/toggleterm.nvim', tag = 'v2.*' } -- Terminal
  use { 'sitiom/nvim-numbertoggle' } -- Automatic number toggling
  use { 'numToStr/Comment.nvim' } -- Auto comment (ctrl+/)
  use 'petertriho/nvim-scrollbar' -- Scrollbar
  use 'easymotion/vim-easymotion' -- Easy motion
  use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" } -- Error messages
  use { 'folke/todo-comments.nvim', requires = 'nvim-lua/plenary.nvim' } -- TODO comments
  use 'tpope/vim-commentary' -- Commenting
  use 'tpope/vim-repeat' -- Repeat
  use 'tpope/vim-fugitive' -- Git
  use 'tpope/vim-rhubarb' -- Rhubarb
  use 'tpope/vim-sleuth' -- Detects Indents
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  use 'rcarriga/nvim-notify' -- Notification popups

  -- Disabled plugins:
  -- use { 'williamboman/mason.nvim' } -- lsp package manager (not for CoC)
  -- use { 'wfxr/minimap.vim' } -- Minimap (has fonts issues)
  -- use 'ggandor/lightspeed.nvim' -- Unified easymotion (overrides binds that I use)
  -- use 'terryma/vim-multiple-cursors' -- Multiple cursors

  --== IDE-like Plugs like autocompletion ==--
  -- Partly based on https://github.com/BUGBOUNTYchrisg8691/nvim-config/blob/b4f0e0df1b85d5adac3cb0d0df0869e7abd2689f/lua/plugins.lua
  use 'windwp/nvim-autopairs' -- Autocomplete brackets/parentheses/quotes
  use 'airblade/vim-gitgutter' -- Git Integration
  use 'majutsushi/tagbar' -- Class suggestions

  -- Language Specific Plugins:
  -- React plugins
  use 'MaxMEllon/vim-jsx-pretty'
  use 'pangloss/vim-javascript'

  -- Lua
  use 'tbastos/vim-lua'

  -- Java
  use 'artur-shaik/vim-javacomplete2'
  use 'uiiaoo/java-syntax.vim'

  use 'davidhalter/jedi-vim' -- Python
  use 'dag/vim-fish' -- Fish
  use 'thesis/vim-solidity' -- Solidity
  use 'rust-lang/rust.vim' -- Rust

end)
