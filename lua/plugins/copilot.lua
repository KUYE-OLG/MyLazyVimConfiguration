return {
  "hrsh7th/nvim-cmp",
  dependencies = { "zbirenbaum/copilot-cmp" },
  opts = function(_, opts)
    local cmp = require("cmp")
    opts.sources = cmp.config.sources({
      { name = "nvim_lsp", priority = 1000 },
      { name = "luasnip", priority = 750 },
      { name = "buffer", priority = 500 },
      { name = "path", priority = 250 },
      { name = "copilot", priority = 100 }, -- 设置较低的优先级
    })
  end,
}
