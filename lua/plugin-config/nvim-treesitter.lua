local status, treesitter = pcall(require, "nvim-treesitter.configs")
if not status then
    vim.notify("nvim-treesitter is not found!")
    return
end

treesitter.setup({
    -- 安装 language parser
    -- :TSInstallInfo 命令查看支持的语言
    ensure_installed = { "json", "html", "css", "vim", "lua", "javascript", "typescript", "tsx", "c", "cpp" },
    -- ensure_installed = "maintained",

    -- 启用代码高亮模块
    highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
    },

    -- 启用代码缩进模块 (=)
    indent = {
        enable = true,
    },
})
