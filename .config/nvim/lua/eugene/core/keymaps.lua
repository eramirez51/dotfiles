vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("n", "x", '"_x"')

keymap.set("n", "<leader>sv", "<C-w>v") -- split vertical
keymap.set("n", "<leader>sh", "<C-w>s") -- split horizontal
keymap.set("n", "<leader>se", "<C-w>=") -- resize split equally
keymap.set("n", "<leader>sx", ":close<CR>")

keymap.set("n", "<leader>to", ":tabnew<CR>") -- open new tab
keymap.set("n", "<leader>tx", ":tabclose<CR>") -- close current tab
keymap.set("n", "<leader>tn", ":tabn<CR>") -- go to next tab
keymap.set("n", "<leader>tp", ":tabp<CR>") -- go to previous tab

-- plugin keymaps
keymap.set("n", "<leader>sm", ":MaximizerToggle<CR>") -- go to previous tab
keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>") -- go to previous tab

keymap.set("n", "<leader>r", ":RnvimrToggle<CR>") -- toggle Rnvimr

-- telescope
keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
keymap.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>") -- find string under cursor in current working directory
keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
keymap.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags
keymap.set("n", "<leader>fr", "<cmd>Telescope repo list<cr>") -- list repos
keymap.set("n", "<leader>ft", "<cmd>Telescope telescope-tabs list_tabs<cr>") -- list repos
keymap.set("n", "<leader>fe", "<cmd>Telescope env<cr>") -- list envs
keymap.set("n", "<leader>fn", "<cmd>Telescope neoclip<cr>") -- list yanks

-- You probably also want to set a keymap to toggle aerial
keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
