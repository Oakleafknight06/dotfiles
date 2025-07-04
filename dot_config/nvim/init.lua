-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = "https://github.com/folke/lazy.nvim.git"
  local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
  if vim.v.shell_error ~= 0 then
    vim.api.nvim_echo({
      { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
      { out, "WarningMsg" },
      { "\nPress any key to exit..." },
    }, true, {})
    vim.fn.getchar()
    os.exit(1)
  end
end
vim.opt.rtp:prepend(lazypath)

-- Make sure to setup `mapleader` and `maplocalleader` before
-- loading lazy.nvim so that mappings are correct.
-- This is also a good place to setup other settings (vim.opt)
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- Setup lazy.nvim
require("lazy").setup({
  spec = {
    -- add your plugins here
    {
      "folke/tokyonight.nvim",
      lazy = false,
      priority = 1000,
      opts = {},
    },
    {
    "Mofiqul/adwaita.nvim",
    lazy = false,
    priority = 1000,
    
    -- configure and set on startup
    config = function()
        vim.g.adwaita_darker = true             -- for darker version
        vim.g.adwaita_disable_cursorline = true -- to disable cursorline
        vim.g.adwaita_transparent = true        -- makes the background transparent
        vim.cmd('colorscheme adwaita')
    end
    },
    {
    'numToStr/Comment.nvim',
    opts = {}
    }
  },
  -- Configure any other settings here. See the documentation for more details.
  -- colorscheme that will be used when installing plugins.
  install = { colorscheme = { "adwaita" } },
  -- automatically check for plugin updates
  checker = { enabled = true },
})

-- Basic Settings
vim.opt.number = true
vim.opt.spell = true
vim.opt.spell.spelllang = 'en_us'
-- For comment plugin
require('Comment').setup()
