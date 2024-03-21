return {
	"echasnovski/mini.clue",
	version = false,
	config = function()
		local miniclue = require("mini.clue")

		miniclue.setup({
			triggers = {
				-- Leader triggers
				{ mode = "n", keys = "<Leader>" },
				{ mode = "x", keys = "<Leader>" },

				-- Built-in completion
				{ mode = "i", keys = "<C-x>" },

				-- `g` key
				{ mode = "n", keys = "g" },
				{ mode = "x", keys = "g" },

				-- Marks
				{ mode = "n", keys = "'" },
				{ mode = "n", keys = "`" },
				{ mode = "x", keys = "'" },
				{ mode = "x", keys = "`" },

				-- Registers
				{ mode = "n", keys = '"' },
				{ mode = "x", keys = '"' },
				{ mode = "i", keys = "<C-r>" },
				{ mode = "c", keys = "<C-r>" },

				-- Window commands
				{ mode = "n", keys = "<C-w>" },

				-- Visual selection
				{ mode = "n", keys = "v" },

				-- `z` key
				{ mode = "n", keys = "z" },
				{ mode = "x", keys = "z" },
			},

			clues = {
				-- Enhance this by adding descriptions for <Leader> mapping groups
				miniclue.gen_clues.builtin_completion(),
				miniclue.gen_clues.g(),
				miniclue.gen_clues.marks(),
				miniclue.gen_clues.registers(),
				miniclue.gen_clues.windows(),
				miniclue.gen_clues.z(),
				{ mode = "n", keys = "<Leader>g", desc = "+[G]it" },
				{ mode = "n", keys = "<Leader>s", desc = "+[S]earch" },
				{ mode = "n", keys = "<Leader>c", desc = "+[C]ode Action" },
				{ mode = "n", keys = "<Leader>d", desc = "+[D]iagnostics" },
				{ mode = "n", keys = "<Leader>z", desc = "+Resi[z]e" },
			},

			window = {
				delay = 500,
			},
		})
	end,
}
