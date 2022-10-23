return {
  theme = {
    name = 'tokyonight',
    repo = 'folke/tokyonight.nvim',
    rc   = function()
      vim.cmd [[colorscheme tokyonight-night]]
    end
  },
  treesitter = {
    ensure_installed = { 'c', 'lua', 'javascript', 'typescript', 'bash' }
  },
  lsp = {
    servers = { 'sumneko_lua' },
    linters = { 'eslint_d' },
    formatters = { 'stylua' }
  }
}
