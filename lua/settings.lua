local set = vim.opt

set.encoding = "utf-8"
set.number=true
set.relativenumber=true
set.mouse="a"
set.laststatus = 3 -- global statusline
set.showmode = false
set.fillchars = { eob = " " }
vim.o.tabstop = 2          -- Tamaño de la tabulación
vim.o.shiftwidth = 2        -- Tamaño de indentación al presionar <Tab> o <S-Tab>
vim.o.softtabstop = 2    -- Tamaño de la tabulación para <Tab> o <S-Tab>
vim.o.expandtab = true
vim.o.termguicolors = true
set.clipboard = "unnamedplus"
