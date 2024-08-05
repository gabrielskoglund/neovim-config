-- General config
vim.opt.autoindent = true
vim.opt.clipboard = "unnamedplus"
vim.opt.colorcolumn = "100"
vim.opt.completeopt = { "menu", "menuone", "noselect" }
vim.opt.cursorcolumn = false
vim.opt.cursorline = false
vim.opt.expandtab = true
vim.opt.fileencoding = "utf-8"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.opt.foldlevel = 99
vim.opt.foldmethod = "expr"
vim.opt.hidden = true
vim.opt.ignorecase = true
vim.opt.inccommand = "split"
vim.opt.incsearch = true
vim.opt.laststatus = 3
vim.opt.modeline = true
vim.opt.modelines = 100
vim.opt.mouse = "a"
vim.opt.mousemodel = "extend"
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.scrolloff = 8
vim.opt.shiftwidth = 4
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.softtabstop = 0
vim.opt.spell = false
vim.opt.splitbelow = true
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.textwidth = 0
vim.opt.undofile = true
vim.opt.updatetime = 100
vim.opt.wrap = false

vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Highlight groups
do
    local highlights = {
        ["ExtraWhitespace"] = { ["bg"] = "red" },
        ["Todo"] = { ["bg"] = "Yellow", ["fg"] = "Blue" }
    }

    for k, v in pairs(highlights) do
        vim.api.nvim_set_hl(0, k, v)
    end
end

-- Match groups
do
    local match = {
        ["ExtraWhitespace"] = "\\s\\+$",
        ["TODO"] = "TODO"
    }

    for k, v in pairs(match) do
        vim.fn.matchadd(k, v)
    end
end

-- Load plugins with lazy.nvim
require("config.lazy")

-- Setup keybindings
require("config.keybinds")

-- Setup autocommands
require("config.autocommands")
