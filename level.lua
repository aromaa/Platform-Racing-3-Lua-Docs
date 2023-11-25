--- Level related variables and functions.
...

--- The left-most boundary of the level. No blocks exist beyond those coordinates. The player will be safetied if they travel too far beyond these bounds. Read-only.
minX = 0

--- The right-most boundary of the level. No blocks exist beyond those coordinates. The player will be safetied if they travel too far beyond these bounds. Read-only.
maxX = 0

--- The top-most boundary of the level. No blocks exist beyond those coordinates. The player will be safetied if they travel too far beyond these bounds. Read-only.
minY = 0

--- The bottom-most boundary of the level. No blocks exist beyond those coordinates. The player will be safetied if they travel too far beyond these bounds. Read-only.
maxY = 0

--- Finds a block in the specific coordinates.
--- @tparam int x The absolute x position.
--- @tparam int y The absolute y position.
--- @treturn block Returns the found block, or nil if not found.
function getBlockAt(x, y)
end

--- Gets a list of all blocks existing in the level.
--- @return An AS3 array of all blocks in the level.
--- @see utils.totable
--- @usage local blocks = totable(game.level.getAllBlocks()) 
---- for i, v in pairs(blocks) do
----     v.setmetatable("index", i)
---- end
function getAllBlocks()
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

--- Removes all Lua-created aliens from the client.
function removeAllAliens()
end

--- Creates a (client-sided) `artlayer`, which can be drawn to via Lua, and have `sprite`s and `stamp`s applied to it. This function fails and returns nil if the player has backgrounds disabled in their settings.
--- @tparam float depth The depth of the art layer. By default 1.
--- @tparam int layerNum The layerNum of the art layer (equivalent to the ">" icon in Level Editor). By default 1. Greater layerNum layers are drawn above lesser layerNum layers, regardless of layer depth. layerNums of 2 or greater draw above blocks. 3 or greater draws above players, hats, projectiles, and other visual effects.
--- @treturn artlayer The new art layer, or nil if the player has backgrounds disabled in their settings.
--- @see artlayer
--- @usage local layer = tolua(game.level.newArtLayer(1, 3))
---- if layer then
----     layer.drawStamp(someStamp)
---- end
function newArtLayer(depth, layerNum)
end

--- Destroys all Lua-created art layers.
function destroyAllArtLayers()
end

--- Creates a new raster-graphics `stamp`, which can be drawn to via Lua, and be applied to `artlayer`s and other `stamp`s. This function fails and returns nil if the player has backgrounds disabled in their settings or if the given width and/or height were invalid.
--- 
--- "Raster graphics" refers to pixel data. Stamps are used for directly storing and manipulating pixel data before drawing to an `artlayer`, rather than performing the more artsy operations you'd find on a `sprite`.
--- 
--- An example use case is to draw some pixel data and then draw it to an art layer with some translation, scaling, and/or rotation applied. Another example use case would be to draw the same pixels to multiple art layers. Instead of repeating the same draw operations for each layer, you can perform the operations to one stamp, and then draw the stamp to each layer.
--- @tparam int width The width of the stamp in pixels. By default 64. Cannot be lesser than 1 or greater than 512, or else the function will fail and return nil. 
--- @tparam int height The height of the stamp in pixels. By default 64. Cannot be lesser than 1 or greater than 512, or else the function will fail and return nil. 
--- @treturn stamp The new stamp, or nil if the player has backgrounds disabled in their settings or if the width and/or height were invalid.
--- @see stamp
--- @usage local stamp = tolua(game.level.newStamp(500, 500))
---- if stamp then
----     stamp.setRect(0, 0, 500, 500, 0xFF000000)
----     someLayer.drawStamp(stamp)
---- end
function newStamp(width, height)
end

--- Destroys all Lua-created stamps. Does not undraw any stamps already drawn to any existing art layers.
function destroyAllStamps()
end

--- Creates a new vector-graphics `sprite`, which can be drawn to via Lua, and be applied to `artlayer`s and other `stamp`s. This function fails and returns nil if the player has backgrounds disabled in their settings.
--- 
--- "Vector graphics" refers to artsy shape data, such as lines, circles, gradients, text, etc. The functions available to a sprite are very similar to drawing tools you'd find in an art program or in the Level Editor / Block Editor. This contrasts to the raw data-driven manipulations available for a `stamp`.
--- 
--- A sprite may also be set as the "parent" of other sprites or stamps, meaning that they will also be rendered whenever the sprite is rendered to an art layer, and with the same transformations as the sprite.
--- @treturn sprite The new sprite, or nil if the player has backgrounds disabled in their settings.
--- @see sprite
--- @usage local sprite = tolua(game.level.newSprite())
---- if sprite then
----     sprite.beginFill(0xFF000000) -- Draw everything with a solid, fully opaque black.
----     sprite.drawCircle(0, 0, 250)
----     sprite.endFill()
----     someLayer.drawSprite(sprite)
---- end
function newSprite()
end

--- Destroys all Lua-created sprites. Does not undraw any sprites already rendered to any existing art layers or stamps.
function destroyAllSprites()
end