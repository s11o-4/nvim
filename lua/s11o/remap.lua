--Extract the local file name
local current_buf = vim.api.nvim_get_current_buf()
local buf_name = vim.api.nvim_buf_get_name(current_buf)
local file_name = vim.fn.fnamemodify(buf_name, ":t")

--General Keymaps
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>e", vim.cmd.wq)
vim.keymap.set("v", "<leader>c", ':%+y <CR>') 

--Terminal Keymaps 
vim.keymap.set("n", "<leader>t", "<cmd>ToggleTerm size=65 direction=vertical<CR>")
vim.keymap.set("n", "<leader>c", ":TermExec cmd='c " .. file_name .. "'")
