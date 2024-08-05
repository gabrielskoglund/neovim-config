return {
    {
        'goolord/alpha-nvim',

        config = function()
            require("alpha").setup({
                ["layout"] = {
                    { ["type"] = "padding", ["val"] = 6 },
                    {
                        ["opts"] = { ["hl"] = "Type", ["position"] = "center" },
                        ["type"] = "text",
                        ["val"] = {
                            "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
                            "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
                            "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
                            "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
                            "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
                            "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
                        },
                    },
                    { ["type"] = "padding", ["val"] = 2 },
                    {
                        ["opts"] = { ["spacing"] = 1 },
                        ["type"] = "group",
                        ["val"] = {
                            {
                                ["opts"] = {
                                    ["align_shortcut"] = "right",
                                    ["cursor"] = 0,
                                    ["keymap"] = { "n", "e", "<CMD>ene<CR>", {} },
                                    ["position"] = "center",
                                    ["shortcut"] = "e",
                                    ["width"] = 40,
                                },
                                ["type"] = "button",
                                ["val"] = "󰈔 New file",
                            },
                            {
                                ["opts"] = {
                                    ["align_shortcut"] = "right",
                                    ["cursor"] = 0,
                                    ["keymap"] = { "n", "f", "<CMD>:Telescope find_files<CR>", {} },
                                    ["position"] = "center",
                                    ["shortcut"] = "f",
                                    ["width"] = 40,
                                },
                                ["type"] = "button",
                                ["val"] = "󰍉 Find files",
                            },
                            {
                                ["opts"] = {
                                    ["align_shortcut"] = "right",
                                    ["cursor"] = 0,
                                    ["keymap"] = { "n", "p", "<CMD>:Telescope oldfiles<CR>", {} },
                                    ["position"] = "center",
                                    ["shortcut"] = "p",
                                    ["width"] = 40,
                                },
                                ["type"] = "button",
                                ["val"] = "󱋡 Recent files",
                            },
                            {
                                ["opts"] = {
                                    ["align_shortcut"] = "right",
                                    ["cursor"] = 0,
                                    ["keymap"] = { "n", "q", "<CMD>qa<CR>", {} },
                                    ["position"] = "center",
                                    ["shortcut"] = "q",
                                    ["width"] = 40,
                                },
                                ["type"] = "button",
                                ["val"] = "󰩈 Quit Neovim",
                            },
                        },
                    },
                },
            })
        end
    },
}
