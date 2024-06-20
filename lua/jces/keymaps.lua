vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set('n', '<leader>e', vim.cmd.Ex, { desc = "open explorer" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")

keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

keymap.set({"n", "v"}, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set("n", "<leader>ch", ":nohl<CR>", { desc = "clear search highlights" })

keymap.set("n", "<leader>sv", "<C-w>v", { desc = "split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "close current split" })

keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "go to next tab" })
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "open current buffer in new tab" })

keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");
