return { {
    "echasnovski/mini.pairs",
    event = "VeryLazy",
    opts = {},
}, {
    "echasnovski/mini.surround",
    opts = {
        mappings = {
            add = "gsa",            -- Add surrounding in Normal and Visual modes
            delete = "gsd",         -- Delete surrounding
            find = "gsf",           -- Find surrounding (to the right)
            find_left = "gsF",      -- Find surrounding (to the left)
            highlight = "gsh",      -- Highlight surrounding
            replace = "gsr",        -- Replace surrounding
            update_n_lines = "gsn", -- Update `n_lines`
        },
    }
}, {
    "echasnovski/mini.comment",
    event = "VeryLazy",
}, {
    "echasnovski/mini.ai",
    event = "VeryLazy"
}, {
    "echasnovski/mini.indentscope",
    version = false, -- wait till new 0.7.0 release to put it back on semver
    opts = {
        -- symbol = "▏",
        symbol = "│",
        options = { try_as_border = true },
    },
    init = function()
        vim.api.nvim_create_autocmd("FileType", {
            pattern = {
                "help",
                "alpha",
                "dashboard",
                "neo-tree",
                "Trouble",
                "trouble",
                "lazy",
                "mason",
                "notify",
                "toggleterm",
                "lazyterm",
            },
            callback = function()
                vim.b.miniindentscope_disable = true
            end,
        })
    end,
}
}

