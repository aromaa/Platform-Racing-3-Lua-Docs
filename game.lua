--- Game related variables and functions.
...

--- The current level the game is played on. Read-only.
level = nil

--- A list the player's settings and client information.
settings = {
	isMobile = false, -- Is the client running on iOS or Android? Read-only.
	isGuest = false, -- Is the player's sound muted? Read-only.
	isMuted = false, -- Is the player's sound muted? Read-only.
	drawBackgrounds = false, -- Does the player have art backgrounds / art lua enabled? Read-only.
	soundVolume = 100, -- The player's sound volume, expressed as a value ranging from 0 - 100. Read-only.
	musicVolume = 100 -- The player's sound volume, expressed as a value ranging from 0 - 100. Read-only.
}

--- The amount of players in the game. Read-only.
--- @see getPlayer
playersCount = 1

--- [Alias of `playersCount`] The amount of players in the game. Read-only.
--- @see getPlayer
playerCount = 1

--- How many milliseconds have passed since Lua started running. Read-only.
elapsedMS = 0

--- The event handler for game init. A drawing lock may be obtained from this event.
---
--- The drawing lock will prevent drawing completion until all existing drawing locks are disposed of.
--- @usage local lock = nil
---- game.init.addListener(function(event)
----     lock = event.acquireLock()
----     
----     game.requestUserData(function(data, error)
----         data = tolua(data)
----         error = tolua(error)
----         -- Do something here
----         lock.dispose()
----     end)
---- end)
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
---
--- Provides a gameEvent, from which you can get data and source (the player-sender).
---
--- tolua method must be used for every variable you get from the gameEvent.
--- @usage game.gameEvent.addListener(function(event)
----     local data = tolua(event.data)
----     local sender = tolua(event.source)
----     -- Do something here
---- end)
gameEvent = nil

--- The event handler for player removing, whether by finishing or forfeiting the match.
--- Provides the object of the removed player.
--- @usage game.playerRemoved.addListener(function(removedPlayer)
----     -- Do something here
---- end)
playerRemoved = nil

--- Gets a player object by their index.
--- 
--- Remote player objects' variables are read-only. Exceptions are metadata and visual effects, which can be both set and get.
--- Note: remote metadata and visual effects are still local only.
--- @tparam int index Index of the player.
--- @return Returns the local/remote player object.
--- @usage game.getPlayer(1)
--- @see playersCount
--- @see remoteplayer
function getPlayer(index)
end

--- Gets a list of all players existing in the game.
--- 
--- Remote player objects' variables are read-only. Exceptions are metadata and visual effects, which can be both set and get.
--- Note: remote metadata and visual effects are still local only.
--- @return An AS3 array of all players in the game.
--- @usage local players = totable(game.getAllPlayers())
---- for i, v in pairs(players) do
----     v.setmetadata("index", i)
---- end
--- @see utils.totable
--- @see remoteplayer
function getAllPlayers()
end

--- Returns a game timer which calls `listener` every `interval` milliseconds up to `maxCount` times.
--- 
--- Unlike `player.newTimer` and other tick handlers, these timers can run before the game has finished initializing and after the player is dead.
--- 
--- The timer cannot be triggered on the same tick it is created, nor can it be triggered mid-tick by changing its properties.
--- @tparam number interval How many milliseconds must pass to complete an interval.
--- @tparam int maxCount How many intervals will be completed. Set to -1 for infinite intervals.
--- @tparam function listener The listener to be called every time an iteration is completed.
--- @treturn timer The created timer object.
--- @see timer
--- @usage alienSpawnTimer = game.newTimer(1000 * 10, 9999999, function()
----     -- Spawns a new alien every 10 seconds
----     game.level.newAlien(1, os.time(), toobject{})
---- end)
function newTimer(interval, maxCount, listener)
end

--- Destroys all game timers created by `newTimer`.
--- @see timer
function destroyAllTimers()
end

--- Requests the player's saved userdata for the level from the server.
--- Provides the userdata or an error message.
---
--- This is an asynchronous method; it will not pause the script while the request is processing.
--- Instead, it will later run the given callback function once the request has completed or failed.
---
--- tolua method must be used for every variable you get from the userdata, as well as for the error message.
--- @tparam function callback The function that will be called once the request has completed or failed.
--- @usage game.requestUserData(function(data, error)
----     if tolua(error) ~= nil then
----         player.chat("Error loading user data: " .. tostring(tolua(error)), 0xFF0000)
----     else
----         player.speed = tolua(data.speed)
----         player.accel = tolua(data.accel)
----         player.jump = tolua(data.jump)
----     end
---- end)
--- @see saveUserData
function requestUserData(callback)
end

--- Requests to save the player's userdata for the level onto the server.
---
--- This is an asynchronous method; it will not pause the script while the request is processing.
--- Instead, it will later run the given callback function once the request has completed or failed.
---
--- toobject method must be used for the userdata if it is a table.
--- tolua method must be used for the error message.
--- @param userdata The userdata for the level that will be saved to the server.
--- @tparam function callback The function that will be called once the request has completed or failed.
--- @usage local userdata = {
----     speed = tolua(player.speed),
----     accel = tolua(player.accel),
----     jump = tolua(player.jump)
---- }
----     
---- game.saveUserData(toobject(userdata), function(error)
----     if tolua(error) ~= nil then
----         player.chat("Error saving user data: " .. tostring(tolua(error)), 0xFF0000)
----     end
---- end)
--- @see requestUserData
function saveUserData(userdata, callback)
end