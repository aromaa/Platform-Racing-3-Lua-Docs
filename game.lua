--- Game related variables and functions.
...

--- The current level the game is played on. Read-only.
level = nil

--- The amount of players in the game. Read-only.
playersCount = 1

--- The event handler for game start.
--- @see eventlistener
start = nil

--- The event handler for game tick.
--- @see eventlistener
tick = nil

--- The handler for gameEvents sent via player.postGameEvent.
--- Provides a gameEvent, from which you can get data and source (the player-sender).
--- tolua method must be used for every variable you get from the gameEvent.
--- @usage game.gameEvent.addListener(function(event) local data = tolua(event.data) local sender = tolua(event.source) end)
gameEvent = nil

--- The event handler for player removing, whether by finishing or forfeiting the match.
--- Provides the object of the removed player.
--- @usage game.playerRemoved.addListener(function(removedPlayer) end)
playerRemoved = nil

--- Gets a player object by their index.
--- Remote player objects' variables are read-only. Exception is metadata, which can be both set and get.
--- Note: remote metadata is still local only.
--- @tparam int id Index of the player.
--- @return Returns the local/remote player object.
--- @usage game.getPlayer(1)
function getPlayer(id)
end