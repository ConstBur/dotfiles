return {
  {
    "mrcjkb/rustaceanvim",
    version = "^6", -- Recommended
    lazy = false, -- Plugin is already lazy
    init = function()
      vim.g.rustaceanvim = {
        tools = {
          inlay_hints = { auto = true },
        },
        server = {
          default_settings = {
            ["rust-analyzer"] = {
              cargo = {
                targetDir = true,
              },
              check = { command = "clippy" },
              inlayHints = {
                lifetimeElisionHints = {
                  enable = true,
                  useParameterNames = true,
                },
              },
            },
          },
        },
      }
    end,
  },
}
