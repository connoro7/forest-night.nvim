-- local util = require("forest-night.util")
--
-- local M = {}
--
-- ---@class ColorScheme
-- ---@field _style string
-- ---@field none string
-- M.default = function()
--     ---@type ColorScheme
--     ---@class colors
--     local colors = {
--         _style = "main",
--         none = "NONE",
--
--         -- Base colors from the VS Code theme
--         bg = "#1a2125",            -- editor.background
--         bg_dark = "#151b1e",       -- Darker variant
--         bg_float = "#151b1e",      -- For floating windows
--         bg_popup = "#151b1e",      -- For popups
--         bg_sidebar = "#1a2125",    -- Sidebar background
--         bg_statusline = "#1a2125", -- Status line background
--         bg_highlight = "#252e38",  -- editor.inactiveSelectionBackground
--         bg_visual = "#3a4a55",     -- editor.selectionBackground
--         bg_search = "#9B59B630",   -- editor.findMatchBackground
--
--         -- Foreground colors
--         fg = "#c9d1d9",         -- editor.foreground
--         fg_dark = "#8fa1b3",    -- Darker foreground
--         fg_gutter = "#4a5568",  -- editorLineNumber.foreground
--         fg_sidebar = "#6b7280", -- sideBar.foreground muted
--
--         -- Border colors
--         border = "#2a2e33",           -- Various borders
--         border_highlight = "#6b8fa3", -- Active borders
--
--         -- Comments
--         comment = "#4a5568", -- Comment color
--
--         -- Git colors
--         git = {
--             add = "#8FBC8F",      -- gitDecoration.untrackedResourceForeground
--             change = "#F39C12",   -- gitDecoration.modifiedResourceForeground
--             delete = "#c78a7a",   -- gitDecoration.deletedResourceForeground
--             ignore = "#4a5568",   -- gitDecoration.ignoredResourceForeground
--             conflict = "#c78a7a", -- gitDecoration.conflictingResourceForeground
--         },
--
--         -- Diff colors
--         diff = {
--             add = "#8FBC8F20",    -- diffEditor.insertedTextBackground
--             change = "#F39C1220", -- Modified background
--             delete = "#c78a7a20", -- diffEditor.removedTextBackground
--             text = "#4ECDC430",   -- Text diff
--         },
--
--         -- Diagnostic colors
--         error = "#c78a7a",   -- editorError.foreground (softer red)
--         warning = "#F39C12", -- editorWarning.foreground
--         info = "#4ECDC4",    -- editorInfo.foreground
--         hint = "#8FBC8F",    -- editorHint.foreground
--
--         -- Syntax colors from token colors
--         -- Keywords and control flow
--         keyword = "#F39C12",          -- keyword, control flow
--         keyword_function = "#F39C12", -- function keyword
--         operator = "#c9d1d9",         -- operators
--
--         -- Functions and methods
--         func = "#9B59B6",        -- entity.name.function
--         method = "#9B59B6",      -- methods
--         constructor = "#9B59B6", -- constructors
--
--         -- Variables and parameters
--         variable = "#c9d1d9",  -- variables
--         parameter = "#c9d1d9", -- parameters
--         field = "#66D9EF",     -- properties/fields
--
--         -- Types and classes
--         type = "#c78a7a",      -- entity.name.type
--         class = "#c78a7a",     -- classes
--         struct = "#c78a7a",    -- structs
--         namespace = "#c78a7a", -- namespaces
--         interface = "#c78a7a", -- interfaces
--
--         -- Strings
--         string = "#4ECDC4",        -- string
--         string_escape = "#F39C12", -- escape characters
--         string_regex = "#c78a7a",  -- regex
--         character = "#4ECDC4",     -- character literals
--
--         -- Numbers and constants
--         number = "#8FBC8F",        -- numeric literals
--         boolean = "#8FBC8F",       -- boolean values
--         constant = "#8FBC8F",      -- constants
--         const_builtin = "#8FBC8F", -- built-in constants
--
--         -- Special highlights
--         special = "#F39C12",         -- special characters
--         special_builtin = "#9B59B6", -- built-in special
--         special_key = "#66D9EF",     -- special keys
--
--         -- Terminal colors
--         terminal = {
--             black = "#1a2125",
--             black_bright = "#4a5568",
--             red = "#E91E63",
--             red_bright = "#E91E63",
--             green = "#8FBC8F",
--             green_bright = "#8FBC8F",
--             yellow = "#F39C12",
--             yellow_bright = "#F39C12",
--             blue = "#4ECDC4",
--             blue_bright = "#66D9EF",
--             magenta = "#9B59B6",
--             magenta_bright = "#9B59B6",
--             cyan = "#4ECDC4",
--             cyan_bright = "#4ECDC4",
--             white = "#c9d1d9",
--             white_bright = "#ffffff",
--         },
--
--         -- Rainbow brackets
--         rainbow1 = "#8FBC8F",
--         rainbow2 = "#4ECDC4",
--         rainbow3 = "#c78a7a",
--         rainbow4 = "#F39C12",
--         rainbow5 = "#66D9EF",
--         rainbow6 = "#FFB74D",
--
--         -- Alpha
--         alpha = {
--             bg = "#1a2125",
--             fg = "#c9d1d9",
--         },
--     }
--
--     -- Additional color variants
--     colors.bg_dark1 = util.darken(colors.bg, 0.8)
--     colors.bg_highlight_dark = util.darken(colors.bg_highlight, 0.8)
--     colors.fg_float = colors.fg
--     colors.fg_dark1 = util.darken(colors.fg, 0.8)
--
--     -- Semantic colors
--     colors.green1 = util.lighten(colors.green, 0.9)
--     colors.green2 = util.lighten(colors.green, 0.8)
--     colors.red1 = util.lighten(colors.error, 0.9)
--     colors.red2 = util.lighten(colors.error, 0.8)
--     colors.blue1 = util.lighten(colors.blue, 0.9)
--     colors.blue2 = util.lighten(colors.blue, 0.8)
--     colors.yellow1 = util.lighten(colors.warning, 0.9)
--     colors.yellow2 = util.lighten(colors.warning, 0.8)
--
--     -- Special colors
--     colors.delta = {
--         add = colors.green2,
--         delete = colors.red2,
--     }
--
--     -- Set theme style
--     colors._style = "forest-night"
--
--     return colors
-- end
--
-- ---@param opts ForestNightConfig|nil
-- function M.setup(opts)
--     opts = require("forest-night.config").extend(opts)
--
--     local colors = M.default()
--
--     -- Call on_colors hook
--     if opts.on_colors then
--         opts.on_colors(colors)
--     end
--
--     return colors
-- end
--
-- return M

local util = require("forest-night.util")

local M = {}

---@class ColorScheme
---@field _style string
---@field none string
M.default = function()
    ---@type ColorScheme
    local colors = {
        _style = "main",
        none = "NONE",

        -- Base colors from the VS Code theme
        bg = "#1a2125",            -- editor.background
        bg_dark = "#151b1e",       -- Darker variant
        bg_float = "#151b1e",      -- For floating windows
        bg_popup = "#151b1e",      -- For popups
        bg_sidebar = "#1a2125",    -- Sidebar background
        bg_statusline = "#1a2125", -- Status line background
        bg_highlight = "#252e38",  -- editor.inactiveSelectionBackground
        bg_visual = "#3a4a55",     -- editor.selectionBackground
        bg_search = "#9B59B630",   -- editor.findMatchBackground

        -- Foreground colors
        fg = "#c9d1d9",         -- editor.foreground
        fg_dark = "#8fa1b3",    -- Darker foreground
        fg_gutter = "#4a5568",  -- editorLineNumber.foreground
        fg_sidebar = "#6b7280", -- sideBar.foreground muted

        -- Border colors
        border = "#2a2e33",           -- Various borders
        border_highlight = "#6b8fa3", -- Active borders

        -- Comments
        comment = "#4a5568", -- Comment color

        -- Git colors
        git = {
            add = "#8FBC8F",      -- gitDecoration.untrackedResourceForeground
            change = "#F39C12",   -- gitDecoration.modifiedResourceForeground
            delete = "#c78a7a",   -- gitDecoration.deletedResourceForeground
            ignore = "#4a5568",   -- gitDecoration.ignoredResourceForeground
            conflict = "#c78a7a", -- gitDecoration.conflictingResourceForeground
        },

        -- Diff colors
        diff = {
            add = "#8FBC8F20",    -- diffEditor.insertedTextBackground
            change = "#F39C1220", -- Modified background
            delete = "#c78a7a20", -- diffEditor.removedTextBackground
            text = "#4ECDC430",   -- Text diff
        },

        -- Diagnostic colors
        error = "#c78a7a",   -- editorError.foreground (softer red)
        warning = "#F39C12", -- editorWarning.foreground
        info = "#4ECDC4",    -- editorInfo.foreground
        hint = "#8FBC8F",    -- editorHint.foreground

        -- Syntax colors from token colors
        -- Keywords and control flow
        keyword = "#F39C12",          -- keyword, control flow
        keyword_function = "#F39C12", -- function keyword
        operator = "#c9d1d9",         -- operators

        -- Functions and methods
        func = "#9B59B6",        -- entity.name.function
        method = "#9B59B6",      -- methods
        constructor = "#9B59B6", -- constructors

        -- Variables and parameters
        variable = "#c9d1d9",  -- variables
        parameter = "#c9d1d9", -- parameters
        field = "#66D9EF",     -- properties/fields

        -- Types and classes
        type = "#c78a7a",      -- entity.name.type
        class = "#c78a7a",     -- classes
        struct = "#c78a7a",    -- structs
        namespace = "#c78a7a", -- namespaces
        interface = "#c78a7a", -- interfaces

        -- Strings
        string = "#4ECDC4",        -- string
        string_escape = "#F39C12", -- escape characters
        string_regex = "#c78a7a",  -- regex
        character = "#4ECDC4",     -- character literals

        -- Numbers and constants
        number = "#8FBC8F",        -- numeric literals
        boolean = "#8FBC8F",       -- boolean values
        constant = "#8FBC8F",      -- constants
        const_builtin = "#8FBC8F", -- built-in constants

        -- Special highlights
        special = "#F39C12",         -- special characters
        special_builtin = "#9B59B6", -- built-in special
        special_key = "#66D9EF",     -- special keys

        -- Additional colors needed by plugins
        blue = "#4ECDC4",    -- Blue color (same as cyan/string for this theme)
        cyan = "#4ECDC4",    -- Cyan
        magenta = "#9B59B6", -- Magenta (same as function color)
        purple = "#9B59B6",  -- Purple
        orange = "#F39C12",  -- Orange (same as yellow/warning)
        red = "#c78a7a",     -- Red (same as error)

        -- Terminal colors
        terminal = {
            black = "#1a2125",
            black_bright = "#4a5568",
            red = "#E91E63",
            red_bright = "#E91E63",
            green = "#8FBC8F",
            green_bright = "#8FBC8F",
            yellow = "#F39C12",
            yellow_bright = "#F39C12",
            blue = "#4ECDC4",
            blue_bright = "#66D9EF",
            magenta = "#9B59B6",
            magenta_bright = "#9B59B6",
            cyan = "#4ECDC4",
            cyan_bright = "#4ECDC4",
            white = "#c9d1d9",
            white_bright = "#ffffff",
        },

        -- Rainbow brackets
        rainbow1 = "#8FBC8F",
        rainbow2 = "#4ECDC4",
        rainbow3 = "#c78a7a",
        rainbow4 = "#F39C12",
        rainbow5 = "#66D9EF",
        rainbow6 = "#FFB74D",

        -- Alpha
        alpha = {
            bg = "#1a2125",
            fg = "#c9d1d9",
        },
    }

    -- Additional color variants
    colors.bg_dark1 = util.darken(colors.bg, 0.8)
    colors.bg_highlight_dark = util.darken(colors.bg_highlight, 0.8)
    colors.fg_float = colors.fg
    colors.fg_dark1 = util.darken(colors.fg, 0.8)

    -- Semantic colors
    colors.green1 = util.lighten(colors.green, 0.9)
    colors.green2 = util.lighten(colors.green, 0.8)
    colors.red1 = util.lighten(colors.error, 0.9)
    colors.red2 = util.lighten(colors.error, 0.8)
    colors.blue1 = util.lighten(colors.blue, 0.9)
    colors.blue2 = util.lighten(colors.blue, 0.8)
    colors.yellow1 = util.lighten(colors.warning, 0.9)
    colors.yellow2 = util.lighten(colors.warning, 0.8)

    -- Special colors
    colors.delta = {
        add = colors.green2,
        delete = colors.red2,
    }

    -- Set theme style
    colors._style = "forest-night"

    -- Additional semantic colors that might be needed
    colors.black = colors.bg_dark1
    colors.dark3 = "#545c7e"
    colors.dark5 = "#737aa2"

    return colors
end

---@param opts ForestNightConfig|nil
function M.setup(opts)
    opts = require("forest-night.config").extend(opts)

    local colors = M.default()

    -- Call on_colors hook
    if opts.on_colors then
        opts.on_colors(colors)
    end

    return colors
end

return M
