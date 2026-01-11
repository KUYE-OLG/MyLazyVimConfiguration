-- lua/plugins/lsp-ltex.lua
return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ltex = {
        settings = {
          ltex = {
            language = { "en-US", "zh-CN" },
            dictionary = {
              ["en-US"] = { "Neovim", "LazyVim", "Lua", "todos" }, -- 全局自定义词典
            },
            -- 针对特定语言的词典
            -- 例如，在 Lua 中，"req" 和 "res" 是常见缩写
            -- ["lua"] = { "req", "res" }
          },
        },
      },
    },
    setup = {
      ltex = function(_, opts)
        require("lspconfig").ltex.setup(vim.tbl_deep_extend("force", opts, {
          filetypes = {
            -- 文本文件
            "markdown",
            "text",
            "gitcommit",
            "tex",

            -- 👇 在这里添加你想要检查的编程语言
            "lua",
            "python",
            "c",
            "cpp",
            "go",
            "rust",
            "javascript",
            "typescript",
            "html",
            "css",
          },
        }))
        return true
      end,
    },
  },
}
