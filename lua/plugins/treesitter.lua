return {
  'nvim-treesitter/nvim-treesitter',
  build=":TSUpdate",
  event="VeryLazy",
  main = "nvim-treesitter.configs",
  opts={
    ensure_installed = {
      "bash",
      "c",
      "cpp",
      "html",
      "css",
      "scss",
      "javascript",
      "jsdoc",
      "json",
      "jsonc",
      "lua",
      "luadoc",
      "luap",
      "markdown",
      "markdown_inline",
      "python",
      "query",
      "toml",
      "tsx",
      "typescript",
      "vim",
      "vimdoc",
      "yaml",
      "nasm",
    },
    highlight = {
      enable=true,
    },
    indent={
      enable=true,
    },
     textobjects = {
      select = {
        enable = true,
        lookahead = true,
        keymaps = {
          ["af"] = "@function.outer",
          ["if"] = "@function.inner",
          ["ac"] = "@conditional.outer",
          ["ic"] = "@conditional.inner",
          ["al"] = "@loop.outer",
          ["il"] = "@loop.inner",
        }
      }
    },
  },
}