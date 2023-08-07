-- Author: Jan Keith Darunday <github@jkcdarunday.mozmail.com>
-- Description: An MPV script for KDE users that inhibits night mode when you play a video

local session_id

function inhibit()
    local session_id = tonumber(io.popen("qdbus org.kde.KWin /ColorCorrect org.kde.kwin.ColorCorrect.inhibit"):read("*all"))
    print("Inhibited night mode with session ID " .. session_id)
    return session_id
end

function uninhibit()
    if (session_id ~= nil) then
        io.popen("qdbus org.kde.KWin /ColorCorrect org.kde.kwin.ColorCorrect.uninhibit " .. session_id)
        print("Uninhibited night mode with session ID " .. session_id)
    end
end

mp.register_event("file-loaded", function()
    session_id = inhibit()
end)

mp.register_event("shutdown", function()
    uninhibit()
end)
