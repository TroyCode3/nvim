local M = {}

local plugin_keymaps = require('utils.keymaps').new('explorer')

function M.register_keymap(plugin_name)
  plugin_keymaps.register(plugin_name)
end

function M.setup_keymap()
  -- plugin-specific keymaps
  plugin_keymaps.setup()
end

return M
