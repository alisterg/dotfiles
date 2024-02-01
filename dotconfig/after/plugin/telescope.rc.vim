if !exists('g:loaded_telescope') | finish | endif

nmap gf <cmd>Telescope find_files<cr>
nmap ga <cmd>Telescope live_grep<cr>
"nnoremap <silent> \\ <cmd>Telescope buffers<cr>
"nnoremap <silent> ;; <cmd>Telescope help_tags<cr>

lua << EOF
local actions = require('telescope.actions')
-- Global remapping
------------------------------
require('telescope').setup{
  defaults = {
    file_ignore_patterns = {"node_modules", "fastlane", ".xcodeproj", ".pbxproj"},
    layout_strategy = "vertical",
    layout_config = {
      vertical = {
        prompt_position = "top",
        mirror = true,
      },
      preview_width = 60
    },
    mappings = {
      n = {
        ["q"] = actions.close
      },
    },
  }
}
EOF

