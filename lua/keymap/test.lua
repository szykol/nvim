vim.keymap.set('n', '<leader>dn', function()
  require('neotest').run.run()
end, { desc = '[D]ebug test [n]earest' })
vim.keymap.set('n', '<leader>dN', function()
  require('neotest').run.run { strategy = 'dap' }
end, { desc = '[D]ebug [N]earest test. Strategy=dap' })
vim.keymap.set('n', '<leader>do', function()
  require('neotest').output_panel.open()
end, { desc = '[D]ebug [o]utput panel' })

