local toggle_lines = function()
    local v_lines_enabled = vim.diagnostic.config().virtual_lines
    vim.diagnostic.config({ 
        virtual_lines = not v_lines_enabled,
        virtual_text = v_lines_enabled
    })
end

return {
    "https://git.sr.ht/~whynothugo/lsp_lines.nvim",
	dependencies = { 
		"neovim/nvim-lspconfig",
    },
    config = function()
        require("lsp_lines").setup()
        toggle_lines()
    end,
    keys = {
        {
            "<leader>xl",
            function()
                toggle_lines()
            end,
            desc = "Toggle lsp lines",
        },
    },
}
