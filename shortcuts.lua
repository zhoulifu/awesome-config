local M = {}
local model_name = ...;
_G[model_name] = M;

local awful = require("awful")

M.global = awful.util.table.join(
   awful.key({ "Mod1", }, "l", function () awful.util.spawn("gnome-screensaver-command --lock") end),
   awful.key({         }, "Print", function () awful.util.spawn("gnome-screenshot") end)
)

M.client = awful.util.table.join({})

return M
