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
    "coc-spell-checker"
}

vimp.vnoremap("<M-L>", "<Plug>(coc-format-selected)")
vimp.nnoremap("<M-L>", "<Plug>(coc-format)")
