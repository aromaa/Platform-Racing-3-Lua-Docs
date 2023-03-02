--- Remote player related variables and functions
...

--- The current team the player is in. Read-only.
--- By default 'none'.
--- Teammates can't directly hurt each other unless there are players left only in that team.
team = "none"

--- Player's current health. The player is killed if it goes to zero or below. Read-only.
health = 5

--- Player's current rotation in degrees. Read-only.
--- Rotation can only be set to values dividable by 90 degrees.
rotation = 0

--- Player's current speed stat. Read-only.
speed = 50

--- Player's current jump stat. Read-only.
jump = 50

--- Player's current acceleration stat. Read-only.
accel = 50

--- The absolute x-position of the player. Read-only.
x = 0

--- The absolute y-position of the player. Read-only.
y = 0

--- The decimal color value of the player's outline. Set to a negative number to disable outline.
outline = -1

--- The thickness of the outline.
--- By default 10.
outlinethickness = 10

--- The decimal color value of the player's dye. Set to a negative number to disable.
paint = -1

--- The opacity of the player. Ranges from 0 to 1. 0 means fully transparent, 1 means fully opaque.
--- By default 1.
alpha = 1

--- Sets a metadata with a specified key-value pair to the player.
--- @tparam string key Name of the metadata variable (the key)
--- @param value Value of the metadata variable
--- @usage player.setmetadata("coins", 10)
function setmetadata(key, value)
end

--- Gets a player metadata value with the specified key.
--- @tparam string key The key (metadata variable name) that's used to find its value.
--- @param defaultValue The value to return if the searched key does not exists. By default no specific value is returned.
--- @return Returns the key's value. Returns defaultValue instead if the key isn't found.
--- @usage player.getmetadata("coins", 0)
function getmetadata(key, defaultValue)
end