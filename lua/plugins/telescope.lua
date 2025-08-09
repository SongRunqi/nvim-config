return {
	{
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                              , branch = '0.1.x',
		dependencies = { 'nvim-lua/plenary.nvim' },
		config = function()
			local telescope = require('telescope')
			local builtin = require('telescope.builtin')
			
			telescope.setup({
				defaults = {
					mappings = {
						i = {
							["<C-u>"] = false,
							["<C-d>"] = false,
						},
					},
				},
			})

			-- Custom dotfiles picker
			vim.api.nvim_create_user_command('TelescopeDotfiles', function()
				builtin.find_files({
					prompt_title = "< Dotfiles >",
					cwd = vim.env.HOME,
					find_command = {
						"find", vim.env.HOME, "-maxdepth", "3", 
						"-name", ".*", "-type", "f", 
						"!", "-path", "*/.*/*", 
						"!", "-name", ".DS_Store"
					}
				})
			end, {})

			-- Custom app launcher picker  
			vim.api.nvim_create_user_command('TelescopeApp', function()
				builtin.find_files({
					prompt_title = "< Applications >",
					cwd = "/Applications",
					find_command = { "find", "/Applications", "-name", "*.app", "-maxdepth", "2" }
				})
			end, {})
		end
	}
}
