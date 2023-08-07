-- Author: Jan Keith Darunday <github@jkcdarunday.mozmail.com>
-- Description: An MPV script for KDE users that sets the screen brightness to max when going fullscreen while playing a video

local dbus_path = "/org/kde/Solid/PowerManagement/Actions/BrightnessControl"
local service_name = "local.org_kde_powerdevil"

local max_brightness = tonumber(io.popen("qdbus " .. service_name ..  " " .. dbus_path .. " brightnessMax"):read("*all"))
local default_brightness

function get_current_brightness()
    local brightness_value = tonumber(io.popen("qdbus " .. service_name ..  " " .. dbus_path .. " brightness"):read("*all"))
    return brightness_value
end

function set_brightness_to_max()
    if (get_current_brightness() ~= max_brightness) then
        print("Setting brightness to " .. max_brightness)
        os.execute("qdbus " .. service_name ..  " " .. dbus_path .. " setBrightness " .. max_brightness)
    end
end

function set_brightness_to_default()
    if (get_current_brightness() ~= default_brightness) then
        print("Setting brightness to " .. default_brightness)
        os.execute("qdbus " .. service_name ..  " " .. dbus_path .. " setBrightness " .. default_brightness)
    end
end

default_brightness = get_current_brightness()
print("Current brightness: " .. default_brightness)

mp.observe_property("fullscreen", "bool", function(name, value)
    if value then
        set_brightness_to_max()
    else
        set_brightness_to_default()
    end
end)

mp.register_event("shutdown", function()
    set_brightness_to_default()
end)
