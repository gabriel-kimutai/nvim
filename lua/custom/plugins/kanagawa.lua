return {
  'rebelot/kanagawa.nvim',
  opts = {
    compile = true, -- enable compiling the colorscheme
    undercurl = true, -- enable undercurls
    commentStyle = { italic = true },
    functionStyle = {},
    keywordStyle = { italic = true },
    statementStyle = { bold = true },
    typeStyle = {},
    transparent = true, -- do not set background color
    dimInactive = false, -- dim inactive window `:h hl-NormalNC`
    terminalColors = true, -- define vim.g.terminal_color_{0,17}
    colors = { -- add/modify theme and palette colors
      palette = {},
      theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
    },
    overrides = function(colors) -- add/modify highlights
      local theme = colors.theme
      return {
        -- Make the cursor line background transparent/matching
        CursorLine = { bg = 'none' },
        -- Make line numbers match the gutter/background
        LineNr = { fg = theme.ui.nontext, bg = 'none' },
        -- Make the active line number match the rest
        CursorLineNr = { fg = theme.ui.special, bg = 'none', bold = true },
        -- Optional: Remove the sign column background as well
        SignColumn = { bg = 'none' },

        -- Telescope Border Overrides
        TelescopeBorder = { fg = theme.ui.float.fg_border, bg = 'none' },
        TelescopePromptBorder = { fg = theme.ui.float.fg_border, bg = 'none' },
        TelescopeResultsBorder = { fg = theme.ui.float.fg_border, bg = 'none' },
        TelescopePreviewBorder = { fg = theme.ui.float.fg_border, bg = 'none' },

        -- Optional: Make the Title backgrounds blend in too
        TelescopePromptTitle = { fg = theme.ui.special, bold = true },
        TelescopeResultsTitle = { fg = theme.ui.nontext },
        TelescopePreviewTitle = { fg = theme.ui.special, bold = true },

        -- whichkey
        WhichKey = { bg = 'none' },
        WhichKeyFloat = { bg = 'none' },

        -- In your kanagawa.lua overrides function
        OilNormal = { bg = 'none' },
        OilDir = { fg = theme.ui.special, bold = true },

        GitSignsAdd = { fg = theme.vcs.added, bg = 'none' },
        GitSignsChange = { fg = theme.vcs.changed, bg = 'none' },
        GitSignsDelete = { fg = theme.vcs.removed, bg = 'none' },
        GitSignsTopdelete = { fg = theme.vcs.removed, bg = 'none' },
        GitSignsChangedelete = { fg = theme.vcs.changed, bg = 'none' },

        -- STAGED SIGNS (Fixed: Removed 'opacity')
        GitSignsStagedAdd = { fg = theme.vcs.added, bg = 'none' },
        GitSignsStagedChange = { fg = theme.vcs.changed, bg = 'none' },
        GitSignsStagedDelete = { fg = theme.vcs.removed, bg = 'none' },

        -- CURRENT LINE BLAME
        GitSignsCurrentLineBlame = { fg = theme.ui.nontext, italic = true },

        -- PREVIEW HIGHLIGHTS
        GitSignsAddInline = { bg = theme.diff.add },
        GitSignsDeleteInline = { bg = theme.diff.delete },
      }
    end,
    theme = 'dragon', -- Load "wave" theme
    background = { -- map the value of 'background' option to a theme
      dark = 'dragon', -- try "dragon" !
      light = 'lotus',
    },
  },
  config = function(_, opts)
    require('kanagawa').setup(opts)
    -- vim.cmd 'colorscheme kanagawa'
  end,
}
