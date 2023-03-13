vim.g.mapleader = " "

local keymap = vim.keymap
-- use jk to exit insert mode
keymap.set("i", "jk", "<ESC>")

-- clear search highlights
keymap.set("n", "<leader>nh", ":nohl<CR>")

-- delete single character without copying into register
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
keymap.set("n", "<leader>b", ":NvimTreeOpen | :NvimTreeFocus<CR>")

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

-- resizing splits
-- these keymaps will also accept a range,
-- for example `10<A-h>` will `resize_left` by `(10 * config.default_amount)`
keymap.set("n", "<A-h>", require("smart-splits").resize_left)
keymap.set("n", "<A-j>", require("smart-splits").resize_down)
keymap.set("n", "<A-k>", require("smart-splits").resize_up)
keymap.set("n", "<A-l>", require("smart-splits").resize_right)

-- You probably also want to set a keymap to toggle aerial
keymap.set("n", "<leader>a", "<cmd>AerialToggle!<CR>")
