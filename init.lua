require("config.mappings")
require("config.lazy")

-- START nvim-tree block
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- optionally enable 24-bit colour
vim.opt.termguicolors = true
--END

-- use system clipboard
vim.api.nvim_set_option("clipboard", "unnamedplus")


-- Soft-wrap long lines at word boundaries
vim.opt.wrap = true
vim.opt.linebreak = true   -- break at words, not mid-word
vim.opt.breakindent = true -- wrapped lines keep the indentation of the original line

-- Make j/k/down/up move by visual (screen) lines instead of file lines
vim.keymap.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- skip multiple lines at once
vim.keymap.set({ "n", "x" }, "<C-Down>", "5gj", { desc = "Scroll down 5 lines" })
vim.keymap.set({ "n", "x" }, "<C-Up>", "5gk", { desc = "Scroll up 5 lines" })
