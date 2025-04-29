local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('mason').setup({})
require('mason-lspconfig').setup({
  ensure_installed = {
    'lua_ls', 'emmet_language_server', 'clangd', 'bashls', 'cssls', 'html',
    'vtsls', 'jsonls', 'marksman', 'pyright', 'pylsp', 'sqlls', 'lemminx',
    'vimls', 'grammarly',
  },
  handlers = {
    function(server_name)
      require('lspconfig')[server_name].setup({ capabilities = capabilities })
    end,
  },
})
