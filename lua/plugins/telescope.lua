local baseConfig = require("baseconfig")
local pluginConfig = baseConfig.telescope

if pluginConfig == nil or not pluginConfig.enable then
    return {}
end

return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { 'nvim-lua/plenary.nvim' },
        config = function()
            local configs = require("telescope")

            configs.setup({
                defaults = {
                    -- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
                    initial_mode = "insert",
                    -- vertical , center , cursor
                    layout_strategy = "horizontal",
                },
            })

            -- keybinding
            keymap("n", pluginConfig.find_files, ":Telescope find_files<CR>")
            keymap("n", pluginConfig.live_grep, ":Telescope live_grep<CR>")
        end,
    },
}