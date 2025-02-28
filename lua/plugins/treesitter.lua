return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter.configs").setup({
      ensure_installed = { "python", "rust", "html", "css", "javascript", "lua", "go", "c", "cpp" },
      highlight = { enable = true },
    })
  end,
}
