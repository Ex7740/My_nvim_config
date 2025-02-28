return{
  "akinsho/toggleterm.nvim",
  version = "*",
  config = function()
    require("toggleterm").setup {
      -- Optional configurations
      size = 30, -- Size of the terminal window
      --open_mapping = [[<C-\>]], -- Keybinding to toggle the terminal
      shade_terminals = true, -- Shades terminal windows
      direction = "horizontal", -- Can be "horizontal", "vertical", or "float"
      float_opts = {
        border = "curved", -- Border style: single, double, shadow, etc.
      },
    }
  end,
}

