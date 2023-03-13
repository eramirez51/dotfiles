local setup, rooter = pcall(require, "nvim-rooter")

if not setup then
	return
end

rooter.setup({
	rooter_patterns = { ".git", "scripts", "init.lua" },
	trigger_patterns = { "*" },
	manual = false,
})
