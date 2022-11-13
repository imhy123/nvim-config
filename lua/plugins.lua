-- Use a protected call so we don't error out on first use
local status_ok, packer = pcall(require, "packer")
if not status_ok then
    vim.notify("packer.nvim is not installed or cannot be found")
    return
end

packer.startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    --------------------- colorschemes --------------------
    -- tokyonight
    use("folke/tokyonight.nvim")

    -------------------------- plugins -------------------------------------------
    -- nvim-tree
    use({
        "kyazdani42/nvim-tree.lua",
        requires = "kyazdani42/nvim-web-devicons",
    })

    -- treesitter
    use({
        "nvim-treesitter/nvim-treesitter",
        run = ":TSUpdate",
    })

    -- bufferline
    use({
        "akinsho/bufferline.nvim",
        requires = { "kyazdani42/nvim-web-devicons", "moll/vim-bbye" },
    })

    --------------------- LSP --------------------
    -- installer
    use({ "williamboman/mason.nvim" })
    use({ "williamboman/mason-lspconfig.nvim" })
    -- Lspconfig
    use({ "neovim/nvim-lspconfig" })
    -- 补全引擎
    use("hrsh7th/nvim-cmp")
    -- 补全源
    use("hrsh7th/cmp-vsnip")
    use("hrsh7th/cmp-nvim-lsp") -- { name = nvim_lsp }
    use("hrsh7th/cmp-buffer") -- { name = 'buffer' },
    use("hrsh7th/cmp-path") -- { name = 'path' }
    use("hrsh7th/cmp-cmdline") -- { name = 'cmdline' }
    use("hrsh7th/cmp-nvim-lsp-signature-help") -- { name = 'nvim_lsp_signature_help' }

    -- Lua 增强
    use("folke/neodev.nvim")
end)
