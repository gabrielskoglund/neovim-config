return {
    "norcalli/nvim-colorizer.lua",

    config = function()
        require("colorizer").setup({
            filetypes = nil,
            user_default_options = { ["names"] = false },
            buftypes = nil,
        })
    end
}
