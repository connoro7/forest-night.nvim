-- local M = {}
--
-- -- Get highlight group definitions
-- ---@param colors ColorScheme
-- ---@param opts ForestNightConfig
-- function M.setup(colors, opts)
--     local groups = {
--         base = require("forest-night.groups.base").get(colors, opts),
--         kinds = require("forest-night.groups.kinds").get(colors, opts),
--         syntax = require("forest-night.groups.syntax").get(colors, opts),
--         treesitter = require("forest-night.groups.treesitter").get(colors, opts),
--         lsp = require("forest-night.groups.lsp").get(colors, opts),
--         plugins = {},
--     }
--
--     -- Load plugin specific highlights
--     local plugins = {
--         ["aerial"] = true,
--         ["alpha"] = true,
--         ["barbar"] = true,
--         ["bufferline"] = true,
--         ["cmp"] = true,
--         ["dashboard"] = true,
--         ["gitsigns"] = true,
--         ["indent-blankline"] = true,
--         ["lazy"] = true,
--         ["leap"] = true,
--         ["lualine"] = opts.lualine_bold,
--         ["markdown"] = true,
--         ["mason"] = true,
--         ["mini"] = true,
--         ["neo-tree"] = true,
--         ["neogit"] = true,
--         ["neotest"] = true,
--         ["noice"] = true,
--         ["notify"] = true,
--         ["nvim-tree"] = true,
--         ["rainbow-delimiters"] = true,
--         ["telescope"] = true,
--         ["trouble"] = true,
--         ["which-key"] = true,
--     }
--
--     -- Enable/disable plugins based on config
--     for plugin, enabled in pairs(plugins) do
--         if enabled then
--             if opts.plugins.all then
--                 enabled = true
--             elseif opts.plugins[plugin] ~= nil then
--                 enabled = opts.plugins[plugin]
--             end
--         end
--
--         if enabled then
--             groups.plugins[plugin] = require("forest-night.groups.plugins." .. plugin).get(colors, opts)
--         end
--     end
--
--     -- Flatten groups
--     local highlights = {}
--     for _, group in pairs(groups) do
--         if type(group) == "table" then
--             for k, v in pairs(group) do
--                 highlights[k] = v
--             end
--         end
--     end
--
--     -- Call on_highlights hook
--     if opts.on_highlights then
--         opts.on_highlights(highlights, colors)
--     end
--
--     return highlights
-- end
--
-- return M

local M = {}

-- Get highlight group definitions
---@param colors ColorScheme
---@param opts ForestNightConfig
function M.setup(colors, opts)
    local groups = {
        base = require("forest-night.groups.base").get(colors, opts),
        kinds = require("forest-night.groups.kinds").get(colors, opts),
        syntax = require("forest-night.groups.syntax").get(colors, opts),
        treesitter = require("forest-night.groups.treesitter").get(colors, opts),
        lsp = require("forest-night.groups.lsp").get(colors, opts),
        plugins = {},
    }

    -- Load plugin specific highlights
    local plugins = {
        ["aerial"] = true,
        ["alpha"] = true,
        ["barbar"] = true,
        ["bufferline"] = true,
        ["cmp"] = true,
        ["dashboard"] = true,
        ["gitsigns"] = true,
        ["indent-blankline"] = true,
        ["lazy"] = true,
        ["leap"] = true,
        ["lualine"] = opts.lualine_bold,
        ["markdown"] = true,
        ["mason"] = true,
        ["mini"] = true,
        ["neo-tree"] = true,
        ["neogit"] = true,
        ["neotest"] = true,
        ["noice"] = true,
        ["notify"] = true,
        ["nvim-tree"] = true,
        ["rainbow-delimiters"] = true,
        ["telescope"] = true,
        ["trouble"] = true,
        ["which-key"] = true,
    }

    -- Enable/disable plugins based on config
    for plugin, enabled in pairs(plugins) do
        if enabled then
            if opts.plugins.all then
                enabled = true
            elseif opts.plugins[plugin] ~= nil then
                enabled = opts.plugins[plugin]
            end
        end

        if enabled then
            local ok, plugin_module = pcall(require, "forest-night.groups.plugins." .. plugin)
            if ok then
                groups.plugins[plugin] = plugin_module.get(colors, opts)
            end
        end
    end

    -- Flatten groups
    local highlights = {}
    for _, group in pairs(groups) do
        if type(group) == "table" then
            for k, v in pairs(group) do
                highlights[k] = v
            end
        end
    end

    -- Call on_highlights hook
    if opts.on_highlights then
        opts.on_highlights(highlights, colors)
    end

    return highlights
end

return M
