local M = {}

function M.setup()
  require('smart-splits').setup()
end

function M.keymaps()
  require('which-key').register({
    ['<C-Left>'] = {
      function()
        require('smart-splits').resize_left()
      end,
      'Resize buffer left',
    },
    ['<C-Down>'] = {
      function()
        require('smart-splits').resize_down()
      end,
      'Resize buffer down',
    },
    ['<C-Up>'] = {
      function()
        require('smart-splits').resize_up()
      end,
      'Resize buffer up',
    },
    ['<C-Right>'] = {
      function()
        require('smart-splits').resize_right()
      end,
      'Resize buffer right',
    },

    ['<leader><leader>'] = {
      name = 'move buffer',
      h = {
        function()
          require('smart-splits').swap_buf_left({ move_cursor = true })
        end,
        'move buffer left',
      },
      j = {
        function()
          require('smart-splits').swap_buf_down({ move_cursor = true })
        end,
        'move buffer down',
      },
      k = {
        function()
          require('smart-splits').swap_buf_up({ move_cursor = true })
        end,
        'move buffer up',
      },
      l = {
        function()
          require('smart-splits').swap_buf_right({ move_cursor = true })
        end,
        'move buffer right',
      },
    },
  }, { mode = { 'n', 'v' } })
end

return M
