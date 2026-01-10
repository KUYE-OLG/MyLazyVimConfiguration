return {
  "yetone/avante.nvim",
  event = "VeryLazy",
  lazy = false,
  version = false,
  opts = {
    provider = "copilot",
    auto_suggestions_provider = "copilot",
    behaviour = {
      auto_suggestions = false,
      auto_set_highlight_group = true,
      auto_set_keymaps = true,
      auto_apply_diff_after_generation = false,
      support_paste_from_clipboard = true,
    },
  },
  dependencies = {
    "stevearc/dressing.nvim",
    "nvim-lua/plenary.nvim",
    "MunifTanjim/nui.nvim",
    -- 修正部分开始 --
    {
      "zbirenbaum/copilot.lua",
      cmd = "Copilot", -- 优化启动：只有用命令时或被 Avante 调用时才加载
      event = "InsertEnter", -- 优化启动：进入插入模式时加载
      config = function()
        -- 关键点：必须调用 setup 才能让 Copilot 工作
        require("copilot").setup({
          suggestion = { enabled = false }, -- Avante 不需要官方的提示浮窗，避免冲突
          panel = { enabled = false },
        })
      end,
    },
    -- 修正部分结束 --
  },
}
--
-- return {
--   "yetone/avante.nvim",
--   event = "VeryLazy",
--   lazy = false,
--   version = false, -- 始终使用最新版
--
--   -- !!! 关键修复：构建命令 !!!
--   -- 如果你是 Windows 用户，使用下面这一行：
--   -- build = "powershell -ExecutionPolicy Bypass -File Build.ps1 -BuildFromSource false",
--   -- 如果你是 Linux/MacOS 用户，请注释掉上面一行，取消下面这一行的注释：
--   build = "make",
--
--   opts = {
--     -- 1. 设置提供商
--     provider = "copilot",
--     auto_suggestions_provider = "copilot",
--
--     -- 2. 行为设置
--     behaviour = {
--       auto_suggestions = true, -- 必须为 true
--       auto_set_highlight_group = true,
--       auto_set_keymaps = true,
--       auto_apply_diff_after_generation = false,
--       support_paste_from_clipboard = true,
--     },
--
--     -- 3. 按键映射
--     mappings = {
--       suggestion = {
--         accept = "<M-\\>", -- 这里就是 Alt + \ (注意必须用双斜杠转义)
--         next = "<M-]>",
--         prev = "<M-[>",
--         dismiss = "<C-]>",
--       },
--     },
--   },
--
--   dependencies = {
--     "stevearc/dressing.nvim",
--     "nvim-lua/plenary.nvim",
--     "MunifTanjim/nui.nvim",
--     {
--       "zbirenbaum/copilot.lua",
--       cmd = "Copilot",
--       event = "InsertEnter",
--       config = function()
--         require("copilot").setup({
--           suggestion = { enabled = false }, -- 禁用官方 UI，交给 Avante
--           panel = { enabled = false },
--         })
--       end,
--     },
--   },
-- }
