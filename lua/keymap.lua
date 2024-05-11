vim.g.mapleader = " "
vim.g.maplocalleader = " "
vim.keymap.set({ "n", "v" }, "<Space>", "<Nop>", { silent = true })

vim.keymap.set("n", "<C-s>", "<CMD>:w<CR>", { desc = "Save file" })

vim.keymap.set("n", "K", "6k", { desc = "Move up 6 lines" })
vim.keymap.set("n", "J", "6j", { desc = "Move down 6 lines" })
vim.keymap.set("n", "<S-Up>", "6k", { desc = "Move down 6 lines" })
vim.keymap.set("n", "<S-Down>", "6j", { desc = "Move up 6 lines" })

vim.keymap.set("n", "<leader>dm", vim.diagnostic.open_float, { desc = "Open floating [D]iagnostic [M]essage" })
vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, { desc = "Go to previous diagnostic message" })
vim.keymap.set("n", "]d", vim.diagnostic.goto_next, { desc = "Go to next diagnostic message" })

-- vim.keymap.set("n", "<leader>w", "<CMD>:w<CR>", { desc = "[W]rite File (Save)" })
vim.keymap.set("n", "<leader>x", "<CMD>bp<bar>sp<bar>bn<bar>bd<CR>", { desc = "Close Buffer" })
vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, { desc = "[R]ename" })
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "[C]ode [A]ction" })

-- -- No Arrow Keys
-- vim.keymap.set("n", "<Left>", ":echo 'Use h'<CR>")
-- vim.keymap.set("n", "<Right>", ":echo 'Use l'<CR>")
-- vim.keymap.set("n", "<Up>", ":echo 'Use k'<CR>")
-- vim.keymap.set("n", "<Down>", ":echo 'Use j'<CR>")
-- vim.keymap.set("i", "<Left>", "<c-o>:echo 'Use h'<CR>")
-- vim.keymap.set("i", "<Right>", "<c-o>:echo 'Use l'<CR>")
-- vim.keymap.set("i", "<Up>", "<c-o>:echo 'Use k'<CR>")
-- vim.keymap.set("i", "<Down>", "<c-o>:echo 'Use j'<CR>")

-- Splits
vim.keymap.set("n", "<leader>tv", "<CMD>vsplit<CR>", { desc = "Open [V]ertical Split" })
vim.keymap.set("n", "<leader>th", "<CMD>split<CR>", { desc = "Open [H]orizontal Split" })
vim.keymap.set("n", "<leader>td", "<CMD>:q<CR>", { desc = "[D]elete Split" })
vim.keymap.set("n", "<leader>tt", "<C-w><C-w>", { desc = "Toggle Spli[t]" })

-- UI
vim.keymap.set("n", "<leader>ut", "<CMD>:Telescope colorscheme<CR>", { desc = "[T]hemes" })

-- LSP Keybindings
vim.api.nvim_create_autocmd("LspAttach", {
	desc = "LSP Actions",
	callback = function(event)
		local opts = { buffer = event.buf }

		vim.keymap.set("n", "<C-k>", "<cmd>lua vim.lsp.buf.hover()<cr>", opts)
		vim.keymap.set("n", "gd", "<cmd>lua vim.lsp.buf.definition()<cr>", opts)
		vim.keymap.set("n", "gD", "<cmd>lua vim.lsp.buf.declaration()<cr>", opts)
		vim.keymap.set("n", "gi", "<cmd>lua vim.lsp.buf.implementation()<cr>", opts)
		vim.keymap.set("n", "go", "<cmd>lua vim.lsp.buf.type_definition()<cr>", opts)
		vim.keymap.set("n", "gr", "<cmd>lua vim.lsp.buf.references()<cr>", opts)
		vim.keymap.set("n", "gs", "<cmd>lua vim.lsp.buf.signature_help()<cr>", opts)
		vim.keymap.set("n", "<F2>", "<cmd>lua vim.lsp.buf.rename()<cr>", opts)
		vim.keymap.set({ "n", "x" }, "<F3>", "<cmd>lua vim.lsp.buf.format({async = true})<cr>", opts)
		vim.keymap.set("n", "<F4>", "<cmd>lua vim.lsp.buf.code_action()<cr>", opts)

		vim.keymap.set("n", "gl", "<cmd>lua vim.diagnostic.open_float()<cr>", opts)
		vim.keymap.set("n", "[d", "<cmd>lua vim.diagnostic.goto_prev()<cr>", opts)
		vim.keymap.set("n", "]d", "<cmd>lua vim.diagnostic.goto_next()<cr>", opts)
	end,
})
