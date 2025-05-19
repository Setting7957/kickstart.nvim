return {
  'nvim-neorg/neorg',
  ft = 'norg',
  version = '9.1.1',
  config = function()
    require('neorg').setup {
      load = {
        ['core.defaults'] = {},
        ['core.concealer'] = {},
        ['core.esupports.indent'] = {
          config = {
            dedent_excess = false,
            format_on_enter = false, -- dedent_excess being false causes the cursor to appear in the same column on the new line
          },
        },
        ['core.dirman'] = {
          config = {
            workspaces = {
              notes = '~/Documents/notes',
            },
          },
        },
      },
    }

    vim.wo.foldlevel = 99
    vim.wo.conceallevel = 2
    -- vim.keymap.set('n', '<M-CR>', '$a<M-CR>', { desc = 'Insert new list entry below' }) -- doesn't work
  end,
}
