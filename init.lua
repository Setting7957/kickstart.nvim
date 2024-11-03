-- The line below is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et path+=./lua

-- basic config; the files can be found in the ./lua directory
-- see :h lua-guide-modules
require 'core.basic-options'
require 'core.basic-keymaps'
require 'core.basic-autocommands'

-- Install the `lazy.nvim` plugin manager
-- See `:help lazy.nvim.txt` or https://github.com/folke/lazy.nvim for more info
local lazypath = vim.fn.stdpath 'data' .. '/lazy/lazy.nvim'
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  local lazyrepo = 'https://github.com/folke/lazy.nvim.git'
  local out = vim.fn.system { 'git', 'clone', '--filter=blob:none', '--branch=stable', lazyrepo, lazypath }
  if vim.v.shell_error ~= 0 then
    error('Error cloning lazy.nvim:\n' .. out)
  end
end ---@diagnostic disable-next-line: undefined-field
-- Register the plugin after downloading
vim.opt.rtp:prepend(lazypath) -- rtp = runtimepath

-- Get plugins from the ./lua/plugin folder. Each file in that folder returns
-- a "spec"; the table that configures its respective plugin.
-- For additional information, see `:help lazy.nvim-lazy.nvim-structuring-your-plugins`
require('lazy').setup {
  spec = { { import = 'plugin' } },
  -- consider also the following plugins:
  -- require 'kickstart.plugins.debug',    -- debugger
  -- require 'kickstart.plugins.lint',     -- linter
  -- require 'kickstart.plugins.neo-tree', -- file manager
  -- require 'kickstart.plugins.gitsigns', -- adds gitsigns recommend keymaps
  ui = {
    -- If you are using a Nerd Font: set icons to an empty table which will use the
    -- default lazy.nvim defined Nerd Font icons, otherwise define a unicode icons table
    icons = vim.g.have_nerd_font and {} or {
      cmd = '⌘',
      config = '🛠',
      event = '📅',
      ft = '📂',
      init = '⚙',
      keys = '🗝',
      plugin = '🔌',
      runtime = '💻',
      require = '🌙',
      source = '📄',
      start = '🚀',
      task = '📌',
      lazy = '💤 ',
    },
  },
}
