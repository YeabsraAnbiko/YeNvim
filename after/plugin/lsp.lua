vim.opt.signcolumn = 'yes'

vim.api.nvim_create_autocmd('LspAttach', {
  desc = 'LSP keybindings',
  callback = function(event)
    local opts = { buffer = event.buf }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "<C-k>", vim.lsp.buf.signature_help, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
    vim.keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts)
  end,
})

vim.diagnostic.config({
    virtual_text = true,  -- Show errors inline
    signs = true,         -- Show signs in the gutter
    underline = true,     -- Underline errors in the code
    update_in_insert = true, -- Update diagnostics while typing
})

