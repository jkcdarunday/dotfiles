require("bufferline").setup{
options = {
offsets = {
{
filetype = "NvimTree",
text = "File Explorer",
highlight = "Directory",
text_align = "left"
}
}
}
}
vimp.nnoremap({'silent'}, '[b', ':BufferLineCycleNext<CR>')
vimp.nnoremap({'silent'}, ']b', ':BufferLineCyclePrev<CR>')

-- vimp.nnoremap('<silent><mymap>', ':BufferLineMoveNext<CR>')
-- vimp.nnoremap('<silent><mymap>', ':BufferLineMovePrev<CR>')
