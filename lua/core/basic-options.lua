-- Set <space> as the leader key
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = '\\'

-- Set to true if you have a Nerd Font installed and selected in the terminal
-- See https://www.nerdfonts.com
vim.g.have_nerd_font = true

-- [[ Setting options ]]

-- Set tab and indent size to 4
-- May be overriden by the tpope/vim-sleuth plugin
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

-- Change tab characters to tabstop number of spaces
vim.opt.expandtab = true
-- Make line numbers default
vim.opt.number = true
vim.opt.relativenumber = true

-- Set search highlight on
vim.opt.hlsearch = true
-- Set incremental search highlight
vim.opt.incsearch = true

-- Set word wrapping (display single lines as multiple
-- when they reach the edge of the window)
vim.opt.wrap = true
vim.opt.linebreak = true

-- Search casing. Both of these must be set for smart case
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Show commands as they're typed
vim.opt.showcmd = true

-- Copy indent from previous line
vim.opt.autoindent = true
-- Indent automatically, e.g. after a {
vim.opt.smartindent = true

-- Prevent system bell from sounding
vim.opt.vb = true
-- vim.opt.t_vb = true

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Change the direction of new splits
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Allow switching buffers without saving
vim.opt.hidden = true

-- Force CWD to be the current file's dir
vim.opt.autochdir = true

-- Keep indentation on wrapped lines
vim.opt.breakindent = true

-- Don't show the mode, since it's already in the status line
vim.opt.showmode = false

-- Decrease mapped sequence wait time
-- Displays which-key popup sooner
vim.opt.timeoutlen = 300

-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = true
