-- mappings, including plugins

local function map(m, k, v)
	vim.keymap.set(m, k, v, { noremap = true, silent = true })
end

-- set leader
map("", "<Space>", "<Nop>")
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- buffers
map("n", "<C-S-Tab>", ":bnext<CR>")
map("n", "<C-Tab>", ":bprevious<CR>")
map("n", "<leader>q", ":BufferClose<CR>")
map("n", "<leader>Q", ":BufferClose!<CR>")
map("n", "<leader>U", "::bufdo bd<CR>") --close all
map('n', '<leader>vs', ':vsplit<CR>:bnext<CR>') --ver split + open next buffer

-- buffer position nav + reorder
map('n', '<CS-h>', '<Cmd>BufferMovePrevious<CR>')
map('n', '<CS-l>', '<Cmd>BufferMoveNext<CR>')
map('n', '<C-1>', '<Cmd>BufferGoto 1<CR>')
map('n', '<C-2>', '<Cmd>BufferGoto 2<CR>')
map('n', '<C-3>', '<Cmd>BufferGoto 3<CR>')
map('n', '<C-4>', '<Cmd>BufferGoto 4<CR>')
map('n', '<C-5>', '<Cmd>BufferGoto 5<CR>')
map('n', '<C-6>', '<Cmd>BufferGoto 6<CR>')
map('n', '<C-7>', '<Cmd>BufferGoto 7<CR>')
map('n', '<C-8>', '<Cmd>BufferGoto 8<CR>')
map('n', '<C-9>', '<Cmd>BufferGoto 9<CR>')
map('n', '<C-0>', '<Cmd>BufferLast<CR>')
map('n', '<C-p>', '<Cmd>BufferPin<CR>')

-- windows - ctrl nav, fn resize
map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")
map("n", "<F5>", ":resize +2<CR>")
map("n", "<F6>", ":resize -2<CR>")
map("n", "<F7>", ":vertical resize +2<CR>")
map("n", "<F8>", ":vertical resize -2<CR>")

-- zk-nvim
map("n", "<leader>zi", ":ZkIndex<CR>") -- Indexes the notebook
map("n", "<leader>zn", ":ZkNew<CR>") -- Creates new note
map("n", "<leader>zr", ":ZkCd<CR>") -- Changes directory to the notebook root
map("n", "<leader>zp", ":ZkNotes<CR>") -- Opens a notes picker
map("n", "<leader>zb", ":ZkBacklinks<CR>") -- Opens a notes picker showing backlinks of the current buffer
map("n", "<leader>zl", ":ZkLinks<CR>") -- Opens a notes picker showing outbound links of the current buffer
map("n", "<leader>zm", ":ZkMatch<CR>") -- Opens a notes picker, filtering for notes matching a search term
map("n", "<leader>zt", ":ZkTags<CR>") -- Opens a notes picker for selected tags

-- fzf and grep
map("n", "<leader>f", ":lua require('fzf-lua').files()<CR>") --search cwd
map("n", "<leader>Fh", ":lua require('fzf-lua').files({ cwd = '~/' })<CR>") --search home
map("n", "<leader>Fc", ":lua require('fzf-lua').files({ cwd = '~/.config' })<CR>") --search .config
map("n", "<leader>Fl", ":lua require('fzf-lua').files({ cwd = '~/.local/src' })<CR>") --search .local/src
map("n", "<leader>Ff", ":lua require('fzf-lua').files({ cwd = '..' })<CR>") --search above
map("n", "<leader>Fr", ":lua require('fzf-lua').resume()<CR>") --last search
map("n", "<leader>g", ":lua require('fzf-lua').grep()<CR>") --grep
map("n", "<leader>G", ":lua require('fzf-lua').grep_cword()<CR>") --grep word under cursor

-- misc
map("n", "<leader>s", ":%s//g<Left><Left>") --replace all
map("n", "<leader>t", ":NvimTreeToggle<CR>") --open file explorer
map("n", "<leader>L", ":Lazy<CR>") --lazy.nvim
map('t', '<Esc>', '<C-\\><C-n><CMD>lua require("FTerm").close()<CR>') --preserves session
map("n", "<leader>w", ":w<CR>") --write but one less key
map("n", "<leader>d", ":w ") --duplicate to new name
map("n", "<leader>mv", ":!mv % ") --move a file to a new dir
map("n", "<leader>R", ":so %<CR>") --reload neovim config
map("n", "<leader>u", ':silent !xdg-open "<cWORD>" &<CR>') --open a url under cursor
map("v", "<leader>i", "=gv") --auto indent
map("n", "<leader>W", ":set wrap!<CR>") --toggle wrap


map("n", "<leader>nn", function() --toggle relative vs absolute line numbers
	if vim.wo.relativenumber then
		vim.wo.relativenumber = false
		vim.wo.number = true
	else
		vim.wo.relativenumber = true
	end
end)
