return {
    'numToStr/Comment.nvim',

    config = function()
        require("Comment").setup({
            ["opleader"] = { ["line"] = "<C-b>" },
            ["toggler"] = { ["line"] = "<C-b>" }
        })
    end
}
