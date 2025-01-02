return {
  {
    "williamboman/mason.nvim",
    dependencies = {
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      require("mason").setup()
      -- ensure the registry is updated
      vim.cmd("MasonUpdate")
      
      require("mason-lspconfig").setup({
        ensure_installed = {
          -- web development
          "tsserver",    -- TypeScript/JavaScript
          "cssls",       -- CSS
          "html",        -- HTML
          "eslint",      -- JavaScript/TypeScript linting
          "emmet_ls",    -- Emmet support
          
          -- keep any existing servers you had configured
        },
        automatic_installation = true,
      })
    end,
  }
}
