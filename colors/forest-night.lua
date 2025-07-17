-- Forest Night colorscheme file
-- This file is loaded when user runs :colorscheme forest-night

-- Check if the main module exists
local ok, forest_night = pcall(require, "forest-night")
if ok then
    forest_night.load()
else
    -- Fallback: try to load from the plugin directory structure
    local ok2, forest_night_init = pcall(require, "forest-night.init")
    if ok2 then
        forest_night_init.load()
    else
        error("Forest Night theme not properly installed. Could not find forest-night module.")
    end
end
