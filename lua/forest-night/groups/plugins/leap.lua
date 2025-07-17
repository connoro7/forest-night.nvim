-- leap.lua
local M = {}
function M.get(colors, _)
    return {
        LeapMatch = { bg = colors.magenta, fg = colors.bg, bold = true },
        LeapLabelPrimary = { fg = colors.magenta, bold = true },
        LeapLabelSecondary = { fg = colors.green, bold = true },
        LeapBackdrop = { fg = colors.comment },
    }
end

return M
