local status, lualine = pcall(require, "lualine")
if (not status) then return end

lualine.setup {
  options = {
    icons_enabled = true,
    theme = 'auto', -- wombat, nord, iceberg_dark, solarized_dark, papercolor, material, powerline
    -- section_separators = {'', ''},
    section_separators = {''},
    -- component_separators = {'', ''},
    component_separators = {'|', '|'},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff'},
    lualine_c = {{
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 0 -- 0 = just filename, 1 = relative path, 2 = absolute path
    }},
    lualine_x = {
      --{ 'diagnostics', sources = {"nvim_lsp"}, symbols = {error = ' ', warn = ' ', info = ' ', hint = ' '} },
      --'filetype'
    },
    --lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {{
      'filename',
      file_status = true, -- displays file status (readonly status, modified status)
      path = 1 -- 0 = just filename, 1 = relative path, 2 = absolute path
    }},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
}

