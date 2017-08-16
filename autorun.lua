local M = {}
local model_name = ...;
_G[model_name] = M;

local home = os.getenv("HOME")

local apps = {
     home .. "/bin/fuck-hijack start",
     "gnome-screensaver",
     "pcmanfm",
     "thunderbird",
     "ss-qt5"
}

local function once(app)
      awful.util.spawn_with_shell("pgrep -u $USER -x " .. app .. " || (" .. app .. ")")
end

function M.run ()
   for app = 1, #apps do
      once(apps[app])
   end
end

return M
