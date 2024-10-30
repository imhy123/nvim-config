local baseConfig = require("baseconfig")
local pluginConfig = baseConfig.nvimTree

if pluginConfig == nil or not pluginConfig.enable then
    return {}
end

return {
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = { 'nvim-tree/nvim-web-devicons' },
        config = function()
            local configs = require("nvim-tree")

            configs.setup({
                -- 完全禁止内置netrw
                disable_netrw = true,
                -- 不显示 git 状态图标
                git = {
                    enable = true,
                },
            })

            -- keybinding
            keymap("n", pluginConfig.toggle, ":NvimTreeToggle<CR>")
        end,
    },
}