local status, db = pcall(require, "dashboard")
if not status then
  vim.notify("没有找到 dashboard")
  return
end

db.custom_footer = {
  "",
  "",
  "🌈    No Code, No Life    🌈",
}

db.custom_center = {
  {
    icon = "  ",
    desc = "Projects                            ",
    action = "Telescope projects",
  },
  {
    icon = "  ",
    desc = "Recently files                      ",
    action = "Telescope oldfiles",
  },
  {
    icon = "  ",
    desc = "Edit Projects                       ",
    action = "edit ~/.local/share/nvim/project_nvim/project_history",
  },
  {
    icon = "  ",
    desc = "Find file                           ",
    action = "Telescope find_files",
  },
  {
    icon = "  ",
    desc = "Find text                           ",
    action = "Telescopecope live_grep",
  },
  { 
    icon = "  ", 
    desc = "Change Theme                        ", 
    action = 'Telescope colorscheme'
  },
}


db.custom_header = {
[[ ██████╗██╗   ██╗██████╗ ███████╗██████╗ ██████╗ ██╗   ██╗███╗   ██╗██╗  ██╗]],
[[██╔════╝╚██╗ ██╔╝██╔══██╗██╔════╝██╔══██╗██╔══██╗██║   ██║████╗  ██║██║ ██╔╝]],
[[██║      ╚████╔╝ ██████╔╝█████╗  ██████╔╝██████╔╝██║   ██║██╔██╗ ██║█████╔╝ ]],
[[██║       ╚██╔╝  ██╔══██╗██╔══╝  ██╔══██╗██╔═══╝ ██║   ██║██║╚██╗██║██╔═██╗ ]],
[[╚██████╗   ██║   ██████╔╝███████╗██║  ██║██║     ╚██████╔╝██║ ╚████║██║  ██╗]],
[[ ╚═════╝   ╚═╝   ╚═════╝ ╚══════╝╚═╝  ╚═╝╚═╝      ╚═════╝ ╚═╝  ╚═══╝╚═╝  ╚═╝]],
[[                                                                            ]],
[[                    ██████╗  ██████╗ ██████╗ ██████╗                        ]],
[[                    ╚════██╗██╔═████╗╚════██╗╚════██╗                       ]],
[[                     █████╔╝██║██╔██║ █████╔╝ █████╔╝                       ]],
[[                    ██╔═══╝ ████╔╝██║██╔═══╝ ██╔═══╝                        ]],
[[                    ███████╗╚██████╔╝███████╗███████╗                       ]],
[[                    ╚══════╝ ╚═════╝ ╚══════╝╚══════╝                       ]],
[[]],
[[]],
}