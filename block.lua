--- Block related variables and functions
...

--- Current health of the block. The block is shattered if its health goes to zero or below.
health = 5

--- Is the block paused? Paused blocks can't move or change into different blocks.
paused = false

--- Can the block be moved
canmove = false

--- Tries to move the block to a specified direction. Move delay and the option to move the player can be passed, too.
--- @tparam string direction The direction to move the block to.
--- @tparam number moveDelay The delay of how long it takes to the block to be able to be moved again. By default 100 (ms).
--- @tparam boolean movePlayer Is the player also moved? By default false.
--- @treturn boolean Returns whatever the move was successful
--- @usage move("right")
--- @usage move("right", 200, true)
function move(direction, moveDelay, movePlayer)
end

--- Teleports the block in the given direction. NOTE: This is only client-side, meaning this function will only work on the person's client who touched the block.
--- @tparam int xpos The amount to move the block among the x-axis.
--- @tparam int ypos The amount to move the block among the y-axis.
--- @tparam boolean removecurrentblock If the original block should be deleted among a successful teleportation. True by default.
--- @tparam boolean removetargetspot If true, the teleporting block teleports to its specified location and deletes the block if its spot is taken up. False by default.
--- @treturn boolean Returns whether the move was successful.
function teleportto(xpos, ypos, removecurrentblock, removetargetspot)
end

--- Makes the block vanish and reappear later. The vanish delay can be passed.
--- @tparam int time The amount of time until vanishing. Vanishes instantly by default.
function vanish(time)
end

--- Makes the block explode, damaging the player in the process.
--- @tparam int damage The amount of damage done to the player. By default 1.
--- @tparam number vel The strength of the impact that pushes the player. By default 0.3.
function explode(damage, vel)
end

--- Calculates crumble damage to the block depending on the player's velocity.
--- Causes the block's health to drop and shatters the block if it goes to zero or below.
--- @tparam boolean particles Whatever to show particles when damage. By default true.
--- @tparam number damageModifier Modifier used to calculate the velocity to damage. By default 100.
--- @tparam number damagaThreshold The threshold for how high the damage has to be to damage this block. By default 7.
function crumble(particles, damageModifier, damagaThreshold)
end

--- Destroys the block by shattering it.
function shatter()
end

--- Finds another block by given coordinates. A player reference can be passed.
--- @tparam int x How many blocks to the right the wanted block is?
--- @tparam int y How many blocks downwards the wanted block is?
--- @tparam boolean keepPlayerReference Is the player reference kept? By default false.
--- @return The found block as an object. Returns nil if a block isn't found.
--- @usage getblock(0,-1).shatter()
function getblock(x, y, keepPlayerReference)
end

--- Sets a metadata with a specified key-value pair to the block.
--- @tparam string key Name of the metadata variable (the key)
--- @param value Value of the metadata variable
--- @usage setmetadata("coins", 10)
function setmetadata(key, value)
end

--- Gets a block metadata value with the specified key.
--- @tparam string key The key (metadata variable name) that's used to find its value.
--- @param defaultValue The value to return if the searched key does not exists. By default no specific value is returned.
--- @return Returns the key's value. Returns defaultValue instead if the key isn't found.
--- @usage getmetadata("coins", 0)
function getmetadata(key, defaultValue)
end
