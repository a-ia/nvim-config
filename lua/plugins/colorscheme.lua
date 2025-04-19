-- Theme/Colorscheme - Catppuccin Latte (Light Mode)
return {
  -- https://github.com/catppuccin/nvim
  'catppuccin/nvim',
  name = "catppuccin", 
  lazy = false, -- We want the colorscheme to load immediately when starting Neovim
  priority = 1000, -- Load the colorscheme before other non-lazy-loaded plugins
  opts = {
    -- Light mode configuration
    flavour = "latte", -- Using latte for light mode with white background
    background = {
      light = "latte",
      dark = "mocha",
    },
    transparent_background = false, 
    show_end_of_buffer = false,
    term_colors = true,
    dim_inactive = {
      enabled = false,
      shade = "dark",
      percentage = 0.15,
    },
    no_italic = false,
    no_bold = false,
    no_underline = false,
    styles = {
      comments = { "italic" },
      conditionals = { "italic" },
      loops = {},
      functions = {},
      keywords = {},
      strings = {},
      variables = {},
      numbers = {},
      booleans = {},
      properties = {},
      types = {},
      operators = {},
    },
    color_overrides = {},
    custom_highlights = {},
    integrations = {
      cmp = true,
      gitsigns = true,
      nvimtree = true,
      telescope = true,
      notify = true,
      mini = true,
    },
  },
  config = function(_, opts)
    require('catppuccin').setup(opts)
    vim.cmd("colorscheme catppuccin")
    
    -- Force light mode:
    vim.cmd("set background=light")
  end
}
