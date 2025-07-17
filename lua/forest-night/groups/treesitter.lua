local M = {}

---@param colors ColorScheme
---@param opts ForestNightConfig
function M.get(colors, opts)
    local styles = opts.styles

    return {
        -- Identifiers
        ["@variable"] = vim.tbl_extend("force", { fg = colors.variable }, styles.variables), -- Any variable
        ["@variable.builtin"] = { fg = colors.const_builtin },                           -- Variable names that are defined by the languages, like `this` or `self`.
        ["@variable.parameter"] = { fg = colors.parameter },                             -- For parameters of a function.
        ["@variable.member"] = { fg = colors.field },                                    -- For fields.

        ["@constant"] = { fg = colors.constant },                                        -- For constants
        ["@constant.builtin"] = { fg = colors.const_builtin },                           -- For constant that are built in the language: `nil` in Lua.
        ["@constant.macro"] = { fg = colors.special },                                   -- For constants that are defined by macros: `NULL` in C.

        ["@module"] = { fg = colors.namespace },                                         -- For identifiers referring to modules and namespaces.
        ["@module.builtin"] = { fg = colors.namespace },                                 -- Variable names that are defined by the languages, like `this` or `self`.
        ["@label"] = { fg = colors.keyword },                                            -- For labels: `label:` in C and `:label:` in Lua.

        -- Literals
        ["@string"] = { fg = colors.string },                            -- For strings.
        ["@string.regex"] = { fg = colors.string_regex },                -- For regexes.
        ["@string.escape"] = { fg = colors.string_escape },              -- For escape characters within a string.
        ["@string.special"] = { fg = colors.special },                   -- other special strings (e.g. dates)
        ["@string.special.symbol"] = { fg = colors.special },            -- For identifiers referring to symbols or atoms.
        ["@string.special.path"] = { fg = colors.special },              -- For filenames and paths.
        ["@string.special.url"] = { fg = colors.special, underline = true }, -- URLs

        ["@character"] = { fg = colors.character },                      -- For characters.
        ["@character.special"] = { fg = colors.special },                -- special characters (e.g. wildcards)

        ["@boolean"] = { fg = colors.boolean },                          -- For booleans.
        ["@number"] = { fg = colors.number },                            -- For all numbers
        ["@number.float"] = { fg = colors.number },                      -- For floats.

        -- Types
        ["@type"] = { fg = colors.type },          -- For types.
        ["@type.builtin"] = { fg = colors.type },  -- For builtin types.
        ["@type.qualifier"] = { fg = colors.keyword }, -- For type qualifiers (e.g. `const`)
        ["@type.definition"] = { fg = colors.type }, -- For type definitions (e.g. `typedef` in C)

        ["@attribute"] = { fg = colors.special },  -- For attributes (e.g. C++/C# attributes)
        ["@property"] = { fg = colors.field },     -- Same as `@field`.

        -- Functions
        ["@function"] = vim.tbl_extend("force", { fg = colors.func }, styles.functions),                  -- For function (calls and definitions).
        ["@function.builtin"] = vim.tbl_extend("force", { fg = colors.func, bold = true }, styles.functions), -- For builtin functions: `table.insert` in Lua.
        ["@function.call"] = vim.tbl_extend("force", { fg = colors.func }, styles.functions),             -- For function calls
        ["@function.macro"] = { fg = colors.special },                                                    -- For macro defined functions (calls and definitions): each `macro_rules` in Rust.
        ["@function.method"] = vim.tbl_extend("force", { fg = colors.method }, styles.functions),         -- For method calls and definitions
        ["@function.method.call"] = vim.tbl_extend("force", { fg = colors.method }, styles.functions),    -- For method calls

        ["@constructor"] = { fg = colors.constructor },                                                   -- For constructor calls and definitions: `{ }` in Lua, and Java constructors.
        ["@operator"] = { fg = colors.operator },                                                         -- For any operator: `+`, but also `->` and `*` in C.

        -- Keywords
        ["@keyword"] = vim.tbl_extend("force", { fg = colors.keyword }, styles.keywords),                   -- For keywords that don't fall in previous categories.
        ["@keyword.function"] = vim.tbl_extend("force", { fg = colors.keyword_function }, styles.keywords), -- For keywords used to define a function.
        ["@keyword.operator"] = { fg = colors.operator },                                                   -- For `and`, `or`, `not`, etc.
        ["@keyword.import"] = vim.tbl_extend("force", { fg = colors.keyword, italic = true }, styles.keywords), -- For includes: `#include` in C, `use` or `extern crate` in Rust
        ["@keyword.storage"] = vim.tbl_extend("force", { fg = colors.keyword }, styles.keywords),           -- visibility/life-time modifiers (e.g. `static`)
        ["@keyword.repeat"] = vim.tbl_extend("force", { fg = colors.keyword }, styles.keywords),            -- For keywords related to loops.
        ["@keyword.return"] = vim.tbl_extend("force", { fg = colors.keyword }, styles.keywords),            -- For `return` and yield
        ["@keyword.debug"] = { fg = colors.red },                                                           -- For keywords used for debugging
        ["@keyword.exception"] = vim.tbl_extend("force", { fg = colors.keyword }, styles.keywords),         -- For exception keywords
        ["@keyword.conditional"] = vim.tbl_extend("force", { fg = colors.keyword }, styles.keywords),       -- For conditional keywords

        -- Punctuation
        ["@punctuation.delimiter"] = { fg = colors.fg }, -- For delimiters ie: `.`
        ["@punctuation.bracket"] = { fg = colors.fg },  -- For brackets and parens.
        ["@punctuation.special"] = { fg = colors.special }, -- For special punctutation that does not fall in the catagories before.

        -- Comments
        ["@comment"] = vim.tbl_extend("force", { fg = colors.comment }, styles.comments),           -- For comment blocks.
        ["@comment.documentation"] = vim.tbl_extend("force", { fg = colors.comment }, styles.comments), -- For comments documenting code
        ["@comment.error"] = { fg = colors.error },
        ["@comment.warning"] = { fg = colors.warning },
        ["@comment.todo"] = { bg = colors.warning, fg = colors.bg },
        ["@comment.note"] = { bg = colors.info, fg = colors.bg },

        -- Markup
        ["@markup"] = { fg = colors.fg },                       -- For text
        ["@markup.strong"] = { bold = true },                   -- For text to be represented with strong.
        ["@markup.italic"] = { italic = true },                 -- For text to be represented with italic.
        ["@markup.strikethrough"] = { strikethrough = true },   -- For strikethrough text.
        ["@markup.underline"] = { underline = true },           -- For underlined text.

        ["@markup.heading"] = { fg = colors.keyword, bold = true }, -- For headings
        ["@markup.heading.1"] = { fg = colors.keyword, bold = true },
        ["@markup.heading.2"] = { fg = colors.keyword, bold = true },
        ["@markup.heading.3"] = { fg = colors.keyword, bold = true },
        ["@markup.heading.4"] = { fg = colors.keyword, bold = true },
        ["@markup.heading.5"] = { fg = colors.keyword, bold = true },
        ["@markup.heading.6"] = { fg = colors.keyword, bold = true },

        ["@markup.quote"] = { fg = colors.comment, italic = true }, -- For blockquotes.
        ["@markup.math"] = { fg = colors.special },                -- For math environments

        ["@markup.link"] = { fg = colors.blue },                   -- For links
        ["@markup.link.label"] = { fg = colors.blue },             -- For link labels
        ["@markup.link.url"] = { fg = colors.blue, underline = true }, -- For urls

        ["@markup.raw"] = { fg = colors.string },                  -- For code blocks
        ["@markup.raw.block"] = { fg = colors.string },            -- For code blocks

        ["@markup.list"] = { fg = colors.keyword },                -- For list markers
        ["@markup.list.checked"] = { fg = colors.green },          -- For list markers
        ["@markup.list.unchecked"] = { fg = colors.comment },      -- For list markers

        -- Diff
        ["@diff.plus"] = { fg = colors.git.add }, -- added text
        ["@diff.minus"] = { fg = colors.git.delete }, -- deleted text
        ["@diff.delta"] = { fg = colors.git.change }, -- changed text

        -- Tags (HTML/JSX/etc)
        ["@tag"] = { fg = colors.keyword },     -- Tags like html tag names.
        ["@tag.attribute"] = { fg = colors.field }, -- Tag attributes
        ["@tag.delimiter"] = { fg = colors.fg }, -- Tag delimiter like `<` `>` `/`

        -- Language specific
        -- CSS
        ["@property.css"] = { fg = colors.field },
        ["@type.css"] = { fg = colors.type },
        ["@type.tag.css"] = { fg = colors.keyword },

        -- Rust
        ["@operator.rust"] = { fg = colors.operator },

        -- TypeScript/JavaScript
        ["@constructor.javascript"] = { fg = colors.constructor },
        ["@constructor.typescript"] = { fg = colors.constructor },

        -- Python
        ["@type.python"] = { fg = colors.type },

        -- Go
        ["@function.builtin.go"] = { fg = colors.func },

        -- Ruby
        ["@string.special.symbol.ruby"] = { fg = colors.special },

        -- Legacy (for older parsers)
        -- Remove these when they are no longer needed
        ["@parameter"] = { link = "@variable.parameter" },
        ["@field"] = { link = "@variable.member" },
        ["@namespace"] = { link = "@module" },
        ["@float"] = { link = "@number.float" },
        ["@symbol"] = { link = "@string.special.symbol" },
        ["@string.regex"] = { link = "@string.special.regex" },
        ["@text"] = { link = "@markup" },
        ["@text.strong"] = { link = "@markup.strong" },
        ["@text.emphasis"] = { link = "@markup.italic" },
        ["@text.underline"] = { link = "@markup.underline" },
        ["@text.strike"] = { link = "@markup.strikethrough" },
        ["@text.title"] = { link = "@markup.heading" },
        ["@text.uri"] = { link = "@markup.link.url" },
        ["@text.literal"] = { link = "@markup.raw" },
        ["@text.reference"] = { link = "@markup.link" },
        ["@text.todo"] = { link = "@comment.todo" },
        ["@text.note"] = { link = "@comment.note" },
        ["@text.warning"] = { link = "@comment.warning" },
        ["@text.danger"] = { link = "@comment.error" },
        ["@method"] = { link = "@function.method" },
        ["@method.call"] = { link = "@function.method.call" },
    }
end

return M
