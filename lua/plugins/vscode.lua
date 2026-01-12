-- lua/plugins/vscode.lua
print("--- MY VSCODE PLUGIN FILE WAS LOADED ---")
-- 仅在 VSCode 环境下加载此文件
if not vim.g.vscode then
  return {}
end

return {
  -- 1. 覆盖 LazyVim 的默认设置
  {
    "LazyVim/LazyVim",
    opts = {
      -- 彻底移除 <leader>e 快捷键，无论它指向什么
      keys = {
        { "<leader>e", false },
      },
      -- 让 VSCode 控制主题
      colorscheme = nil,
    },
  },

  -- 2. 显式禁用所有已知与 VSCode 冲突的 UI 和文件浏览器插件
  { "folke/noice.nvim", enabled = false },
  { "rcarriga/nvim-notify", enabled = false },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },

  -- !! 新增的、最关键的一行 !!
  -- 彻底禁用备用文件浏览器 oil.nvim
  { "stevearc/oil.nvim", enabled = false },

  { "akinsho/bufferline.nvim", enabled = false },
  { "nvim-lualine/lualine.nvim", enabled = false },
  { "echasnovski/mini.indentscope", enabled = false },
  { "folke/snacks.nvim", enabled = false },
}
