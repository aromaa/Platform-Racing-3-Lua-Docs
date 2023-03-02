--- Lock related functions and variables.
...

--- Disposes the lock, allowing its associated event to complete.
--- If the event has multiple locks, all locks must be disposed before the event may complete.
--- @see game.init
function dispose()
end