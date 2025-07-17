local M = {}

---@param colors ColorScheme
function M.get(colors, _)
    return {
        NvimTreeNormal = { fg = colors.fg_sidebar, bg = colors.bg_sidebar },
        NvimTreeWinSeparator = { fg = colors.border, bg = colors.bg_sidebar },
        NvimTreeNormalNC = { fg = colors.fg_sidebar, bg = colors.bg_sidebar },
        NvimTreeRootFolder = { fg = colors.blue, bold = true },
        NvimTreeGitDirty = { fg = colors.git.change },
        NvimTreeGitNew = { fg = colors.git.add },
        NvimTreeGitDeleted = { fg = colors.git.delete },
        NvimTreeGitStaged = { fg = colors.green2 },
        NvimTreeSpecialFile = { fg = colors.keyword, underline = true },
        NvimTreeIndentMarker = { fg = colors.fg_gutter },
        NvimTreeImageFile = { fg = colors.fg_sidebar },
        NvimTreeSymlink = { fg = colors.blue },
        NvimTreeFolderIcon = { bg = colors.none, fg = colors.blue },
        NvimTreeFolderName = { fg = colors.fg_float },
        NvimTreeOpenedFolderName = { fg = colors.fg_float, bold = true },
        NvimTreeEmptyFolderName = { fg = colors.comment },
        NvimTreeExecFile = { fg = colors.green },
        NvimTreeOpenedFile = { bg = colors.bg_highlight },
        NvimTreeModifiedFile = { fg = colors.git.change },
        NvimTreeBookmark = { fg = colors.magenta },
        NvimTreeLiveFilterPrefix = { fg = colors.purple, bold = true },
        NvimTreeLiveFilterValue = { fg = colors.green },
        NvimTreeWindowPicker = { bg = colors.bg_highlight, fg = colors.blue, bold = true },
    }
end

return M
