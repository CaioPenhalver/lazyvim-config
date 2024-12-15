return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      pylsp = {
        cmd = { "pylsp" },
        filetypes = { "python" },
        root_dir = require("lspconfig").util.root_pattern(
          ".git",
          "setup.py",
          "setup.cfg",
          "pyproject.toml",
          "requirements.txt"
        ),
        settings = {
          pylsp = {
            plugins = {
              pycodestyle = { enabled = true, maxLineLength = 88 },
              pyflakes = { enabled = true },
              mccabe = { enabled = true },
              pylint = { enabled = false }, -- Disable pylint if you prefer pycodestyle
            },
          },
        },
      },
    },
  },
}
