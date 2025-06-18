-- lua/plugins/extend-bufferline.lua
-- 注意：只有在你启用了 bufferline.nvim 插件时才需要这个
return {
  "akinsho/bufferline.nvim",
  keys = {
    -- 使用 vim.cmd 执行 :bnext/:bprev 并传递计数
    {
      "L",
      function()
        vim.cmd("bnext " .. vim.v.count1)
      end,
      desc = "下一个缓冲区",
    },
    {
      "H",
      function()
        vim.cmd("bprev " .. vim.v.count1)
      end,
      desc = "上一个缓冲区",
    },
    -- 也覆盖 [b 和 ]b，使其行为一致并支持计数
    {
      "]b",
      function()
        vim.cmd("bnext " .. vim.v.count1)
      end,
      desc = "下一个缓冲区",
    },
    {
      "[b",
      function()
        vim.cmd("bprev " .. vim.v.count1)
      end,
      desc = "上一个缓冲区",
    },
  },
}
