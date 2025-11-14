return {
	"goolord/alpha-nvim",
	-- dependencies = { 'echasnovski/mini.icons' },
	dependencies = { "nvim-tree/nvim-web-devicons", "echasnovski/mini.icons" },
	priority = 1000,
	config = function()
		local scrribbles = require("alpha.themes.dashboard")
		-- available: devicons, mini, default is mini
		-- if provider not loaded and enabled is true, it will try to use another provider
		-- scrribbles.file_icons.provider = "devicons"
		require("alpha").setup(scrribbles.config)
	end,
}
