--- Block related variables and functions
...

--- Current health of the block. The block is shattered if its health goes to zero or below.
health = 5

--- Is the block paused? Paused blocks can't move or change into different blocks.
paused = false

--- Can the block be moved
canmove = false

--- Tries to move the block to a specified direction. Move delay and the option to move the player can be passed, too.
--- @param direction The direction to move the block to.
--- @param moveDelay The delay of how long it takes to the block to be able to be moved again. By default 100 (ms).
--- @param movePlayer Is the player also moved? By default false.
--- @return Returns whatever the move was successful
--- @usage move("right")
--- @usage move("right", 200, true)
function move(direction, moveDelay, movePlayer)
end

--- Makes the block vanish and reappear later. The vanish delay can be passed.
--- @param time The amount of time until vanishing. Vanishes instantly by default.
function vanish(time)
end

--- Makes the block explode, damaging the player in the process.
--- @param damage The amount of damage done to the player. By default 1.
--- @param vel The strength of the impact that pushes the player. By default 0.3.
function explode(damage, vel)
end

--- Calculates crumble damage to the block depending on the player's velocity.
--- Causes the block's health to drop and shatters the block if it goes to zero or below.
--- @param particles Whatever to show particles when damage. By default true.
--- @param damageModifier Modifier used to calculate the velocity to damage. By default 100.
--- @param damagaThreshold The threshold for how high the damage has to be to damage this block. By default 7.
function crumble(particles, damageModifier, damagaThreshold)
end

--- Destroys the block by shattering it.
function shatter()
end

--- Finds another block by given coordinates. A player reference can be passed.
--- @param x How many blocks to the right the wanted block is?
--- @param y How many blocks downwards the wanted block is?
--- @param keepPlayerReference Is the player reference kept? By default false.
--- @return The found block as an object. Returns nil if a block isn't found.
--- @usage getblock(0,-1).shatter()
function getblock(x, y, keepPlayerReference)
end

--- Sets a metadata with a specified key-value pair to the block.
--- @param key Name of the metadata variable (the key)
--- @param value Value of the metadata variable
--- @usage setmetadata("coins", 10)
function setmetadata(key, value)
end

--- Gets a block metadata value with the specified key.
--- @param key The key (metadata variable name) that's used to find its value.
--- @param defaultValue The value to return if the searched key does not exists. By default no specific value is returned.
--- @return Returns the key's value. Returns defaultValue instead if the key isn't found.
--- @usage getmetadata("coins", 0)
function getmetadata(key, defaultValue)
end