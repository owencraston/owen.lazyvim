return {
  -- Extend nvim-cmp with supermaven source
  {
    "hrsh7th/nvim-cmp",
    opts = function(_, opts)
      local cmp = require("cmp")
      -- Add supermaven as a source for nvim-cmp
      opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
        { name = "supermaven" },
      }))
    end,
  },
  -- Setup supermaven plugin
  {
    "supermaven-inc/supermaven-nvim",
    config = function()
      require("supermaven-nvim").setup({})
    end,
  },
}
