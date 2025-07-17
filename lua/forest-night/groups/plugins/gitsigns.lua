local M = {}

---@param colors ColorScheme
function M.get(colors, _)
    return {
        GitSignsAdd = { fg = colors.git.add },     -- diff mode: Added line |diff.txt|
        GitSignsChange = { fg = colors.git.change }, -- diff mode: Changed line |diff.txt|
        GitSignsDelete = { fg = colors.git.delete }, -- diff mode: Deleted line |diff.txt|
        GitSignsAddNr = { fg = colors.git.add },   -- diff mode: Added line |diff.txt|
        GitSignsChangeNr = { fg = colors.git.change }, -- diff mode: Changed line |diff.txt|
        GitSignsDeleteNr = { fg = colors.git.delete }, -- diff mode: Deleted line |diff.txt|
        GitSignsAddLn = { fg = colors.git.add },   -- diff mode: Added line |diff.txt|
        GitSignsChangeLn = { fg = colors.git.change }, -- diff mode: Changed line |diff.txt|
        GitSignsDeleteLn = { fg = colors.git.delete }, -- diff mode: Deleted line |diff.txt|
        GitSignsAddPreview = { bg = colors.diff.add },
        GitSignsDeletePreview = { bg = colors.diff.delete },
        GitSignsCurrentLineBlame = { fg = colors.comment },
        GitSignsAddInline = { bg = colors.diff.add },
        GitSignsChangeInline = { bg = colors.diff.change },
        GitSignsDeleteInline = { bg = colors.diff.delete },
    }
end

return M
