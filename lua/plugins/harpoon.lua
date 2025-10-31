return {
	"ThePrimeagen/harpoon",
	event = "VeryLazy",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	keys = function()
		local harpoon = require("harpoon")
		local harpoon_ui = require("harpoon.ui")

		return {
			{
				"<leader>a",
				function()
					harpoon:list():add()
				end,
			},
			{
				"<C-e>",
				function()
					harpoon.ui:toggle_quick_menu(harpoon:list())
				end,
			},
			{
				"<C-1>",
				function()
					harpoon:list():select(1)
				end,
			},
			{
				"<C-2>",
				function()
					harpoon:list():select(2)
				end,
			},
			{
				"<C-3>",
				function()
					harpoon:list():select(3)
				end,
			},
			{
				"<C-4>",
				function()
					harpoon:list():select(4)
				end,
			},
		}
	end,
	config = function(_, opts)
		require("harpoon").setup(opts)
	end,
}
