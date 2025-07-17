local M = {}

---@param colors ColorScheme
function M.get(colors, opts)
    local bold = opts.lualine_bold

    return {
        -- lualine theme
    }
end

-- Lualine theme
function M.theme()
    local colors = require("forest-night.colors").setup()
    local config = require("forest-night.config").options

    local forest_night = {}

    forest_night.normal = {
        a = { bg = colors.blue, fg = colors.bg, gui = config.lualine_bold and "bold" or nil },
        b = { bg = colors.bg_highlight, fg = colors.blue },
        c = { bg = colors.bg_statusline, fg = colors.fg_sidebar },
    }

    forest_night.insert = {
        a = { bg = colors.green, fg = colors.bg, gui = config.lualine_bold and "bold" or nil },
        b = { bg = colors.bg_highlight, fg = colors.green },
    }

    forest_night.command = {
        a = { bg = colors.yellow, fg = colors.bg, gui = config.lualine_bold and "bold" or nil },
        b = { bg = colors.bg_highlight, fg = colors.yellow },
    }

    forest_night.visual = {
        a = { bg = colors.magenta, fg = colors.bg, gui = config.lualine_bold and "bold" or nil },
        b = { bg = colors.bg_highlight, fg = colors.magenta },
    }

    forest_night.replace = {
        a = { bg = colors.red, fg = colors.bg, gui = config.lualine_bold and "bold" or nil },
        b = { bg = colors.bg_highlight, fg = colors.red },
    }

    forest_night.terminal = {
        a = { bg = colors.cyan, fg = colors.bg, gui = config.lualine_bold and "bold" or nil },
        b = { bg = colors.bg_highlight, fg = colors.cyan },
    }

    forest_night.inactive = {
        a = { bg = colors.bg_statusline, fg = colors.blue },
        b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = "bold" },
        c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
    }

    return forest_night
end

return M
