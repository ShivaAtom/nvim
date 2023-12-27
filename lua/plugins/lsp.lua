return {
  'neovim/nvim-lspconfig',
  dependencies = {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
    "folke/neodev.nvim",
  },
  config = function ()
    require("neodev").setup()
    require("lspconfig").lua_ls.setup({
      settings={
        Lua = {
          telemetry = { enable = false },
          workspace = { checkThirdParty = false }
        }
      }
    })
    require("lspconfig").clangd.setup({})
    require("lspconfig").pyright.setup({})
    require("lspconfig").asm_lsp.setup({})
    require('lspconfig').emmet_language_server.setup({})
    require'lspconfig'.html.setup{}
    require'lspconfig'.bashls.setup{}
    require'lspconfig'.tsserver.setup{} 
    require'lspconfig'.tailwindcss.setup{}
    require'lspconfig'.spectral.setup{}
    require'lspconfig'.intelephense.setup{}
    require'lspconfig'.csharp_ls.setup{}
  end
}