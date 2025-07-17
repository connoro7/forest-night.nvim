-- Debug test to check color values
-- Run with :luafile %

print("=== Forest Night Color Debug ===")

-- Test loading colors module directly
local ok, colors_module = pcall(require, "forest-night.colors")
if not ok then
    print("ERROR loading colors module:", colors_module)
    return
end

-- Test the default function
local ok2, colors = pcall(colors_module.default)
if not ok2 then
    print("ERROR in default():", colors)
    return
end

-- Check for nil colors
print("\nChecking for nil color values:")
local nil_colors = {}
for k, v in pairs(colors) do
    if v == nil then
        table.insert(nil_colors, k)
    end
end

if #nil_colors > 0 then
    print("Found nil colors:", vim.inspect(nil_colors))
else
    print("All colors defined properly")
end

-- Check specific colors used in lighten/darken
print("\nChecking specific colors:")
print("green:", colors.green)
print("error:", colors.error)
print("blue:", colors.blue)
print("warning:", colors.warning)

-- Test util functions
local util = require("forest-night.util")
print("\nTesting util functions:")
local test_color = "#8FBC8F"
print("Original:", test_color)
print("Lightened:", util.lighten(test_color, 0.9))
print("Darkened:", util.darken(test_color, 0.8))

-- Test with nil
print("\nTesting with nil:")
print("Lighten nil:", util.lighten(nil, 0.9))
print("Darken nil:", util.darken(nil, 0.8))
