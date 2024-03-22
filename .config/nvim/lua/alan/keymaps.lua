-- set leader key to space
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- use jk to exit insert mode
vim.keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

-- File tree
vim.keymap.set("n", "<leader>pp", ":Ex<CR>", { desc = "Open file tree" })

-- For keeping the cursor center
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

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


-- Line movement
vim.keymap.set("n", "<A-j>", [[:m .+1<CR>==]], { noremap = true, silent = true })
vim.keymap.set("n", "<A-k>", [[:m .-2<CR>==]], { noremap = true, silent = true })

-- select all and copy
vim.keymap.set("n", "<leader>yy", ":%y+<CR>", { noremap = true, silent = true })

-- Center the screen
vim.api.nvim_set_keymap('n', 'zz', 'zz<C-e>', { noremap = true })

--Format the buffer
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- Make it rain
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

vim.keymap.set(
  "n",
  "<leader>ee",
  "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set("n", "<leader><leader>", function()
  vim.cmd("so")
end)
