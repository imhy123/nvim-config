-- https://github.com/neovim/nvim-lspconfig/wiki/Autocompletion
-- https://github.com/hrsh7th/nvim-cmp
-- https://github.com/onsails/lspkind-nvim
local status, cmp = pcall(require, "cmp")
if not status then
    vim.notify("cmp is not found!")
    return
end

local status, luasnip = pcall(require, "luasnip")
if not status then
    vim.notify("luasnip is not found!")
    return
end

cmp.setup({
    -- 指定 snippet 引擎 luasnip
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    window = {
        completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    -- 快捷键
    -- mapping = mapping,
    -- 来源
    sources = cmp.config.sources({
        {
            name = "luasnip",
            group_index = 1,
        },
        {
            name = "nvim_lsp",
            group_index = 1,
        },
        {
            name = "nvim_lsp_signature_help",
            group_index = 1,
        },
        {
            name = "buffer",
            group_index = 2,
        },
        {
            name = "path",
            group_index = 2,
        },
    }),
})
