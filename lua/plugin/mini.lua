-- Collection of various small independent plugins/modules.
-- Only those explicitly require()'d will be installed
return {
  'echasnovski/mini.nvim',
  branch = 'stable',
  config = function()
    -- Better Around/Inside textobjects
    -- Documentation in h: MiniAi
    -- See h: MiniAi-textobject-builtin for the list of supported text objects
    require('mini.ai').setup { n_lines = 1 }

    -- Add/delete/replace surroundings (brackets, quotes, etc.)
    require('mini.surround').setup {
      -- Not a fan of the default mappings slowing down the commonly-used s command.
      -- Make them at least require a <Leader> key stroke
      mappings = {
        add = '<Leader>ca', -- [c]over around
        delete = '<Leader>cd', -- [c]over [d]elete
        replace = '<Leader>cr', -- [c]over [r]eplace
        find = '<Leader>cf', -- [c]over [f]ind
        find_left = '<Leader>cF', -- [c]over [F]ind left
        highlight = '<Leader>ch', -- [c]over [h]ighlight
        update_n_lines = '<Leader>cn', -- [c]over update [n] lines
      },
      n_lines = 1,
    }

    -- Simple and easy statusline.
    -- You could remove this setup call if you don't like it,
    -- and try some other statusline plugin
    local statusline = require 'mini.statusline'
    -- set use_icons to true if you have a Nerd Font
    statusline.setup { use_icons = vim.g.have_nerd_font }

    -- You can configure sections in the statusline by overriding their
    -- default behavior. For example, here we set the section for
    -- cursor location to LINE:COLUMN
    ---@diagnostic disable-next-line: duplicate-set-field
    -- statusline.section_location = function()
    --   return '%2l:%-2v'
    -- end

    -- ... and there is more!
    --  Check out: https://github.com/echasnovski/mini.nvim
    --  Consider mini.sessions for session management
    --  and mini.comment for keymaps to comment out lines
  end,
}
