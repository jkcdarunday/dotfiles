-- Author: Jan Keith Darunday <github@jkcdarunday.mozmail.com>
-- Description: An MPV script for KDE users that inhibits night mode when you play a video

local utils = require 'mp.utils'
local mpv_pid = utils.getpid()

os.execute("kde-inhibit --colorCorrect tail --pid=" .. mpv_pid .. " -f /dev/null &")

