return {
  "MunifTanjim/nui.nvim",
  lazy = false,
  config = function()
    local Popup = require("nui.popup")

    -- Function to open a floating window
    local function open_window()
      local popup = Popup({
        enter = true,
        focusable = true,
        border = {
          style = "rounded",
        },
        position = "50%",
        size = {
          width = 40,
          height = 10,
        },
      })
      popup:mount()
    end

    -- Keymap to open the window with <leader>ow
    vim.keymap.set("n", "<leader>ow", open_window, { desc = "Open floating window" })
  end,
}

