---------------------------------------------------------------------------------------------------
-- LANGUAGE SERVER PROTOCOLS
---------------------------------------------------------------------------------------------------
-- Plugin Specific
-- Rust --> rust_analyzer
require('rust-tools').setup{capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())}

-- Induvidual
-- Bash --> bashls
--require('lspconfig').bashls.setup{capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())}

-- C, C++ --> clangd
require('lspconfig').clangd.setup{capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())}

-- LaTeX --> texlab
require('lspconfig').texlab.setup{capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())}

-- Python --> jedi_language_server
require('lspconfig').jedi_language_server.setup{capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())}

--[[
-- HTML, JS, CSS --> vscode_extracted
vim.lsp.protocol.make_client_capabilities().textDocument.completion.completionItem.snippetSupport = true

require('lspconfig').html.setup {
  capabilities = vim.lsp.protocol.make_client_capabilities()
}
]]--

-- Lua --> sumneko_lua (lua-language-server)
local sumneko_root_path = vim.fn.stdpath('cache')..'/lspconfig/sumneko_lua/lua-language-server'
local sumneko_binary = "/bin/lua-language-server"
local runtime_path = vim.split(package.path, ';')

table.insert(runtime_path, "lua/?.lua")
table.insert(runtime_path, "lua/?/init.lua")

require('lspconfig').sumneko_lua.setup {
  cmd = {sumneko_binary, "-E", sumneko_root_path .. "/main.lua"};
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
        -- Setup your lua path
        path = runtime_path,
      },
      diagnostics = {
        -- Get the language server to recognize the `vim` global
        globals = {'vim'},
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
    },
  },
}
