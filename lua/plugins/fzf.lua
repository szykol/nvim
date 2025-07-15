return {
  "ibhagwan/fzf-lua",
  -- optional for icon support
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {},
  config = function()
    require"fzf-lua".register_ui_select()
  end
}
