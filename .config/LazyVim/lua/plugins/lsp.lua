return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        lua_ls = {}, -- 示例：启用 Lua LSP
        clangd = {
          cmd = {
            "clangd",
            "--background-index",
          },
          filetypes = { "c", "cpp", "objc", "objcpp" },
          init_options = {
            fallbackFlags = { "-std=c17" },
          },
        },
      },
    },
  },
}
