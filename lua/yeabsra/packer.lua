vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'

    -- Color scheme and status line
    use({ 'rose-pine/neovim', as = 'rose-pine' })
    use { 'nvim-lualine/lualine.nvim', requires = { 'nvim-tree/nvim-web-devicons', opt = true } }

    -- Fuzzy finding
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.8', requires = { {'nvim-lua/plenary.nvim'} } }

    -- Git and undo history
    use('tpope/vim-fugitive')
    use('airblade/vim-gitgutter')
    use('mbbill/undotree')


    -- LSP, Treesitter and Parser manager
    use({ 'neovim/nvim-lspconfig' })
    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" }

    -- Autocomplete and auto pairing
    use({ 'hrsh7th/nvim-cmp' })
    use({ 'hrsh7th/cmp-nvim-lsp' })
    use { "windwp/nvim-ts-autotag", config = function() require("nvim-ts-autotag").setup() end }
    use { "echasnovski/mini.pairs" }

end)


