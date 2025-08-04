local wezterm = require("wezterm")

--
local config = {
	color_scheme = "Kanagawa (Gogh)",

	-- Font preferences
	font = wezterm.font_with_fallback({
		{ family = "JetBrains Mono", weight = "Bold" },
		{ family = "MesloLGS NF", weight = "Regular" },
		"JetBrains Mono",
		"Menlo",
		"Monaco",
	}),
	font_size = 14.0,
	harfbuzz_features = { "calt=0", "clig=0", "liga=0" }, -- disable ligatures

	background = {
		{
			source = {
				File = "/Users/" .. os.getenv("USER") .. "/.config/wezterm/background.jpeg",
			},
			hsb = {
				hue = 0.0,
				saturation = 0.0,
				brightness = 0.5,
			},
			horizontal_align = "Center",
			vertical_align = "Middle",
		},
		{
			source = {
				Color = "#282c35",
				-- Color = "#1F1F28", -- Kanagawa
			},
			width = "100%",
			height = "100%",
			opacity = 0.5,
		},
	},

	max_fps = 120,
	enable_tab_bar = false,
	cursor_blink_rate = 0,

	window_decorations = "RESIZE",
	window_close_confirmation = "NeverPrompt",
	inactive_pane_hsb = {},

	window_padding = {
		left = 0,
		right = 0,
		top = 0,
		bottom = 0,
	},

	-- Keybindings
	-- disable_default_key_bindings = true,
	enable_kitty_keyboard = true,
	keys = {
		{ key = "Tab", mods = "CTRL", action = wezterm.action.DisableDefaultAssignment },
		{ key = "|", mods = "CTRL|SHIFT", action = wezterm.action.SplitHorizontal({ domain = "CurrentPaneDomain" }) },
		{ key = "_", mods = "CTRL|SHIFT", action = wezterm.action.SplitVertical({ domain = "CurrentPaneDomain" }) },
		{ key = "w", mods = "CTRL|SHIFT", action = wezterm.action.CloseCurrentPane({ confirm = false }) },

		-- 	{ key = "q", mods = "CMD", action = wezterm.action.QuitApplication },
		-- 	{ key = "V", mods = "CTRL", action = wezterm.action.PasteFrom("Clipboard") },
		-- 	{ key = "Insert", mods = "SHIFT", action = wezterm.action.PasteFrom("Clipboard") },
		--
		-- 	{ key = "Enter", mods = "CTRL", action = wezterm.action.SendString("\x1b[13;5u") },
		-- 	{ key = "Enter", mods = "SHIFT", action = wezterm.action.SendString("\x1b[13;2u") },
		-- 	{ key = "Tab", mods = "CTRL", action = wezterm.action.SendString("\x1b[9;5u") },
		-- 	{ key = "Tab", mods = "CTRL|SHIFT", action = wezterm.action.SendString("\x1b[9;6u") },
		--
		-- 	{ key = "1", mods = "CTRL", action = wezterm.action.SendKey({ key = "F1", mods = "CTRL|SHIFT" }) },
		-- 	{ key = "2", mods = "CTRL", action = wezterm.action.SendKey({ key = "F2", mods = "CTRL|SHIFT" }) },
		-- 	{ key = "3", mods = "CTRL", action = wezterm.action.SendKey({ key = "F3", mods = "CTRL|SHIFT" }) },
		-- 	{ key = "4", mods = "CTRL", action = wezterm.action.SendKey({ key = "F4", mods = "CTRL|SHIFT" }) },
		-- 	{ key = "5", mods = "CTRL", action = wezterm.action.SendKey({ key = "F5", mods = "CTRL|SHIFT" }) },
	},
}

-- Apply smart splits configuration
local smart_splits = wezterm.plugin.require("https://github.com/mrjones2014/smart-splits.nvim")
smart_splits.apply_to_config(config, {
	direction_keys = {
		move = { "h", "j", "k", "l" },
		resize = { "LeftArrow", "DownArrow", "UpArrow", "RightArrow" },
	},
	modifiers = {
		move = "CTRL",
		resize = "ALT",
	},
})

local modal = wezterm.plugin.require("https://github.com/MLFlexer/modal.wezterm")
modal.apply_to_config(config)
modal.set_default_keys(config)

return config
