require('search-replace').setup({
  default_replace_single_buffer_options = 'gcI',
  default_replace_multi_buffer_options = 'egcI',
})

vim.keymap.set('v', '<C-r>', '<cmd>SearchReplaceSingleBufferVisualSelection<CR>')
