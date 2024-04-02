local function organize_imports()
	local params = {
		command = "_typescript.organizeImports",
		arguments = { vim.api.nvim_buf_get_name(0) },
		title = "",
	}
	vim.lsp.buf.execute_command(params)
end

local lspconfig = require("lspconfig")
lspconfig.tsserver.setup({
	capabilities = capabilities,
	commands = {
		OrganizeImports = {
			organize_imports,
			description = "Organize Imports",
		},
	},
})

-- Organize Imports on file save
vim.api.nvim_create_autocmd("BufWritePre", {
	callback = organize_imports,
})
