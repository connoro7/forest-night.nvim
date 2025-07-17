-- indent-blankline.lua
local M = {}
function M.get(colors, _)
    return {
        IndentBlanklineChar = { fg = colors.fg_gutter, nocombine = true },
        IndentBlanklineContextChar = { fg = colors.purple, nocombine = true },
    }
end

return M
