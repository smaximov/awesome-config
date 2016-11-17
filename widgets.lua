local wibox = require("wibox")
local vicious = require("vicious")

local widgets = {
   margin = " "
}

local function pad(text)
   return widgets.margin .. text .. widgets.margin
end

function widgets.date(format)
   local widget = wibox.widget.textbox()
   vicious.register(widget, vicious.widgets.date, pad(format), 59)
   return widget
end

function widgets.battery(battery_id, format)
   local widget = wibox.widget.textbox()
   vicious.register(widget, vicious.widgets.bat, pad(format), 3, battery_id)
   return widget
end

return widgets
