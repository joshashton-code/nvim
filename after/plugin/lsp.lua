local lsp = require('lsp-zero')

lsp.preset('recommended')

lsp.ensure_installed({
    'tsserver',
    'eslint',
    'sumneko_lua',
    'rust_analyzer',
})

lsp.configure('sumneko_lua', {
    settings = {
        Lua = {
            diagnostics = {
                globals = { 'vim' }
            }
        }
    }
})

local cmp = require('cmp')
local cmp_select = {behavior = cmp.SelectBehavior.Select}
local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ['<C-space>'] = cmp.mapping.complete(),
})

lsp.setup_nvim_cmp({
    mapping = cmp_mappings
})

lsp.set_preferences({
    suggest_lsp_servers = false,
    sign_icons = {
        error = 'E',
        warn = 'W',
        hint = 'H',
        info = 'I'
    }
})

lsp.on_attach(function(client,bufnr)
    local opts = {buffer = bufnr, remap = false}

    if client.name == "eslint" then
        vim.cmd.LspStop('eslint')
        return

    end

end)

    lsp.setup()

    vim.diagnostic.config({
        virtual_text = true,
    })