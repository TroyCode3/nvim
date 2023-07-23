local M = {}

function M.setup()
  vim.g.firenvim_config = {
    globalSettings = { alt = 'all' },
    localSettings = {
      ['.*'] = {
        cmdline = 'neovim',
        content = 'text',
        priority = 0,
        selector = 'textarea',
        takeover = 'never',
      },
    },
  }
end

return M
