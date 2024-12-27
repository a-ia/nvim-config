-- mason.lua
  return {
  "williamboman/mason.nvim",
  config = function()
  require("mason").setup()
  -- ensure the registry is updated
    vim.cmd("MasonUpdate")
  end,
}
