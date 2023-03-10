local setup,rnvimr = pcall(require, "Rnvimr")

if not setup then
    return
end
vim.g.rnvimr_ranger_cmd = '/usr/bin/ranger'
vim.g.rnvimr_enable_ex = 1       -- replace netrw
vim.g.rnvimr_enable_picker = 1  -- use Ranger as a picker

rnvimr.setup()

