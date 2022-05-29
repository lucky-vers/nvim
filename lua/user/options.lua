-- Lua Options

local lua_options = {
	mouse         = "a",       -- Allow mouse control
	shiftwidth    = 2,         -- Change the indentation width to 2
	tabstop       = 2,         -- Change the tab width to 2
	number        = true,      -- Show line numbers
	numberwidth   = 4,         -- Set width of line numbers to 4
  fileencoding  = "utf-8",   -- Set the file encoding format
  hlsearch      = true,      -- Highlight search matches
	scrolloff     = 6,         -- Start scrolling vertically at 6 pixels from the end
	sidescrolloff = 6,         -- Start scrolling horizontally at 6 pixels from the end
	backup        = false,     -- Don't backup files
	smartindent   = true,      -- Enable smart indent
	termguicolors = true,      -- Allow terminals to use more colors
	showmode      = false,     -- Stop showing -- INSERT -- on the bottom
}

for key, value in pairs(lua_options) do
  vim.opt[key] = value
end

-- Vim Script Options

vim.cmd [[set iskeyword+=-]]                         -- Detect "-" as a word
vim.cmd [[set iskeyword+=_]]                         -- Detect "_" as a word
vim.cmd [[autocmd BufWritePre silent! :%s/\s\+$//e]] -- Remove trailing whitespace before saving
