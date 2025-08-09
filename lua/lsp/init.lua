local lspconfig = require("lspconfig")

local servers = {
  gopls = require("lsp.gopls"),
  -- 其他语言比如 lua_ls、pyright 也可以加入
}

for name, config in pairs(servers) do
  lspconfig[name].setup(config)
end
