vim.g.coc_global_extensions = {
    "coc-snippets",
    "coc-eslint",
    "coc-emmet",
    "coc-coverage",
    "coc-solidity",
    "coc-rust-analyzer",
    "coc-lua",
    "coc-json",
    "coc-prettier",
    "coc-tsserver",
    "coc-html",
    "coc-css",
    "coc-yaml",
    "coc-lists",
    "coc-git",
    "coc-highlight",
    "coc-spell-checker",
    "coc-pyright"
}

vimp.vnoremap({'silent'}, "<M-L>", "<Plug>(coc-format-selected)")
vimp.nnoremap({'silent'}, "<M-L>", "<Plug>(coc-format)")
vimp.nnoremap({'silent'}, "<M-CR>", "<Plug>(coc-codeaction-selected)")

