--if true then return {} end
return {
  "AstroNvim/astrotheme",
  opts = {
    palette = "astrodark", -- String of the default palette to use when calling `:colorscheme astrotheme`

    style = {
      transparent = false,         -- Bool value, toggles transparency.
      inactive = true,             -- Bool value, toggles inactive window color.
      float = true,                -- Bool value, toggles floating windows background colors.
      neotree = true,              -- Bool value, toggles neo-trees background color.
      border = true,               -- Bool value, toggles borders.
      title_invert = true,         -- Bool value, swaps text and background colors.
      italic_comments = true,      -- Bool value, toggles italic comments.
      simple_syntax_colors = true, -- Bool value, simplifies the amounts of colors used for syntax highlighting.
    },


    termguicolors = true, -- Bool value, toggles if termguicolors are set by AstroTheme.

    terminal_color = true, -- Bool value, toggles if terminal_colors are set by AstroTheme.

    plugin_default = "auto", -- Sets how all plugins will be loaded
    -- "auto": Uses lazy / packer enabled plugins to load highlights.
    -- true: Enables all plugins highlights.
    -- false: Disables all plugins.

    plugins = {              -- Allows for individual plugin overrides using plugin name and value from above.
      -- ["bufferline.nvim"] = false,
    },

    palettes = {
      -- global = {             -- Globally accessible palettes, theme palettes take priority.
      --   my_grey = "#ebebeb",
      --   my_color = "#ffffff"
      -- },
      -- astrodark = {          -- Extend or modify astrodarks palette colors
      --   ui = {
      --     red = "#800010", -- Overrides astrodarks red UI color
      --     accent = "#CC83E3"  -- Changes the accent color of astrodark.
      --   },
      --   syntax = {
      --     cyan = "#800010", -- Overrides astrodarks cyan syntax color
      --     comments = "#CC83E3"  -- Overrides astrodarks comment color.
      --   },
      --   my_color = "#000000" -- Overrides global.my_color
      -- },
      astrodark = {
        ui = {
          tool = "#1a1a1a",
          base = "#212121",
          inactive_base = "#1a1a1a",
          text = "#e5e5e5",
          text_active = "#e8e8e8",
          text_inactive = "#9c9c9c",
          text_match = "#fafafa",
          none_text = "#404040",
          current_line = "#292929",
          tabline = "#111111",
          selection = "#404040",
        },
        syntax = {
          comment = "SkyBlue",
          text = "#f2f2f2",
        }
      },
    },

    highlights = {
      -- global = {             -- Add or modify hl groups globally, theme specific hl groups take priority.
      --   modify_hl_groups = function(hl, c)
      --     hl.PluginColor4 = {fg = c.my_grey, bg = c.none }
      --   end,
      --   ["@String"] = {fg = "#ff00ff", bg = "NONE"},
      -- },
      astrodark = {
        -- first parameter is the highlight table and the second parameter is the color palette table
        modify_hl_groups = function(hl, c) -- modify_hl_groups function allows you to modify hl groups,
          hl.String.fg = "#ffa0a0"
          hl.Number.fg = "#ffa0a0"
          hl.Constant.fg = "#ffa0a0"
          hl.Statement.fg = c.syntax.yellow
          hl.Conditional.fg = "khaki"
          hl.Repeat.fg = "khaki"
          hl.Type.fg = "darkkhaki"
          hl.StorageClass.fg = "darkkhaki"
          hl.Define.fg = "indianred"
          hl.Keyword.fg = "darkkhaki"
          hl.Include.fg = "indianred"
          hl.Macro.fg = "indianred"
          hl.Function.fg = c.syntax.text
          hl.Structure.fg = "darkkhaki"
          hl.Label.fg = c.syntax.text
          hl.Operator.fg = c.syntax.text
          hl.RedundantWhitespace.bg = "indianred"
        end,

        ["@keyword.directive.define.c"] = { fg = "indianred", bg = "NONE" },
        ["@keyword.directive.c"] = { fg = "indianred", bg = "NONE" },
        ["@lsp.type.macro.c"] = { fg = "#e5e5e5", bg = "NONE"},
        ["@lsp.typemod.macro.declaration.c"] = { fg = "indianred", bg = "NONE"},
        ["@property"] = { fg = "#e5e5e5", bg = "NONE" },
        ["@lsp.typemod.variable.readonly.c"] = { fg = "#e5e5e5", bg = "NONE" },
        ["@lsp.typemod.label.declaration.c"] = { fg = "khaki", bg = "NONE"},
        ["cLabel"] = { fg = "khaki" },
        ["CopilotSuggestion"] = { fg = "#7f7f7f" },
        ["CopilotAnnotation"] = { fg = "#7f7f7f" },
      },
    },

  }
}
