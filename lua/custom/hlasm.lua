local lspconfig = require 'lspconfig'
local configs = require 'lspconfig.configs'

-- Can still use these extensions for x86, just dont make /.hlasm dir
vim.filetype.add {
  extension = { hlasm = 'hlasm', asm = 'hlasm' },
}

if not configs.hlasm then
  configs.hlasm = {
    default_config = {
      cmd = { vim.fn.expand '~/Documents/projects/che-che4z-lsp-for-hlasm/build/language_server/hlasm_language_server' },
      filetypes = { 'hlasm' },
      root_dir = lspconfig.util.root_pattern('.hlasmplugin', '.git'),
      single_file_support = true,
    },
  }
end

lspconfig.hlasm.setup {
  capabilities = require('blink.cmp').get_lsp_capabilities(),
}
