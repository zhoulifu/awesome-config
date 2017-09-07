local M = {}
local model_name = ...;
_G[model_name] = M;

local awful = require("awful")
local volume = require("widgets.volume")

M.global = awful.util.table.join(
   awful.key({ "Mod1", }, "l", function () awful.util.spawn("gnome-screensaver-command --lock") end),
   awful.key({         }, "Print", function () awful.util.spawn("gnome-screenshot") end)
)

M.laptop = awful.util.table.join(
   awful.key({}, "XF86AudioLowerVolume", volume.vol_down),
   awful.key({}, "XF86AudioRaiseVolume", volume.vol_up),
   awful.key({}, "XF86AudioMute", volume.vol_toggle)
)

M.client = awful.util.table.join({})

return M
