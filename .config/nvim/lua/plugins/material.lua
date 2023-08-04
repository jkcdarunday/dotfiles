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
        lualine_style = "stealth",
        custom_highlights = {
            IlluminatedWord = { bg = "#444444" },
            IlluminatedCurWord = { bg = "#444444" },
            IlluminatedWordText = { bg = "#444444" },
            IlluminatedWordRead = { bg = "#444444" },
            IlluminatedWordWrite = { bg = "#444444" },
        }
    })

vim.cmd('colorscheme material')
