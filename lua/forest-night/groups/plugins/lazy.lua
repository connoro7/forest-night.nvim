-- lazy.lua
local M = {}
function M.get(colors, _)
    return {
        LazyProgressDone = { bold = true, fg = colors.green },
        LazyProgressTodo = { bold = true, fg = colors.fg_gutter },
    }
end

return M
