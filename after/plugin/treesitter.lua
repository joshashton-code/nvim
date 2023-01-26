require"nvim-treesitter.configs".setup {

    ensure_installed = { "help", "c", "java", "html", "css", "javascript", "python", "typescript", "lua", "rust" },

    sync_install = false,
    auto_install = true,
    highlight = { 
        enable = true,
        additional_vim_regex_hightlighting = false,
    },

}
