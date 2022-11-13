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

    -- telescope
    -- apt install ripgrep for live_grep
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.0',
        requires = { {'nvim-lua/plenary.nvim'} },
    }

    --------------------- LSP --------------------
    -- installer
    use({ "williamboman/mason.nvim" })
    use({ "williamboman/mason-lspconfig.nvim" })
    -- Lspconfig
    use({ "neovim/nvim-lspconfig" })
    -- 补全引擎
    use("hrsh7th/nvim-cmp")
    -- Snippet 引擎
    use({"L3MON4D3/LuaSnip", tag = "v1.*"})
    use("saadparwaiz1/cmp_luasnip")
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
