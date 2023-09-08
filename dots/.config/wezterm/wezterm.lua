local wezterm = require 'wezterm'
local config = {}
config.enable_tab_bar = false
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.hyperlink_rules = wezterm.default_hyperlink_rules()
return config
