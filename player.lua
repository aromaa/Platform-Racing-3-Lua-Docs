--- Player related variables and functions
...

--- The current team the player is in.
--- By default 'none'.
--- Teammates can't directly hurt each other unless there are players left only in that team.
team = "none"

--- The event handler for player tick.
--- @see eventlistener
tick = nil

--- Player's current health. The player is killed if it goes to zero or below.
health = 5

--- Player's max health.
maxhealth = 5

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

--- Affects how far can you see (zoom). Greater values decrease your view size.
fov = 1

--- Player's current horizontal velocity. Ranges from -1 to 1.
xvelocity = 0

--- Player's current vertical velocity. Ranges from -1 to 1.
yvelocity = 0

--- The current horizontal momentum of the player.
xmove = 0

--- The current vertical momentum of the player.
ymove = 0

--- The absolute x-position of the player.
x = 0

--- The absolute y-position of the player.
y = 0

--- The next absolute x-position of the player.
xpos = 0

--- The next absolute y-position of the player.
ypos = 0

--- The absolute x-position of the player's respawn location.
safex = 0

--- The absolute y-position of the player's respawn location.
safey = 0

--- The absolute x-position of the camera (top left corner; not affected by player.fov).
camerax = 0

--- The absolute y-position of the camera (top left corner; not affected by player.fov).
cameray = 0

--- Defines how fast the camera does follow the player. Ranges from 0 to 1. 0 means the camera will not move at all.
--- By default 0.25.
stiffness = 0.25

--- An AS3 array of the player's hats. Read-only.
hat = nil

--- Is the minimap currently visible?
minimap = true

--- Does the teleport effect appear when the player teleports?
teleStealth = false

--- The remaining duration, in milliseconds, of the player's invulnerability received by recovering from damage.
recoverytimer = 0

--- The remaining duration, in milliseconds, of the player's stun received by damage.
hurttimer = 0

--- The remaining duration, in milliseconds, of the player's chill.
frost = 0

--- Is the up arrow key or w currently pressed? Read-only.
uppressed = false

--- Is the down arrow key or s currently pressed? Read-only.
downpressed = false

--- Is the left arrow key or a currently pressed? Read-only.
leftpressed = false

--- Is the right arrow key or d currently pressed? Read-only.
rightpressed = false

--- Is the spacebar currently pressed? Read-only.
spacepressed = false

--- Hurts the player by a specific amount and with a specified velocity.
--- @tparam int damage The amount of damage done to the player. By default 1.
--- @tparam number vel The strength of the impact that pushes the player. By default 0.3.
--- @tparam number recovery The number of seconds the player takes to recover. By default 2.5.
--- @usage player.hurt(2, 0.15)
function hurt(damage, vel, recovery)
end

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

--- Sends an alert popup to the player.
--- @tparam string message The message to show the player.
--- @usage player.alert("Hello world!")
function alert(message)
end

--- Sends a chat message to the player.
--- @tparam string message The message to show to the player.
--- @tparam int color The decimal (or hex) value of the RGB color to use. By default #1D5497.
--- @usage player.chat('hello', 0x1D5497)
--- @usage player.chat('hello', 1922199)
function chat(message, color)
end

--- Teleports the player to the latest 'safe' block.
function safety()
end

--- Gives the player a specified default item.
--- @tparam string item The given item. Options are: "sword", "lasergun", "angelwings", "blackhole", "bow", "freezeray", "heart", "grenade", "jetpack", "lightning", "lightningcloud", "napalm", "portableblock", "portablemine", "rocketlauncher", "shield", "snowball", "speedburst", "superjump", "teleport", "superteleport"
--- @usage player.giveitem("lasergun")
function giveitem(item)
end

--- Gives the player a laser gun item with specified settings.
--- 
--- Fields: ammo(int), reload(float), damage(int), recoil(float), knockback(float), sap(int), recovery(float), speed(float), range(float), rotation(String), repeats(float), phasing(float), transferhit(int), transferfade(int)
--- 
--- rotation takes the format "float1,float2", where float1 is the first bullet's rotation in degrees and float2 is the number of degrees incremented to each subsequent bullet's rotation (for multi-shots created with the repeats field)
--- 
--- rotation also accepts a single float or a string of a single float, in which case float2 defaults to 0
--- 
--- transferhit and transferfade are active when set to 1
--- @param settings The given laser gun item as an AS3 Object.
--- @usage player.givelaser(toobject{ammo=100,reload=1,speed=50,range=0.5,phasing=10,recoil=0})
function givelaser(settings)
end

--- Gives the player a sword item with specified settings.
--- 
--- Fields: ammo(int), reload(float), damage(int), recoil(float), knockback(float), sap(int), recovery(float)
--- @param settings The given sword item as an AS3 Object.
--- @usage player.givesword(toobject{ammo=20,reload=2,recoil=50})
function givesword(settings)
end

--- Gives the player a rocket launcher item with specified settings.
--- 
--- Fields: ammo(int), reload(float), damage(int), recoil(float), knockback(float), sap(int), recovery(float), speed(float), accel(float), maxVel(float), range(float), rotation(String), repeats(float), phasing(float)
--- 
--- rotation takes the format "float1,float2", where float1 is the first bullet's rotation in degrees and float2 is the number of degrees incremented to each subsequent bullet's rotation (for multi-shots created with the repeats field)
--- 
--- rotation also accepts a single float or a string of a single float, in which case float2 defaults to 0
--- @param settings The given rocket launcher item as an AS3 Object.
--- @usage player.giverocket(toobject{ammo=5,reload=4,speed=-20,range=50,recoil=0})
function giverocket(settings)
end

--- Gives the player a bow item with specified settings.
--- 
--- Fields: ammo(int), reload(float), damage(int), knockback(float), sap(int), recovery(float), range(float), phasing(int), rotation(String), repeats(int), pullspeed(int), maxforce(int), autofire(int, 0 or 1)
--- 
--- rotation takes the format "float1,float2", where float1 is the first bullet's rotation in degrees and float2 is the number of degrees incremented to each subsequent bullet's rotation (for multi-shots created with the repeats field)
--- 
--- rotation also accepts a single float or a string of a single float, in which case float2 defaults to 0 
--- @param settings The given bow item as an AS3 Object.
--- @usage player.givebow(toobject{ammo=5,pullspeed=2,autofire=1,reload=0,rotation="-6,2",repeats=7})
function givebow(settings)
end

--- Gives the player a grenade item with specified settings.
--- 
--- Fields: ammo(int), reload(float), damage(int), knockback(float), recovery(float), blastdelay(int), throwforcex(float), throwforcey(float), hurtarea(int), blastdamage(int), blastrecovery(float), blastradius(int)
--- @param settings The given grenade item as an AS3 Object.
--- @usage player.givegrenade(toobject{ammo=1,reload=8,damage=1,knockback=10,recovery=25,blastdelay=95,throwforcex=1,throwforcey=1,hurtarea=120,blastdamage=1,blastrecovery=25,blastradius=1})
function givegrenade(settings)
end

--- Gives the player a lightning cloud item with specified settings.
--- 
--- Fields: damage(int), zaptime(int), extrazaptime(int), zaps(int), recovery(float), passcooldown(int)
--- @param settings The given lightning cloud item as an AS3 Object.
--- @usage player.givelightningcloud(toobject{damage=1,zaptime=270,extrazaptime=270,zaps=1,recovery=25,passcooldown=27})
function givelightningcloud(settings)
end

--- Gives the player a black hole item with specified settings.
--- 
--- Fields: ammo(int), reload(float), duration(int), strength(float), speedx(int), speedy(int)
--- @param settings The given black hole item as an AS3 Object.
--- @usage player.giveblackhole(toobject{ammo=1,reload=8,duration=9900,strength=1,speedx=0,speedy=0})
function giveblackhole(settings)
end

--- Teleports the player to the given direction.
--- @tparam number xpos Teleport the player (xpos) blocks among the x-axis.
--- @tparam number ypos Teleport the player (ypos) blocks among the y-axis. A positive y teleports the player down.
--- @tparam boolean keepvelocity Determines if the player keeps their velocity after teleportation. False by default.
--- @usage player.teleportto(3, -1, true)
function teleportto(xpos, ypos, keepvelocity)
end

--- Rotates a player to a given rotation at a given speed.
--- @param value (float) Sets the angle that the player will be rotated to in the nearest increment of 90.
--- @param amplifier (Number) Sets the speed amplifier of the rotation speed. For reference, Fez rotates at 10 amplifier.
--- @usage player.rotate(90, 1.6)
function rotate(value, amplifier)
end

--- Removes the item that the player is currently holding.
function removeitem()
end

--- Chills the player, causing massive reduction in stats until the effect wears off.
--- @tparam number amount The amount of chill applied in seconds. By default 6.
--- @usage player.chill(6)
function chill(amount)
end

--- Dyes the player's body parts for the rest of the match.
--- @tparam int color The decimal color applied to the player's parts. By default 16777215.
--- @usage player.dye(255)
function dye(color)
end

--- Plays a sound effect to the player.
--- @tparam int id Id of the played sound effect.
--
-- (0: jetpack, 1: level start, 2: sword, 3: lightning, 4: coin, 5: jump, 6: item block, 7: black hole, 8: rocket launcher, 9: shatter, 10: sad block, 11: laser gun hit, 12: ready, 13: explosion, 14: teleport, 15: match end, 16: shield, 17: shield extra, 18: bow draw, 19: water enter, 20: happy block, 21: speed burst end, 22: speed burst, 23: bump, 24: cheer, 25: laser gun shot, 26: ouch, 27: bouncy block, 28: bow fire, 29: water exit, 30: portable block, 31: superjump, 32: angel wings, 33: water effect, 34: water effect, 35: water effect, 36: water effect, 37: freeze ray, 38: snowball hit, 39: napalm, 40: heart, 41: C3 piano note, 42: D3 piano note, 43: E3 piano note, 44: F3 piano note, 45: G3 piano note, 46: A4 piano note, 47: B4 piano note, 48: C4 piano note)
--- @tparam number volume Volume of the played sound effect.
--- @usage player.playsound(6, 2)
function playsound(id, volume)
end

--- Disables the player's up input for a duration.
--- @tparam int times The amount of ticks for the input to be disabled. By default 999999.
--- @usage local durationInSeconds = 5 player.autoup(durationInSeconds * 27)
function disableup(times)
end

--- Disables the player's down input for a duration.
--- @tparam int times The amount of ticks for the input to be disabled. By default 999999.
--- @usage local durationInSeconds = 5 player.autodown(durationInSeconds * 27)
function disabledown(times)
end

--- Disables the player's left input for a duration.
--- @tparam int times The amount of ticks for the input to be disabled. By default 999999.
--- @usage local durationInSeconds = 5 player.autoleft(durationInSeconds * 27)
function disableleft(times)
end

--- Disables the player's right input for a duration.
--- @tparam int times The amount of ticks for the input to be disabled. By default 999999.
--- @usage local durationInSeconds = 5 player.autoright(durationInSeconds * 27)
function disableright(times)
end

--- Forces the player's up input to be pressed for a duration.
--- @tparam int times The amount of ticks for the input to be pressed. By default 999999.
--- @usage local durationInSeconds = 5 player.autoup(durationInSeconds * 27)
function autoup(times)
end

--- Forces the player's down input to be pressed for a duration.
--- @tparam int times The amount of ticks for the input to be pressed. By default 999999.
--- @usage local durationInSeconds = 5 player.autodown(durationInSeconds * 27)
function autodown(times)
end

--- Forces the player's left input to be pressed for a duration.
--- @tparam int times The amount of ticks for the input to be pressed. By default 999999.
--- @usage local durationInSeconds = 5 player.autoleft(durationInSeconds * 27)
function autoleft(times)
end

--- Forces the player's right input to be pressed for a duration.
--- @tparam int times The amount of ticks for the input to be pressed. By default 999999.
--- @usage local durationInSeconds = 5 player.autoright(durationInSeconds * 27)
function autoright(times)
end

--- Disables the player's superjump until re-enabled.
--- @usage player.disablesuperjump()
function disablesuperjump()
end

--- Enables the player's superjump.
--- @usage player.enablesuperjump()
function enablesuperjump()
end

--- Is the specified key currently pressed?
--- @tparam int keycode The specified key that is being checked.
--- @return Returns true if pressed, otherwise false.
--- @usage local Zpressed = tolua(player.keypressed(keys.Z))
--- @see utils.keys
function keypressed(keycode)
end

--- Sends a gameEvent to every player in the match. Used with game.gameEvent.
--- @param data The event data to send.
--- @tparam boolean sendToSelf If true, the gameEvent will also be sent to the sender. By default false.
--- @usage player.postGameEvent(toobject{type="damageall", message="Everyone took 1 damage!", damage=1}, true)
function postGameEvent(data, sendToSelf)
end