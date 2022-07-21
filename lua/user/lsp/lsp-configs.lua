local lsp_installer = require('nvim-lsp-installer')
local lspconfig = require('lspconfig')
local handlers = require('user.lsp.handlers')

local servers = {
    'pylsp',
    'sumneko_lua',
--    'html',
--    'tsserver',
    'rust_analyzer'
}

lsp_installer.setup {
    ensure_installed = servers
}

for _, server in pairs(servers) do
    local opts = {
        on_attach = handlers.on_attach,
        capabilities = handlers.capabilities,
    }
    lspconfig[server].setup(opts)
end
