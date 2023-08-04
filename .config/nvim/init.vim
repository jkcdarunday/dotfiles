set runtimepath^=/usr/share/vim/vimfiles

" Config
" imap jk <Esc>
" imap kj <Esc>
" imap jj <Esc>
" set timeoutlen=500

" Lua
lua require 'impatient'
lua require 'plugins'
lua require 'init'

:set number

runtime copilot-workaround.vim

