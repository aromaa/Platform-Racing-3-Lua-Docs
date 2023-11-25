--- Alien related variables and functions
...

--- Whether or not the alien exists in the level. Calling `remove` sets this to false. Read-only.
exists = true

--- The absolute x-position of the alien.
x = 0

--- The absolute y-position of the alien.
y = 0

--- The lowest x-position the alien can try to randomly move to.
minX = 0

--- The highest x-position past the alien can try to randomly move to.
maxX = 0

--- The lowest y-position the alien can try to randomly move to.
minY = 0

--- The highest y-position the alien can try to randomly move to.
maxY = 0

--- A multiplier applied to the alien's movement speed.
--- By default 1
alienspeed = 1

--- The alien's current horizontal velocity, measured in pixels per second.
alienvelx = 0

--- The alien's current vertical velocity, measured in pixels per second.
alienvely = 0

--- The maximum possible speed of the alien along each axis, measured in pixels per second.
--- By default 10
alienmaxvel = 10

--- The maximum amount of random acceleration that can be applied to each axis of the alien's velocity each tick.
--- By default 0.5
alienmaxaccel = 0.5

--- The initial rotation, in degrees, of the alien's next bullet. This is set to a random angle whenever the alien's ammo reaches 0.
aimangle = 0

--- A multiplier that controls by how many degrees `aimangle` can change whenever `ammo` hits 0.
--- Default value 1 means full range (180 degrees), 0.5 means half range (90 degrees), 0 means aimangle is locked, etc.
aimanglerandomness = 1

--- How many ticks of shooting remain. This number decreases by 1 every tick regardless of if the alien fires a bullet during that tick or not. By default, the alien will spawn with `maxammo` ammo.
ammo = 0

--- The maximum ammo the alien can reload to. Upon reaching 0 ammo, the alien will reload a random amount of ammo between `minammo` and `maxammo`.
--- By default 200
maxammo = 200

--- The minimum ammo the alien can reload to. Upon reaching 0 ammo, the alien will reload a random amount of ammo between `minammo` and `maxammo`.
--- By default 25% of `maxammo`
minammo = 50

--- The ammo threshold for the alien's shooting. The alien's ammo must be below this amount (and above 0) for any bullets to be spawned.
--- By default 75% of `maxammo`
--- @usage -- Creates an alien that fires one bullet every 2 ticks without ever pausing its shooting, and very rarely changes its aim direction.
---- local myAlien = game.level.newAlien(1, os.time(), toobject{
----     reload = 2, -- Fire every 2 ticks
----     maxammo = 4000, -- Start with 4000 ammo
----     ammothreshold = 5000 -- Enable shooting when ammo is below 5000 (which is always the case, since the max is 4000)
---- })
ammothreshold = 150

--- The acceleration of the alien's next bullet (the amount of speed added per tick).
--- By default 1
accel = 1

--- The amount of damage the alien's next bullet will deal.
--- By default 1
damage = 1

--- Whether or not the alien's next bullet will be destroyed on impact.
--- By default true
explode = true

--- The strength of the knockback the alien's next bullet will deal.
--- By default 1
knockback = 1

--- The maxmimum velocity of the alien's next bullet in pixels per tick.
--- By default 20.5
maxvel = 20.5

--- The maximum lifetime of the alien's next bullet in ticks before they are deleted.
--- By default 100
range = 100

--- The time in milliseconds a hurt player will spend recovering from the alien's next bullet's damage.
--- By default 2500
recovery = 2500

--- The delay in ticks after firing a bullet before the alien can fire another. Setting this to 0 will disable the alien's shooting.
--- By default 5
reload = 5

--- The speed of the alien's next bullet in pixels per tick.
--- By default 14.5
speed = 14.5

--- The rotation speed of the alien's next bullet in degrees per tick.
--- By default 0
rotationspeed = 0

--- A multiplier applied every tick to the alien's next bullet's random rotation.
--- By default 1
rotationrandomness = 1

--- Removes the alien from the map. Sets the `exists` field to false.
function remove()
end