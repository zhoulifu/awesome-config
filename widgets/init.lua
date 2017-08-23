
local net = require("widgets.net")
local memory = require("widgets.memory")
local cpu = require("widgets.cpu")
local volume = require("widgets.volume")

module("widgets", package.seeall)
local mt = getmetatable(_M)

mt.__call = function(...)
   return {
      volume.wdg, volume.icon, separator,
      net.wdg, net.icon, separator,
      memory.wdg, memory.icon, separator,
      cpu.wdg, cpu.icon, separator,
      layout = awful.widget.layout.horizontal.rightleft
   } end
