local status, bufferline = pcall(require, "bufferline")
if not status then
    vim.notify("bufferline is not found!")
    return
end

-- bfferline 配置
-- https://github.com/akinsho/bufferline.nvim/blob/main/doc/bufferline.txt
bufferline.setup({
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
