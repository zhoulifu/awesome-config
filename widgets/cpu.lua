
module("widgets.cpu", package.seeall)

local function cb (widget, args)
   cpuwidget_tt:set_text("CPU Usage: " .. args[1] .. "%")
   return args[1]
end

local cpubar = awful.widget.graph()
cpubar:set_width(50):set_height(18)
cpubar:set_color("#FF5656"):set_background_color("#494B4F")
cpubar:set_gradient_colors({ "#FF5656", "#88A175", "#AECF96" })
cpuwidget_tt = awful.tooltip({ objects = { cpubar.widget }})

icon = widget({ type = "imagebox" })
icon.image = image(beautiful.widget_cpu_icon)
wdg = cpubar.widget

vicious.register(cpubar, vicious.widgets.cpu, cb)
