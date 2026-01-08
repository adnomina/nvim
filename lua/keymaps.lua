local keymap = vim.keymap
local s = { silent = true }
local ns = { noremap = true, silent = true }

vim.g.mapleader = " "

keymap.set("i", "jj", "<Esc>", { noremap = true })

-- Move up and down and center cursor
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-d>", "<C-d>zz")
-- Save the current file
keymap.set("n", "<Leader>w", "<cmd>w!<CR>", s)
-- Quit Neovim
keymap.set("n", "<Leader>q", "<cmd>q<CR>", s)
-- Format the current buffer using LSP
keymap.set("n", "<Leader>fb", ":lua vim.lsp.buf.format()<CR>", s)
-- Show diagnostic
keymap.set("n", "<Leader>d", ":lua vim.diagnostic.open_float()<CR>", s)
-- Go to definition
keymap.set("n", "grd", "<cmd>lua vim.lsp.buf.definition()<CR>", ns)
-- Update plugins with vim.pack
keymap.set("n", "<Leader>ps", '<cmd>lua vim.pack.update()<CR>')
keymap.set("n", "<Leader>e", "<cmd>Lexplore<CR>", ns)
