return {
    "nvim-telescope/telescope.nvim",

    tag = "0.1.5",

    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-telescope/telescope-live-grep-args.nvim',
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        'nvim-telescope/telescope-ui-select.nvim',
    },

    config = function()
        local telescope = require('telescope')

        telescope.setup({})

        local builtin = require('telescope.builtin')
        vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
        vim.keymap.set('n', '<leader>gc', builtin.git_commits, {})
        vim.keymap.set('n', '<leader>gs', builtin.git_status, {})
        vim.keymap.set('n', '<C-p>', builtin.lsp_document_symbols, {})
        -- vim.keymap.set('n', '<leader>fw', function()
        --     local word = vim.fn.expand("<cword>")
        --     builtin.grep_string({ search = word })
        -- end)
        -- vim.keymap.set('n', '<leader>fs', function()
        --     local word = vim.fn.expand("<cWORD>")
        --     builtin.grep_string({ search = word })
        -- end)
        vim.keymap.set('n', '<leader>hh', builtin.help_tags, {})
        vim.keymap.set('n', '<Leader>/', function()
            require('telescope').extensions.live_grep_args.live_grep_args()
        end, { desc = 'Telescope Live Grep Args' })
        vim.keymap.set('x', '<Leader>/', function()
            require('telescope-live-grep-args.shortcuts').grep_visual_selection()
        end, { desc = 'Telescope Live Grep Selection' })
    end

}
