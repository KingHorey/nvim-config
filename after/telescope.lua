local ok, telescope = pcall(require, "telescope")
if not ok then
	return
end

local builtin = require("telescope.builtin").setup({
	defaults = {
		layout_strategy = "vertical"
	}
})
vim.keymap.set("n", "<leader>ff", builtin.find_files, { desc = "Telescope find files" })
vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
vim.keymap.set("n", "<leader>sg", builtin.grep_string, { desc = "Telescope Grep string" })
