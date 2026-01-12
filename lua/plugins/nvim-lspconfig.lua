return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- 为 clangd 添加或修改配置
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
            "--clang-tidy",
            "--header-insertion=iwyu",
            "--completion-style=detailed", -- 关键参数：使用详细的补全样式
            "--function-arg-placeholders", -- 关键参数：为函数参数生成占位符
            "--fallback-style=llvm",
          },
        },
      },
    },
  },
}
