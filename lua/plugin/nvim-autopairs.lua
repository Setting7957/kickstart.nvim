-- nvim-autopairs provides autopair functionality, i.e. when typing a character (e.g. [)
-- it automatically inserts its "pair" (e.g. ]).
-- See https://github.com/windwp/nvim-autopairs but for the full docs;
-- the plugin allows e.g. defining custom autopairs.

return {
  'windwp/nvim-autopairs',
  event = 'InsertEnter',
  -- Optional dependency
  dependencies = { 'hrsh7th/nvim-cmp' },
  config = function()
    require('nvim-autopairs').setup {
      disable_filetype = { 'TelescopePrompt', 'norg' },
    }
    -- If you want to automatically add `(` after selecting a function or method
    local cmp_autopairs = require 'nvim-autopairs.completion.cmp'
    local cmp = require 'cmp'
    cmp.event:on('confirm_done', cmp_autopairs.on_confirm_done())
  end,
}
