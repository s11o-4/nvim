-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'
	-- Telescope
	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.5',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}
	--Theme
	use { "catppuccin/nvim", as = "catppuccin" }	
	--Auto cmpl
	use { "neoclide/coc.nvim", branch = 'release' }
	-- Therminal
	use {"akinsho/toggleterm.nvim", tag = '*', config = function()
	require("toggleterm").setup()
	end}
end)
