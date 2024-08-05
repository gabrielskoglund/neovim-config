return {
    "hrsh7th/nvim-cmp",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "hrsh7th/nvim-cmp",
        "L3MON4D3/LuaSnip",
        "saadparwaiz1/cmp_luasnip",
        "onsails/lspkind.nvim"
    },

    config = function()
        local cmp = require("cmp")
        cmp.setup({
            ["formatting"] = {
                ["format"] = require("lspkind").cmp_format({
                    ["menu"] = {
                        ["buffer"] = "[buffer]",
                        ["luasnip"] = "[snip]",
                        ["nvim_lsp"] = "[LSP]",
                        ["nvim_lua"] = "[api]",
                        ["path"] = "[path]",
                    },
                }),
            },
            ["mapping"] = {
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<C-d>"] = cmp.mapping.scroll_docs(-4),
                ["<C-e>"] = cmp.mapping.close(),
                ["<C-f>"] = cmp.mapping.scroll_docs(4),
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ["<S-Tab>"] = cmp.mapping(cmp.mapping.select_prev_item(), { "i", "s" }),
                ["<Tab>"] = cmp.mapping(cmp.mapping.select_next_item(), { "i", "s" }),
            },
            ["snippet"] = {
                ["expand"] = function(args)
                    require("luasnip").lsp_expand(args.body)
                end,
            },
            ["sources"] = {
                { ["name"] = "path" },
                { ["name"] = "nvim_lsp" },
                { ["name"] = "luasnip" },
                { ["name"] = "buffer",  ["option"] = { ["get_bufnrs"] = vim.api.nvim_list_bufs } },
            },
        })
    end
}
