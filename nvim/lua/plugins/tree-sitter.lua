return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    config = function()
        local tsConfig = require("nvim-treesitter.configs")
        tsConfig.setup({
            ensure_installed = { "lua", "cpp", "c", "rust", "javascript" },
            auto_install = true,
            highlight = { enable = true },
            indent = { enable = true },
        })
    end,
}
