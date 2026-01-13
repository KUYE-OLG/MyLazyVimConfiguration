return {
  "nvim-lualine/lualine.nvim",
  opts = function(_, opts)
    local auto_theme_custom = require("lualine.themes.auto")
    auto_theme_custom.normal.c.bg = "none"
    opts.options = opts.options or {}
    opts.options.theme = auto_theme_custom
    return opts
  end,
}
