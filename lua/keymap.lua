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

-- DAP (Debug Adapter Protocol) keymaps
vim.keymap.set('n', '<F5>', function() require('dap').continue() end, { desc = 'Debug: Start/Continue' })
vim.keymap.set('n', '<F10>', function() require('dap').step_over() end, { desc = 'Debug: Step Over' })
vim.keymap.set('n', '<F11>', function() require('dap').step_into() end, { desc = 'Debug: Step Into' })
vim.keymap.set('n', '<F12>', function() require('dap').step_out() end, { desc = 'Debug: Step Out' })
vim.keymap.set('n', '<leader>db', function() require('dap').toggle_breakpoint() end, { desc = 'Debug: Toggle Breakpoint' })
vim.keymap.set('n', '<leader>dB', function() require('dap').set_breakpoint(vim.fn.input('Breakpoint condition: ')) end, { desc = 'Debug: Set Conditional Breakpoint' })
vim.keymap.set('n', '<leader>dr', function() require('dap').repl.open() end, { desc = 'Debug: Open REPL' })
vim.keymap.set('n', '<leader>dl', function() require('dap').run_last() end, { desc = 'Debug: Run Last' })
vim.keymap.set('n', '<leader>dt', function() require('dapui').toggle() end, { desc = 'Debug: Toggle UI' })
vim.keymap.set('n', '<leader>dc', function() require('dap').clear_breakpoints() end, { desc = 'Debug: Clear All Breakpoints' })

-- outline
vim.keymap.set('n', '<leader>h', ":SymbolsOutline<CR>" )
