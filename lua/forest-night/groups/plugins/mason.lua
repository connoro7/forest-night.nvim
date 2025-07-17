-- mason.lua
local M = {}
function M.get(colors, _)
    return {
        MasonHeader = { bg = colors.blue, fg = colors.bg },
        MasonHighlight = { bg = colors.blue, fg = colors.bg },
        MasonHighlightBlock = { bg = colors.blue, fg = colors.bg },
        MasonHighlightBlockBold = { bg = colors.blue, fg = colors.bg, bold = true },
        MasonHeaderSecondary = { bg = colors.cyan, fg = colors.bg },
        MasonMuted = { fg = colors.comment },
        MasonMutedBlock = { bg = colors.bg_highlight, fg = colors.comment },
    }
end

return M
