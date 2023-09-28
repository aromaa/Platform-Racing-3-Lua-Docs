--- Helper functions and variables
...

--- The Projectile class.
--- @see projectile
--- @see instanceof
--- @see block.onBreak
Projectile = nil

--- The Player class.
--- @see remoteplayer
--- @see instanceof
--- @see game.getPlayer
Player = nil

--- The LocalPlayer class.
--- All instances of this class also belong to Player class.
--- @see player
--- @see instanceof
LocalPlayer = nil

--- Converts game value to Lua. This allows the modification of given value.
--- @param value The value to convert.
--- @return Lua type of the value.
--- @usage player.speed = tolua(player.speed) + 10
function tolua(value)
end

--- Converts Lua value to game object. This allows the usage of options in more complex functions.
--- @param value The value to convert.
--- @return The game object.
--- @usage givelaser(toobject{ammo=5,reload=4})
function toobject(value)
end

--- Converts Lua value to game array.
--- @param value The value to convert.
--- @return The game array.
function toarray(value)
end

--- Converts an array of positions (tables with an x value and a y value) into a vararg.
--- @param value The value to convert.
--- @return The vararg.
--- @usage block.bulkteleportto(false, true, tovararg({{x = 0, y = -7}, {x = 0, y = -8}, {x = 1, y = -8}, {x = 1, y = -7}}))
--- @see block.bulkteleportto
function tovararg(value)
end

--- Checks if an object is an instance of a class.
--- @param object The object. tolua must be used for this parameter
--- @param class The class.
--- @treturn boolean Returns whether the object is an instance of the class.
--- @see Projectile
--- @see Player
--- @usage isProjectile = tolua(instanceof(tolua(event.reason), Projectile))
function instanceof(object, class)
end

--- List of keycodes.
keys = {
	NONE = 0, -- No key pressed.
	CANCEL = 3, -- The CANCEL key. (3)
	BACK = 8, -- The BACKSPACE key. (8)
	TAB = 9, -- The TAB key. (9)
	LINEFEED = 10, -- The LINEFEED key. (10)
	CLEAR = 12, -- The CLEAR key. (12)
	RETURN = 13, -- The RETURN key. (13)
	SHIFT = 16, -- The SHIFTKEY key. (16)
	CONTROL = 17, -- The CONTROLKEY key. (17)
	MENU = 18, -- The ALT key. (18)
	PAUSE = 19, -- The PAUSE key. (19)
	CAPSLOCK = 20, -- The CAPS LOCK key. (20)
	ESCAPE = 27, -- The ESC key. (27)
	SPACE = 32, -- The SPACEBAR key. (32)
	PAGEUP = 33, -- The PAGE UP key. (33)
	NEXT = 34, -- The PAGE DOWN key. (34)
	END = 35, -- The END key. (35)
	HOME = 36, -- The HOME key. (36)
	LEFT = 37, -- The LEFT ARROW key. (37)
	UP = 38, -- The UP ARROW key. (38)
	RIGHT = 39, -- The RIGHT ARROW key. (39)
	DOWN = 40, -- The DOWN ARROW key. (40)
	SELECT = 41, -- The SELECT key. (41)
	PRINT = 42, -- The PRINT key. (42)
	EXECUTE = 43, -- The EXECUTE key. (43)
	PRINTSCREEN = 44, -- The PRINT SCREEN key. (44)
	INSERT = 45, -- The INS key. (45)
	DELETE = 46, -- The DEL key. (46)
	HELP = 47, -- The HELP key. (47)
	D0 = 48, -- The 0 key. (48)
	D1 = 49, -- The 1 key. (49)
	D2 = 50, -- The 2 key. (50)
	D3 = 51, -- The 3 key. (51)
	D4 = 52, -- The 4 key. (52)
	D5 = 53, -- The 5 key. (53)
	D6 = 54, -- The 6 key. (54)
	D7 = 55, -- The 7 key. (55)
	D8 = 56, -- The 8 key. (56)
	D9 = 57, -- The 9 key. (57)
	A = 65, -- The A key. (65)
	B = 66, -- The B key. (66)
	C = 67, -- The C key. (67)
	D = 68, -- The D key. (68)
	E = 69, -- The E key. (69)
	F = 70, -- The F key. (70)
	G = 71, -- The G key. (71)
	H = 72, -- The H key. (72)
	I = 73, -- The I key. (73)
	J = 74, -- The J key. (74)
	K = 75, -- The K key. (75)
	L = 76, -- The L key. (76)
	M = 77, -- The M key. (77)
	N = 78, -- The N key. (78)
	O = 79, -- The O key. (79)
	P = 80, -- The P key. (80)
	Q = 81, -- The Q key. (81)
	R = 82, -- The R key. (82)
	S = 83, -- The S key. (83)
	T = 84, -- The T key. (84)
	U = 85, -- The U key. (85)
	V = 86, -- The V key. (86)
	W = 87, -- The W key. (87)
	X = 88, -- The X key. (88)
	Y = 89, -- The Y key. (89)
	Z = 90, -- The Z key. (90)
	NUMPAD0 = 96, -- The 0 key on the numeric keypad. (96)
	NUMPAD1 = 97, -- The 1 key on the numeric keypad. (97)
	NUMPAD2 = 98, -- The 2 key on the numeric keypad. (98)
	NUMPAD3 = 99, -- The 3 key on the numeric keypad. (99)
	NUMPAD4 = 100, -- The 4 key on the numeric keypad. (100)
	NUMPAD5 = 101, -- The 5 key on the numeric keypad. (101)
	NUMPAD6 = 102, -- The 6 key on the numeric keypad. (102)
	NUMPAD7 = 103, -- The 7 key on the numeric keypad. (103)
	NUMPAD8 = 104, -- The 8 key on the numeric keypad. (104)
	NUMPAD9 = 105, -- The 9 key on the numeric keypad. (105)
	MULTIPLY = 106, -- The multiply key. (106)
	ADD = 107, -- The ADD key. (107)
	SEPARATOR = 108, -- The separator key. (108)
	SUBTRACT = 109, -- The subtract key. (109)
	DECIMAL = 110, -- The decimal key. (110)
	DIVIDE = 111, -- The divide key. (111)
	F1 = 112, -- The F1 key. (112)
	F2 = 113, -- The F2 key. (113)
	F3 = 114, -- The F3 key. (114)
	F4 = 115, -- The F4 key. (115)
	F5 = 116, -- The F5 key. (116)
	F6 = 117, -- The F6 key. (117)
	F7 = 118, -- The F7 key. (118)
	F8 = 119, -- The F8 key. (119)
	F9 = 120, -- The F9 key. (120)
	F10 = 121, -- The F10 key. (121)
	F11 = 122, -- The F11 key. (122)
	F12 = 123, -- The F12 key. (123)
	F13 = 124, -- The F13 key. (124)
	F14 = 125, -- The F14 key. (125)
	F15 = 126, -- The F15 key. (126)
	F16 = 127, -- The F16 key. (127)
	F17 = 128, -- The F17 key. (128)
	F18 = 129, -- The F18 key. (129)
	F19 = 130, -- The F19 key. (130)
	F20 = 131, -- The F20 key. (131)
	F21 = 132, -- The F21 key. (132)
	F22 = 133, -- The F22 key. (133)
	F23 = 134, -- The F23 key. (134)
	F24 = 135, -- The F24 key. (135)
	NUMLOCK = 144, -- The NUM LOCK key. (144)
	SCROLL = 145, -- The SCROLL LOCK key. (145)
	LSHIFTKEY = 160, -- The left SHIFT key. (160)
	RSHIFTKEY = 161, -- The right SHIFT key. (161)
	LCONTROLKEY = 162, -- The left CTRL key. (162)
	RCONTROLKEY = 163, -- The right CTRL key. (163)
	LMENU = 164, -- The left ALT key. (164)
	RMENU = 165 -- The right ALT key. (165)
}