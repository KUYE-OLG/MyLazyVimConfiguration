-- return {
--   "zbirenbaum/copilot.lua",
--   cmd = "Copilot",
--   event = "InsertEnter",
--   config = function()
--     require("copilot").setup({
--       suggestion = {
--         enabled = true,
--         auto_trigger = true,
--         keymap = {
--           accept = "<M-\\>", -- Alt+\ 接受建议
--           accept_word = false,
--           accept_line = false,
--           next = "<M-]>", -- Alt+] 下一个建议
--           prev = "<M-[>", -- Alt+[ 上一个建议
--           dismiss = "<C-]>", -- Ctrl+] 关闭建议
--         },
--       },
--     })
--   end,
-- }
-- return {
--   "zbirenbaum/copilot.lua",
--   cmd = "Copilot",
--   build = ":Copilot auth",
--   event = "VeryLazy",
--   opts = {
--     panel = { enabled = false },
--     suggestion = {
--       enabled = false, -- 禁用自动补全
--       auto_trigger = false,
--     },
--     filetypes = {
--       ["*"] = false, -- 所有文件类型都不启用补全
--     },
--   },
-- }
return {
  "zbirenbaum/copilot.lua",
  cmd = "Copilot",
  event = "InsertEnter",
  config = function()
    require("copilot").setup({
      panel = { enabled = false },
      suggestion = {
        enabled = false,
        auto_trigger = false,
      },
      filetypes = {
        ["*"] = false,
      },
    })
  end,
}
