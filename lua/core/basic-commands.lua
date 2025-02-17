vim.api.nvim_create_user_command('FilepathToReg', function(options)
  local reg = options.fargs[1]
  -- There is an inconsistency in setreg where
  -- the numerical registers require a leading "
  -- but the letters and + (clipboard) do not
  if string.find(reg, '^[0-9]$') then
    reg = '"' .. reg
  end
  vim.fn.setreg(reg, vim.api.nvim_buf_get_name(0))
end, { nargs = 1 })

vim.api.nvim_create_user_command('BitacoraDate', function(_)
  vim.api.nvim_set_current_line(string.format('* %s', os.date '%Y-%m-%d'))
end, {})
