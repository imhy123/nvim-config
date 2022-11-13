local M = {

    keys = {
        leader_key = " ",
    },

    nvimTree = {

        enable = true,

        toggle = "<leader>m",
    },

    bufferLine = {
        enable = true,

        prev = "<leader>h",
        next = "<leader>l",
        close = "<leader>w",
    },

    lsp = {
        rename = "<leader>rn",
        code_action = "<leader>ca",
        format = "<leader>f",
        definition = "gd",
        references = "gr",
        hover = "gh",
    },
}

return M
