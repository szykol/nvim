return {
  cmd = { "gopls" },
  root_markers = { ".git", "go.mod", "go.work", vim.uv.cwd() },
  filetypes = { "go", "gotempl", "gowork", "gomod" },
  settings = {
    gopls = {
      completeUnimported = true,
      usePlaceholders = true,
      analyses = {
        unusedparams = true,
      },
      ["ui.inlayhint.hints"] = {
        composeLiteralFields = true,
        constantValues = true,
        parameterNames = true,
        rangeVariableTypes = true,
      },
    },
  },
}
