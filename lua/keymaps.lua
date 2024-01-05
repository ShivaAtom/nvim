vim.g.mapleader = " "

local function keysa(mode,k,coman)
  vim.api.nvim_set_keymap(mode, k, coman, {noremap = true})
end

keysa("n", "<C-s>", ":w<CR>")
keysa("n", "<C-q>", ":q<CR>")
keysa("n","<leader>q",":q!<CR>")

keysa("n","<leader>t", ":Neotree toggle<CR>")
keysa("n", "<C-l>",":Neotree focus<CR>")
