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
    dashboard.section.buttons.val = {
      dashboard.button("f", " " .. " Find file", LazyVim.pick(nil, { root = false })),
      dashboard.button("n", " " .. " New file", [[<cmd> ene <BAR> startinsert <cr>]]),
      dashboard.button("r", " " .. " Recent files", LazyVim.pick("oldfiles")),
      dashboard.button("g", " " .. " Find text", LazyVim.pick("live_grep")),
      dashboard.button("c", " " .. " Config", LazyVim.pick.config_files()),
      dashboard.button("s", " " .. " Restore Session", [[<cmd> lua require("persistence").load() <cr>]]),
      dashboard.button("x", " " .. " Lazy Extras", "<cmd> LazyExtras <cr>"),
      dashboard.button("l", "󰒲 " .. " Lazy", "<cmd> Lazy <cr>"),
      dashboard.button("q", " " .. " Quit", "<cmd> qa <cr>"),
    }
    for _, button in ipairs(dashboard.section.buttons.val) do
      button.opts.hl = "AlphaButtons"
      button.opts.hl_shortcut = "AlphaShortcut"
    end
    dashboard.section.header.opts.hl = "AlphaHeader"
    dashboard.section.buttons.opts.hl = "AlphaButtons"
    dashboard.section.footer.opts.hl = "AlphaFooter"
    dashboard.opts.layout[1].val = 8
    return dashboard
  end,
}
