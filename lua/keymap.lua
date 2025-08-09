-- leader key
vim.g.mapleader = " "

-- error display
vim.diagnostic.config({
	virtual_text = true,
})
-- use the system clipboard
vim.opt.clipboard = "unnamedplus"
-- show linenumber 
vim.opt.number = true
vim.opt.relativenumber = true

-- cancle highlight
vim.keymap.set("n", "<Esc>", function()
  vim.cmd("nohlsearch")
  return "<Esc>"
end, { expr = true, silent = true, desc = "Escape and clear search highlight" })

-- font (neovide specified)
vim.opt.guifont = { "Google Sans Code", ":h14"}

-- quick back to n
vim.keymap.set('i', "jk", "<Esc>")
-- file tree
vim.keymap.set('n', '<leader>pv', ":Ex<CR>")


-- tabs
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.keymap.set('n', '<leader>x', ":bd<CR>")

vim.api.nvim_set_keymap('n', '<Tab>', 'gt', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<S-Tab>', 'gT', { noremap = true, silent = true })


--  window switcher
vim.keymap.set('n', '<C-h>', '<C-w>h', { noremap = true, silent = true })
vim.keymap.set('n', '<C-j>', '<C-w>j', { noremap = true, silent = true })
vim.keymap.set('n', '<C-k>', '<C-w>k', { noremap = true, silent = true })
vim.keymap.set('n', '<C-l>', '<C-w>l', { noremap = true, silent = true })
vim.keymap.set('t', '<C-h>', [[<C-\><C-n><C-w>h]], { noremap = true, silent = true })
vim.keymap.set('t', '<C-j>', [[<C-\><C-n><C-w>j]], { noremap = true, silent = true })
vim.keymap.set('t', '<C-k>', [[<C-\><C-n><C-w>k]], { noremap = true, silent = true })
vim.keymap.set('t', '<C-l>', [[<C-\><C-n><C-w>l]], { noremap = true, silent = true })



-- telescope
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fr', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

-- neo-tree
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>", { desc = "Toggle Neo-tree" })

-- bufferline
vim.opt.termguicolors = true
require("bufferline").setup{}

-- terminal

vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm<CR>", { noremap = true, silent = true })

