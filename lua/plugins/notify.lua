return {
  'rcarriga/nvim-notify',
  config = function()
    local notify = require('notify')
    vim.keymap.set("n", "<leader>m", ":Notifications<CR>", { noremap = true, silent = true })

    notify.setup({
      stages = "fade",
      timeout = 3000,
      background_colour = "#1e1e2f",
      minimum_width = 50,
      maximum_width = 80,
      max_height = nil,
      top_down = true,
      render = "default",
      on_open = function(win)
        vim.wo[win].wrap = false
        vim.api.nvim_win_set_config(win, { style = "minimal", border = "rounded" })
      end,
    })

    local colors = require('catppuccin.palettes').get_palette()
    vim.cmd(string.format([[highlight NotifyERRORBorder guifg=%s guibg=%s]], colors.red, colors.base))
    vim.cmd(string.format([[highlight NotifyWARNBorder guifg=%s guibg=%s]], colors.yellow, colors.base))
    vim.cmd(string.format([[highlight NotifyINFOBorder guifg=%s guibg=%s]], colors.green, colors.base))
    vim.cmd(string.format([[highlight NotifyDEBUGBorder guifg=%s guibg=%s]], colors.teal, colors.base))

    vim.cmd(string.format([[highlight NotifyERRORTitle guifg=%s]], colors.red))
    vim.cmd(string.format([[highlight NotifyWARNTitle guifg=%s]], colors.yellow))
    vim.cmd(string.format([[highlight NotifyINFOTitle guifg=%s]], colors.green))
    vim.cmd(string.format([[highlight NotifyDEBUGTitle guifg=%s]], colors.teal))

    vim.cmd(string.format([[highlight NotifyERRORBody guifg=%s]], colors.text))
    vim.cmd(string.format([[highlight NotifyWARNBody guifg=%s]], colors.text))
    vim.cmd(string.format([[highlight NotifyINFOBody guifg=%s]], colors.text))
    vim.cmd(string.format([[highlight NotifyDEBUGBody guifg=%s]], colors.text))

    vim.lsp.handlers["window/showMessage"] = function(_, method, params, _)
      local severity = ({
        [1] = "ERROR",
        [2] = "WARN",
        [3] = "INFO",
        [4] = "DEBUG",
      })[params.type]
      notify(method.message, severity, { title = "LSP" })
    end

    vim.api.nvim_create_autocmd("BufWritePost", {
      callback = function()
        local diagnostics = vim.diagnostic.get(0)
        for _, diagnostic in ipairs(diagnostics) do
          local severity = ({
            [vim.diagnostic.severity.ERROR] = "ERROR",
            [vim.diagnostic.severity.WARN] = "WARN",
            [vim.diagnostic.severity.INFO] = "INFO",
            [vim.diagnostic.severity.HINT] = "DEBUG",
          })[diagnostic.severity]
          notify(diagnostic.message, severity, { title = "LSP Diagnostic", timeout = 4000 })
        end
      end,
    })

    vim.diagnostic.config({
      virtual_text = true,
      signs = true,
      update_in_insert = true,
      severity_sort = true,
      float = {
        source = true,
        border = "rounded",
        format = function(diagnostic)
          return string.format("%s (%s)", diagnostic.message, diagnostic.source or "")
        end,
      },
    })
  end,
}
