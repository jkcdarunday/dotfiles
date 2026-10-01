require("bufferline").setup{
    options = {
        offsets = {
            {
                filetype = "neo-tree",
                text = "Neo-tree",
                highlight = "Directory",
                text_align = "left",
            },
        },
    }
}
vimp.nnoremap({'silent', 'override'}, '[b', ':BufferLineCycleNext<CR>')
vimp.nnoremap({'silent', 'override'}, ']b', ':BufferLineCyclePrev<CR>')

-- vimp.nnoremap('<silent><mymap>', ':BufferLineMoveNext<CR>')
-- vimp.nnoremap('<silent><mymap>', ':BufferLineMovePrev<CR>')
