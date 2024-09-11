return { "catppuccin/nvim", name = "catppuccin", priority = 1000,
    config = function()
        require("catppuccin").setup({
            transparent_background = true,
            integrations = {
                cmp = true,
                gitsigns = true,
                treesitter = true,
                which_key = true,
                ufo = true,
                navic = { enabled = true },
                harpoon = true,
            },
            custom_highlights = function(colors)
                return {
                    HarpoonActive = { fg = colors.surface0, bg = colors.blue },
                    HarpoonNumberActive = { fg = colors.surface0, bg = colors.blue },
                    HarpoonInactive = { fg = colors.subtext0 },
                    HarpoonNumberInactive = { fg = colors.subtext0 },
                }
            end,
        })
        vim.cmd.colorscheme("catppuccin")
    end,
  }
