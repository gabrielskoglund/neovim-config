return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.8',
    dependencies = { 'nvim-lua/plenary.nvim' },

    config = function()
        require("telescope").setup({
            ["defaults"] = {
                ["file_ignore_patterns"] = {
                    "%.ipynb",
                    "^.git/",
                    "^.mypy_cache/",
                    "^__pycache__/",
                    "^data/",
                    "^output/",
                    "^venv/"
                },
                ["set_env"] = { ["COLORTERM"] = "truecolor" },
            },
        })
    end
}
