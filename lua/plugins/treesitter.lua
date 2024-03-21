return {
	"nvim-treesitter/nvim-treesitter",
	config = function()
		require("nvim-treesitter.configs").setup({
			modules = {},
			ensure_installed = { "c", "lua", "vim", "vimdoc", "query" },
			ignore_install = {},
			sync_install = false,
			auto_install = true,
			highlight = {
				enable = true,
				-- Disable highlighting on large files
				disable = function(lang, buf)
					local max_filesize = 100 * 1024 -- 100 KB
					local ok, stats = pcall(vim.loop.fs_stat, vim.api.nvim_buf_get_name(buf))
					if ok and stats and stats.size > max_filesize then
						return true
					end
				end,
			},
		})
	end,
}
