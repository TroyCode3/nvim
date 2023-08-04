local M = {}

function M.setup()
  require('fzf-lua').setup()
end

function M.keymaps()
  local map = require('which-key').register
  map({
    gr = {
      function()
        require('fzf-lua').live_grep()
      end,
      'Live [Gr]ep',
    },
    sw = {
      function()
        require('fzf-lua').grep_cword()
      end,
      '[S]earch [W]ord',
    },
    km = {
      function()
        require('fzf-lua').keymaps()
      end,
      '[K]ey[M]aps',
    },
  }, { prefix = '<space>' })

  map({
    sw = {
      function()
        require('fzf-lua').grep_visual()
      end,
      '[S]earch Selected [W]ord',
    },
  }, { prefix = '<space>', mode = 'v' })

  map({
    ['<F6>'] = {
      function()
        require('fzf-lua').files()
      end,
      'Find files',
    },
    ['<F18>'] = {
      function()
        require('fzf-lua').oldfiles()
      end,
      'Old files',
    },
  }, { mode = { 'n', 'v', 'i' } })

  map({
    ['?'] = {
      function()
        require('fzf-lua').grep_curbuf()
      end,
      'Grep current buffer',
    },
  }, { mode = { 'n', 'v' } })
end

return M
