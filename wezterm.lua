local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local mux = wezterm.mux

config.scrollback_lines = 3500
-- Appearance
-- config.color_scheme = 'Google (light) (terminal.sexy)'
config.color_scheme = "Catppuccin Frappe"
-- local theme = wezterm.plugin.require('https://github.com/neapsix/wezterm').moon
config.window_decorations = "INTEGRATED_BUTTONS"
config.font = wezterm.font 'Auger Mono Medium' 
config.font_size = 15
config.line_height = 1.1
-- config.colors = theme.colors()
-- config.window_frame = theme.window_frame()
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
