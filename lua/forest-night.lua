local util = require("forest-night.util")
local theme = require("forest-night.theme")
local config = require("forest-night.config")

local M = {}

function M._load(style)
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.o.termguicolors = true
  vim.g.colors_name = "forest-night"

  if style then
    config.setup({ style = style })
  end

  theme.setup()
end

function M.load(opts)
  if opts then
    config.setup(opts)
  end
  M._load()
end

function M.setup(opts)
  config.setup(opts)
end

-- setup an autocmd to reload the theme on colorscheme change
local group = vim.api.nvim_create_augroup("forest-night", { clear = true })
vim.api.nvim_create_autocmd("ColorSchemePre", {
  group = group,
  pattern = "*",
  callback = function()
    vim.api.nvim_del_augroup_by_id(group)
  end,
})

return M
