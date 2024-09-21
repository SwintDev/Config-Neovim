return {
  'Shatur/neovim-session-manager',
  config = function()
    require('session_manager').setup({
      autoload_mode = require('session_manager.config').AutoloadMode.CurrentDir,
      sessions_dir = vim.fn.expand("~/.config/nvim/sessions/"),
      autoload_last_session = true,
    })
  end
}

