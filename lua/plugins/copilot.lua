return {
  -- 1. 确保 copilot-cmp 被禁用（虽然上面的 global 变量应该已经生效，但加个双保险）
  { "zbirenbaum/copilot-cmp", enabled = false },

  -- 2. 配置 copilot.lua 开启 Ghost Text
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = {
        enabled = true, -- 开启 Ghost Text
        auto_trigger = true,
        keymap = {
          accept = "<M-\\>", -- 或者你喜欢的键位
          next = "<M-]>",
          prev = "<M-[>",
        },
      },
      panel = { enabled = false },
      filetypes = {
        markdown = true,
        help = true,
      },
    },
  },
}
