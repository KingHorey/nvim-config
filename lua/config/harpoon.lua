local harpoon = require("harpoon")
local harpoon_ui = require("harpoon.ui")

function view_file(n)
	harpoon_ui.nav_file(n)
end

vim.keymap.set("n", "<leader>a", harpoon.mark.add_file) -- add file to harpoon
vim.keymap.set("n", "<C-e>", harpoon_ui.toggle_quick_menu)

vim.keymap.set("n", "<C-1>", function()
	view_file(1)
end)
vim.keymap.set("n", "<C-2>", function()
	view_file(2)
end)
vim.keymap.set("n", "<C-3>", function()
	view_file(3)
end)

vim.keymap.set("n", "<C-4>", function()
	view_file(4)
end)
vim.keymap.set("n", "<C-5>", function()
	view_file(5)
end)
