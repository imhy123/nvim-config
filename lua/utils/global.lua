function _G.keymap(mode, lhs, rhs, opts)
    if not (type(lhs) == "string") then
        return
    end
    if not (type(rhs) == "string") then
        return
    end
    opts = opts or {}
    local default_opts = {
        remap = false,
        silent = true,
    }
    vim.keymap.set(mode, lhs, rhs, vim.tbl_extend("force", default_opts, opts))
end
