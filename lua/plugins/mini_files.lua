return {
	"echasnovski/mini.files",
	version = false,
	config = function()
		local minifiles = require("mini.files")

        vim.keymap.set("n", "<leader>e", function()
            local currentBuffer = vim.api.nvim_buf_get_name(0)
            MiniFiles.open(currentBuffer)
        end, { desc = "Fil[e] Browser" })

        minifiles.setup();
	end,
}
