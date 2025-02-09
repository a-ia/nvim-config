return {
  -- Emmet support for vim (HTML/CSS expansion)
  {
    "mattn/emmet-vim",
    event = "VeryLazy",
    config = function()
      vim.g.user_emmet_leader_key = '<C-e>'  -- trigger with Ctrl+e + ,
      vim.g.user_emmet_settings = {
        javascript = {
          extends = 'jsx'
        }
      }
    end
  },

  -- Live server for HTML/CSS development
  {
    "turbio/bracey.vim",
    build = "npm install --prefix server",
    event = "VeryLazy",
  },

  -- Better JavaScript/TypeScript support
  {
    "pmizio/typescript-tools.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "neovim/nvim-lspconfig" },
    opts = {},
  },

  -- SQLite database viewer
  {
    "tpope/vim-dadbod",
    dependencies = {
      "kristijanhusak/vim-dadbod-ui",
      "kristijanhusak/vim-dadbod-completion",
    },
    config = function()
      vim.g.db_ui_save_location = vim.fn.stdpath("data") .. "/db_ui"
    end,
  },

  -- CSS color highlighting
  {
    "norcalli/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup({
        "css",
        "scss",
        "html",
        "javascript",
        html = { mode = "foreground" },
      })
    end,
  },

  -- REST Client
  {
    "rest-nvim/rest.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    config = function()
      require("rest-nvim").setup({
        result_split_horizontal = false,
        skip_ssl_verification = false,
        highlight = {
          enabled = true,
          timeout = 150,
        },
      })
    end,
  }
}
