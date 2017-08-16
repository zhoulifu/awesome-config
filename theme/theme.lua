---------------------------
-- Default awesome theme --
---------------------------

theme = {}
theme.confdir       = awful.util.getdir("config")
theme.font          = "sans 8"

theme.bg_normal     = "#222222"
theme.bg_focus      = "#535d6c"
theme.bg_urgent     = "#ff0000"
theme.bg_minimize   = "#444444"

theme.fg_normal     = "#aaaaaa"
theme.fg_focus      = "#ffffff"
theme.fg_urgent     = "#ffffff"
theme.fg_minimize   = "#ffffff"

theme.border_width  = "1"
theme.border_normal = "#000000"
theme.border_focus  = "#b1d2f8"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel   = theme.confdir .. "/theme/taglist/squarefw.png"
theme.taglist_squares_unsel = theme.confdir .. "/theme/taglist/squarew.png"

theme.tasklist_floating_icon = theme.confdir .. "/theme/tasklist/floating.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = theme.confdir .. "/icons/submenu.png"
theme.menu_height = "18"
theme.menu_width  = "100"

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = theme.confdir .. "/theme/titlebar/close_normal.png"
theme.titlebar_close_button_focus  = theme.confdir .. "/theme/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = theme.confdir .. "/theme/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive  = theme.confdir .. "/theme/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = theme.confdir .. "/theme/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active  = theme.confdir .. "/theme/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = theme.confdir .. "/theme/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive  = theme.confdir .. "/theme/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = theme.confdir .. "/theme/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active  = theme.confdir .. "/theme/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = theme.confdir .. "/theme/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive  = theme.confdir .. "/theme/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = theme.confdir .. "/theme/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active  = theme.confdir .. "/theme/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme.confdir .. "/theme/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive  = theme.confdir .. "/theme/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = theme.confdir .. "/theme/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active  = theme.confdir .. "/theme/titlebar/maximized_focus_active.png"

-- You can use your own command to set your wallpaper
theme.wallpaper_cmd = { "awsetbg " .. theme.confdir .. "/theme/background_white.png" }

-- You can use your own layout icons like this:
theme.layout_fairh = theme.confdir .. "/theme/layouts/fairhw.png"
theme.layout_fairv = theme.confdir .. "/theme/layouts/fairvw.png"
theme.layout_floating  = theme.confdir .. "/theme/layouts/floatingw.png"
theme.layout_magnifier = theme.confdir .. "/theme/layouts/magnifierw.png"
theme.layout_max = theme.confdir .. "/theme/layouts/maxw.png"
theme.layout_fullscreen = theme.confdir .. "/theme/layouts/fullscreenw.png"
theme.layout_tilebottom = theme.confdir .. "/theme/layouts/tilebottomw.png"
theme.layout_tileleft   = theme.confdir .. "/theme/layouts/tileleftw.png"
theme.layout_tile = theme.confdir .. "/theme/layouts/tilew.png"
theme.layout_tiletop = theme.confdir .. "/theme/layouts/tiletopw.png"
theme.layout_spiral  = theme.confdir .. "/theme/layouts/spiralw.png"
theme.layout_dwindle = theme.confdir .. "/theme/layouts/dwindlew.png"

theme.awesome_icon = theme.confdir .. "/icons/awesome.png"

-- Custom variables
theme.widget_calander_icon = theme.confdir .. "/icons/widgets/cal.png"
theme.widget_cpu_icon = theme.confdir .. "/icons/widgets/cpu.png"
theme.widget_download_icon = theme.confdir .. "/icons/widgets/down.png"
theme.widget_upload_icon = theme.confdir .. "/icons/widgets/up.png"
theme.widget_memory_icon = theme.confdir .. "/icons/widgets/mem.png"
theme.widget_separator_icon = theme.confdir .. "/icons/widgets/separator.png"

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
