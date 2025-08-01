-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  lazy = false,
  keys = {
    { '<leader>o', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  config = function()
    require('neo-tree').setup {
      close_if_last_window = true,
      filesystem = {
        hijack_netrw_behavior = 'open_default',
      },
    }
  end,
  --@module "neo-tree"
  --@type neotree.Config?
  opts = {
    close_if_last_window = true,
    filesystem = {
      window = {
        mappings = {
          ['<leader>o'] = 'close_window',
        },
      },
    },
  },
}
