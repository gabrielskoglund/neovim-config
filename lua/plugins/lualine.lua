return {
    "nvim-lualine/lualine.nvim",

    config = function()
        require("lualine").setup({
            ["options"] = { ["globalstatus"] = true, ["icons_enabled"] = true },
            ["sections"] = {
                ["lualine_a"] = { "mode" },
                ["lualine_b"] = { "branch" },
                ["lualine_c"] = { "filename", "diff" },
                ["lualine_x"] = {
                    "diagnostics",
                    {
                        function()
                            local msg = ""
                            local buf_ft = vim.api.nvim_buf_get_option(0, "filetype")
                            local clients = vim.lsp.get_active_clients()
                            if next(clients) == nil then
                                return msg
                            end
                            for _, client in ipairs(clients) do
                                local filetypes = client.config.filetypes
                                if filetypes and vim.fn.index(filetypes, buf_ft) ~= -1 then
                                    return client.name
                                end
                            end
                            return msg
                        end,
                        ["color"] = { ["fg"] = "#ffffff" },
                        ["icon"] = "",
                    },
                    "encoding",
                    "fileformat",
                    "filetype",
                },
            },
        })
    end
}
