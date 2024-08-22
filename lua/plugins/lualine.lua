return {
  "nvim-lualine/lualine.nvim",
  config = function()
    local lualine = require('lualine')

    local function get_split_count()
      local count = vim.fn.winnr('$')
      local splits = {}
      for i = 1, count do
        table.insert(splits, '●')
      end
      return table.concat(splits, ' ')
    end

    lualine.setup({
      options = {
        globalstatus = true,
        theme = 'catppuccin',
        section_separators = { left = '', right = '' },
        component_separators = { left = '', right = '' },
      },
      sections = {
        lualine_a = {
          {
            'mode',
            separator = { left = '', right = '' },
            padding = { left = 1, right = 1},
          },
        },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = {
          'filename',
          {
            'filesize',
            cond = function() return vim.fn.getfsize(vim.fn.expand('%')) > 0 end
          }
        },
        lualine_x = {
          'encoding',
          'fileformat',
          'filetype'
        },
        lualine_y = {
          get_split_count,
          'progress'
        },
        lualine_z = {
          {
            'location',
            separator = { left = '', right = '' },
            padding = { left = 1, right = 1 },
          },
        },
      },
    })
  end
}
