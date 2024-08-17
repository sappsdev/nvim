return {
  {
    "nvim-cmp",
    dependencies = {
      "supermaven-inc/supermaven-nvim",
      opts = {},
    },
    opts = function(_, opts)
      local cmp = require("cmp")
      table.insert(opts.sources, 1, {
        name = "supermaven",
        group_index = 1,
        priority = 100,
      })
      opts.mapping = vim.tbl_deep_extend("force", opts.mapping, {
        ["<CR>"] = cmp.config.disable,
        ["<tab>"] = LazyVim.cmp.confirm({ select = true }),
      })
    end,
  },
}
