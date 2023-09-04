--- Level related variables and functions.
...

--- Finds a block in the specific coordinates.
--- @tparam int x The absolute x position.
--- @tparam int y The absolute y position.
--- @treturn block Returns the found block, or nil if not found.
function getBlockAt(x, y)
end

--- Given the coordinates of two blocks, turn all blocks in the level of each type into the other.
--- @tparam int x1 The absolute x position of the first block.
--- @tparam int y1 The absolute y position of the first block.
--- @tparam int x2 The absolute x position of the second block.
--- @tparam int y2 The absolute y position of the second block.
function switchblocks(x1, y1, x2, y2)
end

--- Summons a (client-sided) alien.
--- @tparam float speed The multiplier to apply to the alien's movement speed. By default 1.
--- @tparam float seed The seed number for the alien's pseudorandom number generator, which generates its behavior. A random seed will be generated if none is provided.
--- @param vars [FORCE_INLINE] An AS3 object containing the parameters for the alien's behavior. By default nil. The parameters and their default values are:
---- 
---- * !accel: (***float***) The acceleration of the projectile (the amount of speed added per tick). By default 1
---- 
---- * !damage: (***int***) The amount of damage the alien's bullets will deal. By default 1
---- 
---- * !explode: (***bool***) Whether or not the alien's bullets will explode on impact. By default true
---- 
---- * !knockback: (***float***) The strength of the knockback the alien's bullets will deal. By default 1
---- 
---- * !maxvel: (***float***) The maxmimum velocity of the alien's bullets in pixels per tick. By default 20.5
---- 
---- * !range: (***float***) The maximum lifetime of the alien's bullets in ticks before they are deleted. By default 100
---- 
---- * !recovery: (***int***) The time in milliseconds a hurt player will spend recovering from the alien's bullets' damage. By default 2500
---- 
---- * !reload: (***int***) The delay in ticks after firing a bullet before the alien can fire another. Setting this to 0 will disable the alien's shooting. By default 5
---- 
---- * !speed: (***float***) The speed of the alien's bullets in pixels per tick. By default 14.5
---- 
--- @treturn alien The summoned alien as an object. Can be used to get and set its x and y position.
--- @see alien
--- @usage local funnyAlien = game.level.newAlien(1, os.time(), toobject{damage = 9999})
----funnyAlien.x, funnyAlien.y = 0, 0
function newAlien(speed, seed, vars)
end