return {
	cmd = { "vscode-eslint-language-server" },

	filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact", "vue" },
	root_markers = { ".eslint", ".eslint_rc", ".git", "eslint.json" },
	config = function()
		vim.lsp.enable("eslint")
	end,
}
