return {
	"mistweaverco/kulala.nvim",
	ft = { "http", "rest", "websocket" },

	keys = {
		{
			"<leader>Rs",
			function()
				require("kulala").run()
			end,
			desc = "Send request",
			mode = "n",
		},
		{
			"<leader>Ra",
			function()
				require("kulala").run_all()
			end,
			desc = "Send all requests",
			mode = "n",
		},
		{
			"<leader>Rb",
			function()
				require("kulala").replay()
			end,
			desc = "Open scratchpad",
			mode = "n",
		},
		{
			"<leader>Rl",
			function()
				require("kulala").run_last()
			end,
			desc = "Run last request",
			mode = "n",
		},
	},

	opts = {
		global_keymaps = false,
		global_keymaps_prefix = "<leader>R",
		kulala_keymaps_prefix = "",
	},
}
