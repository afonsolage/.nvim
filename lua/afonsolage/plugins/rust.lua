local setup_rust_dap = function()
	local ok, mason_registry = pcall(require, "mason-registry")
	local adapter
	if ok then
		-- rust tools configuration for debugging support
		local codelldb = mason_registry.get_package("codelldb")
		local extension_path = codelldb:get_install_path() .. "/extension/"
		local codelldb_path = extension_path .. "adapter/codelldb"
		local liblldb_path = ""
		if vim.loop.os_uname().sysname:find("Windows") then
			liblldb_path = extension_path .. "lldb\\bin\\liblldb.dll"
		elseif vim.fn.has("mac") == 1 then
			liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
		else
			liblldb_path = extension_path .. "lldb/lib/liblldb.so"
		end
		adapter = require("rustaceanvim.config").get_codelldb_adapter(codelldb_path, liblldb_path)
	end
	return adapter
end

return {
	{
		"hrsh7th/nvim-cmp",
		opts = function(_, opts)
			local cmp = require("cmp")
			if opts.sources == nil then
				opts.sources = {}
			end
			opts.sources = cmp.config.sources(vim.list_extend(opts.sources, {
				{ name = "crates" },
			}))
		end,
	},
	{
		"Saecki/crates.nvim",
		event = { "BufRead Cargo.toml" },
		dependencies = {
			{ "nvim-lua/plenary.nvim" },
		},
		opts = {
			src = {
				cmp = { enabled = true },
			},
		},
	},
	{
		"nvim-treesitter/nvim-treesitter",
		opts = function(_, opts)
			if type(opts.ensure_installed) == "table" then
				vim.list_extend(opts.ensure_installed, { "ron", "rust", "toml" })
			end
		end,
	},
	{
		"nevom/nvim-lspconfig",
		opts = {
			setup = {
				rust_analyzer = function()
					return true
				end,
			},
		},
	},
	{
		"mrcjkb/rustaceanvim",
		version = "^3",
		ft = { "rust" },
		keys = {
			{ "K", "<cmd>RustLsp hover actions<cr>", desc = "Hover Actions (Rust)" },
			{ "<leader>dr", "<cmd>RustLsp debuggables<cr>", desc = "Run Debuggables (Rust)" },
		},
		config = function()
			vim.g.rustaceanvim = {
				server = {
					settings = {
						["rust-analyzer"] = {
							cargo = {
								allFeatures = true,
								loadOutDirsFromCheck = true,
								runBuildScripts = true,
							},
							-- Add clippy lints for Rust.
							checkOnSave = {
								allFeatures = true,
								command = "clippy",
								extraArgs = { "--no-deps" },
							},
							procMacro = {
								enable = true,
								ignored = {
									["async-trait"] = { "async_trait" },
									["napi-derive"] = { "napi" },
									["async-recursion"] = { "async_recursion" },
								},
							},
						},
					},
				},
				dap = {
					adapter = setup_rust_dap(),
				},
			}
		end,
	},
}
