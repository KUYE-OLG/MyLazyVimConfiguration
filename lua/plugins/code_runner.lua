return {
  "CRAG666/code_runner.nvim",
  config = function()
    require("code_runner").setup({
      -- 你可以在这里自定义不同语言的运行命令
      -- 如果不配置，默认会使用插件自带的命令（通常够用）
      -- filetype = {
      --   java = "cd $dir && javac $fileName && java $fileNameWithoutExt",
      --   python = "python3 -u",
      --   typescript = "deno run",
      --   rust = "cd $dir && rustc $fileName && $dir/$fileNameWithoutExt",
      --   c = "cd $dir && gcc $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
      --   cpp = "cd $dir && g++ $fileName -o $fileNameWithoutExt && $dir/$fileNameWithoutExt",
      -- },
      mode = "float",
      float = {
        border = "rounded",
        height = 0.8,
        width = 0.8,
      },
    })
  end,
  keys = {
    -- 设置快捷键 <leader>r 来运行代码
    { "<leader>r", "<cmd>RunCode<cr>", desc = "Run Code" },
  },
}
