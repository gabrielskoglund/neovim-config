return {
    "lewis6991/gitsigns.nvim",

    setup = function()
        require("gitsigns").setup({
            signs = {
                add = { text = "+" },
                change = { text = "~" }
            }
        })
    end
}
