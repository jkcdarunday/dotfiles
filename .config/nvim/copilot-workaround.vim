" Author: Jan Keith Darunday <github@jkcdarunday.mozmail.com>
" Partially based on https://github.com/neoclide/coc.nvim/issues/4155#issuecomment-1243949449

" Disable internal copilot bindings
let g:copilot_no_tab_map = v:true

" Esc should dismiss copilot suggestions first
inoremap <silent><expr> <Esc>
            \ copilot#GetDisplayedSuggestion().text != '' ? copilot#Dismiss() :
            \ "\<C-\>\<C-n>"

" Accept copilot first, CoC next, and then fallback to native tab to retain
" indent support
inoremap <silent><expr> <TAB>
            \ copilot#GetDisplayedSuggestion().text != '' ? copilot#Accept("\<CR>") :
            \ coc#pum#visible() ? coc#pum#next(1) :
            \ "\<Tab>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice.
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
            \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" For reverse traversal
inoremap <silent><expr> <S-TAB>
            \ coc#pum#visible() ? coc#pum#prev(1) :
            \ exists('b:_copilot.suggestions') ? copilot#Accept("\<CR>") :
            \ "\<Tab>"
