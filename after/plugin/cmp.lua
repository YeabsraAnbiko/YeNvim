local cmp = require('cmp')
cmp.setup({
  sources = { { name = 'nvim_lsp' } },
  --[[
  snippet = {
    expand = function(args)
      local luasnip = require('luasnip')
      if luasnip then luasnip.lsp_expand(args.body) end
    end,
  },
  ]]

  mapping = cmp.mapping.preset.insert({
    ['<C-Space>'] = cmp.mapping.complete(),
    ['<CR>'] = cmp.mapping.confirm({ select = true }),
    ['<Tab>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
    ['<S-Tab>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
  }),
  completion = { completeopt = 'menu,menuone,noselect' },
})
