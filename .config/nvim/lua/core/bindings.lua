--== BINDINGS ==--
-- Allow easier exit from insert mode
-- vimp.imap('jk', '<Esc>') -- Commented out as it triggers when I type my username
vimp.imap('kj', '<Esc>')
vimp.imap('jj', '<Esc>')
vim.o.timeoutlen=500

-- Ctrl+Shift+N should search for files using fzf line it does in IntelliJ
-- vimp.noremap('<C-n>', ':Files<CR>') -- C-S-N is sent as C-N (https://groups.google.com/g/vim_use/c/sQVCPUn9-vY?pli=1)
-- vimp.noremap('<C-\\>', ':NvimTreeToggle<CR>')
vimp.noremap('<C-\\>', ':NvimTreeFocus<CR>')
vim.api.nvim_set_keymap('n', '<c-P>',
  "<cmd>lua require('fzf-lua').files()<CR>",
  { noremap = true, silent = true })

-- Remap d and x to the blackhole register (https://stackoverflow.com/a/30423919)
vimp.nnoremap('x', '"_x')
vimp.nnoremap('X', '"_X')
vimp.nnoremap('d', '"_d')
vimp.nnoremap('D', '"_D')
vimp.vnoremap('d', '"_d')
vimp.vnoremap('s', '"_s')
-- vimp.vnoremap('S', '"_S')

-- Leader d and x should still copy (https://raw.githubusercontent.com/pazams/d-is-for-delete/master/d-is-for-delete-shared-clipboard)
vim.o.clipboard='unnamed,unnamedplus'
vimp.nnoremap('<leader>d', '"+d')
vimp.nnoremap('<leader>D', '"+D')
vimp.vnoremap('<leader>d', '"+d')

-- Ctrl+Backspace should delete the word before the cursor (https://stackoverflow.com/questions/6039405/using-altbackspace-key-in-vim-command-line-to-delete-by-words)
-- Note: Not working :(
-- Fixed: 
-- Added iunmap <buffer> <C-H> in init.vim
-- vim.api.nvim_buf_del_keymap(0, 'i', '<C-H>')
vimp.imap('<C-H>', '<C-W>')
vimp.imap('<M-H>', '<C-W>')
-- vimp.noremap('<C-?>', '<C-W>')
-- vim.api.nvim_set_keymap('i', '<C-H>', '<C-W>', { noremap = true })
-- vim.api.nvim_set_keymap('i', '<C-H>', '<Esc>caw', {noremap = true})

-- Clear seach highlighting
vimp.nmap('<C-c>', ':nohlsearch<CR>')


-- Map better scrolling
vim.api.nvim_del_keymap('n', '<C-l>')
vimp.map('<C-j>', '<Cmd>call smoothie#do("\\<C-D>") <CR>')
vimp.map('<C-k>', '<Cmd>call smoothie#do("\\<C-U>") <CR>')
vimp.map('<C-S-j>', '<Cmd>call smoothie#do("\\<C-F>") <CR>')
vimp.map('<C-S-k>', '<Cmd>call smoothie#do("\\<C-B>") <CR>')

-- Word skipping
vimp.map('<C-l>', 'e')
vimp.map('<C-h>', 'b')

-- Enter insert mode when entering terminal
-- https://vi.stackexchange.com/a/22956
vim.api.nvim_command('autocmd TermOpen * startinsert')

-- Ctrl+s to save
vimp.nmap('<C-s>', ':w<CR>')

-- Copilot hax
vimp.map('<M-Tab>', 'copilot#Accept()');
-- vimp.imap('<Esc>', function()
--   -- check if copilot has a suggestion
--   local suggestion = vim.fn['copilot#GetDisplayedSuggestion']()
--   if suggestion.text ~= '' then
--     vim.fn['copilot#Clear']()
--   else
--     vim.cmd('stopinsert')
--   end
-- end)

-- Auto comment with C-/
vimp.map('<C-_>', ':Commentary<CR>')
vimp.imap('<C-_>', '<CMD>Commentary<CR>')

-- Coc bindings
vimp.nmap('<leader>rn', '<Plug>(coc-rename)')
vimp.nmap('<F6>', '<Plug>(coc-rename)')
vimp.nmap('<F18>', '<Plug>(coc-rename)') -- Shift+F6
vimp.nmap({'silent'}, 'gd', '<Plug>(coc-definition)')
vimp.nmap({'silent'}, 'gy', '<Plug>(coc-type-definition)')
vimp.nmap({'silent'}, 'gi', '<Plug>(coc-implementation)')
vimp.nmap({'silent'}, 'gr', '<Plug>(coc-references)')

-- Ctrl+tab to switch buffers (when not bound by the console)
vimp.nmap('<C-tab>', ':bnext<CR>')
vimp.nmap('<C-S-tab>', ':bprev<CR>')
-- vimp.nmap('<C-w>', ':bd<CR>') -- Conflicts with buffer switching
vimp.nmap('<C-t>', ':tabnew<CR>')
vimp.nmap('<C-S-t>', ':tabnew<CR>')

-- Shift+S should surround the current word with the next character
vimp.vmap('S', 'ysiw')
