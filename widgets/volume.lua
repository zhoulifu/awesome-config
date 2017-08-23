
module("widgets.volume", package.seeall)

wdg = nil

local function update (command)
   local cmd = command or "amixer -D pulse get Master"
   local f = io.popen(cmd)
   c = f:read("*all")
   f:close()

   local vol, mute = string.match(c, "([%d]+)%%.*%[([%l]*)")
      if (vol == nil) or (mute == "off")
      or (mute == "" and vol == "0") then
         wdg.text = '<span color="#FF0000">♫</span>'
      else
         wdg.text = vol .. "%"
      end
end

function vol_up ()
   update("amixer -D pulse sset Master 3%+")
end

function vol_down ()
   update("amixer -D pulse sset Master 3%-")
end

function vol_toggle ()
   update("amixer -D pulse sset Master toggle")
end

wdg = widget({ type = "textbox" })
icon = widget({ type = "imagebox" })
icon.image = image(beautiful.widget_volumn_icon)
icon:buttons(awful.util.table.join(
   awful.button({}, 2, vol_toggle),
   awful.button({}, 4, vol_up),
   awful.button({}, 5, vol_down)
))

update()
