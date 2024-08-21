-- `lazydev` configures Lua LSP for your Neovim config, runtime and plugins
-- used for completion, annotations and signatures of Neovim apis
return {
  {
    'folke/lazydev.nvim',
    ft = 'lua',
    opts = {
      -- Load luvit types when the `vim.uv` word is found
      library = {
        { path = 'luvit-meta/library', words = { 'vim%.uv' } },
      },
    },
  },
  { 'Bilal2453/luvit-meta', lazy = true }
}
