local M = {}

---@param colors ColorScheme
---@param opts ForestNightConfig
function M.get(colors, opts)
    local styles = opts.styles

    return {
        -- These highlight groups can be used in any file
        Comment = vim.tbl_extend("force", { fg = colors.comment }, styles.comments),        -- any comment
        Constant = { fg = colors.constant },                                                -- any constant
        String = { fg = colors.string },                                                    -- a string constant: "this is a string"
        Character = { fg = colors.character },                                              -- a character constant: 'c', '\n'
        Number = { fg = colors.number },                                                    -- a number constant: 234, 0xff
        Boolean = { fg = colors.boolean },                                                  -- a boolean constant: TRUE, false
        Float = { fg = colors.number },                                                     -- a floating point constant: 2.3e10

        Identifier = vim.tbl_extend("force", { fg = colors.variable }, styles.variables),   -- any variable name
        Function = vim.tbl_extend("force", { fg = colors.func }, styles.functions),         -- function name (also: methods for classes)

        Statement = { fg = colors.keyword },                                                -- any statement
        Conditional = { fg = colors.keyword },                                              -- if, then, else, endif, switch, etc.
        Repeat = { fg = colors.keyword },                                                   -- for, do, while, etc.
        Label = { fg = colors.keyword },                                                    -- case, default, etc.
        Operator = { fg = colors.operator },                                                -- "sizeof", "+", "*", etc.
        Keyword = vim.tbl_extend("force", { fg = colors.keyword }, styles.keywords),        -- any other keyword
        Exception = { fg = colors.keyword },                                                -- try, catch, throw

        PreProc = { fg = colors.keyword },                                                  -- generic Preprocessor
        Include = { fg = colors.keyword },                                                  -- preprocessor #include
        Define = { fg = colors.keyword },                                                   -- preprocessor #define
        Macro = { fg = colors.special },                                                    -- same as Define
        PreCondit = { fg = colors.keyword },                                                -- preprocessor #if, #else, #endif, etc.

        Type = { fg = colors.type },                                                        -- int, long, char, etc.
        StorageClass = { fg = colors.keyword },                                             -- static, register, volatile, etc.
        Structure = { fg = colors.type },                                                   -- struct, union, enum, etc.
        Typedef = { fg = colors.type },                                                     -- A typedef

        Special = { fg = colors.special },                                                  -- any special symbol
        SpecialChar = { fg = colors.special_key },                                          -- special character in a constant
        Tag = { fg = colors.keyword },                                                      -- you can use CTRL-] on this
        Delimiter = { fg = colors.fg },                                                     -- character that needs attention
        SpecialComment = vim.tbl_extend("force", { fg = colors.comment }, styles.comments), -- special things inside a comment
        Todo = { bg = colors.warning, fg = colors.bg },                                     -- anything that needs extra attention; mostly the keywords TODO FIXME and XXX

        Error = { fg = colors.error },                                                      -- any erroneous construct

        -- Help specific
        helpCommand = { fg = colors.blue },
        helpExample = { fg = colors.comment },
        helpKeyword = { fg = colors.keyword },
        helpSectionDelim = { fg = colors.comment },
        helpHyperTextEntry = { fg = colors.green },
        helpHyperTextJump = { fg = colors.green, underline = true },
    }
end

return M
