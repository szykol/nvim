require("config.options")
require("config.lazy")

vim.cmd.packadd("nvim.undotree")

vim.lsp.enable("gopls")
vim.lsp.enable("basedpyright")
vim.lsp.enable("ts_ls")
vim.lsp.enable("jsonls")
-- vim.lsp.enable("ty")
vim.lsp.enable("typos_lsp")
-- vim.lsp.enable("copilot")
