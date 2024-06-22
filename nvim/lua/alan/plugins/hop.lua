return {
  'phaazon/hop.nvim',
  config = function()
    require("hop").setup({
      case_insensitive = true,
      char2_fallback_key = "<CR>",
      quit_key = "<Esc>",
    })
    vim.keymap.set({ "n", "v", "o" }, "f", "", {
      silent = true,
      noremap = true,
      callback = function()
        require("hop").hint_char2()
      end,
      desc = "nvim-hop char2",
    })
    vim.api.nvim_create_autocmd("ColorScheme", {
      pattern = "*",
      callback = function()
        vim.cmd([[
      hi HopNextKey cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff
      hi HopNextKey1 cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff
      hi HopNextKey2 cterm=bold ctermfg=176 gui=bold guibg=#ff00ff guifg=#ffffff
    ]])
      end
    })
  end
}
