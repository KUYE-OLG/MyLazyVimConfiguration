return {
  "mfussenegger/nvim-dap",
  opts = function()
    local success, dap = pcall(require, "dap")
    if not success then
      vim.notify("Failed to load nvim-dap. Please install it first.", vim.log.levels.ERROR)
      return
    end

    -- 配置 C/C++ 调试适配器
    if not dap.adapters.cppdbg then
      dap.adapters.cppdbg = {
        id = "cppdbg",
        type = "executable",
        command = vim.fn.stdpath("data") .. "/mason/bin/OpenDebugAD7", -- 或者你的cppdbg路径
      }
    end

    -- 配置 C 语言的调试配置
    if not dap.configurations.c then
      dap.configurations.c = {}
    end

    table.insert(dap.configurations.c, {
      name = "Launch file",
      type = "cppdbg",
      request = "launch",
      program = function()
        -- 编译并运行当前文件，-g 参数是为了生成调试信息
        -- 确保路径已正确转义且检查 clang 的运行状态
        local build_dir = vim.fn.getcwd() .. "/build"
        if vim.fn.isdirectory(build_dir) == 0 then
          vim.fn.mkdir(build_dir, "p")
        end
        local output_file = build_dir .. "/" .. vim.fn.expand("%:r:t")
        local compile_command = string.format("clang -g '%s' -o '%s'", vim.fn.expand("%"), output_file)
        local result = vim.fn.system(compile_command)
        local compile_success = vim.v.shell_error == 0
        if not compile_success then
          vim.notify("Compilation failed: " .. result, vim.log.levels.ERROR)
          return nil
        end
        return output_file
      end,
      cwd = function()
        return vim.fn.input("Enter working directory: ", vim.fn.getcwd(), "file")
      end,
      stopAtEntry = true,
      console = "integratedTerminal",
    })

    -- 配置 C++ 语言的调试配置（复用同样的配置）
    dap.configurations.cpp = dap.configurations.c
  end,
}
