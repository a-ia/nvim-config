return {
  "xiyaowong/transparent.nvim", -- The plugin repository
  lazy = false, -- Load the plugin immediately
  priority = 1000, -- Ensure it loads early
  config = function()
    require("transparent").setup({
      enable = true, -- Enable transparency
      extra_groups = { -- Make these groups transparent
        "NormalFloat",
        "NvimTreeNormal",
      },
      exclude = {}, -- Groups to exclude from transparency
    })
  end,
}

