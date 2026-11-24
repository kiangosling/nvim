return {
    {
      "goolord/alpha-nvim",
      -- dependencies = { 'nvim-mini/mini.icons' },
      dependencies = { 'nvim-tree/nvim-web-devicons' },
      config = function()
        local alpha = require('alpha')
        local dashboard = require("alpha.themes.dashboard")
        dashboard.section.header.val = {
        	[[  ^  ^  ^   ^☆ ★ ☆ ___I_☆ ★ ☆ ^  ^   ^  ^  ^   ^  ^ ]],
        	[[ /|\/|\/|\ /|\ ★☆ /\-_--\ ☆ ★/|\/|\ /|\/|\/|\ /|\/|\ ]],
        	[[ /|\/|\/|\ /|\ ★ /  \_-__\☆ ★/|\/|\ /|\/|\/|\ /|\/|\ ]],
        	[[ /|\/|\/|\ /|\ 󰻀 |[]| [] | 󰻀 /|\/|\ /|\/|\/|\ /|\/|\ ]],
        }
        alpha.setup(dashboard.opts)
      end,
    },
}
