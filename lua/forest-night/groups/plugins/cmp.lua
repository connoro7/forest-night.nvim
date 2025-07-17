local M = {}

---@param colors ColorScheme
function M.get(colors, _)
    return {
        CmpItemAbbr = { fg = colors.fg },
        CmpItemAbbrDeprecated = { fg = colors.fg_gutter, strikethrough = true },
        CmpItemAbbrMatch = { fg = colors.blue, bold = true },
        CmpItemAbbrMatchFuzzy = { fg = colors.blue, bold = true },
        CmpItemMenu = { fg = colors.comment },
        CmpItemKindDefault = { fg = colors.fg_dark },
        CmpItemKindCodeium = { fg = colors.cyan },
        CmpItemKindCopilot = { fg = colors.cyan },
        CmpItemKindTabNine = { fg = colors.cyan },

        -- Kind highlights (linked to Kind* highlights)
        CmpItemKindText = { link = "KindText" },
        CmpItemKindMethod = { link = "KindMethod" },
        CmpItemKindFunction = { link = "KindFunction" },
        CmpItemKindConstructor = { link = "KindConstructor" },
        CmpItemKindField = { link = "KindField" },
        CmpItemKindVariable = { link = "KindVariable" },
        CmpItemKindClass = { link = "KindClass" },
        CmpItemKindInterface = { link = "KindInterface" },
        CmpItemKindModule = { link = "KindModule" },
        CmpItemKindProperty = { link = "KindProperty" },
        CmpItemKindUnit = { link = "KindUnit" },
        CmpItemKindValue = { link = "KindValue" },
        CmpItemKindEnum = { link = "KindEnum" },
        CmpItemKindKeyword = { link = "KindKeyword" },
        CmpItemKindSnippet = { link = "KindSnippet" },
        CmpItemKindColor = { link = "KindColor" },
        CmpItemKindFile = { link = "KindFile" },
        CmpItemKindReference = { link = "KindReference" },
        CmpItemKindFolder = { link = "KindFolder" },
        CmpItemKindEnumMember = { link = "KindEnumMember" },
        CmpItemKindConstant = { link = "KindConstant" },
        CmpItemKindStruct = { link = "KindStruct" },
        CmpItemKindEvent = { link = "KindEvent" },
        CmpItemKindOperator = { link = "KindOperator" },
        CmpItemKindTypeParameter = { link = "KindTypeParameter" },
    }
end

return M
