--- A lock that prevents its associated event from completing until all locks are disposed of.
--- Currently, only drawing locks obtained from game.init exist.
...

--- Disposes the lock, allowing the associated event to complete if no locks remain.
--- @see game.init
function dispose()
end