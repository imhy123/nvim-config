local baseConfig = require("baseconfig")
local pluginConfig = baseConfig.telescope

if pluginConfig == nil or not pluginConfig.enable then
    return
end

local status, telescope = pcall(require, "telescope")
if not status then
    vim.notify("telescope is not found!")
    return
end

-- local actions = require("telescope.actions")
telescope.setup({
  defaults = {
    -- 打开弹窗后进入的初始模式，默认为 insert，也可以是 normal
    initial_mode = "insert",
    -- vertical , center , cursor
    layout_strategy = "horizontal",
  },
})

keymap("n", pluginConfig.find_files, ":Telescope find_files<CR>")
keymap("n", pluginConfig.live_grep, ":Telescope live_grep<CR>")
