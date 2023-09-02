local M = {}

local autopreview = false

-- returns true if autopreview is on
function Knap_autopreview()
  return autopreview
end

-- TODO: look for more cross-platform way
function M.setup()
  local gknapsettings = {
    -- latex
    texoutputext = 'pdf',
    textopdf = 'pdflatex -synctex=1 -halt-on-error -interaction=batchmode %docroot%',
    textopdfviewerlaunch = 'okular %outputfile%',
    textopdfviewerrefresh = 'kill -HUP %pid%',

    -- markdown
    mdoutputext = 'pdf',
    mdtopdf = 'pandoc %docroot% -o %outputfile%',
    mdtopdfviewerlaunch = 'okular %outputfile%',
    mdtopdfviewerrefresh = 'kill -HUP %pid%',
  }
  vim.g.knap_settings = gknapsettings
end

function M.keymaps()
  require('which-key').register({
    ['<space>pr'] = {
      function()
        autopreview = not autopreview
        require('knap').toggle_autopreviewing()
      end,
      'Toggle [Pr]eview',
    },
  })
end

return M
