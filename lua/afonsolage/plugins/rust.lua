local setup_rust_tools = function()
	--local ok, mason_registry = pcall(require, "mason-registry")
	--local adapter
	--if ok then
	---- rust tools configuration for debugging support
	--local codelldb = mason_registry.get_package("codelldb")
	--local extension_path = codelldb:get_install_path() .. "/extension/"
	--local codelldb_path = extension_path .. "adapter/codelldb"
	--local liblldb_path = ""
	--if vim.loop.os_uname().sysname:find("Windows") then
	--liblldb_path = extension_path .. "lldb\\bin\\liblldb.dll"
	--elseif vim.fn.has("mac") == 1 then
	--liblldb_path = extension_path .. "lldb/lib/liblldb.dylib"
	--else
	--liblldb_path = extension_path .. "lldb/lib/liblldb.so"
	--end
	--adapter = require("rust-tools.dap").get_codelldb_adapter(codelldb_path, liblldb_path)
	--end
	return {
		--dap = {
		--adapter = adapter,
		--},
		tools = {
			inlay_hints = { auto = true },
			on_initialized = function()
				vim.cmd([[
                            augroup RustLSP
                              autocmd CursorHold                      *.rs silent! lua vim.lsp.buf.document_highlight()
                              autocmd CursorMoved,InsertEnter         *.rs silent! lua vim.lsp.buf.clear_references()
                              autocmd BufEnter,CursorHold,InsertLeave *.rs silent! lua vim.lsp.codelens.refresh()
                            augroup END
                          ]])
			end,
		},
	}
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
		"simrat39/rust-tools.nvim",
		opts = {
			tools = {
				inlay_hints = { auto = false },
			},
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
		},
	},
}
