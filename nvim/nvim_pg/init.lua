require "lua.config.options"
require "lua.config.lazy"

vim.api.nvim_create_autocmd("User", {
  pattern = "VeryLazy",
  callback = function()
    require "lua.config.autocmds"
    require "lua.config.keymaps"
  end,
})

