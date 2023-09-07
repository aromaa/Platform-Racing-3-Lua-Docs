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
--- @param vars An AS3 object containing the parameters for the alien's behavior. By default nil. All fields listed in the alien module (except alienspeed) can be set via this vars object.
--- @treturn alien The summoned alien as an object. Can be used to get and set its x and y position, among other things.
--- @see alien
--- @usage local funnyAlien = game.level.newAlien(1, os.time(), toobject{damage = 9999})
----funnyAlien.x, funnyAlien.y = 0, 0
function newAlien(speed, seed, vars)
end