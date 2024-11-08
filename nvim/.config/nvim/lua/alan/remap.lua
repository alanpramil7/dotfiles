vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

vim.keymap.set("n", "<leader>pp", vim.cmd.Ex)

vim.keymap.set("n", "<leader>yy", "ggVGy")
vim.keymap.set("n", "<leader>D", "ggVGd")

-- remap for save and close
vim.keymap.set("n", "<leader>w", ":w<Cr>")
vim.keymap.set("n", "<leader>q", ":q<Cr>")

-- move selected line in visula mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- joining lines
vim.keymap.set("n", "J", "mzJ`z")

-- make sure cursor is in middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- search map
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- reatsrt ls
vim.keymap.set("n", "<leader>rl", "<cmd>LspRestart<cr>")

-- copy to system clipboard
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- delete selection without repacing yank register
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]])

-- make the current file executable
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

-- Redo remap
vim.api.nvim_set_keymap('n', 'U', '<C-r>', { noremap = true })

-- window management
vim.keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })     -- split window vertically
vim.keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })   -- split window horizontally
vim.keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })      -- make split windows equal width & height
vim.keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close current split window

-- Move between splits
vim.keymap.set('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
vim.keymap.set('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
vim.keymap.set('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
vim.keymap.set('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

--Format the buffer
vim.keymap.set("n", "<leader><leader>", vim.lsp.buf.format)

-- vim.keymap.set("n", "<leader><leader>", function()
--     vim.cmd("so")
-- end)
