function SetTheme(theme)
	colorscheme = theme or "rose-pine"
	vim.cmd.colorscheme(colorscheme)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

SetTheme('dracula')
