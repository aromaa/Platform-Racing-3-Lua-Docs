--- Event listener variables and functions.
...

--- Adds the given function to be called once the event fires.
--- @tparam function listener The listener to be called.
--- @return The AS3 instance of the listener. Used for `removeListener`
--- @see removeListener
function addListener(listener)
end

--- Remove the given function from being called once the event fires.
--- @param as3_listener The AS3 instance of the listener to no longer call.
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