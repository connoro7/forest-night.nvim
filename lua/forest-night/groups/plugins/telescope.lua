local M = {}

---@param colors ColorScheme
function M.get(colors, _)
    return {
        TelescopeNormal = { bg = colors.bg_float, fg = colors.fg },
        TelescopeBorder = { bg = colors.bg_float, fg = colors.border_highlight },
        TelescopePromptNormal = { bg = colors.bg_highlight },
        TelescopePromptBorder = { bg = colors.bg_highlight, fg = colors.border_highlight },
        TelescopePromptTitle = { bg = colors.border_highlight, fg = colors.bg },
        TelescopePreviewTitle = { bg = colors.green, fg = colors.bg },
        TelescopeResultsTitle = { bg = colors.bg_float, fg = colors.bg_float },
        TelescopeSelection = { bg = colors.bg_visual },
        TelescopeSelectionCaret = { fg = colors.blue },
        TelescopeMatching = { fg = colors.blue, bold = true },
        TelescopePromptPrefix = { fg = colors.blue },
    }
end

return M
