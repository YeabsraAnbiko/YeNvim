-- Indentation settings
vim.opt.showcmd = true
vim.opt.showmode = true
vim.opt.tabstop = 4          -- Number of spaces a tab counts for
vim.opt.softtabstop = 4      -- Number of spaces to insert when using the backspace key
vim.opt.shiftwidth = 4       -- Number of spaces for each level of indentation
vim.opt.expandtab = true     -- Convert tabs to spaces
vim.opt.autoindent = true    -- Copy indent from current line
vim.opt.smartindent = true   -- Enable smart indentation for better formatting

vim.opt.shortmess:append("I")
vim.opt.laststatus=3
vim.o.winbar="%=%m 📁%f"
vim.opt.statusline = " %f %m %= %l:%c ♥ "
-- Cursor appearance
--vim.opt.guicursor = ""       -- Reset cursor appearance

-- Line numbers
vim.opt.number = true        -- Enable line numbers
vim.opt.relativenumber = true -- Enable relative line numbers
vim.opt.cursorline = true    -- Highlight the current line
vim.opt.cursorcolumn = true  -- Highlight the current column

-- Wrapping settings
vim.opt.wrap = false         -- Disable line wrapping

-- File management settings
vim.opt.backup = false
vim.opt.swapfile = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"  -- Set the undo directory
vim.opt.undofile = true      -- Enable persistent undo files

-- Search settings
vim.opt.hlsearch = false     -- Disable search result highlighting
vim.opt.incsearch = true     -- Enable incremental search
vim.opt.ignorecase = true    -- Ignore case in search
vim.opt.smartcase = true     -- Override ignorecase if uppercase letters are used

-- Visual enhancements
vim.opt.termguicolors = true -- Enable 24-bit RGB colors
vim.opt.scrolloff = 8        -- Keep 8 lines visible above/below the cursor
vim.opt.sidescrolloff = 8    -- Keep 8 columns visible left/right
vim.opt.signcolumn = "yes"   -- Always show the sign column
vim.opt.colorcolumn = "80"   -- Show a vertical line at the 80th character

vim.opt.splitbelow = true    -- Open horizontal splits below
vim.opt.splitright = true    -- Open vertical splits to the right

-- Mouse support
vim.opt.mouse = "a"          -- Enable mouse support

-- Fold settings
--vim.opt.foldexpr = "nvim_treesitter#foldexpr()"   -- Use Treesitter for folds
--vim.opt.foldenable = true                         -- Enable folding
--vim.opt.foldlevel = 99                            -- Start with unfolded code

vim.opt.foldmethod = "manual"                       -- Use expressions for folding
vim.opt.foldcolumn="auto"


vim.api.nvim_create_autocmd("TextYankPost", {
desc = "Highlight when yanking (copying) text",
group = vim.api.nvim_create_augroup("kickstart-highlight-yank", {clear = true}),
callback = function()
    vim.highlight.on_yank()
end,
})

