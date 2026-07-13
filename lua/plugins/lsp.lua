return {
	{
		-- pre-packaged lsp configurations
		-- see https://github.com/neovim/nvim-lspconfig/tree/master/lsp
		-- the actual language server executables must be installed separately
		"neovim/nvim-lspconfig",
		config = function()
      -- otherwise lsp.log grows without bounds...
      vim.lsp.log.set_level "off"
			-- Python -> ty
			vim.lsp.enable("ty")
			-- vim.lsp.enable("dartls")
			-- vim.lsp.enable('angularls')
			-- go install golang.org/x/tools/gopls@latest
			vim.lsp.enable("gopls")
			-- that's the old one
			vim.lsp.enable('ts_ls')
			-- vs code one - install with npm install -g @vtsls/language-server
			-- vim.lsp.enable('vtsls')
			vim.lsp.enable("stylua")
			-- vim.lsp.config('pyrefly', {
			--   root_markers = { 'pyrefly.toml', '.git' },
			--   init_options = {
			--     -- this doesn't seem to actually work...
			--     displayTypeErrors = "force-on"
			--   }
			-- })
			-- vim.lsp.enable('pyrefly')
      -- Documentation, default keybindings:
      -- https://neovim.io/doc/user/lsp/#_defaults
      -- to get floating info when jumping
      vim.diagnostic.config({ jump = { float = true }})

			-- useful keymappings
			-- vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      -- (note, formatting is done by conform, because some of the languages don't support lsp format)
			-- also K for showing the definition of the type at cursor (K again to go inside)
			-- standard mappings: https://neovim.io/doc/user/lsp
		end,
	},
}
