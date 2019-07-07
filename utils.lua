--- Helper functions
...

--- Converts game value to Lua. This allows the modification of given value.
--- @param value The value to convert.
--- @return Lua type of the value.
--- @usage player.speed = tolua(player.speed) + 10
function tolua(value)
end

--- Converts Lua value to game object. This allows the usage of options in more complex functions.
--- @param value The value to convert.
--- @return The game object.
--- @usage givelaser(toobject{ammo=5,reload=4})
function toobject(value)
end

--- Converts Lua value to game array.
--- @param value The value to convert.
--- @return The game array.
function toarray(value)
end