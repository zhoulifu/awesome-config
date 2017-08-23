
module("widgets.memory", package.seeall)

icon = widget({ type = "imagebox" })
icon.image = image(beautiful.widget_memory_icon)
wdg =  widget({ type = "textbox" })
local membar_tt = awful.tooltip({ objects = { wdg, icon } })
vicious.register(wdg, vicious.widgets.mem, function (widget, args)
                    membar_tt:set_text("RAM: " .. args[2] .. "MB/" .. args[3] .. "MB")
                    return args[1] .. "%"
                 end, 13)
