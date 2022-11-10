-- https://github.com/kyazdani42/nvim-tree.lua
-- local nvim_tree = require'nvim-tree'
local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("nvim-tree is not found!")
    return
end

nvim_tree.setup({
    -- 完全禁止内置netrw
    disable_netrw = true,
    -- 不显示 git 状态图标
    git = {
        enable = false,
    },
})
