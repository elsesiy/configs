local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.set_environment_variables = {
  PATH = wezterm.home_dir .. '/.nix-profile/bin:' .. os.getenv('PATH')
}

config.color_scheme = "Catppuccin Mocha"
config.default_prog = { "zellij" }
config.disable_default_key_bindings = true
config.enable_tab_bar = false
config.font = wezterm.font_with_fallback({
	{ family = "JetBrains Mono" },
	{ family = "FiraCode" },
})
config.font_size = 18
config.front_end = "WebGpu"
config.scrollback_lines = 100000
config.window_close_confirmation = "NeverPrompt"
config.window_decorations = "RESIZE"

local act = wezterm.action
config.keys = {
	{ key = "-", mods = "CTRL", action = act.DecreaseFontSize },
	{ key = "+", mods = "CTRL", action = act.IncreaseFontSize },
	{ key = ".", mods = "SUPER", action = act.ActivateCommandPalette },
	{ key = "v", mods = "SUPER", action = act.PasteFrom("Clipboard") },
	{ key = "c", mods = "SUPER", action = act.CopyTo("Clipboard") },
	{ key = "h", mods = "SUPER", action = act.HideApplication },
	{ key = "Enter", mods = "SUPER", action = act.ToggleFullScreen },
	{ key = ":", mods = "SUPER", action = act.ShowDebugOverlay },
	{ key = "0", mods = "SUPER", action = act.ResetFontSize },
}

return config
