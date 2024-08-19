-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

config.initial_cols = 158
config.initial_rows = 32

config.color_scheme = "Tokyo Night"

config.window_decorations = "INTEGRATED_BUTTONS|RESIZE"
config.window_padding = { left = 5, right = 5, top = 5, bottom = 5 }
config.window_background_opacity = 0.9
config.text_background_opacity = 0.5

-- 默认启动 MinGW64 / MSYS2
config.default_prog = { "D:/scoop/apps/powershell/current/pwsh.exe" }

-- 启动菜单的一些启动项
config.launch_menu = {
	{ label = "PowerShell", args = { "D:/scoop/apps/powershell/current/pwsh.exe" } },
	{ label = "CMD", args = { "cmd.exe" } },
	{ label = "Ubuntu", args = { "C:/windows/system32/wsl.exe -d Ubuntu" } },
}

-- and finally, return the configuration to wezterm
return config
