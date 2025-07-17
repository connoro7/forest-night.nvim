# forest-night.nvim


# 🌲🌙 Forest Night Neovim Theme

A dark, forest-inspired Neovim theme written in Lua, based on the Forest Night VS Code theme.

## ✨ Features

- Supports the latest Neovim 0.9.0 features
- Full TreeSitter support
- LSP semantic highlighting support
- Extensive plugin support
- Terminal colors
- Transparent background option
- Customizable styles for syntax groups

## 📦 Installation

### [lazy.nvim](https://github.com/folke/lazy.nvim)

```lua
{
  "connoro7/forest-night.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("forest-night").setup({
      -- custom config here
    })
    vim.cmd[[colorscheme forest-night]]
  end,
}
```

### [packer.nvim](https://github.com/wbthomason/packer.nvim)

```lua
use {
  "yourusername/forest-night.nvim",
  config = function()
    require("forest-night").setup()
    vim.cmd[[colorscheme forest-night]]
  end
}
```

### [vim-plug](https://github.com/junegunn/vim-plug)

```vim
Plug 'yourusername/forest-night.nvim'
colorscheme forest-night
```

## ⚙️ Configuration

Forest Night comes with the following default configuration:

```lua
require("forest-night").setup({
  transparent = false, -- Enable this to disable setting the background color
  terminal_colors = true, -- Configure the colors used when opening a `:terminal` in Neovim
  styles = {
    -- Style to be applied to different syntax groups
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
  on_colors = function(colors) end,

  --- You can override specific highlights to use other groups or a hex color
  --- function will be called with a Highlights and ColorScheme table
  on_highlights = function(highlights, colors) end,

  cache = true, -- When set to true, the theme will be cached for better performance

  plugins = {
    -- enable all plugins when not using lazy.nvim
    -- set to false to manually enable/disable plugins
    all = package.loaded.lazy == nil,
    -- uses your plugin manager to automatically enable needed plugins
    -- currently only lazy.nvim is supported
    auto = true,
  },
})
```

### Example: Customizing colors

```lua
require("forest-night").setup({
  on_colors = function(colors)
    colors.hint = colors.orange
    colors.error = "#ff0000"
  end
})
```

### Example: Borderless Telescope

```lua
require("forest-night").setup({
  on_highlights = function(hl, c)
    local prompt = "#2d3149"
    hl.TelescopeNormal = {
      bg = c.bg_dark,
      fg = c.fg_dark,
    }
    hl.TelescopeBorder = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopePromptNormal = {
      bg = prompt,
    }
    hl.TelescopePromptBorder = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePromptTitle = {
      bg = prompt,
      fg = prompt,
    }
    hl.TelescopePreviewTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
    hl.TelescopeResultsTitle = {
      bg = c.bg_dark,
      fg = c.bg_dark,
    }
  end,
})
```

## 🎨 Color Palette

The Forest Night theme uses the following colors:

| Color          | Hex       | Preview |
|----------------|-----------|---------|
| Background     | `#1a2125` | ![#1a2125](https://via.placeholder.com/15/1a2125/1a2125.png) |
| Foreground     | `#c9d1d9` | ![#c9d1d9](https://via.placeholder.com/15/c9d1d9/c9d1d9.png) |
| Selection      | `#3a4a55` | ![#3a4a55](https://via.placeholder.com/15/3a4a55/3a4a55.png) |
| Comment        | `#4a5568` | ![#4a5568](https://via.placeholder.com/15/4a5568/4a5568.png) |
| Red            | `#c78a7a` | ![#c78a7a](https://via.placeholder.com/15/c78a7a/c78a7a.png) |
| Green          | `#8FBC8F` | ![#8FBC8F](https://via.placeholder.com/15/8FBC8F/8FBC8F.png) |
| Yellow         | `#F39C12` | ![#F39C12](https://via.placeholder.com/15/F39C12/F39C12.png) |
| Blue/Cyan      | `#4ECDC4` | ![#4ECDC4](https://via.placeholder.com/15/4ECDC4/4ECDC4.png) |
| Magenta/Purple | `#9B59B6` | ![#9B59B6](https://via.placeholder.com/15/9B59B6/9B59B6.png) |
| Light Blue     | `#66D9EF` | ![#66D9EF](https://via.placeholder.com/15/66D9EF/66D9EF.png) |

## 🔌 Plugin Support

Forest Night supports the following plugins:

- [bufferline.nvim](https://github.com/akinsho/bufferline.nvim)
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
- [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim)
- [lualine.nvim](https://github.com/nvim-lualine/lualine.nvim)
- [nvim-tree.lua](https://github.com/kyazdani42/nvim-tree.lua)
- [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim)

## 🚀 Usage with Lualine

To use Forest Night with lualine:

```lua
require('lualine').setup {
  options = {
    theme = require('forest-night.groups.plugins.lualine').theme()
  }
}
```

## 📄 File Structure

```
forest-night.nvim/
├── colors/
│   └── forest-night.lua      # Colorscheme file
├── lua/
│   ├── forest-night/
│   │   ├── init.lua          # Main entry point
│   │   ├── colors.lua        # Color definitions
│   │   ├── config.lua        # Configuration handling
│   │   ├── theme.lua         # Theme setup
│   │   ├── util.lua          # Utility functions
│   │   └── groups/
│   │       ├── init.lua      # Group loader
│   │       ├── base.lua      # Base highlight groups
│   │       ├── kinds.lua     # LSP kind highlights
│   │       ├── syntax.lua    # Syntax highlights
│   │       ├── treesitter.lua # TreeSitter highlights
│   │       ├── lsp.lua       # LSP highlights
│   │       └── plugins/      # Plugin-specific highlights
│   └── forest-night.lua      # Main module
└── README.md
```

## 🤝 Contributing

Contributions are welcome! Please feel free to submit a Pull Request.

## 📝 License

This theme is released under the MIT License. See LICENSE for details.

## 🙏 Credits

- Based on the Forest Night VS Code theme color palette
- Inspired by and following the structure of [folke/tokyonight.nvim](https://github.com/folke/tokyonight.nvim)
- Thanks to the Neovim community for the amazing ecosystem

