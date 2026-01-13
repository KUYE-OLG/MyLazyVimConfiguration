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
      -- event = "InsertEnter", -- 优化启动：进入插入模式时加载
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
