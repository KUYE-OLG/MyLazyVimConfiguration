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
  { "stevearc/oil.nvim", enabled = false },
  { "akinsho/bufferline.nvim", enabled = false },
  { "nvim-lualine/lualine.nvim", enabled = false },

  -- !! 修改点 1: 更新为新的插件名称 !!
  { "nvim-mini/mini.indentscope", enabled = false },

  -- !! 修改点 2: 移除对 snacks.nvim 的禁用 !!
  -- { "folke/snacks.nvim", enabled = false },
  -- 上面这行被注释或删除，因为 LazyVim 的核心功能依赖它。
}
