local M = {}

function M.setup(capabilities)
  local mason_registry = require('mason-registry')
  local tsserver_path = mason_registry.get_package('typescript-language-server'):get_install_path()
  local path = require('lspconfig.util').path

  require('typescript-tools').setup({
    settings = {
      tsserver_path = path.join(tsserver_path, 'node_modules', 'typescript', 'lib', 'tsserver.js'),
    },
    capabilities = capabilities,
  })
end

return M
