return {
  {
    "saghen/blink.cmp",
    opts = {
      keymap = {
        preset = "none", -- 禁用默认按键预设，完全自定义
        -- 或者保留预设并覆盖特定按键：
        -- preset = "default",

        ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
        ["<C-e>"] = { "hide" },
        ["<C-y>"] = { "select_and_accept" },

        -- 1. 让 Enter 仅作为回退 (换行)，不接受补全
        ["<CR>"] = { "fallback" },

        -- 2. 让 Tab 接受补全 (如果菜单可见)
        ["<Tab>"] = {
          function(cmp)
            if cmp.is_visible() then
              return cmp.accept()
            end
          end,
          "snippet_forward",
          "fallback",
        },

        -- 导航键 (上下移动)
        ["<Up>"] = { "select_prev", "fallback" },
        ["<Down>"] = { "select_next", "fallback" },
        ["<C-p>"] = { "select_prev", "fallback" },
        ["<C-n>"] = { "select_next", "fallback" },
      },
    },
  },
}
