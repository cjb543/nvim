local M = {}

function M.open()
  vim.cmd 'tabnew'
  local buf = vim.api.nvim_get_current_buf()
  vim.api.nvim_buf_set_lines(buf, 0, -1, false, { 'Hello World' })
  vim.bo[buf].modifiable = false
end

vim.api.nvim_create_user_command('HelloWorld', M.open, {})

return M
