-- Minimal test file to check if Forest Night is working
-- Run with :luafile %

-- First, let's check what's available
print("=== Forest Night Debug Info ===")

-- Check if main module exists
local ok1, forest = pcall(require, "forest-night")
print("Main module (forest-night):", ok1)
if ok1 then
    print("  Functions available:", vim.inspect(vim.tbl_keys(forest)))
end

-- Check if init module exists
local ok2, init = pcall(require, "forest-night.init")
print("Init module (forest-night.init):", ok2)

-- Check if config module exists
local ok3, config = pcall(require, "forest-night.config")
print("Config module (forest-night.config):", ok3)

-- Check if colors module exists
local ok4, colors = pcall(require, "forest-night.colors")
print("Colors module (forest-night.colors):", ok4)

-- Try to set up and load the theme
if ok1 then
    print("\n=== Attempting to load theme ===")
    local setup_ok = pcall(forest.setup, {})
    print("Setup result:", setup_ok)

    local load_ok = pcall(forest.load)
    print("Load result:", load_ok)

    if load_ok then
        print("Theme loaded successfully!")
        print("Current colorscheme:", vim.g.colors_name)
    end
else
    print("\nERROR: Main module not found!")
    print("Make sure lua/forest-night.lua exists in your plugin directory")
end

-- Check runtime path
print("\n=== Runtime Path Check ===")
local runtime_paths = vim.split(vim.o.runtimepath, ',')
for _, path in ipairs(runtime_paths) do
    if path:match("forest%-night") then
        print("Found forest-night in runtimepath:", path)
    end
end
