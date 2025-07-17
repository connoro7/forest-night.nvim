-- notify.lua
local M = {}
function M.get(colors, _)
    return {
        NotifyERRORBorder = { fg = colors.error },
        NotifyWARNBorder = { fg = colors.warning },
        NotifyINFOBorder = { fg = colors.info },
        NotifyDEBUGBorder = { fg = colors.comment },
        NotifyTRACEBorder = { fg = colors.purple },
        NotifyERRORIcon = { fg = colors.error },
        NotifyWARNIcon = { fg = colors.warning },
        NotifyINFOIcon = { fg = colors.info },
        NotifyDEBUGIcon = { fg = colors.comment },
        NotifyTRACEIcon = { fg = colors.purple },
        NotifyERRORTitle = { fg = colors.error },
        NotifyWARNTitle = { fg = colors.warning },
        NotifyINFOTitle = { fg = colors.info },
        NotifyDEBUGTitle = { fg = colors.comment },
        NotifyTRACETitle = { fg = colors.purple },
    }
end

return M
