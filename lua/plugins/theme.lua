return {
  { -- You can easily change to a different colorscheme.
    -- Change the name of the colorscheme plugin below, and then
    -- change the command in the config to whatever the name of that colorscheme is.
    --
    -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`
    'catppuccin/nvim',
    lazy = false, -- make sure we load this during startup if it is your main colorscheme
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      -- Load the colorscheme here
      vim.cmd.colorscheme 'catppuccin-mocha'
      -- vim.cmd.colorscheme 'catppuccin-latte'
      --
      -- -- You can configure highlights by doing something like:
      -- vim.cmd.hi 'Comment gui=none'
      --
      require('catppuccin').setup {
        transparent_background = true,
      }
      require('catppuccin').setup {
        custom_highlights = function(colors)
          local higlights = {
            CursorLineNR = { fg = '#f2cdcd' },
            -- MiniStatuslineDevinfo = { fg = colors.subtext1, bg = colors.surface1 },
            -- MiniStatuslineFileinfo = { fg = colors.subtext1, bg = colors.surface1 },
            -- MiniStatuslineFilename = { fg = colors.text, bg = colors.mantle },
            -- MiniStatuslineInactive = { fg = colors.blue, bg = colors.mantle },
            -- MiniStatuslineModeCommand = { fg = colors.base, bg = colors.peach, style = { 'bold' } },
            -- MiniStatuslineModeInsert = { fg = colors.base, bg = colors.green, style = { 'bold' } },
            -- MiniStatuslineModeNormal = { fg = colors.mantle, bg = colors.blue, style = { 'bold' } },
            -- MiniStatuslineModeOther = { fg = colors.base, bg = colors.teal, style = { 'bold' } },
            -- MiniStatuslineModeReplace = { fg = colors.base, bg = colors.red, style = { 'bold' } },
            -- MiniStatuslineModeVisual = { fg = colors.base, bg = colors.mauve, style = { 'bold' } },
          }
          for key, value in pairs(higlights) do
            local option = {
              fg = value.fg,
              bg = value.bg,
            }
            for _, style in ipairs(value.style or {}) do
              option[style] = true
            end
            vim.api.nvim_set_hl(0, key, option)
          end
          return higlights
        end,
      }
    end,
  }
}

