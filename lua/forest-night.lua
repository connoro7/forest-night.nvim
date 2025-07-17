-- local util = require("forest-night.util")
-- local theme = require("forest-night.theme")
-- local config = require("forest-night.config")
--
-- local M = {}
--
-- function M._load(style)
--   if vim.g.colors_name then
--     vim.cmd("hi clear")
--   end
--
--   vim.o.termguicolors = true
--   vim.g.colors_name = "forest-night"
--
--   if style then
--     config.setup({ style = style })
--   end
--
--   theme.setup()
-- end
--
-- function M.load(opts)
--   if opts then
--     config.setup(opts)
--   end
--   M._load()
-- end
--
-- function M.setup(opts)
--   config.setup(opts)
-- end
--
-- -- setup an autocmd to reload the theme on colorscheme change
-- local group = vim.api.nvim_create_augroup("forest-night", { clear = true })
-- vim.api.nvim_create_autocmd("ColorSchemePre", {
--   group = group,
--   pattern = "*",
--   callback = function()
--     vim.api.nvim_del_augroup_by_id(group)
--   end,
-- })
--
-- return M

-- lua/forest-night.lua
-- This is the main module file that should be placed at lua/forest-night.lua





-- local M = {}
--
-- -- Make _load available for backward compatibility
-- M._load = function()
--   M.load()
-- end
--
-- -- Setup function
-- M.setup = function(opts)
--   require("forest-night.config").setup(opts)
-- end
--
-- -- Main load function
-- M.load = function(opts)
--   -- Setup config if opts provided
--   if opts then
--     M.setup(opts)
--   end
--
--   -- Get config and colors
--   local config = require("forest-night.config")
--   local colors = require("forest-night.colors").setup(config.options)
--   local groups = require("forest-night.groups").setup(colors, config.options)
--
--   -- Clear existing highlights
--   if vim.g.colors_name then
--     vim.cmd("hi clear")
--   end
--
--   -- Set options
--   vim.o.termguicolors = true
--   vim.g.colors_name = "forest-night"
--
--   -- Apply all highlight groups
--   for group, hl in pairs(groups) do
--     hl = type(hl) == "string" and { link = hl } or hl
--     vim.api.nvim_set_hl(0, group, hl)
--   end
--
--   -- Apply terminal colors if enabled
--   if config.options.terminal_colors then
--     local theme = require("forest-night.theme")
--     theme.terminal(colors)
--   end
-- end
--
-- return M




-- lua/forest-night.lua
-- This is the main module file that should be placed at lua/forest-night.lua

local M = {}

-- Make _load available for backward compatibility
M._load = function()
  M.load()
end

-- Setup function
M.setup = function(opts)
  require("forest-night.config").setup(opts)
end

-- Main load function
M.load = function(opts)
  -- Setup config if opts provided
  if opts then
    M.setup(opts)
  end

  -- Use the init module's load function
  require("forest-night.init").load()
end

return M
