return {
  "williamboman/mason.nvim",
   dependencies = {
    'williamboman/mason-lspconfig.nvim'
  },
  config = function ()
    require("mason").setup()
    require("mason-lspconfig").setup {
      ensure_installed = { "lua_ls", "rust_analyzer", "clangd", "pyright","asm_lsp","emmet_language_server","html","bashls","tsserver","intelephense","csharp_ls","spectral","tailwindcss"},
    }
  end
}