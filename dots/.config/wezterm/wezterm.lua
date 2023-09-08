local wezterm = require 'wezterm'
local config = {}
if wezterm.config_builder then
  config = wezterm.config_builder()
end
config.enable_tab_bar = false
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.keys = {
  {
    key = '5',
    mods = 'CMD',
    action = wezterm.action.SplitPane {
      direction = 'Down',
    },
  },
  {
    key = '\'',
    mods = 'CMD',
    action = wezterm.action.SplitPane {
      direction = 'Right',
    },
  },
}
config.hyperlink_rules = wezterm.default_hyperlink_rules()
return config
