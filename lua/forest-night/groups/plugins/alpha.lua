local M = {}

---@param colors ColorScheme
function M.get(colors, _)
    return {
        AlphaShortcut = { fg = colors.cyan },
        AlphaHeader = { fg = colors.blue },
        AlphaHeaderLabel = { fg = colors.orange },
        AlphaFooter = { fg = colors.blue, italic = true },
        AlphaButtons = { fg = colors.cyan },
    }
end

return M
