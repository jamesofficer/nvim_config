return {
	"kdheepak/lazygit.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		vim.keymap.set("n", "<leader>gg", "<CMD>:LazyGit<CR>", { desc = "Toggle Lazygit" })
	end,
}
