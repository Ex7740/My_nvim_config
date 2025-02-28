return {
  "hrsh7th/nvim-cmp",
    dependencies = {
    "hrsh7th/cmp-nvim-lsp",  -- LSP source
    "hrsh7th/cmp-buffer",    -- Buffer source
    "hrsh7th/cmp-path",      -- Path source
    "hrsh7th/cmp-cmdline",   -- Command-line source
    "hrsh7th/cmp-vsnip",     -- Snippet source
    "hrsh7th/vim-vsnip",     -- Snippet engine
  },
  config = function()
    local cmp = require("cmp")

    cmp.setup({
      snippet = {
        expand = function(args)
          vim.fn["vsnip#anonymous"](args.body)  -- Snippet expansion function
        end,
      },
      mapping = {
        ["<C-Tab>"] = cmp.mapping.select_prev_item(),                  -- Previous item
        ["<Tab>"] = cmp.mapping.select_next_item(),                  -- Next item
        ["<C-d>"] = cmp.mapping.scroll_docs(-4),                     -- Scroll docs up
        ["<C-f>"] = cmp.mapping.scroll_docs(4),                      -- Scroll docs down
        ["<C-Space>"] = cmp.mapping.complete(),                      -- Trigger completion
        ["<C-e>"] = cmp.mapping.abort(),                             -- Abort completion
        ["<CR>"] = cmp.mapping.confirm({                             -- Confirm selection
          behavior = cmp.ConfirmBehavior.Replace,
          select = false,                                            -- Don't auto-select
        }),
      },
      sources = cmp.config.sources({
        { name = "nvim_lsp" },                                       -- LSP source
        { name = "vsnip" },                                          -- Snippet source
        { name = "path" },                                           -- File path source
      }, {
        { name = "buffer" },                                         -- Buffer source
      }),
    })

    -- Setup for `/` search command-line mode
    cmp.setup.cmdline("/", {
      mapping = cmp.mapping.preset.cmdline(),                       -- Enable cmdline-specific mappings
      sources = {
        { name = "buffer" },                                        -- Search from buffer
      },
    })

    -- Setup for `:` command-line mode
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),                       -- Enable cmdline-specific mappings
      sources = cmp.config.sources({
        { name = "path" },                                          -- File path source
      }, {
        { name = "cmdline" },                                       -- Command-line suggestions
      }),
    })
  end,
}
