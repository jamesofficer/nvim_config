return {
	{
		"loctvl842/monokai-pro.nvim",
		config = function()
			require("monokai-pro").setup()
		end,
	},
	{
		"Mofiqul/dracula.nvim",
	},
	{
		"rebelot/kanagawa.nvim",
		-- config = function()
		-- 	vim.cmd.colorscheme("kanagawa-wave")
		-- end,
	},
	{
		"Shatur/neovim-ayu",
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
	},
	{ "sainnhe/sonokai" },
	{ "sainnhe/everforest" },
	{ "EdenEast/nightfox.nvim" },
	{
		"olimorris/onedarkpro.nvim",
		priority = 1000, -- Ensure it loads first
	},
	{
		"tiagovla/tokyodark.nvim",
	},
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
			vim.cmd.colorscheme("tokyonight-storm")
		end,
	},
}
