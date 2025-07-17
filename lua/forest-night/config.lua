local M = {}

---@class ForestNightConfig
---@field on_colors fun(colors: ColorScheme)
---@field on_highlights fun(highlights: ForestNight.Highlights, colors: ColorScheme)
M.defaults = {
    style = "main",       -- The theme comes in one main style
    transparent = false,  -- Enable this to disable setting the background color
    terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
    styles = {
        -- Style to be applied to different syntax groups
        -- Value is any valid attr-list value for `:help nvim_set_hl`
        comments = { italic = true },
        keywords = { italic = true },
        functions = {},
        variables = {},
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "dark", -- style for sidebars, see below
        floats = "dark", -- style for floating windows
    },
    dim_inactive = false, -- dims inactive windows
    lualine_bold = false, -- When `true`, section headers in the lualine theme will be bold

    --- You can override specific color groups to use other groups or a hex color
    --- function will be called with a ColorScheme table
    ---@param colors ColorScheme
    on_colors = function(colors) end,

    --- You can override specific highlights to use other groups or a hex color
    --- function will be called with a Highlights and ColorScheme table
    ---@param highlights ForestNight.Highlights
    ---@param colors ColorScheme
    on_highlights = function(highlights, colors) end,

    cache = true, -- When set to true, the theme will be cached for better performance

    ---@type table<string, boolean|{enabled:boolean}>
    plugins = {
        -- enable all plugins when not using lazy.nvim
        -- set to false to manually enable/disable plugins
        all = package.loaded.lazy == nil,
        -- uses your plugin manager to automatically enable needed plugins
        -- currently only lazy.nvim is supported
        auto = true,
        -- add any plugins here that you want to enable
        -- for all possible plugins, see:
        -- * https://github.com/forest-night.nvim/tree/main/lua/forest-night/groups
        -- telescope = true,
    },
}

---@type ForestNightConfig
M.options = nil

---@param options ForestNightConfig|nil
function M.setup(options)
    M.options = vim.tbl_deep_extend("force", {}, M.defaults, options or {})
end

---@param options ForestNightConfig|nil
function M.extend(options)
    return vim.tbl_deep_extend("force", {}, M.options or M.defaults, options or {})
end

function M.is_dark()
    return vim.o.background == "dark"
end

M.setup()

return M
