local baseConfig = require("baseconfig")
local pluginConfig = baseConfig.bufferLine

if pluginConfig == nil or not pluginConfig.enable then
    return {}
end

return {
    {
        "akinsho/bufferline.nvim",
        version = "*",
        dependencies = { "nvim-tree/nvim-web-devicons", "famiu/bufdelete.nvim" },
        config = function()
            local configs = require("bufferline")

            configs.setup({
                options = {
                    -- 左侧让出 nvim-tree 的位置，显示文字 File Explorer
                    offsets = {
                        {
                            filetype = "NvimTree",
                            text = "File Explorer",
                            highlight = "Directory",
                            text_align = "left",
                        },
                    },
                },
            })

            -- 左右Tab切换
            keymap("n", pluginConfig.prev, ":BufferLineCyclePrev<CR>")
            keymap("n", pluginConfig.next, ":BufferLineCycleNext<CR>")
            -- "moll/vim-bbye" 关闭当前 buffer
            keymap("n", pluginConfig.close, ":Bdelete!<CR>")
        end,
    },
}