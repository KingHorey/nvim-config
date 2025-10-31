return {
	"nvimdev/dashboard-nvim",
	event = "VeryLazy",
	-- priority = 1000,
	dependencies = {
		{ "juansalvatore/git-dashboard-nvim", dependencies = { "nvim-lua/plenary.nvim" } },
	},
	opts = function()
		local M = {}

		M.basic = {
			[[                                    ██████                                    ]],
			[[                                ████▒▒▒▒▒▒████                                ]],
			[[                              ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                              ]],
			[[                            ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                            ]],
			[[                          ██▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒                              ]],
			[[                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▓▓▓▓                          ]],
			[[                          ██▒▒▒▒▒▒  ▒▒▓▓▒▒▒▒▒▒  ▒▒▓▓                          ]],
			[[                        ██▒▒▒▒▒▒▒▒▒▒    ▒▒▒▒▒▒▒▒    ██                        ]],
			[[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
			[[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
			[[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
			[[                        ██▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒▒██                        ]],
			[[                        ██▒▒██▒▒▒▒▒▒██▒▒▒▒▒▒▒▒██▒▒▒▒██                        ]],
			[[                        ████  ██▒▒██  ██▒▒▒▒██  ██▒▒██                        ]],
			[[                        ██      ██      ████      ████                        ]],
		}
		local git_dashboard = require("git-dashboard-nvim").setup({
			fallback_header = "",
			top_padding = 0,
			bottom_padding = 0,
			use_git_username_as_author = true,
			author = "",
			branch = "main",
			gap = " ",
			centered = true,
			day_label_gap = " ",
			empty = " ",
			hide_cursor = true,
			is_horizontal = true,
			show_contributions_count = true,
			show_only_weeks_with_commits = false,
			title = "owner_with_repo_name",
			filled_squares = { "", "", "", "", "", "" },
			empty_square = "",
			show_current_branch = true,
			days = { "s", "m", "t", "w", "t", "f", "s" },
			-- months = { 'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun', 'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec' },
			use_current_branch = true,
			basepoints = { "master", "main" },
			colors = {
				days_and_months_labels = "#8FBCBB",
				empty_square_highlight = "#3B4252",
				filled_square_highlights = {
					"#88C0D0",
					"#88C0D0",
					"#88C0D0",
					"#88C0D0",
					"#88C0D0",
					"#88C0D0",
					"#88C0D0",
				},
				branch_highlight = "#88C0D0",
				dashboard_title = "#88C0D0",
			},
		})

		local opts = {
			-- theme = 'pacman',
			config = {
				header = git_dashboard,
				center = {
					{ action = "", desc = "You can just build things", icon = "", key = "n" },
				},
				footer = "You can just build things",
			},
			shortcut = {
				"You can just build things",
			},
		}

		-- extra dashboard nvim config ...

		return opts
	end,
}
