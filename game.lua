--- Game related variables and functions.
...

--- The current level the game is played on. Read-only.
level = nil

--- The amount of players in the game. Read-only.
playersCount = 1

--- The event handler for game init.
--- Provides an initEvent, from which you can acquire a drawing lock.
--- The drawing lock will prevent the game from considering the level drawing to be complete until all existing drawing locks are disposed of.
--- @usage local lock = nil
--- game.init.addListener(function(event)
----    lock = event.acquireLock()
----    
----    game.requestUserData(function(data, error)
----        data = tolua(data)
----        error = tolua(error)
----        -- Do something here
----        lock.dispose()
----    end)
----end)
--- @see eventlistener
--- @see lock
init = nil

--- The event handler for game start.
--- @see eventlistener
start = nil

--- The event handler for game tick.
--- @see eventlistener
tick = nil

--- The handler for gameEvents sent via player.postGameEvent.
--- Provides a gameEvent, from which you can get data and source (the player-sender).
--- tolua method must be used for every variable you get from the gameEvent.
--- @usage game.gameEvent.addListener(function(event)
----    local data = tolua(event.data)
----    local sender = tolua(event.source)
----    -- Do something here
----end)
gameEvent = nil

--- The event handler for player removing, whether by finishing or forfeiting the match.
--- Provides the object of the removed player.
--- @usage game.playerRemoved.addListener(function(removedPlayer)
----    -- Do something here
----end)
playerRemoved = nil

--- Gets a player object by their index.
--- Remote player objects' variables are read-only. Exception is metadata, which can be both set and get.
--- Note: remote metadata is still local only.
--- @tparam int id Index of the player.
--- @return Returns the local/remote player object.
--- @usage game.getPlayer(1)
function getPlayer(id)
end

--- Requests the player's saved userdata for the level from the server.
--- This is an asynchronous method; it will not pause the script while the request is processing. Instead, it will later run the given callback function once the request has completed or failed.
--- Provides the userdata or an error message.
--- tolua method must be used for every variable you get from the userdata, as well as for the error message.
--- @tparam function callback The function that will be called once the request has completed or failed.
--- @usage game.requestUserData(function(data, error)
----    if tolua(error) ~= nil then
----        player.chat("Error loading user data: " .. tostring(tolua(error)), 0xFF0000)
----    else
----        player.speed = tolua(data.speed)
----        player.accel = tolua(data.accel)
----        player.jump = tolua(data.jump)
----    end
----end)
--- @see game.saveUserData
function requestUserData(callback)
end

--- Requests to save the player's userdata for the level onto the server.
--- This is an asynchronous method; it will not pause the script while the request is processing. Instead, it will later run the given callback function once the request has completed or failed.
--- toobject method must be used for the userdata if it is a table.
--- tolua method must be used for the error message.
--- @param userdata The userdata for the level that will be saved to the server.
--- @tparam function callback The function that will be called once the request has completed or failed.
--- @usage local userdata = {
----    speed = tolua(player.speed),
----    accel = tolua(player.accel),
----    jump = tolua(player.jump)
----}
----    
----game.saveUserData(toobject(userdata), function(error)
----    if tolua(error) ~= nil then
----        player.chat("Error saving user data: " .. tostring(tolua(error)), 0xFF0000)
----    end
----end)
--- @see game.requestUserData
function saveUserData(userdata, callback)
end