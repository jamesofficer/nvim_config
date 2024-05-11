return {
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000
	},
	{
		"sainnhe/gruvbox-material",
		priority = 1000,
        config = function()
            vim.cmd.colorscheme("gruvbox-material")
        end
	},
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
	},
	{ "sainnhe/sonokai" },
	{ 
        "sainnhe/everforest",
    },
	{ "EdenEast/nightfox.nvim" },
	{
		"olimorris/onedarkpro.nvim",
	},
	{
		"tiagovla/tokyodark.nvim",
	},
	{
		"folke/tokyonight.nvim",
		opts = {},
		-- config = function()
		-- 	vim.cmd.colorscheme("tokyonight-storm")
		-- end,
	},
}
