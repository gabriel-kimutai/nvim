return {
  'stevearc/oil.nvim',
  ---@module 'oil'
  ---@type oil.SetupOpts
  opts = {
    -- Making the oil buffer look as clean as your editor
    columns = { 'icon' }, -- only icons, no sizes/permissions for a "zen" look
    view_options = {
      show_hidden = true,
    },
    win_options = {
      number = false,
      relativenumber = false,
      signcolumn = 'yes',
      cursorline = true, -- Highlight the file you're on
    },
  },
  -- Optional dependencies
  dependencies = { { 'nvim-mini/mini.icons', opts = {} } },
  -- dependencies = { "nvim-tree/nvim-web-devicons" }, -- use if you prefer nvim-web-devicons
  -- Lazy loading is not recommended because it is very tricky to make it work correctly in all situations.
  lazy = false,
  keys = {
    { '<leader>o', '<CMD>Oil<CR>', desc = 'Open [O]il' },
  },
}
