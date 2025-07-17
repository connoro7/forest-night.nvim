local M = {}

M.bg = "#000000"
M.fg = "#ffffff"

---@param c string
local function hexToRgb(c)
    c = string.lower(c)
    return { tonumber(c:sub(2, 3), 16), tonumber(c:sub(4, 5), 16), tonumber(c:sub(6, 7), 16) }
end

---@param foreground string foreground color
---@param background string background color
---@param alpha number|string number between 0 and 1. 0 results in bg, 1 results in fg
function M.blend(foreground, background, alpha)
    alpha = type(alpha) == "string" and (tonumber(alpha, 16) / 0xff) or alpha
    local bg = hexToRgb(background)
    local fg = hexToRgb(foreground)

    local blendChannel = function(i)
        local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
        return math.floor(math.min(math.max(0, ret), 255) + 0.5)
    end

    return string.format("#%02x%02x%02x", blendChannel(1), blendChannel(2), blendChannel(3))
end

---@param hex string hex color
---@param amount number
---@param bg string background color
function M.darken(hex, amount, bg)
    return M.blend(hex, bg or M.bg, amount)
end

---@param hex string hex color
---@param amount number
---@param fg string foreground color
function M.lighten(hex, amount, fg)
    return M.blend(hex, fg or M.fg, amount)
end

---@param color string hex color
function M.invert(color)
    if color == "NONE" then
        return color
    end
    local rgb = hexToRgb(color)
    local r = 255 - rgb[1]
    local g = 255 - rgb[2]
    local b = 255 - rgb[3]
    return string.format("#%02x%02x%02x", r, g, b)
end

--- Wrapper for vim.api.nvim_set_hl
---@param group string
---@param hl vim.api.keyset.highlight
function M.highlight(group, hl)
    hl.default = hl.default == nil and true or hl.default
    vim.api.nvim_set_hl(0, group, hl)
end

---@param groups ForestNight.Highlights
function M.syntax(groups)
    for group, hl in pairs(groups) do
        M.highlight(group, hl)
    end
end

---@param theme ColorScheme
function M.terminal(theme)
    -- dark
    vim.g.terminal_color_0 = theme.terminal.black
    vim.g.terminal_color_8 = theme.terminal.black_bright

    -- light
    vim.g.terminal_color_7 = theme.terminal.white
    vim.g.terminal_color_15 = theme.terminal.white_bright

    -- colors
    vim.g.terminal_color_1 = theme.terminal.red
    vim.g.terminal_color_9 = theme.terminal.red_bright

    vim.g.terminal_color_2 = theme.terminal.green
    vim.g.terminal_color_10 = theme.terminal.green_bright

    vim.g.terminal_color_3 = theme.terminal.yellow
    vim.g.terminal_color_11 = theme.terminal.yellow_bright

    vim.g.terminal_color_4 = theme.terminal.blue
    vim.g.terminal_color_12 = theme.terminal.blue_bright

    vim.g.terminal_color_5 = theme.terminal.magenta
    vim.g.terminal_color_13 = theme.terminal.magenta_bright

    vim.g.terminal_color_6 = theme.terminal.cyan
    vim.g.terminal_color_14 = theme.terminal.cyan_bright
end

---@param colors ColorScheme
function M.invert_colors(colors)
    return vim.tbl_map(function(c)
        if type(c) == "string" then
            return M.invert(c)
        elseif type(c) == "table" then
            return M.invert_colors(c)
        end
        return c
    end, colors)
end

---@param theme ForestNight.Highlights
function M.load(theme)
    -- only needed to clear when not the default colorscheme
    if vim.g.colors_name then
        vim.cmd("hi clear")
    end

    vim.o.termguicolors = true
    vim.g.colors_name = "forest-night"

    M.syntax(theme)
end

---@param colors ColorScheme
---@return ColorScheme
function M.invertSidebar(colors)
    if vim.o.background == "light" then
        colors.bg_sidebar = colors.fg_gutter
        colors.fg_sidebar = colors.bg_dark
    else
        colors.bg_sidebar = colors.bg_dark
        colors.fg_sidebar = colors.fg_dark
    end
    return colors
end

return M
