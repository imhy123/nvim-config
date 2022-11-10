-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("packer.nvim is not installed or cannot be found")
    return
end

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    --------------------- colorschemes --------------------
    -- tokyonight
    use("folke/tokyonight.nvim")
end)


