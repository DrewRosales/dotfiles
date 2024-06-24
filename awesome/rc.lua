pcall(require, "luarocks.loader")
local gears = require("gears")
local beautiful = require("beautiful")
local theme_dir = gears.filesystem.get_configuration_dir() .. "theme/"

require("configuration")
require("modules")
require("ui")
