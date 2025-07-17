-- neo-tree.lua
local M = {}
function M.get(colors, _)
    return {
        NeoTreeNormal = { fg = colors.fg_sidebar, bg = colors.bg_sidebar },
        NeoTreeNormalNC = { fg = colors.fg_sidebar, bg = colors.bg_sidebar },
    }
end

return M
