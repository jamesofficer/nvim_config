return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local telescope = require("telescope")
		local builtin = require("telescope.builtin")
		local actions = require("telescope.actions")

		vim.keymap.set("n", "<leader>r", builtin.resume, { desc = "[R]esume last search" })

		vim.keymap.set("n", "<leader>sf", function ()
          require("telescope").extensions.smart_open.smart_open({
            cwd_only = true,
            filename_first = false,
          })
        end, { desc = "[S]earch [F]iles" })

		vim.keymap.set("n", "<leader>sh", function()
            builtin.find_files({
                hidden = true,
                no_ignore = true,
                file_ignore_patterns = { "node_modules", ".git", ".DS_Store", ".cache" }
            })
        end, { desc = "[S]earch [H]idden Files" })
		vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "[S]earch by [G]rep" })
		vim.keymap.set("n", "<leader>sp", builtin.help_tags, { desc = "[S]earch Hel[p]" })
		vim.keymap.set("n", "<leader>sr", builtin.oldfiles, { desc = "[S]earch [R]ecent" })
		vim.keymap.set("n", "<leader>sw", builtin.grep_string, { desc = "[S]earch current [W]ord" })
		vim.keymap.set("n", "<leader>sd", builtin.diagnostics, { desc = "[S]earch [D]iagnostics" })
		vim.keymap.set("n", "<leader>dl", builtin.diagnostics, { desc = "[D]iagnostics [L]ist" })
		vim.keymap.set("n", "<leader><space>", builtin.buffers, { desc = "Open Buffers" })

		vim.keymap.set("n", "<leader>ss", builtin.lsp_document_symbols, { desc = "Document [S]ymbols" })
		vim.keymap.set("n", "<leader>sS", builtin.lsp_workspace_symbols, { desc = "Workspace [S]ymbols" })
		vim.keymap.set(
			"n",
			"<leader>sD",
			builtin.lsp_dynamic_workspace_symbols,
			{ desc = "Dynamic Workspace [S]ymbols" }
		)

		telescope.load_extension("lsp_handlers")

		telescope.setup({
			pickers = {
				buffers = {
					sort_mru = true,
					ignore_current_buffer = true,
				},
			},
			defaults = {
				shorten_path = true,
				path_display = { "smart" },
				mappings = {
					n = {
						["<c-d>"] = actions.delete_buffer,
					},
					i = {
						["<c-d>"] = actions.delete_buffer,
					},
				},
			},
		})
	end,
}
