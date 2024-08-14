local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local mux = wezterm.mux

-- Appearance
config.color_scheme = 'Google (light) (terminal.sexy)'
config.window_decorations = "RESIZE"
config.font = wezterm.font 'Maple Mono' 
config.font_size = 13.3
-- Custom Keybindings
config.keys = {
  {
    key = 'd',
    mods = 'CMD',
    action = wezterm.action.SplitHorizontal { domain = 'CurrentPaneDomain' },
  },
  {
    key = 'd',
    mods = 'CMD|SHIFT',
    action = wezterm.action.SplitVertical { domain = 'CurrentPaneDomain' },
  },
  -- Make Option-Left equivalent to Alt-b which many line editors interpret as backward-word
  {
    key="LeftArrow",
    mods="OPT",
    action=wezterm.action{SendString="\x1bb"}
  },
  -- Make Option-Right equivalent to Alt-f; forward-word
  {
    key="RightArrow",
    mods="OPT",
    action=wezterm.action{SendString="\x1bf"}
  },
  -- Select next tab with cmd-opt-left/right arrow
  {
    key = 'LeftArrow',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ActivateTabRelative(-1)
  },
  {
    key = 'RightArrow',
    mods = 'CMD|SHIFT',
    action = wezterm.action.ActivateTabRelative(1)
  },
  -- Select next pane with cmd-left/right arrow
  {
    key = 'LeftArrow',
    mods = 'CMD',
    action = wezterm.action{ActivatePaneDirection='Prev'},
  },
  {
    key = 'RightArrow',
    mods = 'CMD',
    action = wezterm.action{ActivatePaneDirection='Next'},
  },

  {
    key = 'w',
    mods = 'CMD',
    action = wezterm.action.CloseCurrentPane { confirm = true },
  },
}

-- Maximize Window on Startup
wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)



return config
