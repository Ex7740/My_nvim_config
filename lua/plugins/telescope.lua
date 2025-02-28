return {
  "nvim-telescope/telescope.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("telescope").setup({
      defaults = {
        mappings = {
          i = { ["<C-q>"] = require("telescope.actions").send_to_qflist },
        },
      },
    })
  end,
}
