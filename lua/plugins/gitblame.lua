return {
	"f-person/git-blame.nvim",
	config = function()
		vim.keymap.set("n", "<leader>gb", "<CMD>:GitBlameToggle<CR>", { desc = "Git [B]lame" })
	end,
}
