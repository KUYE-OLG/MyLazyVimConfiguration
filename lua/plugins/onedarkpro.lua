return {
  -- 添加 onedarkpro 主题插件
  {
    "olimorris/onedarkpro.nvim",
    priority = 1000, -- 确保它优先加载
    opts = {
      options = {
        transparency = true,
      },
      integrations = {
        lualine = {
          transparent = true,
        },
      },
    },
  },

  -- 配置 LazyVim 使用 onedark 主题
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "onedark",
    },
  },
}
