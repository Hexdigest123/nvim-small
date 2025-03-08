return {
	"williamboman/mason.nvim",
	dependencies = {
		"williamboman/mason-lspconfig.nvim",
		"WhoIsSethDaniel/mason-tool-installer.nvim",
	},
	config = function()
		require("mason").setup()

		require("mason-lspconfig").setup({
			automatic_installation = true,
			ensure_installed = {},
		})

		require("mason-tool-installer").setup({
			ensure_installed = {
				"ts_ls",
				"gopls",
				"dockerls",
				"svelte",
				"tailwindcss",
				"jdtls",
				"texlab",
				"intelephense",
				"clangd",
				"pyright",
				"lua_ls",
			},
		})
	end,
}
