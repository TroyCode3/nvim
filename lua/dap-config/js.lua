local M = {}

function M.setup()
  local dap = require('dap')

  dap.adapters['pwa-node'] = {
    type = 'server',
    host = 'localhost',
    port = '${port}',
    executable = {
      command = vim.fn.exepath('js-debug-adapter'),
      args = { '${port}' },
    },
  }

  for _, language in pairs({ 'typescript', 'javascript' }) do
    dap.configurations[language] = {
      {
        type = 'pwa-node',
        request = 'launch',
        name = 'Launch file',
        program = '${file}',
        cwd = '${workspaceFolder}',
      },
      {
        type = 'pwa-node',
        request = 'attach',
        name = 'Attach',
        processId = require('dap.utils').pick_process,
        cwd = '${workspaceFolder}',
      },
      {
        type = 'pwa-node',
        request = 'launch',
        name = 'Debug Jest Tests',
        -- trace = true, -- include debugger info
        runtimeExecutable = 'node',
        runtimeArgs = {
          './node_modules/jest/bin/jest.js',
          '--runInBand',
        },
        rootPath = '${workspaceFolder}',
        cwd = '${workspaceFolder}',
        console = 'integratedTerminal',
        internalConsoleOptions = 'neverOpen',
      },
    }
  end
end

return M
