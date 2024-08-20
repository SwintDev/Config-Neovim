return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
      local config = require("nvim-treesitter.configs")
      config.setup({
        ensure_installed = {
            "c",
            "lua",
            "vim",
            "vimdoc",
            "query",
            "elixir",
            "heex",
            "javascript",
            "html",
            "json",
            "javascript",
            "typescript",
            "tsx",
            "yaml",
            "css",
            "markdown",
            "markdown_inline",
            "graphql",
            "c_sharp",
            "csv",
            "dockerfile",
            "dot",
            "gitignore",
            "go",
            "python",
            "sql",
          },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
      })
    end
  }
}
