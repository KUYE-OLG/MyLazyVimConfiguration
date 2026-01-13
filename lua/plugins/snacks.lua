return {
  "folke/snacks.nvim",
  opts = {
    picker = {
      sources = {
        explorer = {
          layout = {
            layout = { preset = "sidebar", position = "left", preview = true, width = 20 },
          },
        },
      },
    },
    explorer = {
      enabled = true,
      replace_netrw = true,
      trash = true,
      auto_close = true,
      focus = "input",
    },
  },
}
