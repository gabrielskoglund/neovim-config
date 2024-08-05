do
    vim.api.nvim_create_augroup("LspAttach_keybindings", { clear = true })

    local autocommands = {
        {
            ["callback"] = function()
                do
                    local lsp_binds = {
                        {
                            ["action"] = vim.diagnostic.goto_next,
                            ["key"] = "<leader>j",
                            ["mode"] = "n",
                            ["options"] = { ["silent"] = true },
                        },
                        {
                            ["action"] = vim.diagnostic.goto_prev,
                            ["key"] = "<leader>k",
                            ["mode"] = "n",
                            ["options"] = { ["silent"] = true },
                        },
                        {
                            ["action"] = vim.lsp.buf.code_action,
                            ["key"] = "<leader>a",
                            ["mode"] = "n",
                            ["options"] = { ["silent"] = true },
                        },
                        {
                            ["action"] = vim.lsp.buf.format,
                            ["key"] = "<leader>fo",
                            ["mode"] = "n",
                            ["options"] = { ["silent"] = true },
                        },
                        {
                            ["action"] = vim.lsp.buf.rename,
                            ["key"] = "<leader>r",
                            ["mode"] = "n",
                            ["options"] = { ["silent"] = true },
                        },
                        {
                            ["action"] = vim.lsp.buf.hover,
                            ["key"] = "K",
                            ["mode"] = "n",
                            ["options"] = { ["silent"] = true },
                        },
                    }

                    for _, map in ipairs(lsp_binds) do
                        vim.keymap.set(map.mode, map.key, map.action, map.options)
                    end
                end
            end,
            ["desc"] = "Load keymaps for LspAttach",
            ["event"] = "LspAttach",
            ["group"] = "LspAttach_keybindings",
        },
        {
            ["command"] = "norm zz",
            ["event"] = "InsertEnter",
            ["desc"] = "Center editor on insertion line"
        },
        {
            ["command"] = "%s/\\s\\+$//e",
            ["event"] = "BufWrite",
            ["desc"] = "Remove trailing whitespace on save"
        },
        {
            ["command"] = "wincmd L",
            ["event"] = "FileType",
            ["pattern"] = "help",
            ["desc"] = "Show help in a vertical window"
        },
        {
            ["command"] = "setlocal spell spelllang=en",
            ["event"] = "FileType",
            ["pattern"] = {
                "tex",
                "latex",
                "markdown",
            },
            ["desc"] = "Use spell checking for certain file types"
        },
    }

    for _, autocmd in ipairs(autocommands) do
        vim.api.nvim_create_autocmd(autocmd.event, {
            group = autocmd.group,
            pattern = autocmd.pattern,
            buffer = autocmd.buffer,
            desc = autocmd.desc,
            callback = autocmd.callback,
            command = autocmd.command,
            once = autocmd.once,
            nested = autocmd.nested,
        })
    end
end
