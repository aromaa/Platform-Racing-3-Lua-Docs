--- Event listener variables and functions.
...

--- Adds the given function to be called once the event fires, and returns the AS3 listener, which can be used with `removeListener`.
--- @tparam function listener The listener to be called.
--- @return The AS3 instance of the listener. Used for `removeListener`.
--- @see removeListener
function addListener(listener)
end

--- Remove the given AS3 listener from being called once the event fires.
--- If the listener is removed during the event's invocation, the listener's removal will be delayed until the end of the invocation.
--- @param as3_listener The AS3 listener to no longer call.
--- @usage game.start.addListener(function()
----   
----   run_once = player.tick.addListener(function()
----      player.alert("This listener will only run once.")
----      player.tick.removeListener(run_once)
----   end
----   
----end)
function removeListener(as3_listener)
end

--- Remove all AS3 listeners from being called once the event fires.
--- If the listeners are removed during the event's invocation, the listeners' removal will be delayed until the end of the invocation.
function removeAllListeners()
end