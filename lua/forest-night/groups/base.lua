local M = {}

---@param colors ColorScheme
---@param opts ForestNightConfig
function M.get(colors, opts)
    local transparent = opts.transparent

    return {
        -- General
        ColorColumn = { bg = colors.bg_visual },                                                                                -- used for the columns set with 'colorcolumn'
        Conceal = { fg = colors.fg_gutter },                                                                                    -- placeholder characters substituted for concealed text (see 'conceallevel')
        Cursor = { fg = colors.bg, bg = colors.fg },                                                                            -- character under the cursor
        lCursor = { fg = colors.bg, bg = colors.fg },                                                                           -- the character under the cursor when |language-mapping| is used (see 'guicursor')
        CursorIM = { fg = colors.bg, bg = colors.fg },                                                                          -- like Cursor, but used when in IME mode |CursorIM|
        CursorColumn = { bg = colors.bg_highlight },                                                                            -- Screen-column at the cursor, when 'cursorcolumn' is set.
        CursorLine = { bg = colors.bg_highlight },                                                                              -- Screen-line at the cursor, when 'cursorline' is set.
        Directory = { fg = colors.blue },                                                                                       -- directory names (and other special names in listings)
        DiffAdd = { bg = colors.diff.add },                                                                                     -- diff mode: Added line |diff.txt|
        DiffChange = { bg = colors.diff.change },                                                                               -- diff mode: Changed line |diff.txt|
        DiffDelete = { bg = colors.diff.delete },                                                                               -- diff mode: Deleted line |diff.txt|
        DiffText = { bg = colors.diff.text },                                                                                   -- diff mode: Changed text within a changed line |diff.txt|
        EndOfBuffer = { fg = colors.bg },                                                                                       -- filler lines (~) after the end of the buffer.
        ErrorMsg = { fg = colors.error },                                                                                       -- error messages on the command line
        VertSplit = { fg = colors.border },                                                                                     -- the column separating vertically split windows
        WinSeparator = { fg = colors.border },                                                                                  -- the column separating vertically split windows
        Folded = { fg = colors.blue, bg = colors.bg_highlight },                                                                -- line used for closed folds
        FoldColumn = { bg = transparent and colors.none or colors.bg, fg = colors.comment },                                    -- 'foldcolumn'
        SignColumn = { bg = transparent and colors.none or colors.bg, fg = colors.fg_gutter },                                  -- column where |signs| are displayed
        SignColumnSB = { bg = colors.bg_sidebar, fg = colors.fg_gutter },                                                       -- column where |signs| are displayed
        Substitute = { bg = colors.red, fg = colors.black },                                                                    -- |:substitute| replacement text highlighting
        LineNr = { fg = colors.fg_gutter },                                                                                     -- Line number for ":number" and ":#" commands
        CursorLineNr = { fg = colors.fg },                                                                                      -- Like LineNr when 'cursorline' is set
        MatchParen = { fg = colors.fg, bg = colors.bg_visual, bold = true },                                                    -- The character under the cursor or just before it
        ModeMsg = { fg = colors.fg_dark, bold = true },                                                                         -- 'showmode' message (e.g., "-- INSERT -- ")
        MsgArea = { fg = colors.fg_dark },                                                                                      -- Area for messages and cmdline
        MoreMsg = { fg = colors.blue },                                                                                         -- |more-prompt|
        NonText = { fg = colors.fg_gutter },                                                                                    -- '@' at the end of the window
        Normal = { fg = colors.fg, bg = transparent and colors.none or colors.bg },                                             -- normal text
        NormalNC = { fg = colors.fg, bg = transparent and colors.none or (opts.dim_inactive and colors.bg_dark or colors.bg) }, -- normal text in non-current windows
        NormalSB = { fg = colors.fg_sidebar, bg = colors.bg_sidebar },                                                          -- normal text in sidebar
        NormalFloat = { fg = colors.fg_float, bg = colors.bg_float },                                                           -- Normal text in floating windows.
        FloatBorder = { fg = colors.border_highlight, bg = colors.bg_float },
        FloatTitle = { fg = colors.border_highlight, bg = colors.bg_float },
        Pmenu = { bg = colors.bg_popup, fg = colors.fg },                    -- Popup menu: normal item.
        PmenuSel = { bg = colors.bg_highlight },                             -- Popup menu: selected item.
        PmenuSbar = { bg = colors.bg_highlight_dark },                       -- Popup menu: scrollbar.
        PmenuThumb = { bg = colors.border },                                 -- Popup menu: Thumb of the scrollbar.
        Question = { fg = colors.blue },                                     -- |hit-enter| prompt and yes/no questions
        QuickFixLine = { bg = colors.bg_visual, bold = true },               -- Current |quickfix| item in the quickfix window.
        Search = { bg = colors.bg_search },                                  -- Last search pattern highlighting (see 'hlsearch').
        IncSearch = { bg = colors.bg_search },                               -- 'incsearch' highlighting
        CurSearch = { link = "IncSearch" },
        SpecialKey = { fg = colors.fg_gutter },                              -- Unprintable characters: text displayed differently
        SpellBad = { sp = colors.error, undercurl = true },                  -- Word that is not recognized by the spellchecker.
        SpellCap = { sp = colors.warning, undercurl = true },                -- Word that should start with a capital.
        SpellLocal = { sp = colors.info, undercurl = true },                 -- Word that is recognized by the spellchecker
        SpellRare = { sp = colors.hint, undercurl = true },                  -- Word that is recognized by the spellchecker
        StatusLine = { fg = colors.fg_sidebar, bg = colors.bg_statusline },  -- status line of current window
        StatusLineNC = { fg = colors.fg_gutter, bg = colors.bg_statusline }, -- status lines of not-current windows
        TabLine = { bg = colors.bg_statusline, fg = colors.fg_gutter },      -- tab pages line, not active tab page label
        TabLineFill = { bg = colors.bg_statusline },                         -- tab pages line, where there are no labels
        TabLineSel = { fg = colors.fg, bg = colors.bg },                     -- tab pages line, active tab page label
        Title = { fg = colors.blue, bold = true },                           -- titles for output from ":set all", ":autocmd" etc.
        Visual = { bg = colors.bg_visual },                                  -- Visual mode selection
        VisualNOS = { bg = colors.bg_visual },                               -- Visual mode selection when vim is "Not Owning the Selection".
        WarningMsg = { fg = colors.warning },                                -- warning messages
        Whitespace = { fg = colors.fg_gutter },                              -- "nbsp", "space", "tab" and "trail" in 'listchars'
        WildMenu = { bg = colors.bg_visual },                                -- current match in 'wildmenu' completion
        WinBar = { fg = colors.fg, bg = transparent and colors.none or colors.bg },
        WinBarNC = { fg = colors.fg_gutter, bg = transparent and colors.none or colors.bg },

        -- Standard highlight groups (links)
        Bold = { bold = true },
        Debug = { fg = colors.red },       -- debugging statements
        Italic = { italic = true },
        Underlined = { underline = true }, -- (preferred) text that stands out, HTML links

        -- qf (quickfix)
        qfLineNr = { fg = colors.comment },
        qfFileName = { fg = colors.blue },

        -- health
        healthError = { fg = colors.error },
        healthSuccess = { fg = colors.green },
        healthWarning = { fg = colors.warning },

        -- diff (also used by neovim for native diffs)
        diffAdded = { fg = colors.git.add },
        diffChanged = { fg = colors.git.change },
        diffDeleted = { fg = colors.git.delete },
        diffOldFile = { fg = colors.git.delete },
        diffNewFile = { fg = colors.git.add },
        diffFile = { fg = colors.blue },
        diffLine = { fg = colors.comment },
        diffIndexLine = { fg = colors.magenta },
    }
end

return M
