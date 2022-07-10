--- Block related variables and functions
...

--- Current health of the block. The block is shattered if its health goes to zero or below.
health = 5

--- Is the block paused? Paused blocks can't move or change into different blocks.
paused = false

--- Can the block be moved
canmove = false

--- The absolute x-position of the block.
xpos = 0

--- The absolute y-position of the block.
ypos = 0

--- Tries to move the block to a specified direction. Move delay and the option to move the player can be passed, too.
--- @tparam string direction The direction to move the block to.
--- @tparam number moveDelay The delay of how long it takes to the block to be able to be moved again. By default 100 (ms).
--- @tparam boolean movePlayer Is the player also moved? By default false.
--- @treturn boolean Returns whatever the move was successful
--- @usage block.move("right")
--- @usage block.move("right", 200, true)
function move(direction, moveDelay, movePlayer)
end

--- Teleports the block to the given relative position. NOTE: This is only client-side, meaning this function will only work on the person's client who touched the block.
--- @tparam int xpos The amount to move the block among the x-axis.
--- @tparam int ypos The amount to move the block among the y-axis.
--- @tparam boolean removecurrentblock If the original block should be deleted among a successful teleportation. True by default.
--- @tparam boolean removetargetspot If true, the teleporting block teleports to its specified location and deletes the block if its spot is taken up. False by default.
--- @treturn boolean Returns whether the move was successful.
--- @usage block.teleportto(0, -7, false, true)
function teleportto(xpos, ypos, removecurrentblock, removetargetspot)
end

--- Teleports the block to the given absolute position. NOTE: This is only client-side, meaning this function will only work on the person's client who touched the block.
--- @tparam int xpos The x-position to teleport the block to.
--- @tparam int ypos The y-position to teleport the block to.
--- @tparam boolean removecurrentblock If the original block should be deleted among a successful teleportation. True by default.
--- @tparam boolean removetargetspot If true, the teleporting block teleports to its specified location and deletes the block if its spot is taken up. False by default.
--- @treturn boolean Returns whether the move was successful.
--- @usage block.teleporttopos(0, -7, false, true)
function teleporttopos(xpos, ypos, removecurrentblock, removetargetspot)
end

--- Makes the block vanish and reappear later. The vanish delay can be passed.
--- @tparam int time The amount of time until vanishing. Vanishes instantly by default.
--- @tparam int vanishduration The amount of time it takes for the block to reappear after being vanished. 2000 by default.
function vanish(time, vanishduration)
end

--- Makes the block explode, damaging the player in the process.
--- @tparam int damage The amount of damage done to the player. By default 1.
--- @tparam number vel The strength of the impact that pushes the player. By default 0.3.
--- @tparam number recovery The number of seconds the player takes to recover. By default 2.5.
--- @usage block.explode(3, 1.1)
function explode(damage, vel, recovery)
end

--- Makes the block hurt the player by a specific amount and with a specified velocity.
--- @tparam int damage The amount of damage done to the player. By default 1.
--- @tparam number vel The strength of the impact that pushes the player. By default 0.3.
--- @tparam number recovery The number of seconds the player takes to recover. By default 2.5.
--- @tparam bool checkRecovery Prevents pushing the player if they have invulnerability received by recovering from damage. By default true.
--- @usage block.hurtplayer(3, 1.1)
function hurtplayer(damage, vel, recovery, checkRecovery)
end

--- Calculates crumble damage to the block depending on the player's velocity.
--- Causes the block's health to drop and shatters the block if it goes to zero or below.
--- @tparam boolean particles Whatever to show particles when damage. By default true.
--- @tparam number damageModifier Modifier used to calculate the velocity to damage. By default 100.
--- @tparam number damageThreshold The threshold for how high the damage has to be to damage this block. By default 7.
--- @usage block.crumble(true, 120, 20)
function crumble(particles, damageModifier, damageThreshold)
end

--- Destroys the block by shattering it.
function shatter()
end

--- Applies paint to the block, altering its appearance until the paint wears off.
--- @tparam int color The decimal (or hex) value of the RGB color of the paint. By default 16777215.
--- @tparam int duration How long does the paint last? By default 999999.
--- @tparam number alpha Strength of the paint, ranges from 0 to 1.
--- @usage block.dye(255, 50, 0.5)
function dye(color, duration, alpha)
end

--- Summons a (client-sided) black hole.
--- @tparam number duration The duration of the black hole. By default 9900.
--- @tparam number strength The strength of the player pulling/pushing effect of the black hole. By default 1.
--- @tparam int offsetx How many blocks away to the right does the black hole spawn? By default 0.
--- @tparam int offsety How many blocks away downwards does the black hole spawn? By default 0.
--- @tparam int speedx How fast does the black hole move to right? By default 0.
--- @tparam int speedy How fast does the black hole move downwards? By default 0.
--- @usage block.blackhole(9900, 1, 0, 0, 0, 0)
function blackhole(duration, strength, offsetx, offsety, speedx, speedy)
end

--- Finds another block by given coordinates. A player reference can be passed.
--- @tparam int x How many blocks to the right the wanted block is?
--- @tparam int y How many blocks downwards the wanted block is?
--- @tparam boolean keepPlayerReference Is the player reference kept? By default false.
--- @return The found block as an object. Returns nil if a block isn't found.
--- @usage block.getblock(0,-1).shatter()
function getblock(x, y, keepPlayerReference)
end

--- Sets a metadata with a specified key-value pair to the block.
--- @tparam string key Name of the metadata variable (the key)
--- @param value Value of the metadata variable
--- @usage block.setmetadata("coins", 10)
--- @usage block.setmetadata("block name", "aqua")
function setmetadata(key, value)
end

--- Gets a block metadata value with the specified key.
--- @tparam string key The key (metadata variable name) that's used to find its value.
--- @param defaultValue The value to return if the searched key does not exists. By default no specific value is returned.
--- @return Returns the key's value. Returns defaultValue instead if the key isn't found.
--- @usage block.getmetadata("coins", 0)
--- @usage block.getmetadata("block name", "unnamed")
function getmetadata(key, defaultValue)
end
