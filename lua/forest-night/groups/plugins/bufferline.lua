local M = {}

---@param colors ColorScheme
function M.get(colors, _)
    return {
        BufferLineIndicatorSelected = { fg = colors.git.change },
        BufferLineFill = { bg = colors.bg_dark },
        BufferLineBufferSelected = { fg = colors.fg, bold = true },
        BufferLineBackground = { fg = colors.comment, bg = colors.bg },
        BufferLineBufferVisible = { fg = colors.fg, bg = colors.bg },
        BufferLineCloseButton = { fg = colors.comment, bg = colors.bg },
        BufferLineCloseButtonSelected = { fg = colors.red, bold = true },
        BufferLineCloseButtonVisible = { fg = colors.comment, bg = colors.bg },
        BufferLineModified = { fg = colors.git.change, bg = colors.bg },
        BufferLineModifiedSelected = { fg = colors.git.change },
        BufferLineModifiedVisible = { fg = colors.git.change, bg = colors.bg },
        BufferLineSeparator = { fg = colors.bg_dark, bg = colors.bg },
        BufferLineSeparatorSelected = { fg = colors.bg_dark, bg = colors.bg },
        BufferLineSeparatorVisible = { fg = colors.bg_dark, bg = colors.bg },
        BufferLineTab = { fg = colors.comment, bg = colors.bg },
        BufferLineTabSelected = { fg = colors.blue, bg = colors.bg },
        BufferLineTabClose = { fg = colors.red, bg = colors.bg },
        BufferLineDuplicate = { fg = colors.comment, bg = colors.bg, italic = true },
        BufferLineDuplicateSelected = { fg = colors.fg, bg = colors.bg, italic = true },
        BufferLineDuplicateVisible = { fg = colors.comment, bg = colors.bg, italic = true },
        BufferLinePick = { fg = colors.red, bg = colors.bg, bold = true },
        BufferLinePickSelected = { fg = colors.red, bold = true },
        BufferLinePickVisible = { fg = colors.red, bg = colors.bg, bold = true },
        BufferLineTruncMarker = { fg = colors.comment, bg = colors.bg },
    }
end

return M
