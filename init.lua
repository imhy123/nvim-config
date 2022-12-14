require("utils.global")

-- 基础配置
require("basic")

-- 快捷键映射
require("keybindings")

-- Packer插件管理
require("plugins")

-- 主题设置
require("colorscheme")

-- 插件配置
require("plugin-config.nvim-tree")
require("plugin-config.nvim-treesitter")
require("plugin-config.bufferline")
require("plugin-config.telescope")

-- 内置LSP
require("lsp.setup")
-- 自动补全
require("cmp.setup")
