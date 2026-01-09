return {
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000, -- 确保最先加载
    opts = {
      -- 1. 开启透明模式：让 Gruvbox 不渲染背景色，直接透出 WezTerm 的背景
      transparent_mode = true,

      -- 2. 确保对比度设置符合你的喜好 (hard/soft/空字符串)
      contrast = "",

      -- 3. 自定义覆盖 (可选)：修复一些插件在透明模式下可能看不清的问题
      overrides = {
        -- 例如：让行号栏也完全透明
        SignColumn = { bg = "NONE" },
        -- 让缩进线更清晰一点
        IndentBlanklineChar = { fg = "#504945" },
      },
    },
    config = function(_, opts)
      -- 加载配置
      require("gruvbox").setup(opts)
      -- 激活主题
      vim.cmd("colorscheme gruvbox")
    end,
  },

  -- 4. (重要) 告诉 LazyVim 我们想用 gruvbox
  -- 如果你不加这一段，LazyVim 可能会默认尝试加载 Tokyo Night
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "gruvbox",
    },
  },
}
