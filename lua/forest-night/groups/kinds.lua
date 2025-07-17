local M = {}

---@param colors ColorScheme
function M.get(colors, _)
    return {
        -- These are mainly used by cmp/lsp for icons
        KindArray = { fg = colors.type },
        KindBoolean = { fg = colors.boolean },
        KindClass = { fg = colors.class },
        KindColor = { fg = colors.special },
        KindConstant = { fg = colors.constant },
        KindConstructor = { fg = colors.constructor },
        KindEnum = { fg = colors.type },
        KindEnumMember = { fg = colors.constant },
        KindEvent = { fg = colors.special },
        KindField = { fg = colors.field },
        KindFile = { fg = colors.blue },
        KindFolder = { fg = colors.blue },
        KindFunction = { fg = colors.func },
        KindInterface = { fg = colors.interface },
        KindKey = { fg = colors.special_key },
        KindKeyword = { fg = colors.keyword },
        KindMethod = { fg = colors.method },
        KindModule = { fg = colors.namespace },
        KindNamespace = { fg = colors.namespace },
        KindNull = { fg = colors.const_builtin },
        KindNumber = { fg = colors.number },
        KindOperator = { fg = colors.operator },
        KindPackage = { fg = colors.namespace },
        KindProperty = { fg = colors.field },
        KindReference = { fg = colors.special },
        KindSnippet = { fg = colors.special },
        KindString = { fg = colors.string },
        KindStruct = { fg = colors.struct },
        KindText = { fg = colors.fg },
        KindTypeParameter = { fg = colors.type },
        KindUnit = { fg = colors.special },
        KindValue = { fg = colors.constant },
        KindVariable = { fg = colors.variable },
    }
end

return M
