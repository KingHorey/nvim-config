-- lua/core/utils.lua
local M = {}

local function path_to_module(path)
	local base = vim.fn.stdpath("config") .. "/lua/"
	local module = path:sub(#base + 1)
	module = module:gsub("%.lua$", "")
	module = module:gsub("/", ".")
	return module
end

function M.load_directory(dir)
	local plugins = {}
	local base_path = vim.fn.stdpath("config") .. "/lua/" .. dir
	for _, file in ipairs(vim.fn.glob(base_path .. "/*.lua", 0, 1)) do
		local name = vim.fn.fnamemodify(file, ":t:r")
		if name ~= "init" then
			local module_name = path_to_module(file)
			local spec = require(module_name)
			plugins[#plugins + 1] = spec
		end
	end
	return plugins
end

return M
