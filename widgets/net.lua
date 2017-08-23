
module("widgets.net", package.seeall)

local function iface_detact ()
   local f = io.popen("route")
   local c = f:read("*all")
   f:close()
   return string.match(c, "default%s+[%.%d]+%s+[%.%d]+%s+%w+%s+%d%s+%d%s+%d%s(%w+)") or "lo"
end

local iface = iface_detact()

local function vicious_cb (widget, args)
   local down_kb = args["{" .. iface  .. " down_kb}"]
   local up_kb = args["{" .. iface .. " up_kb}"]
   local up_unit = tonumber(up_kb) > 1024 and "mb" or "kb"
   local down_unit = tonumber(down_kb) > 1024 and "mb" or "kb"
   return iface ..  ": ↑ " .. args["{" .. iface .. " up_" .. up_unit .. "}"] .. up_unit .. "/s" ..  " | " ..
      args["{" .. iface .. " down_" .. down_unit .. "}"] .. down_unit .. "/s" .. " ↓"
end

icon = widget({ type = "imagebox" })
icon.image = image(beautiful.widget_net_icon)
wdg = widget({ type = "textbox" })
vicious.register(wdg, vicious.widgets.net, vicious_cb, 1)
