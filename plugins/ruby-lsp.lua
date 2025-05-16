return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      -- ruby_lsp = {
      --   enabled = true,
      -- },
      solargraph = {
        enabled = true,
      },
      rubocop = {
        -- If Solargraph and Rubocop are both enabled as an LSP,
        -- diagnostics will be duplicated because Solargraph
        -- already calls Rubocop if it is installed
        enabled = false,
      },
      standardrb = {
        enabled = true,
      },
    },
  },
}
--
-- return {
--   {
--     "neovim/nvim-lspconfig",
--     opts = {
--       servers = {
--         marksman = {},
--         ruby_lsp = {
--           mason = false,
--           cmd = { vim.fn.expand("~/.asdf/shims/ruby-lsp") },
--         },
--       },
--     },
--   },
-- }
