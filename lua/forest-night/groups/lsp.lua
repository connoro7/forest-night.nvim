local M = {}

---@param colors ColorScheme
function M.get(colors, _)
    return {
        -- LSP references
        LspReferenceText = { bg = colors.bg_highlight },  -- used for highlighting "text" references
        LspReferenceRead = { bg = colors.bg_highlight },  -- used for highlighting "read" references
        LspReferenceWrite = { bg = colors.bg_highlight }, -- used for highlighting "write" references

        -- LSP diagnostics
        DiagnosticError = { fg = colors.error },                              -- Used as the base highlight group. Other Diagnostic highlights link to this by default
        DiagnosticWarn = { fg = colors.warning },                             -- Used as the base highlight group
        DiagnosticInfo = { fg = colors.info },                                -- Used as the base highlight group
        DiagnosticHint = { fg = colors.hint },                                -- Used as the base highlight group
        DiagnosticOk = { fg = colors.green },                                 -- Used as the base highlight group

        DiagnosticVirtualTextError = { bg = colors.none, fg = colors.error }, -- Virtual text
        DiagnosticVirtualTextWarn = { bg = colors.none, fg = colors.warning },
        DiagnosticVirtualTextInfo = { bg = colors.none, fg = colors.info },
        DiagnosticVirtualTextHint = { bg = colors.none, fg = colors.hint },
        DiagnosticVirtualTextOk = { bg = colors.none, fg = colors.green },

        DiagnosticUnderlineError = { undercurl = true, sp = colors.error }, -- Underline
        DiagnosticUnderlineWarn = { undercurl = true, sp = colors.warning },
        DiagnosticUnderlineInfo = { undercurl = true, sp = colors.info },
        DiagnosticUnderlineHint = { undercurl = true, sp = colors.hint },
        DiagnosticUnderlineOk = { undercurl = true, sp = colors.green },

        DiagnosticFloatingError = { fg = colors.error }, -- Floating windows
        DiagnosticFloatingWarn = { fg = colors.warning },
        DiagnosticFloatingInfo = { fg = colors.info },
        DiagnosticFloatingHint = { fg = colors.hint },
        DiagnosticFloatingOk = { fg = colors.green },

        DiagnosticSignError = { fg = colors.error }, -- Sign column
        DiagnosticSignWarn = { fg = colors.warning },
        DiagnosticSignInfo = { fg = colors.info },
        DiagnosticSignHint = { fg = colors.hint },
        DiagnosticSignOk = { fg = colors.green },

        -- LSP semantic tokens
        ["@lsp.type.boolean"] = { link = "@boolean" },
        ["@lsp.type.builtinType"] = { link = "@type.builtin" },
        ["@lsp.type.comment"] = { link = "@comment" },
        ["@lsp.type.decorator"] = { link = "@attribute" },
        ["@lsp.type.deriveHelper"] = { link = "@attribute" },
        ["@lsp.type.enum"] = { link = "@type" },
        ["@lsp.type.enumMember"] = { link = "@constant" },
        ["@lsp.type.escapeSequence"] = { link = "@string.escape" },
        ["@lsp.type.formatSpecifier"] = { link = "@markup.list" },
        ["@lsp.type.generic"] = { link = "@variable" },
        ["@lsp.type.interface"] = { fg = colors.interface },
        ["@lsp.type.keyword"] = { link = "@keyword" },
        ["@lsp.type.lifetime"] = { link = "@keyword.storage" },
        ["@lsp.type.namespace"] = { link = "@module" },
        ["@lsp.type.number"] = { link = "@number" },
        ["@lsp.type.operator"] = { link = "@operator" },
        ["@lsp.type.parameter"] = { link = "@variable.parameter" },
        ["@lsp.type.property"] = { link = "@property" },
        ["@lsp.type.selfKeyword"] = { link = "@variable.builtin" },
        ["@lsp.type.selfTypeKeyword"] = { link = "@variable.builtin" },
        ["@lsp.type.string"] = { link = "@string" },
        ["@lsp.type.typeAlias"] = { link = "@type.definition" },
        ["@lsp.type.unresolvedReference"] = { undercurl = true, sp = colors.error },
        ["@lsp.type.variable"] = {}, -- use fallback treesitter

        -- LSP modifiers
        ["@lsp.mod.builtin"] = { link = "@constant.builtin" },
        ["@lsp.mod.constant"] = { link = "@constant" },
        ["@lsp.mod.controlFlow"] = { link = "@keyword.conditional" },
        ["@lsp.mod.declaration"] = {},
        ["@lsp.mod.definition"] = {},
        ["@lsp.mod.deprecated"] = { strikethrough = true },
        ["@lsp.mod.documentation"] = { link = "@comment.documentation" },
        ["@lsp.mod.static"] = { link = "@keyword.storage" },
        ["@lsp.mod.mutable"] = {},
        ["@lsp.mod.async"] = {},
        ["@lsp.mod.readonly"] = { italic = true },

        -- Specific LSP semantic highlights
        ["@lsp.type.class"] = { link = "@type" },
        ["@lsp.type.function"] = { link = "@function" },
        ["@lsp.type.macro"] = { link = "@function.macro" },
        ["@lsp.type.method"] = { link = "@function.method" },
        ["@lsp.type.struct"] = { link = "@type" },
        ["@lsp.type.type"] = { link = "@type" },
        ["@lsp.type.typeParameter"] = { link = "@type.definition" },
        ["@lsp.type.variable"] = { link = "@variable" },

        -- Codelens
        LspCodeLens = { fg = colors.comment },
        LspCodeLensSeparator = { fg = colors.fg_gutter },

        -- Inlay hints
        LspInlayHint = { bg = colors.bg_highlight, fg = colors.comment },

        -- LSP signature help
        LspSignatureActiveParameter = { bg = colors.bg_visual, bold = true },
    }
end

return M
