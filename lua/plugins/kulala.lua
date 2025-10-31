local kulala = require("kulala")

return {
	"mistweaverco/kulala.nvim",
	keys = {
		{
			"<leader>Rs",
			function()
				kulala.run()
			end,
			desc = "Send request",
			mode = "n",
		},
		{
			"<leader>Ra",
			function()
				kulala.run_all()
			end,
			desc = "Send all requests",
			mode = "n",
		},
		{
			"<leader>Rb",
			function()
				kulala.replay()
			end,
			desc = "Open scratchpad",
			mode = "n",
		},
	},
	ft = { "http", "rest", "websocket" },
	opts = {
		global_keymaps = false,
		global_keymaps_prefix = "<leader>R",
		kulala_keymaps_prefix = "",
	},
}
