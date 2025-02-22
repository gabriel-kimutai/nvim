return {
  'lukas-reineke/indent-blankline.nvim',
  main = 'ibl',
  ---@module "ibl"
  ---@type ibl.config
  opts = {
    ---@type ibl.config.scope
    scope = {
      enabled = true,
      show_start = true,
      show_end = false,
      injected_languages = false,
      highlight = { 'Function', 'Label' },
      priority = 500,
    },
    indent = {},
  },
}
