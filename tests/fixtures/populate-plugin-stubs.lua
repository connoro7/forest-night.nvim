-- Ensure all supported plugins are at least stubbed.

local plugin_dir = vim.fn.expand("~/.config/nvim/dev/plugins/forest-night.nvim")

vim.fn.mkdir(plugin_dir .. "/lua/forest-night/groups/plugins", "p")

local plugins = {
    "aerial",
    "alpha",
    "barbar",
    "dashboard",
    "indent-blankline",
    "lazy",
    "leap",
    "markdown",
    "mason",
    "mini",
    "neo-tree",
    "neogit",
    "neotest",
    "noice",
    "notify",
    "rainbow-delimiters",
    "trouble",
    "which-key"
}

-- Stub content
local stub_content = [[local M = {}

---@param colors ColorScheme
function M.get(colors, _)
  return {}
end

return M]]

for _, plugin in ipairs(plugins) do
    local file_path = plugin_dir .. "/lua/forest-night/groups/plugins/" .. plugin .. ".lua"
    if vim.fn.filereadable(file_path) == 0 then
        local file = io.open(file_path, "w")
        if file then
            file:write(stub_content)
            file:close()
            print("Created stub file: " .. plugin .. ".lua")
        else
            print("ERROR: Could not create " .. plugin .. ".lua")
        end
    else
        print("File already exists: " .. plugin .. ".lua")
    end
end

print("\nStub file creation complete!")
print("Now try: :colorscheme forest-night")
