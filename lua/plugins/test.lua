return {
  {
    'nvim-neotest/neotest',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-treesitter/nvim-treesitter',
      'nvim-neotest/neotest-go',
      'nvim-neotest/neotest-python',
      'jfpedroza/neotest-elixir',
    },
    config = function()
      require('neotest').setup {
        adapters = {
          require 'neotest-go',
          require 'neotest-python' {
            runner = 'pytest',
            dap = { justMyCode = false },
            python = function()
              return vim.fn.getcwd() .. '/.venv/bin/python'
            end,
          },
          require 'rustaceanvim.neotest',
          require 'neotest-elixir',
        },
      }
    end,
    lazy = true,
  },
}
