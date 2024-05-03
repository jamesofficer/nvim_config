-- Lazy Package Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"

if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

-- Run plugins
require("lazy").setup({
	require("colorschemes"),
	require("plugins/treesitter"),
	require("plugins/mason"),
	require("plugins/mason_lsp_config"),
	require("plugins/nvim_cmp"),
	require("plugins/cmp_nvim_lsp"),
	require("plugins/lsp_config"),
	require("plugins/telescope"),
	require("plugins/telescope_lsp_handlers"),
	require("plugins/lua_snip"), 
	require("plugins/typescript-tools"), 
	require("plugins/ts-error-translator"),
	require("plugins/conform"),
	require("plugins/lazygit"),
	require("plugins/flash"),
	require("plugins/codeium"),
	require("plugins/trouble"),
	require("plugins/mini_clue"),
	require("plugins/mini_comment"),
	require("plugins/mini_files"),
	require("plugins/mini_pairs"),
	require("plugins/arrow"),
	require("plugins/web_dev_icons"),
	require("plugins/smart-open"),
	-- require("plugins/which_key"),
	-- require("plugins/gitblame"),
	-- require("plugins/comment"),
	-- require("plugins/no_neck_pain"),
	-- require("plugins/neodev"),
	-- require("plugins/wtf"),
})
