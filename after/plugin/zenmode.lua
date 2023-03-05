vim.keymap.set("n", "<leader>zz", function()
    require('zen-mode').setup {
        window = {
            width = 120
        }
    }
    require('zen-mode').toggle()
end);
