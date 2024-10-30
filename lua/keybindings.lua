local baseConfig = require("baseconfig")
local keys = baseConfig.keys

-- leader key 设置
vim.g.mapleader = keys.leader_key
vim.g.maplocalleader = keys.local_leader_key

--------------------------------------------------------------------

-- 插件快捷键
local pluginKeys = {}


-- lsp 回调函数快捷键设置
local lsp = baseConfig.lsp
pluginKeys.mapLSP = function(mapbuf)
    -- rename
    --[[
    Lspsaga 替换 rn
    mapbuf("n", "<leader>rn", "<cmd>Lspsaga rename<CR>", opt)
    --]]
    mapbuf("n", lsp.rename, "<cmd>lua vim.lsp.buf.rename()<CR>")
    -- code action
    --[[
    Lspsaga 替换 ca
    mapbuf("n", "<leader>ca", "<cmd>Lspsaga code_action<CR>", opt)
    --]]
    mapbuf("n", lsp.code_action, "<cmd>lua vim.lsp.buf.code_action()<CR>")

    mapbuf("n", lsp.definition, "<cmd>lua vim.lsp.buf.definition()<CR>")
    mapbuf("n", lsp.hover, "<cmd>lua vim.lsp.buf.hover()<CR>")

end

return pluginKeys
