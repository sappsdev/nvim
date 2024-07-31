return {
  "goolord/alpha-nvim",
  opts = function()
    local dashboard = require("alpha.themes.dashboard")
    local logo = [[
      ____    _    ____  ____  ____    ____  _______     __
     / ___|  / \  |  _ \|  _ \/ ___|  |  _ \| ____\ \   / /
     \___ \ / _ \ | |_) | |_) \___ \  | | | |  _|  \ \ / / 
      ___) / ___ \|  __/|  __/ ___) | | |_| | |___  \ V /  
     |____/_/   \_\_|   |_|   |____/  |____/|_____|  \_/   
    ]]

    dashboard.section.header.val = vim.split(logo, "\n")
    return dashboard
  end,
}
