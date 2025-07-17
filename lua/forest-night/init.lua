-- local M = {}
--
-- function M.setup(opts)
--     require("forest-night.config").setup(opts)
-- end
--
-- function M.load()
--     require("forest-night").load()
-- end
--
-- return M

local M = {}

-- Setup function that users call
function M.setup(opts)
    require("forest-night.config").setup(opts)
end

-- Load the colorscheme
function M.load()
    local config = require("forest-night.config")
    local colors = require("forest-night.colors").setup(config.options)
    local groups = require("forest-night.groups").setup(colors, config.options)

    -- Clear existing highlights
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    -- Set terminal GUI colors
    vim.o.termguicolors = true
    vim.g.colors_name = "forest-night"

    -- Apply highlight groups
    for group, hl in pairs(groups) do
        hl = type(hl) == "string" and { link = hl } or hl
        vim.api.nvim_set_hl(0, group, hl)
    end

    -- Set terminal colors
    if config.options.terminal_colors then
        require("forest-night.theme").terminal(colors)
    end
end

return M
