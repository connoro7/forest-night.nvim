-- which-key.lua
local M = {}
function M.get(colors, _)
    return {
        WhichKey = { fg = colors.cyan },
        WhichKeyGroup = { fg = colors.blue },
        WhichKeyDesc = { fg = colors.magenta },
        WhichKeySeperator = { fg = colors.comment },
        WhichKeySeparator = { fg = colors.comment },
        WhichKeyFloat = { bg = colors.bg_float },
        WhichKeyValue = { fg = colors.comment },
    }
end

return M
