return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	opts = {
		-- your configuration comes here
		-- or leave it empty to use the default settings
		-- refer to the configuration section below
	},
	config = function()
		vim.keymap.set("n", "<leader>dt", function()
			require("trouble").toggle()
		end, { desc = "Toggle Trouble" })

		vim.keymap.set("n", "<leader>dw", function()
			require("trouble").toggle("workspace_diagnostics")
		end, { desc = "Toggle Workspace Diagnostics" })

		vim.keymap.set("n", "<leader>dd", function()
			require("trouble").toggle("document_diagnostics")
		end, { desc = "Toggle Document Diagnostics" })

		vim.keymap.set("n", "<leader>dq", function()
			require("trouble").toggle("quickfix")
		end, { desc = "Toggle Quickfix" })

		vim.keymap.set("n", "<leader>do", function()
			require("trouble").toggle("loclist")
		end, { desc = "Toggle Loclist" })

		vim.keymap.set("n", "gR", function()
			require("trouble").toggle("lsp_references")
		end, { desc = "Toggle LSP References" })
	end,
}
