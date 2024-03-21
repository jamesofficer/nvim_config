return {
	"echasnovski/mini.files",
	version = false,
	config = function()
		require("mini.files").setup()
		vim.keymap.set("n", "<leader>e", "<CMD>:lua MiniFiles.open()<CR>", { desc = "Fil[e] Browser" })
	end,
}
