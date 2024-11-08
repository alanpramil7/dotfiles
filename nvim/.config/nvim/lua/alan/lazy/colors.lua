-- return {
--     {
--         "ellisonleao/gruvbox.nvim",
--         name = "gruvbox",
--         config = function()
--             require("gruvbox").setup({
--                 terminal_colors = true, -- add neovim terminal colors
--                 undercurl = true,
--                 underline = false,
--                 bold = true,
--                 italic = {
--                     strings = false,
--                     emphasis = false,
--                     comments = false,
--                     operators = false,
--                     folds = false,
--                 },
--                 strikethrough = true,
--                 invert_selection = false,
--                 invert_signs = false,
--                 invert_tabline = false,
--                 invert_intend_guides = false,
--                 inverse = true, -- invert background for search, diffs, statuslines and errors
--                 contrast = "",  -- can be "hard", "soft" or empty string
--                 palette_overrides = {},
--                 overrides = {},
--                 dim_inactive = false,
--                 transparent_mode = true,
--             })

--             vim.cmd.colorscheme("gruvbox")
--         end,
--     },
-- }

-- function ColorMyPencils(color)
--     color = color or "rose-pine-moon"
--     vim.cmd.colorscheme(color)
--
--     vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
--     vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
-- end
--
-- return {
--     {
--         "rose-pine/neovim",
--         name = "rose-pine",
--         config = function()
--             ColorMyPencils("rose-pine");
--             require('rose-pine').setup({
--                 disable_background = false,
--                 styles = {
--                     italic = false,
--                 },
--             })
--         end
--     },
-- }

-- return {
--     {
--         "shaunsingh/nord.nvim",
--         lazy = false,
--         priority = 1000,
--         config = function()
--             -- Optional: Configure the Nord theme if needed
--             -- require('nord').set()
--
--             -- Set the colorscheme
--             vim.cmd.colorscheme("nord")
--             vim.g.nord_disable_background = false
--
--             -- Apply your custom function to make the background transparent
--             -- ColorMyPencils("nord")
--         end
--     }
-- }

-- return {
--   'projekt0n/github-nvim-theme',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require('github-theme').setup({
--       -- ...
--     })
--
--     vim.cmd('colorscheme github_dark_default')
--   end,
-- }


-- return {
--   'andreypopp/vim-colors-plain',
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.cmd('colorscheme plain-cterm')
--   end,
-- }

-- return {
--   'jesseleite/nvim-noirbuddy',
--   dependencies = {
--     { 'tjdevries/colorbuddy.nvim' }
--   },
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require('noirbuddy').setup {
--       preset = 'slate',
--     }
--     vim.cmd('colorscheme noirbuddy')
--   end,
--   opts = {
--     -- All of your `setup(opts)` will go here
--   },
-- }

--     return {
--         "maxmx03/fluoromachine.nvim",
--         config = function()
--             local fm = require("fluoromachine")
--
--             fm.setup({
--                 glow = false,
--                 -- brightness = 0.05,
--                 theme = "fluoromachine",
--                 -- theme = "retrowave",
--                 -- theme = "delta",
--                 transparent = "full",
--             })
--
--             vim.cmd.colorscheme("fluoromachine")
--         end,
--     },

-- return {
--     {
--         "maxmx03/fluoromachine.nvim",
--         config = function()
--             local fm = require("fluoromachine")
--
--             fm.setup({
--                 glow = false,
--                 -- brightness = 0.05,
--                 theme = "fluoromachine",
--                 -- theme = "retrowave",
--                 -- theme = "delta",
--                 transparent = "full",
--             })
--
--             vim.cmd.colorscheme("fluoromachine")
--         end,
--     },

return {
    "aliqyan-21/darkvoid.nvim",
    priority = 1000,
    config = function()
        require("darkvoid").setup({
            transparent = true,
            glow = false,
            colors = {
                line_nr = "#505050",
                -- comment = "#86A789",
                comment = "#a6a2a2",
                plugins = {
                    nvim_cmp = false,
                },
            },
        })
        vim.cmd.colorscheme("darkvoid")
    end,
}
