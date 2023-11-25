--- Art layer related variables and functions.
...

--- The depth of the art layer. By default 1.
depth = 1

--- The layerNum of the art layer (equivalent to the ">" icon in Level Editor). By default 1.
--- Greater layerNum layers are drawn above lesser layerNum layers, regardless of layer depth. layerNums of 2 or greater draw above blocks. 3 or greater draws above players, hats, projectiles, and other visual effects.
layerNum = 1

--- The alpha of the art layer, represented by a number in the range of 0 - 1. An alpha of 0 means the layer is completely transparent; 1 means fully visible. By default 1.
alpha = 1

--- The blend mode of the art layer. By default "normal".
--- Valid blend modes are defined here, although not all are guaranteed to have any effect when used by art layers:
--- <https://airsdk.dev/reference/actionscript/3.0/flash/display/BlendMode.html>
blendMode = "normal"

--- Whether or not the art layer was destroyed. Calling `destroy` sets this to true. Read-only.
destroyed = false

--- Renders a given stamp to the art layer using a given translation, scaling, and rotation.
--- @tparam stamp stamp The sprite to render to the art layer.
--- @tparam number x By how many pixels along the x-axis to move the stamp when rendering to the art layer. By default 0.
--- @tparam number y By how many pixels along the y-axis to move the stamp when rendering to the art layer. By default 0.
--- @tparam number scaleX By how much to scale the stamp along the x-axis when rendering to the art layer. By default 1.
--- @tparam number scaleY By how much to scale the stamp along the y-axis when rendering to the art layer. By default 1.
--- @tparam number rotation By how many degrees to rotate the stamp when rendering to the art layer. By default 0
--- @see stamp
function drawStamp(stamp, x, y, scaleX, scaleY, rotation)
end

--- Renders a given sprite to the art layer using a given translation, scaling, and rotation.
--- @tparam sprite sprite The sprite to render to the art layer.
--- @tparam number x By how many pixels along the x-axis to move the sprite when rendering to the art layer. By default 0.
--- @tparam number y By how many pixels along the y-axis to move the sprite when rendering to the art layer. By default 0.
--- @tparam number scaleX By how much to scale the sprite along the x-axis when rendering to the art layer. By default 1.
--- @tparam number scaleY By how much to scale the sprite along the y-axis when rendering to the art layer. By default 1.
--- @tparam number rotation By how many degrees to rotate the sprite when rendering to the art layer. By default 0.
--- @see sprite
function drawSprite(sprite, x, y, scaleX, scaleY, rotation)
end

--- Sets the ARGB value (alpha and color) of the pixel at the given coordinate.
--- @tparam int x The x-coordinate of the pixel.
--- @tparam int y The y-coordinate of the pixel.
--- @tparam int color The ARGB value of the pixel. The simplest way to calculate this is with the 0xAARRGGBB hex format, where AA is the hex value from 0 - 255 for the alpha, RR for red, GG for green, and BB for blue.
--- @usage someLayer.setPixel(10, 10, 0xFF00FF00) -- Sets the pixel at (10, 10) to fully opaque green.
function setPixel(x, y, color)
end

--- Sets the ARGB value (alpha and color) of the pixels within the given rectangle.
--- @tparam int x The x-coordinate of the top left corner of the rectangle.
--- @tparam int y The y-coordinate of the top left corner of the rectangle.
--- @tparam int width The width of the rectangle.
--- @tparam int height The height of the rectangle.
--- @tparam int color The ARGB value of the pixel. The simplest way to calculate this is with the 0xAARRGGBB hex format, where AA is the hex value from 0 - 255 for the alpha, RR for red, GG for green, and BB for blue.
--- @usage someLayer.setPixel(10, 10, 0xFF00FF00) -- Sets the pixel at (10, 10) to fully opaque green.
function setRect(x, y, width, height, color)
end

--- Destroys the art layer, removing it from the level. Once destroyed, no operations on the layer will function.
function destroy()
end

--- Clears the art layer, emptying its contents without destroying the layer.
function clear()
end