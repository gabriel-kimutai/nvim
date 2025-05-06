return {
  'zenbones-theme/zenbones.nvim',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  init = function()
    -- Load the colorscheme here.
    -- Like many other themes, this one has different styles, and you could load
    -- any other, such as 'tokyonight-storm', 'tokyonight-moon', or 'tokyonight-day'.
    vim.g.kanagawabones = {
      darken_comments = 45,
      darkness = 'stark',
      transparent_background = true,
    }

    vim.g.forestbones = {
      darken_comments = 45,
      darkness = 'stark',
      transparent_background = true,
    }
    -- vim.o.termguicolors = true
    -- vim.o.background = 'dark'
    -- vim.cmd.colorscheme 'forestbones'
    -- You can configure highlights by doing something like:
    -- vim.cmd.hi 'Comment gui=none'
  end,
  -- Optionally install Lush. Allows for more configuration or extending the colorscheme
  -- If you don't want to install lush, make sure to set g:zenbones_compat = 1
  -- In Vim, compat mode is turned on as Lush only works in Neovim.
  dependencies = { 'rktjmp/lush.nvim' },
  requires = 'rktjmp/lush.nvim',
}
