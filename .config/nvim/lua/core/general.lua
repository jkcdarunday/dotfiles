local vimp = require('vimp')

--== CONFIG ==--
-- General config
vim.o.hidden = true
vim.o.history = 5000
vim.o.mouse = 'i'

-- Make command autocomplete case-insensitive
vim.o.ignorecase = true

-- Spacing config (based on vimpeccable example)
vim.o.tabstop=4 -- Tabs are seen as 4 spaces
vim.o.shiftwidth=vim.o.tabstop -- Indents are the smae
vim.o.expandtab=true -- Expand tabs to spaces
vim.o.autoindent=true -- Copy indents of newline from previous line
vim.o.smarttab=true -- Inserts blanks on a tabkey (?)

-- Wrapping
vim.o.breakindent=true -- Indent wrapped lines
vim.o.breakindentopt="shift:4,min:40,sbr"

-- Show line numbres
vim.o.number=true

-- Mapleader?
vim.g.mapleader=" "

-- Set material color scheme
vim.g.material_theme_style='default'
vim.g.material_terminal_italics=1
vim.cmd('colorscheme material')

-- Set material airline theme
vim.g.airline_theme='material'

-- Set vertical highlight
-- vim.highlight.create('VertSplit', { ctermbg = 244, ctermfg

-- Override copilot node command (https://github.com/community/community/discussions/16800)
-- vim.g.copilot_node_command='~/.n/n/versions/node/17.4.0/bin/node'

