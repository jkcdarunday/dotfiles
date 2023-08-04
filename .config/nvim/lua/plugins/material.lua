vim.g.material_style = "darker"

require("material").setup({
        contrast = {
            terminal=true
        },
        disable = {
            background = true,
        },
        high_visibility = {
            darker = true
        },
        lualine_style = "stealth"
    })

vim.cmd('colorscheme material')
