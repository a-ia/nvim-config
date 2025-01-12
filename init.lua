-- Bootstrap lazy
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Set mapleader before lazy.nvim initialization
vim.g.mapleader = " "

-- Initialize lazy with dynamic loading of anything in the plugins directory
require("lazy").setup("plugins", {
   change_detection = {
    enabled = true, -- Automatically check for config file changes and reload the UI
    notify = false, -- Turn off notifications for plugin changes
  },
})


-- Load core configurations
require("core.options")
require("core.keymaps")

-- Set Node.js host path explicitly
vim.g.node_host_prog = '/usr/bin/node'

-- Ensure nvim recognizes .gd files as gdscript
vim.filetype.add({
  extension = {
    gd = "gdscript",
  },
})

vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local projectfile = vim.fn.getcwd() .. '/project.godot'
    if vim.fn.filereadable(projectfile) == 1 and vim.fn.serverlist()[1] == nil then
        vim.fn.serverstart('/tmp/godothost')
    end
  end
})

