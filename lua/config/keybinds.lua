do
    local bindings = {
        -- Telescope bindings
        {
            ["action"] = "<Cmd>Telescope live_grep<CR>",
            ["key"] = "<C-f>",
            ["mode"] = "n"
        },
        {
            ["action"] = "<Cmd>Telescope git_files<cr>",
            ["key"] = "<C-p>",
            ["mode"] = "n"
        },
        {
            ["action"] = "<Cmd>Telescope buffers<cr>",
            ["key"] = "<leader>b",
            ["mode"] = "n"
        },
        {
            ["action"] = "<Cmd>Telescope current_buffer_fuzzy_find<cr>",
            ["key"] = "<leader>fb",
            ["mode"] = "n"
        },
        {
            ["action"] = "<Cmd>Telescope diagnostics<cr>",
            ["key"] = "<leader>fd",
            ["mode"] = "n"
        },
        {
            ["action"] = "<Cmd>Telescope find_files<cr>",
            ["key"] = "<leader>ff",
            ["mode"] = "n"
        },
        {
            ["action"] = "<Cmd>Telescope live_grep<cr>",
            ["key"] = "<leader>fg",
            ["mode"] = "n"
        },
        {
            ["action"] = "<Cmd>Telescope help_tags<cr>",
            ["key"] = "<leader>fh",
            ["mode"] = "n"
        },
        {
            ["action"] = "<Cmd>Telescope oldfiles<cr>",
            ["key"] = "<leader>p",
            ["mode"] = "n"
        },
        {
            ["action"] = "<Cmd>Telescope treesitter<cr>",
            ["key"] = "<leader>ts",
            ["mode"] = "n"
        },
        {
            ["action"] = "<Cmd>Telescope lsp_definitions<cr>",
            ["key"] = "gd",
            ["mode"] = "n"
        },
        {
            ["action"] = "<Cmd>Telescope lsp_implementations<cr>",
            ["key"] = "gi",
            ["mode"] = "n"
        },
        {
            ["action"] = "<Cmd>Telescope lsp_references<cr>",
            ["key"] = "gr",
            ["mode"] = "n"
        },
        {
            ["action"] = "<Cmd>Telescope lsp_type_definitions<cr>",
            ["key"] = "gt",
            ["mode"] = "n"
        },
        {
            ["action"] = function()
                require("telescope.builtin").live_grep({
                    default_text = "TODO",
                    initial_mode = "normal",
                })
            end,
            ["key"] = "<C-t>",
            ["mode"] = "n",
            ["options"] = { ["silent"] = true },
        },

        -- Neo-tree bindings
        {
            ["action"] = ":Neotree action=focus reveal toggle<CR>",
            ["key"] = "<leader>n",
            ["mode"] = "n",
            ["options"] = { ["silent"] = true },
        },

        -- Tagbar bindings
        {
            ["action"] = ":TagbarToggle<cr>",
            ["key"] = "<C-g>",
            ["mode"] = "n",
            ["options"] = { ["silent"] = true }
        },

        -- General binings
        {
            ["action"] = "<Cmd>BufferClose<CR>",
            ["key"] = "<C-w>",
            ["mode"] = "n"
        },
        {
            ["action"] = "<Cmd>BufferNext<CR>",
            ["key"] = "<TAB>",
            ["mode"] = "n"
        },
        {
            ["action"] = "<Cmd>BufferPrevious<CR>",
            ["key"] = "<S-TAB>",
            ["mode"] = "n"
        },
        {
            ["action"] = ":b#<CR>",
            ["key"] = "<C-c>",
            ["mode"] = "n",
            ["options"] = { ["silent"] = true }
        },
        {
            ["action"] = ":w<CR>",
            ["key"] = "<C-s>",
            ["mode"] = "n",
            ["options"] = { ["silent"] = true }
        },
        {
            ["action"] = ":close<CR>",
            ["key"] = "<C-x>",
            ["mode"] = "n",
            ["options"] = { ["silent"] = true }
        },
        {
            ["action"] = ":move+<CR>",
            ["key"] = "<M-j>",
            ["mode"] = "n",
            ["options"] = { ["silent"] = true }
        },
        {
            ["action"] = ":move-2<CR>",
            ["key"] = "<M-k>",
            ["mode"] = "n",
            ["options"] = { ["silent"] = true }
        },
        {
            ["action"] = "<NOP>",
            ["key"] = "<Space>",
            ["mode"] = "n",
            ["options"] = { ["silent"] = true }
        },
        {
            ["action"] = ":noh<CR>",
            ["key"] = "<esc>",
            ["mode"] = "n",
            ["options"] = { ["silent"] = true }
        },
        {
            ["action"] = "<C-w>h",
            ["key"] = "<leader>h",
            ["mode"] = "n",
            ["options"] = { ["silent"] = true }
        },
        {
            ["action"] = "<C-w>l",
            ["key"] = "<leader>l",
            ["mode"] = "n",
            ["options"] = { ["silent"] = true }
        },
        {
            ["action"] = ":!remi push<CR>",
            ["key"] = "<leader>rp",
            ["mode"] = "n",
            ["options"] = { ["silent"] = true }
        },
        {
            ["action"] = ":w<CR>",
            ["key"] = "<leader>s",
            ["mode"] = "n",
            ["options"] = { ["silent"] = true }
        },
        {
            ["action"] = "y$",
            ["key"] = "Y",
            ["mode"] = "n",
            ["options"] = { ["silent"] = true }
        },
        {
            ["action"] = "<gv",
            ["key"] = "<",
            ["mode"] = "v",
            ["options"] = { ["silent"] = true }
        },
        {
            ["action"] = "<gv",
            ["key"] = "<S-TAB>",
            ["mode"] = "v",
            ["options"] = { ["silent"] = true }
        },
        {
            ["action"] = ">gv",
            ["key"] = "<TAB>",
            ["mode"] = "v",
            ["options"] = { ["silent"] = true }
        },
        {
            ["action"] = ">gv",
            ["key"] = ">",
            ["mode"] = "v",
            ["options"] = { ["silent"] = true }
        },
        {
            ["action"] = ":m '>+1<CR>gv=gv",
            ["key"] = "J",
            ["mode"] = "v",
            ["options"] = { ["silent"] = true }
        },
        {
            ["action"] = ":m '<-2<CR>gv=gv",
            ["key"] = "K",
            ["mode"] = "v",
            ["options"] = { ["silent"] = true }
        },
    }

    for _, map in ipairs(bindings) do
        vim.keymap.set(map.mode, map.key, map.action, map.options)
    end
end
