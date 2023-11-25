--- Timer related variables and functions
...

--- How many milliseconds have passed within the current interval.
elapsedMS = 0

--- How many intervals have been completed.
currentCount = 0

--- How many intervals will be completed. Set to -1 for infinite intervals.
maxCount = 0

--- How many milliseconds must pass to complete an interval.
interval = 0

--- A multiplier applied to the simulated elapsed time. By default 1.
--- (e.g. a multiplier of 2 makes an interval of 100 milliseconds take only 50 milliseconds to complete)
speed = 1

--- Whether or not the timer was destroyed. Calling `destroy` sets this to true. Read-only.
destroyed = false

--- Resets the timer's interval count and length back to 0, and its speed back to 1.
function reset()
end

--- Destroys the timer, freezing its simulated time and disabling its listener.
function destroy()
end