return {
	"shortcuts/no-neck-pain.nvim",
	version = "*",
	config = function()
		require("no-neck-pain").setup({
			width = 150,
		})

		vim.keymap.set("n", "<leader>zz", "<CMD>:NoNeckPain<CR>", { desc = "Toggle Centered Layout ([Z]en Mode)" })
		vim.keymap.set("n", "<leader>z1", "<CMD>:NoNeckPainResize 100<CR>", { desc = "Resize (Small)" })
		vim.keymap.set("n", "<leader>z2", "<CMD>:NoNeckPainResize 150<CR>", { desc = "Resize (Medium)" })
		vim.keymap.set("n", "<leader>z3", "<CMD>:NoNeckPainResize 200<CR>", { desc = "Resize (Large)" })
	end,
}
