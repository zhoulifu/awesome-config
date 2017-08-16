local M = {}
local model_name = ...;
_G[model_name] = M;

M.application = {
-- Put entries here, format
-- { name, command, icon_path }
}

M.system = {
  { "Setting", "gnome-control-center" },
  { "Reboot", "sudo reboot" },
  { "Shutdown", "sudo shutdown -h now" }
}

return M
