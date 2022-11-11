-- leader key 为空格
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- 本地变量
local map = vim.api.nvim_set_keymap

local opt = {
  noremap = true,
  silent = true,
}

--------------------------------------------------------------------
-- 插件快捷键
local pluginKeys = {}

-- nvim-tree
map("n", "<leader>m", ":NvimTreeToggle<CR>", opt)

-- bufferline
-- 左右Tab切换
map("n", "<leader>h", ":BufferLineCyclePrev<CR>", opt)
map("n", "<leader>l", ":BufferLineCycleNext<CR>", opt)
-- "moll/vim-bbye" 关闭当前 buffer
map("n", "<leader>w", ":Bdelete!<CR>", opt)
