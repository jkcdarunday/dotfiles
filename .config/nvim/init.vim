set runtimepath^=/usr/share/vim/vimfiles

" Config
" imap jk <Esc>
" imap kj <Esc>
" imap jj <Esc>

" set timeoutlen=500

" map <C-n> :Files<CR>
" Lua
lua require 'impatient'
lua require 'plugins'
lua require 'init'

:set number

" :augroup numbertoggle
" :  autocmd!
" :  autocmd BufEnter,FocusGained,InsertLeave,WinEnter * if &nu && mode() != "i" | set rnu   | endif
" :  autocmd BufLeave,FocusLost,InsertEnter,WinLeave   * if &nu                  | set nornu | endif
" :augroup END

" set number

runtime copilot-workaround.vim
