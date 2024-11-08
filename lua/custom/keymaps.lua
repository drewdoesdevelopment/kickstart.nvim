vim.g.mapleader = ' '

vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)

vim.keymap.set('n', '<C-k>', '<cmd>cnext<CR>zz')
vim.keymap.set('n', '<C-j>', '<cmd>cprev<CR>zz')
vim.keymap.set('n', '<leader>k', '<cmd>lnext<CR>zz')
vim.keymap.set('n', '<leader>j', '<cmd>lprev<CR>zz')

vim.keymap.set('i', '<C-h>', '<Left>')
vim.keymap.set('i', '<C-j>', '<Down>')
vim.keymap.set('i', '<C-k>', '<Up>')
vim.keymap.set('i', '<C-l>', '<Right>')

vim.keymap.set('n', '<leader>s', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set('n', '<leader><leader>', function()
  vim.cmd 'so'
end)

-- nvim tree stuff
vim.keymap.set('n', '<C-n>', function()
  vim.cmd 'NvimTreeToggle'
end)

vim.keymap.set('n', '<leader>e', function()
  vim.cmd 'NvimTreeFocus'
end)

-- very much drew shortcuts
vim.keymap.set('n', '<leader>t', function()
  vim.cmd 'new'
  vim.cmd 'terminal'

  local keys = vim.api.nvim_replace_termcodes('i', true, false, true)
  vim.api.nvim_feedkeys(keys, 'm', false)
end)

vim.keymap.set('n', '<leader>x', function()
  vim.cmd 'bdelete'
end)

vim.keymap.set('n', '<C-s>', function()
  vim.cmd 'w'
end)

vim.keymap.set('n', '<Tab>', function()
  vim.cmd 'bnext'
end)

vim.keymap.set('n', '<S-Tab>', function()
  vim.cmd 'bprevious'
end)

vim.keymap.set('n', '<leader>vs', function()
  vim.cmd 'vs'
end)

vim.keymap.set('n', '<leader>hs', function()
  vim.cmd 'split'
end)
