local config = require("wezterm").config_builder()

local keys = require("config.keys")
local appearance = require("config.appearance")

for _, module in ipairs({ keys, appearance }) do
	for k, v in pairs(module) do
		config[k] = v
	end
end

local wezterm = require("wezterm")
wezterm.on('window-config-reloaded', function(window, pane)
    local win_info = window:get_config_overrides() or {}
    -- Check if this window belongs to our wifi floating class
    if window:window_class() == 'wifi-float' then
        win_info.colors = {
            ansi = {
                -- We only override the 5th slot (index 4 in 0-based arrays) 
                -- which nmtui uses for its background canvas
                [5] = '#1e1e2e' -- Changes the gross blue to a dark slate color
            }
        }
        window:set_config_overrides(win_info)
    end
end)

config.window_background_opacity = 0.50
config.warn_about_missing_glyphs = false

config.colors = {
    background = "rgba(26, 27, 38, 0.70)", -- Adjust the 0.70 to match your transparency!
}

return config
