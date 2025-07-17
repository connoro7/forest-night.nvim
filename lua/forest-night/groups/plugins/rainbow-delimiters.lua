-- rainbow-delimiters.lua
local M = {}
function M.get(colors, _)
    return {
        RainbowDelimiterRed = { fg = colors.red },
        RainbowDelimiterYellow = { fg = colors.yellow },
        RainbowDelimiterBlue = { fg = colors.blue },
        RainbowDelimiterOrange = { fg = colors.orange },
        RainbowDelimiterGreen = { fg = colors.green },
        RainbowDelimiterViolet = { fg = colors.purple },
        RainbowDelimiterCyan = { fg = colors.cyan },
    }
end

return M
