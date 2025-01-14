return {
    "nvim-neo-tree/neo-tree.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "MunifTanjim/nui.nvim"
    },

    config = function()
        require("neo-tree").setup({
            close_if_last_window = true,
            window = {
                auto_expand_width = true,
                width = 30,
            }
        })
    end
}
