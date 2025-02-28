-- Ensure lazy.nvim is installed
local lazypath = vim.fn.stdpath("data") .. "\\lazy\\lazy.nvim"
if vim.fn.isdirectory(lazypath) == 0 then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable",
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Plugin Setup
require("lazy").setup({
  require("plugins.telescope"),
  require("plugins.theme"),
  require("plugins.treesitter"),
  require("plugins.lsp"),
  require("plugins.cmp"),
  require("plugins.nvim-tree"),
  require("plugins.lualine"),
  require("plugins.toggleterm"),
  require("plugins.lazygit"),
})

