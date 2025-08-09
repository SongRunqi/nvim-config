return {
  'nvimdev/dashboard-nvim',
  event = 'VimEnter',
  config = function()
    require('dashboard').setup {
      theme = 'hyper',
      config = {
        hide_recent_files = true,
        project = { enable = true, limit = 8, icon = '', label = '', action = 'Telescope find_files cwd=' },
        mru = { enable = true, limit = 10, icon = '', label = '', cwd_only = false },
        header = {
          '',
          '███████╗ ██████╗ ███╗   ██╗ ██████╗ ██╗   ██╗██╗████████╗██╗ █████╗ ███╗   ██╗',
          '██╔════╝██╔═══██╗████╗  ██║██╔════╝ ╚██╗ ██╔╝██║╚══██╔══╝██║██╔══██╗████╗  ██║',
          '███████╗██║   ██║██╔██╗ ██║██║  ███╗ ╚████╔╝ ██║   ██║   ██║███████║██╔██╗ ██║',
          '╚════██║██║   ██║██║╚██╗██║██║   ██║  ╚██╔╝  ██║   ██║   ██║██╔══██║██║╚██╗██║',
          '███████║╚██████╔╝██║ ╚████║╚██████╔╝   ██║   ██║   ██║   ██║██║  ██║██║ ╚████║',
          '╚══════╝ ╚═════╝ ╚═╝  ╚═══╝ ╚═════╝    ╚═╝   ╚═╝   ╚═╝   ╚═╝╚═╝  ╚═╝╚═╝  ╚═══╝',
          '',
          '✨ Happy coding! ✨',
          '',
        },
        shortcut = {
          { desc = '󰊳 Update', group = '@property', action = 'Lazy update', key = 'u' },
          { desc = ' Files', group = 'Label', action = 'Telescope find_files', key = 'f' },
          { desc = ' Apps', group = 'DiagnosticHint', action = 'TelescopeApp', key = 'a' },
          { desc = ' dotfiles', group = 'Number', action = 'TelescopeDotfiles', key = 'd' },
          { desc = '⚙️ Config', group = 'DiagnosticWarn', action = 'edit $MYVIMRC', key = 'c' },
        }
      }
    }
  end,
  dependencies = { {'nvim-tree/nvim-web-devicons'}}
}
