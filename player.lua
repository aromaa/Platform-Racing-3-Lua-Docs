--- Player related variables and functions
...

--- The current team the player is in.
--- By default 'none'.
--- Teammates can't directly hurt each other unless there are players left only in that team.
team = "none"

--- Player's current health. The player is killed if it goes to zero or below.
health = 5

--- Player's current rotation in degrees.
--- Rotation can only be set to values dividable by 90 degrees.
rotation = 0

--- Player's current speed stat.
speed = 50

--- Player's current jump stat.
jump = 50

--- Player's current acceleration stat.
accel = 50

--- Strength of the gravity affecting the player.
gravity = 1

--- Hurts the player by a specific amount and with a specified velocity.
--- @tparam int damage The amount of damage done to the player. By default 1.
--- @tparam number vel The strength of the impact that pushes the player. By default 0.3.
function hurt(damage, vel)
end

--- Sets a metadata with a specified key-value pair to the player.
--- @tparam string key Name of the metadata variable (the key)
--- @param value Value of the metadata variable
--- @usage setmetadata("coins", 10)
function setmetadata(key, value)
end

--- Gets a player metadata value with the specified key.
--- @tparam string key The key (metadata variable name) that's used to find its value.
--- @param defaultValue The value to return if the searched key does not exists. By default no specific value is returned.
--- @return Returns the key's value. Returns defaultValue instead if the key isn't found.
--- @usage getmetadata("coins", 0)
function getmetadata(key, defaultValue)
end

--- Sends an alert popup to the player.
--- @tparam string message The message to show the player.
function alert(message)
end

--- Sends a chat message to the player.
--- @tparam string message The message to show to the player.
--- @tparam int color The decimal (or hex) value of the RGB color to use. By default #1D5497.
--- @usage chat('hello', 0x1D5497)
--- @usage chat('hello', 1922199)
function chat(message, color)
end

--- Teleports the player to the latest 'safe' block.
function safety()
end

--- Gives the player a laser gun item with specified settings.
--- Fields: ammo(int), reload(int), damage(int), recoil(float), knockback(float), sap(int), recovery(float), speed(float), range(float), rotation(String), repeat(float), phasing(float)
--- @param settings The given laser gun item as an AS3 Object.
--- @usage givelaser(toobject{ammo=5,reload=4})
function givelaser(settings)
end

--- Gives the player a sword item with specified settings.
--- Fields: ammo(int), reload(int), damage(int), recoil(float), knockback(float), sap(int), recovery(float)
--- @param settings The given sword item as an AS3 Object.
--- @usage givesword(toobject{ammo=5,reload=4})
function givesword(settings)
end

--- Gives the player a rocket launcher item with specified settings.
--- Fields: ammo(int), reload(int), damage(int), recoil(float), knockback(float), sap(int), recovery(float), speed(float), accel(float), maxVel(float), range(float), rotation(String), repeat(float), phasing(float)
--- @param settings The given rocket launcher item as an AS3 Object.
--- @usage giverocket(toobject{ammo=5,reload=4})
function giverocket(settings)
end

--- Teleports the player to the given direction.
--- @tparam number xpos Teleport the player (xpos) blocks among the x-axis.
--- @tparam number ypos Teleport the player (ypos) blocks among the y-axis. A positive y teleports the player down.
--- @tparam boolean keepvelocity Determines if the player keeps their velocity after teleportation. False by default.
function teleportto(xpos, ypos, keepvelocity)
end

--- Rotates a player to a given rotation at a given speed.
--- @param value (float) Sets the angle that the player will be rotated to in the nearest increment of 90.
--- @param amplifier (Number) Sets the speed amplifier of the rotation speed. For reference, Fez rotates at 10 amplifier.
function rotate(value, amplifier)
end
