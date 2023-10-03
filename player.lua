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

--- The absolute x-position of the camera (top left corner; not affected by `fov`).
camerax = 0

--- The absolute y-position of the camera (top left corner; not affected by `fov`).
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

--- The decimal color value of the player's outline. Set to a negative number to disable outline.
outline = -1

--- The thickness of the outline.
--- By default 10.
outlinethickness = 10

--- The decimal color value of the player's dye. Set to a negative number to disable.
paint = -1

--- The opaqueness of the player. Ranges from 0 to 1. 0 means fully transparent, 1 means fully opaque.
--- By default 1.
alpha = 1

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

--- A scalar with a range of [-1, 1] representing the mouse's x coordinate along the screen. -1 means the left-most position, 0 means the center, and 1 means the right-most position.
mousex = 0

--- A scalar with a range of [-1, 1] representing the mouse's y coordinate along the screen. -1 means the bottom-most position, 0 means the center, and 1 means the top-most position.
mousey = 0

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

--- Returns a player timer which calls `listener` every `interval` milliseconds up to `maxCount` times.
--- Unlike `game.newTimer`, these timers are only called after the game is started and while the player is alive.
--- @tparam number interval How many milliseconds must pass to complete an interval.
--- @tparam int maxCount How many intervals will be completed.
--- @tparam function listener The listener to be called every time an iteration is completed.
--- @treturn timer The created timer object.
--- @usage healthRegenTimer = player.newTimer(1000 * 6, 9999999, function()
----   -- Heals 1 health every 6 seconds
----   player.health = tolua(player.health) + 1
----end)
function newTimer(interval, maxCount, listener)
end

--- Destroys all player timers created by `newTimer`.
--- @see timer
function destroyAllTimers()
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

--- Gives the player a specified item with specified settings.
--- @tparam string item The given item. The following list shows the string to use as this parameter for each item type.
--- @param settings The settings for the item, given as an AS3 Object. The following list details the valid settings for each item type. These settings match what you can find in the custom item settings in the block editor, although some names are altered. Any naming mismatch will be noted in the list.
--- 
---### Angel's Wings ("angelwings") ###
--- 
--- * !ammo: (***int***) the amount of uses the item has. *[ Default 3｜Min 0｜Max 99999 ]*
--- 
--- * !reload: (***float***) the delay in milliseconds after using the item before it can be used again. *[ Default 0｜Min 0｜Max 99999 ]*
---
--- * !strength: (***float***) the strength of the item. *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
---### Black Hole ("blackhole") ###
--- 
--- * !ammo: (***int***) the amount of uses the item has. *[ Default 1｜Min 0｜Max 99999 ]*
--- 
--- * !duration: (***float***) the duration in milliseconds of the black hole. *[ Default 9900｜Min 0｜Max 99999999 ]*
--- 
--- * !reload: (***float***) the delay in milliseconds after using the item before it can be used again. *[ Default 800｜Min 0｜Max 9999999 ]*
--- 
--- * !speedx: (***float***) the horizontal speed of the projectile in pixels per tick. *[ Default 0｜Min -9999｜Max 99999 ]. Displayed as **x speed** in block editor*
--- 
--- * !speedy: (***float***) the vertical speed of the projectile in pixels per tick. *[ Default 0｜Min -9999｜Max 99999 ]. Displayed as **y speed** in block editor*
--- 
--- * !strength: (***float***) the strength of the item. *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
---### Bow ("bow") ###
--- 
--- * !ammo: (***int***) the amount of uses the item has. *[ Default 3｜Min 0｜Max 99999 ]*
--- 
--- * !autofire: (***bool***) whether the item will be automatically used once full charge is reached. *[ Default false ]*
--- 
--- * !damage: (***int***) the amount of damage the item will deal. *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
--- * !knockback: (***float***) the strength of the knockback the item will deal. *[ Default 1｜Min -9999｜Max 99999 ]*
---
--- * !maxforce: (***float***) the maximum strength the item can be charged to. *[ Default 90｜Min 0｜Max 999999 ]*
--- 
--- * !noknockback: (***bool***) whether the item will not deal knockback. *[ Default false ]. Displayed as **no knockback** in block editor*
--- 
--- * !phasing: (***int***) the number of blocks the item can phase through. *[ Default 0｜Min 0｜Max 99999 ]*
--- 
--- * !pullspeed: (***float***) the speed of the item's charge up. *[ Default 1｜Min 0｜Max 99999 ]*
--- 
--- * !range: (***float***) the maximum lifetime of the projectile in ticks before it is deleted. *[ Default 100｜Min 0｜Max 9999999 ]*
--- 
--- * !recovery: (***float***) the time in milliseconds a hurt player will spend recovering from the item's damage. *[ Default 2500｜Min 0｜Max 99999999 ]*
--- 
--- * !reload: (***float***) the delay in milliseconds after using the item before it can be used again. *[ Default 800｜Min 0｜Max 99999 ]*
--- 
--- * !repeat: (***int***) the number of extra projectiles to be spawned by using the item. *[ Default 0｜Min 0｜Max 99999 ]*
--- 
--- * !rotation: (***float***) the angle in degrees to rotate the projectile by. If a comma separated list of numbers is provided (e.g. **"5,10"**), the second number will be the angle in degrees between each projectile. *[ Default 0 ]. Displayed as **shot rotation** in block editor*
--- 
--- * !sap: (***int***) the amount of health to heal the player by upon damaging an enemy. *[ Default 0｜Min -9999｜Max 99999 ]*
--- 
---### Buzzsaw ("buzzsaw") ###
--- 
--- * !ammo: (***int***) the amount of uses the item has. *[ Default 1｜Min 0｜Max 99999 ]*
--- 
--- * !damage: (***int***) the amount of damage the item will deal. *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
--- * !duration: (***int***) the maximum lifetime of the projectile in ticks before it is deleted. **this will be renamed to 'range' in a future update.** *[ Default 300｜Min 0｜Max 9999999 ]*
---
--- * !reload: (***float***) the delay in milliseconds after using the item before it can be used again. *[ Default 800｜Min 0｜Max 99999 ]*
--- 
--- * !gravity: (***float***) the gravity to be applied to the projectile in pixels per tick. *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
--- * !horizontal: (***float***) the initial horizontal speed of the projectile when thrown. *[ Default 4｜Min -9999｜Max 99999 ]*
--- 
--- * !post-gravity: (***float***) the gravity to be applied to the projectile in pixels per tick after being detached from a block. *[Default 1｜Min -9999｜Max 99999 ]*
---
--- * !vertical: (***float***) the initial vertical speed of the projectile when thrown. *[ Default -10｜Min -9999｜Max 99999 ]*
--- 
--- * !overrides: (***string***) a bitmask representing which block type interactions to override. each bit represents a block type - leaving the bit at 0 will allow the standard interaction to occur, whereas setting that bit to 1 will disable the interaction and cause the projectile to treat that block type as an active block instead. the override block types and bit positions are listed below. *[ Default "00000" ]*
---     
---     + !explode: `0000X`
---     
---     + !vanish: `000X0`
---     
---     + !shatter / crumble / weak: `00X00`
---     
---     + !arrow push: `0X000`
---     
---     + !inactive: `X0000`
--- 
---### Freeze Ray ("freezeray") ###
--- 
--- * No customizable properties exist.
--- 
---### Grenade ("grenade") ###
--- 
--- * !ammo: (***int***) the amount of uses the item has. *[ Default 1｜Min 0｜Max 99999 ]*
--- 
--- * !blastdamage: (***int***) the amount of damage the item's blast will deal. *[ Default 1｜Min -9999｜Max 99999 ]. Displayed as **damage** under blast settings in block editor*
--- 
--- * !blastdelay: (***float***) the delay in milliseconds of the item's blast. *[ Default 95｜Min 0｜Max 999999 ]. Displayed as **delay** under blast settings in block editor*
--- 
--- * !blastradius: (***int***) the destructive radius of the item's blast. *[ Default 0｜Min 0｜Max 99999 ]. Displayed as **radius** under blast settings in block editor*
--- 
--- * !blastrecovery: (***float***) the time in milliseconds a hurt player will spend recovering from the item's blast. *[ Default 2500｜Min 0｜Max 99999999 ]. Displayed as **recovery** under blast settings in block editor*
--- 
--- * !damage: (***int***) the amount of damage the item *collision* will deal. *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
--- * !hurtarea: (***int***) the damaging radius of the item's blast. *[ Default 120｜Min 0｜Max 9999999 ]. Displayed as **hurt area** under blast settings in block editor*
--- 
--- * !knockback: (***float***) the strength of the knockback the item *collision* will deal. *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
--- * !recovery: (***float***) the time in milliseconds a hurt player will spend recovering from the item's *collision* damage. *[ Default 2500｜Min 0｜Max 99999999 ]*
--- 
--- * !reload: (***float***) the delay in milliseconds after using the item before it can be used again. *[ Default 800｜Min 0｜Max 9999999 ]*
--- 
--- * !throwforcex: (***float***) the horizontal force applied to the item's throw. *[ Default 1｜Min -9999｜Max 99999 ]. Displayed as **x force** in block editor*
--- 
--- * !throwforcey: (***float***) the vertical force applied to the item's throw. *[ Default 1｜Min -9999｜Max 99999 ]. Displayed as **y force** in block editor*
--- 
---### Heart ("heart") ###
--- 
--- * !ammo: (***int***) the amount of uses the item has. *[ Default 1｜Min 0｜Max 99999 ]*
--- 
--- * !heal: (***int*** ) the amount of healing the item does per use. *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
--- * !reload: (***float***) the delay in milliseconds after using the item before it can be used again. *[ Default 800｜Min 0｜Max 9999999 ]*
--- 
---### Jet Pack ("jetpack") ###
--- 
--- * !force: (***float***) the force of the item's thrust. ( ͡° ͜ʖ ͡°) *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
--- * !fuel: (***float***) the amount of milliseconds of use the item has. *[ Default 6600｜Min 0｜Max 99999999 ]*
--- 
---### Laser Gun ("lasergun") ###
--- 
--- * !ammo: (***int***) the amount of uses the item has. *Affected by Police Hat (+2) unless ammo is 0.* *[ Default 3｜Min 0｜Max 99999 ]*
--- 
--- * !croptexture: (***bool***) specifies whether the custom texture should be cropped. Only applies if a custom texutre was chosen. Visual only. *[ Default false ]. Displayed as **auto-center** in block editor*
--- 
--- * !damage: (***int***) the amount of damage the item will deal. *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
--- * !knockback: (***float***) the strength of the knockback the item will deal. *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
--- * !noknockback: (***bool***) whether the item will not deal knockback. *[ Default false ]. Displayed as **no knockback** in block editor*
--- 
--- * !phasing: (***int***) ignores the specified amount of collisions that would destroy the projectile, and instead, phases it through. *[ Default 0｜Min 0｜Max 99999 ]*
--- 
--- * !range: (***float***) the maximum lifetime of the projectile in ticks before it is deleted. *[ Default 100｜Min 0｜Max 999999 ]*
--- 
--- * !recoil: (***float***) the recoil the item user suffers from using the item. *[ Default 0.15｜Min -9999｜Max 99999 ]*
--- 
--- * !recovery: (***float***) the time in milliseconds a hurt player will spend recovering from the item's damage. *[ Default 2500｜Min 0｜Max 99999999 ]*
--- 
--- * !reload: (***float***) the delay in milliseconds after using the item before it can be used again. *[ Default 800｜Min 0｜Max 9999999 ]*
--- 
--- * !repeat: (***int***) the number of extra projectiles to be spawned by using the item. *[ Default 0｜Min 0｜Max 99999 ]*
--- 
--- * !rotation: (***float***) the angle in degrees to rotate the projectile by. If a comma separated list of numbers is provided (e.g. **"5,10"**), the second number will be the angle in degrees between each projectile. *[ Default 0 ]. Displayed as **shot rotation** in block editor*
--- 
--- * !sap: (***int***) the amount of health to heal the player by upon damaging an enemy. *[ Default 0｜Min -9999｜Max 99999 ]*
--- 
--- * !speed: (***float***) the speed of the projectile in pixels per tick. *[ Default 29｜Min 0｜Max 99999 ]*
--- 
--- * !stamprot: (***float***) the rotation of the item graphic. Visual only. *[ Default 0｜Min -360｜Max 360 ]. Displayed as **rotation** under stamp settings in block editor*
--- 
--- * !transferfade: (***bool***) whenever the projectile runs out of range and dies, this specifies whether the item user gets teleported to that death (sounds worse than it is). *[ Default false ]. Displayed as **transfer fade** in block editor*
--- 
--- * !transferhit: (***bool***) whenever the projectile collides with anything, this specifies whether the item user gets teleported to the collision. Repeatable if there are multiple collisions. *[ Default false ]. Displayed as **transfer hit** in block editor*
--- 
--- * !useanimation: (***bool***) specifies whether the item's use animation gets played upon a use. Only applies for custom textures. Visual only. *[ Default false ]. Displayed as **item animation** in block editor*
--- 
--- * !xOffset: (***float***) the horizontal displacement of the item graphic in pixels. Visual only. *[ Default 0｜Min -9999｜Max 99999 ]. Displayed as **x offset** in block editor*
--- 
--- * !xscale: (***float***) the horizontal scaling of the item graphic. Visual only. *[ Default 1｜Min -9999｜Max 99999 ]. Displayed as **x scale** in block editor*
--- 
--- * !yOffset: (***float***) the vertical displacement of the item graphic in pixels. Visual only. Positive moves the graphic down. *[ Default 0｜Min -9999｜Max 99999 ]. Displayed as **y offset** in block editor*
--- 
--- * !yscale: (***float***) the vertical scaling of the item graphic. Visual only. *[ Default 1｜Min -9999｜Max 99999 ]. Displayed as **y scale** in block editor*
--- 
---### Lightning ("lightning") ###
--- 
--- * !ammo: (***int***) the amount of uses the item has. *[ Default 1｜Min 0｜Max 99999 ]*
--- 
--- * !damage: (***int***) the amount of damage the item will deal. *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
--- * !reload: (***float***) the delay in milliseconds after using the item before it can be used again. *[ Default 800｜Min 0｜Max 9999999 ]*
--- 
---### Lightning Cloud ("lightningcloud") ###
--- 
--- * !ammo: (***int***) the amount of uses the item has. *[ Default 1｜Min 0｜Max 99999 ]*
---
--- * !damage: (***int***) the amount of damage the item will deal. *[ Default 1｜Min -9999｜Max 99999 ]*
---
--- * !extrazaptime: (***int***) the amount of time in ticks until the second, *and every subsequent*, zap hits. *[ Default 270｜Min 0｜Max 9999999 ]*
--- 
--- * !passcooldown: (***int***) the cooldown in milliseconds before the item can be passed to another player. Note that currently, due to desync, only one pass is tolerated, so setting this value effectively does nothing. *[ Default 270000｜Min 0｜Max 9999999999 ]*
--- 
--- * !recovery: (***float***) the time in milliseconds a hurt player will spend recovering from the item's damage. *[ Default 2500｜Min 0｜Max 99999999 ]*
--- 
--- * !reload: (***float***) the delay in milliseconds after using the item before it can be used again. *[ Default 800｜Min 0｜Max 9999999 ]*
---
--- * !zaps: (***int***) the amount of zaps the victim gets hit by. *[ Default 1｜Min 0｜Max 99999 ]*
--- 
--- * !zaptime: (***int***) the amount of time in ticks until *only* the first zap hits. *[ Default 270｜Min 0｜Max 9999999 ]*
--- 
---### Napalm ("napalm") ###
--- 
--- * !ammo: (***int***) the amount of uses the item has. *[ Default 1｜Min 0｜Max 99999 ]*
--- 
--- * !duration: (***float***) the duration in milliseconds of the combustion. *[ Default 10000｜Min 0｜Max 999999999 ]*
--- 
--- * !reload: (***float***) the delay in milliseconds after using the item before it can be used again. *[ Default 800｜Min 0｜Max 9999999 ]*
--- 
---### Portable Block ("portableblock") ###
--- 
--- * !ammo: (***int***) the amount of uses the item has. *[ Default 1｜Min 0｜Max 99999 ]*
--- 
--- * !pattern: (***string***) determines the placement pattern of the block. Each section is delimited by semicolons and takes the form "x,y", where x and y are the amount of blocks among the x and y axis where the block placement is offset. Specifying a section as "f" places blocks between the two surrounding specified sections, if they share an axis. *[ Default "0,0" ]*
--- 
--- * !reload: (***float***) the delay in milliseconds after using the item before it can be used again. *[ Default 0｜Min 0｜Max 9999999 ]*
--- 
--- * !speed: (***float***) the frame number to begin the block-placing animation at. *[ Default 0｜Min 0｜Max 33 ]*
--- 
---### Portable Mine ("portablemine") ###
--- 
--- * No customizable properties exist.
--- 
---### Retreater ("retreater") ###
--- 
--- * !ammo: (***int***) the amount of uses the item has, counting both marks and retreats. *[ Default 2｜Min 0｜Max 99998 ]*
--- 
--- * !interval: (***float***) the amount of marks before retreats happen. Interval of n means that the first n uses are marks, and the following n uses are retreats, with each retreat going to its respective mark. *[ Default 1｜Min 0｜Max 99999 ]*
--- 
--- * !reload: (***float***) the delay in milliseconds after using the item before it can be used again. *[ Default 800｜Min 0｜Max 9999999 ]*
--- 
---### Rocket Launcher ("rocketlauncher") ###
--- 
--- * !accel: (***float***) the acceleration of the projectile (the amount of speed added per tick). *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
--- * !ammo: (***int***) the amount of uses the item has. *[ Default 1｜Min 0｜Max 99999 ]*
--- 
--- * !damage: (***int***) the amount of damage the item will deal. *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
--- * !knockback: (***float***) the strength of the knockback the item will deal. *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
--- * !maxvel: (***float***) the maximum velocity of the projectile. *[ Default 20.5｜Min 0｜Max 99999999 ]*
--- 
--- * !noknockback: (***bool***) whether the item will not deal knockback. *[ Default false ]. Displayed as **no knockback** in block editor*
--- 
--- * !phasing: (***int***) ignores the specified amount of collisions that would destroy the projectile, and instead, phases it through. *[ Default 0｜Min 0｜Max 99999 ]*
--- 
--- * !range: (***float***) the maximum lifetime of the projectile in ticks before it is deleted. *[ Default 100｜Min 0｜Max 9999999 ]*
--- 
--- * !recoil: (***float***) the recoil the item user suffers from using the item. *[ Default 0.4｜Min -99999｜Max 999999 ]*
--- 
--- * !recovery: (***float***) the time in milliseconds a hurt player will spend recovering from the item's damage. *[ Default 2500｜Min 0｜Max 99999999 ]*
--- 
--- * !reload: (***float***) the delay in milliseconds after using the item before it can be used again. *[ Default 0｜Min 0｜Max 99999 ]*
--- 
--- * !repeat: (***int***) the number of extra projectiles to be spawned by using the item. *[ Default 0｜Min 0｜Max 99999 ]*
--- 
--- * !rotation: (***float***) the angle in degrees to rotate the projectile by. If a comma separated list of numbers is provided (e.g. **"5,10"**), the second number will be the angle in degrees between each projectile. *[ Default 0 ]. Displayed as **shot rotation** in block editor*
--- 
--- * !sap: (***int***) the amount of health to heal the player by upon damaging an enemy. *[ Default 0｜Min -9999｜Max 99999 ]*
--- 
--- * !speed: (***float***) the speed of the projectile in pixels per tick. *[ Default 14.5｜Min 0｜Max 99999999 ]*
--- 
---### Shield ("shield") ###
--- 
--- * !duration: (***float***) the duration in milliseconds of the shield. *[ Default 10000｜Min 0｜Max 999999999 ]*
--- 
---### Snowball ("snowball") ###
--- 
--- * !ammo: (***int***) the amount of uses the item has. *[ Default 3｜Min 0｜Max 99999 ]*
--- 
--- * !damage: (***int***) the amount of damage the item will deal. *[ Default 0｜Min -9999｜Max 99999 ]*
--- 
--- * !knockback: (***float***) the strength of the knockback the item will deal. *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
--- * !range: (***float***) the maximum lifetime of the projectile in ticks before it is deleted. *[ Default 100｜Min 0｜Max 999999 ]*
--- 
--- * !recoil: (***float***) the recoil the item user suffers from using the item. *[ Default 0.1｜Min -99999｜Max 999999 ]*
--- 
--- * !recovery: (***float***) the time in milliseconds a hurt player will spend recovering from the item's damage. *[ Default 2500｜Min 0｜Max 99999999 ]*
--- 
--- * !reload: (***float***) the delay in milliseconds after using the item before it can be used again. *[ Default 300｜Min 0｜Max 9999999 ]*
--- 
--- * !sap: (***int***) the amount of health to heal the player by upon damaging an enemy. *[ Default 0｜Min -9999｜Max 99999 ]*
--- 
--- * !speed: (***float***) the speed of the projectile in pixels per tick. *[ Default 21｜Min 0｜Max 999999 ]*
--- 
---### Speed Burst ("speedburst") ###
--- 
--- * !duration: (***float***) the duration in milliseconds of the item. *Affected by Winged Helmet (+3000).* *[ Default 6000｜Min 0｜Max 99999999 ]*
--- 
--- * !strength: (***float***) the strength of the speed bonus. *[ Default 1｜Min 0｜Max 99999 ]*
--- 
---### Super Teleport ("superteleport") ###
--- 
--- * No customizable properties exist.
--- 
---### Super Jump ("superjump") ###
--- 
--- * !ammo: (***int***) the amount of uses the item has. *[ Default 1｜Min 0｜Max 99999 ]*
--- 
--- * !reload: (***float***) the delay in milliseconds after using the item before it can be used again. *[ Default 0｜Min 0｜Max 99999 ]*
--- 
--- * !strength: (***float***) the strength of the item. *[ Default 0.7｜Min -99999｜Max 999999 ]*
--- 
---### Sword ("sword") ###
--- 
--- * !ammo: (***int***) the amount of uses the item has. *[ Default 3｜Min 0｜Max 99999 ]*
--- 
--- * !croptexture: (***bool***) specifies whether the custom texture should be cropped. Only applies if a custom texutre was chosen. Visual only. *[ Default false ]. Displayed as **auto-center** in block editor*
--- 
--- * !damage: (***int***) the amount of damage the item will deal. *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
--- * !knockback: (***float***) the strength of the knockback the item will deal. *[ Default 1｜Min -9999｜Max 99999 ]*
--- 
--- * !noknockback: (***bool***) whether the item will not deal knockback. *[ Default false ]. Displayed as **no knockback** in block editor*
--- 
--- * !recoil: (***float***) the recoil the item user suffers from using the item. *[ Default 0.3｜Min -99999｜Max 999999 ]*
--- 
--- * !recovery: (***float***) the time in milliseconds a hurt player will spend recovering from the item's damage. *[ Default 2500｜Min 0｜Max 99999999 ]*
--- 
--- * !reload: (***float***) the delay in milliseconds after using the item before it can be used again. *[ Default 500｜Min 0｜Max 9999999 ]*
--- 
--- * !sap: (***int***) the amount of health to heal the player by upon damaging an enemy. *[ Default 0｜Min -9999｜Max 99999 ]*
--- 
--- * !stamprot: (***float***) the rotation of the item graphic. Visual only. *[ Default 0｜Min -360｜Max 360 ]. Displayed as **rotation** under stamp settings in block editor*
--- 
--- * !useanimation: (***bool***) specifies whether the item's use animation gets played upon a use. Only applies for custom textures. Visual only. *[ Default false ]. Displayed as **item animation** in block editor*
--- 
--- * !xOffset: (***float***) the horizontal displacement of the item graphic in pixels. Visual only. *[ Default -30.9｜Min -9999｜Max 99999 ]. Displayed as **x offset** in block editor*
--- 
--- * !xscale: (***float***) the horizontal scaling of the item graphic. Visual only. *[ Default 1｜Min -9999｜Max 99999 ]. Displayed as **x scale** in block editor*
--- 
--- * !yOffset: (***float***) the vertical displacement of the item graphic in pixels. Visual only. Positive moves the graphic down. *[ Default -3.7｜Min -9999｜Max 99999 ]. Displayed as **y offset** in block editor*
--- 
--- * !yscale: (***float***) the vertical scaling of the item graphic. Visual only. *[ Default 1｜Min -9999｜Max 99999 ]. Displayed as **y scale** in block editor*
--- 
---### Teleport ("teleport") ###
--- 
--- * !ammo: (***int***) the amount of uses the item has. *[ Default 1｜Min 0｜Max 99999 ]*
--- 
--- * !horizontal: (***float***) the travel distance among the x axis, in blocks. *[ Default 3｜Min -9999｜Max 99999 ]*
--- 
--- * !reload: (***float***) the delay in milliseconds after using the item before it can be used again. *[ Default 0｜Min 0｜Max 99999 ]*
--- 
--- * !vertical: (***float***) the travel distance among the y axis, in blocks. *[ Default 0｜Min -9999｜Max 99999 ]*
---
--- @usage player.giveitem("lasergun")
--- @usage player.giveitem("sword", toobject{ammo=20,reload=2,recoil=50})
function giveitem(item, settings)
end

--- Gets the current item of the player, and returns it as an AS3 Object.
--- @usage player.getitem()
--- @return Returns the item as an AS3 Object, with each key being the property name and each value being the property's value.
--- 
---### Fields ###
--- 
--- *!settings: The properties of the current item as an AS3 Object. These properties are the exact same properties listed under the item in player.getitem().
---
--- @see giveitem
function getitem()
end

--- Teleports the player to the given relative position.
--- @tparam number xpos Teleport the player (xpos) blocks among the x-axis.
--- @tparam number ypos Teleport the player (ypos) blocks among the y-axis. A positive y teleports the player down.
--- @tparam boolean keepvelocity Determines if the player keeps their velocity after teleportation. False by default.
--- @usage player.teleportto(3, -1, true)
function teleportto(xpos, ypos, keepvelocity)
end

--- Teleports the player to the given absolute position.
--- @tparam int xpos The x-position to teleport the player to.
--- @tparam int ypos The y-position to teleport the player to.
--- @tparam boolean keepvelocity Determines if the player keeps their velocity after teleportation. False by default.
--- @usage player.teleporttopos(0, 0, true)
function teleporttopos(xpos, ypos, keepvelocity)
end

--- Rotates a player to a given rotation at a given speed.
--- @param value (float) Sets the angle that the player will be rotated to in the nearest increment of 90.
--- @param amplifier (float) Sets the speed amplifier of the rotation speed. For reference, Fez rotates at 10 amplifier.
--- @usage player.rotate(90, 1.6)
function rotate(value, amplifier)
end

--- Removes the item that the player is currently holding.
function removeitem()
end

--- Tints the player's body parts with a glow effect for a duration.
--- @tparam number red The amount of red in the glow effect. Ranges from 0 to 1. By default 1.
--- @tparam number green The amount of green in the glow effect. Ranges from 0 to 1. By default 1.
--- @tparam number blue The amount of blue in the glow effect. Ranges from 0 to 1. By default 1.
--- @tparam int duration The duration (in ticks) of the glow effect. By default 60.
function tint(red, green, blue, duration)
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
--- @usage local durationInSeconds = 5
----player.disableup(durationInSeconds * 30)
function disableup(times)
end

--- Disables the player's down input for a duration.
--- @tparam int times The amount of ticks for the input to be disabled. By default 999999.
--- @usage local durationInSeconds = 5
----player.disabledown(durationInSeconds * 30)
function disabledown(times)
end

--- Disables the player's left input for a duration.
--- @tparam int times The amount of ticks for the input to be disabled. By default 999999.
--- @usage local durationInSeconds = 5
----player.disableleft(durationInSeconds * 30)
function disableleft(times)
end

--- Disables the player's right input for a duration.
--- @tparam int times The amount of ticks for the input to be disabled. By default 999999.
--- @usage local durationInSeconds = 5
----player.disableright(durationInSeconds * 30)
function disableright(times)
end

--- Disables the player's spacebar input for a duration.
--- @tparam int times The amount of ticks for the input to be disabled. By default 999999.
--- @usage local durationInSeconds = 5
----player.disablespace(durationInSeconds * 30)
function disablespace(times)
end

--- Forces the player's up input to be pressed for a duration.
--- @tparam int times The amount of ticks for the input to be pressed. By default 999999.
--- @usage local durationInSeconds = 5
----player.autoup(durationInSeconds * 30)
function autoup(times)
end

--- Forces the player's down input to be pressed for a duration.
--- @tparam int times The amount of ticks for the input to be pressed. By default 999999.
--- @usage local durationInSeconds = 5
----player.autodown(durationInSeconds * 30)
function autodown(times)
end

--- Forces the player's left input to be pressed for a duration.
--- @tparam int times The amount of ticks for the input to be pressed. By default 999999.
--- @usage local durationInSeconds = 5
----player.autoleft(durationInSeconds * 30)
function autoleft(times)
end

--- Forces the player's right input to be pressed for a duration.
--- @tparam int times The amount of ticks for the input to be pressed. By default 999999.
--- @usage local durationInSeconds = 5
----player.autoright(durationInSeconds * 30)
function autoright(times)
end

--- Forces the player's spacebar input to be pressed for a duration.
--- @tparam int times The amount of ticks for the input to be pressed. By default 999999.
--- @usage local durationInSeconds = 5
----player.autospace(durationInSeconds * 30)
function autospace(times)
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

--- [DEPRECATED] Gives the player a laser gun item with specified settings.
--- 
--- Fields: ammo(int), reload(float), damage(int), recoil(float), knockback(float), sap(int), recovery(float), speed(float), range(float), rotation(String), repeats(float), phasing(float), transferhit(int), transferfade(int)
--- 
--- rotation takes the format "float1,float2", where float1 is the first bullet's rotation in degrees and float2 is the number of degrees incremented to each subsequent bullet's rotation (for multi-shots created with the repeats field)
--- 
--- rotation also accepts a single float or a string of a single float, in which case float2 defaults to 0
--- 
--- transferhit and transferfade are active when set to 1
--- @param settings The given laser gun item as an AS3 Object.
--- @see giveitem
--- @usage player.givelaser(toobject{ammo=100,reload=1,speed=50,range=0.5,phasing=10,recoil=0})
function givelaser(settings)
end

--- [DEPRECATED] Gives the player a sword item with specified settings.
--- 
--- Fields: ammo(int), reload(float), damage(int), recoil(float), knockback(float), sap(int), recovery(float)
--- @param settings The given sword item as an AS3 Object.
--- @see giveitem
--- @usage player.givesword(toobject{ammo=20,reload=2,recoil=50})
function givesword(settings)
end

--- [DEPRECATED] Gives the player a rocket launcher item with specified settings.
--- 
--- Fields: ammo(int), reload(float), damage(int), recoil(float), knockback(float), sap(int), recovery(float), speed(float), accel(float), maxVel(float), range(float), rotation(String), repeats(float), phasing(float)
--- 
--- rotation takes the format "float1,float2", where float1 is the first bullet's rotation in degrees and float2 is the number of degrees incremented to each subsequent bullet's rotation (for multi-shots created with the repeats field)
--- 
--- rotation also accepts a single float or a string of a single float, in which case float2 defaults to 0
--- @param settings The given rocket launcher item as an AS3 Object.
--- @see giveitem
--- @usage player.giverocket(toobject{ammo=5,reload=4,speed=-20,range=50,recoil=0})
function giverocket(settings)
end

--- [DEPRECATED] Gives the player a bow item with specified settings.
--- 
--- Fields: ammo(int), reload(float), damage(int), knockback(float), sap(int), recovery(float), range(float), phasing(int), rotation(String), repeats(int), pullspeed(int), maxforce(int), autofire(int, 0 or 1)
--- 
--- rotation takes the format "float1,float2", where float1 is the first bullet's rotation in degrees and float2 is the number of degrees incremented to each subsequent bullet's rotation (for multi-shots created with the repeats field)
--- 
--- rotation also accepts a single float or a string of a single float, in which case float2 defaults to 0 
--- @param settings The given bow item as an AS3 Object.
--- @see giveitem
--- @usage player.givebow(toobject{ammo=5,pullspeed=2,autofire=1,reload=0,rotation="-6,2",repeats=7})
function givebow(settings)
end

--- [DEPRECATED] Gives the player a grenade item with specified settings.
--- 
--- Fields: ammo(int), reload(float), damage(int), knockback(float), recovery(float), blastdelay(int), throwforcex(float), throwforcey(float), hurtarea(int), blastdamage(int), blastrecovery(float), blastradius(int)
--- @param settings The given grenade item as an AS3 Object.
--- @see giveitem
--- @usage player.givegrenade(toobject{ammo=1,reload=8,damage=1,knockback=10,recovery=25,blastdelay=95,throwforcex=1,throwforcey=1,hurtarea=120,blastdamage=1,blastrecovery=25,blastradius=1})
function givegrenade(settings)
end

--- [DEPRECATED] Gives the player a lightning cloud item with specified settings.
--- 
--- Fields: damage(int), zaptime(int), extrazaptime(int), zaps(int), recovery(float), passcooldown(int)
--- @param settings The given lightning cloud item as an AS3 Object.
--- @see giveitem
--- @usage player.givelightningcloud(toobject{damage=1,zaptime=270,extrazaptime=270,zaps=1,recovery=25,passcooldown=27})
function givelightningcloud(settings)
end

--- [DEPRECATED] Gives the player a black hole item with specified settings.
--- 
--- Fields: ammo(int), reload(float), duration(int), strength(float), speedx(int), speedy(int)
--- @param settings The given black hole item as an AS3 Object.
--- @see giveitem
--- @usage player.giveblackhole(toobject{ammo=1,reload=8,duration=9900,strength=1,speedx=0,speedy=0})
function giveblackhole(settings)
end

--- [DEPRECATED] Chills the player, causing massive reduction in stats until the effect wears off.
--- @tparam number amount The amount of chill applied in seconds. By default 6.
--- @usage player.chill(6)
--- @see frost
function chill(amount)
end

--- [DEPRECATED] Dyes the player's body parts for the rest of the match.
--- @tparam int color The decimal color applied to the player's parts. By default 16777215.
--- @usage player.dye(255)
--- @see paint
function dye(color)
end