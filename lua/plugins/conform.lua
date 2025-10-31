return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	-- only opts, no config()
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "black" },
			javascript = { "prettier", "eslint_d" },
			typescript = { "prettier", "eslint_d" },
			javascriptreact = { "eslint_d" },
			typescriptreact = { "eslint_d" },
			json = { "jq" },
			sh = { "shfmt" },
			markdown = { "prettier" },
		},
		format_on_save = {
			lsp_fallback = true,
			async = false,
			timeout_ms = 5000,
		},
		formatters = {
			black = {
				prepend_args = { "-l", "79" },
			},
		},
	},
}
