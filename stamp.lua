--- Stamp related variables and functions.
...

--- The width, in pixels, of the stamp. By default 64. Read-only.
width = 1

--- The height, in pixels, of the stamp. By default 64. Read-only.
height = 1

--- The blend mode of the stamp. By default "normal".
--- Valid blend modes are defined here:
--- <https://airsdk.dev/reference/actionscript/3.0/flash/display/BlendMode.html>
blendMode = "normal"

--- Whether or not the stamp was destroyed. Calling `destroy` sets this to true. Read-only.
destroyed = false

--- Renders a given stamp to the stamp using a given translation, scaling, and rotation.
--- @tparam stamp stamp The sprite to render to the stamp.
--- @tparam number x By how many pixels along the x-axis to move the stamp when rendering to the stamp. By default 0.
--- @tparam number y By how many pixels along the y-axis to move the stamp when rendering to the stamp. By default 0.
--- @tparam number scaleX By how much to scale the stamp along the x-axis when rendering to the stamp. By default 1.
--- @tparam number scaleY By how much to scale the stamp along the y-axis when rendering to the stamp. By default 1.
--- @tparam number rotation By how many degrees to rotate the stamp when rendering to the stamp. By default 0
function drawStamp(stamp, x, y, scaleX, scaleY, rotation)
end

--- Renders a given sprite to the stamp using a given translation, scaling, and rotation.
--- @tparam sprite sprite The sprite to render to the stamp.
--- @tparam number x By how many pixels along the x-axis to move the sprite when rendering to the stamp. By default 0.
--- @tparam number y By how many pixels along the y-axis to move the sprite when rendering to the stamp. By default 0.
--- @tparam number scaleX By how much to scale the sprite along the x-axis when rendering to the stamp. By default 1.
--- @tparam number scaleY By how much to scale the sprite along the y-axis when rendering to the stamp. By default 1.
--- @tparam number rotation By how many degrees to rotate the sprite when rendering to the stamp. By default 0.
--- @see sprite
function drawSprite(sprite, x, y, scaleX, scaleY, rotation)
end

--- Sets the ARGB value (alpha and color) of the pixel at the given coordinate.
--- @tparam int x The x-coordinate of the pixel.
--- @tparam int y The y-coordinate of the pixel.
--- @tparam int color The ARGB value of the pixel. The simplest way to calculate this is with the 0xAARRGGBB hex format, where AA is the hex value from 0 - 255 for the alpha, RR for red, GG for green, and BB for blue.
--- @usage someStamp.setPixel(10, 10, 0xFF00FF00) -- Sets the pixel at (10, 10) to fully opaque green.
function setPixel(x, y, color)
end

--- Sets the ARGB value (alpha and color) of the pixels within the given rectangle.
--- @tparam int x The x-coordinate of the top left corner of the rectangle.
--- @tparam int y The y-coordinate of the top left corner of the rectangle.
--- @tparam int width The width of the rectangle.
--- @tparam int height The height of the rectangle.
--- @tparam int color The ARGB value of the pixel. The simplest way to calculate this is with the 0xAARRGGBB hex format, where AA is the hex value from 0 - 255 for the alpha, RR for red, GG for green, and BB for blue.
--- @usage someStamp.setPixel(10, 10, 0xFF00FF00) -- Sets the pixel at (10, 10) to fully opaque green.
function setRect(x, y, width, height, color)
end

--- Creates a copy of the stamp with identical contents.
--- @treturn stamp Returns the clone of the stamp
function clone()
end

--- Destroys the stamp, making it unable to be drawn to or rendered from.
function destroy()
end

--- Clears the stamp, emptying its contents without destroying the stamp.
function clear()
end