-----------------------------------------------------------------------------------------
-- Andrea Shirazi	
-- This program displays four different shapes and calculates their areas.
-----------------------------------------------------------------------------------------

-- set the background colour of my screen. 
display.setDefault("background", 155/255, 255/255, 0/255)

--remove status bar
display.setStatusBar(display.HiddenStatusBar)

local verticeStar = { -30, 50, -40, 20, -100, 50, -50, 0, -80, -80, 30, 50, 100, 50, 50, 0, 80, -80 }
local star = display.newPolygon(256, 192, verticeStar)
local verticeCross = { 90, 20, -90, -20, -20, -20, -20, -90, 20, -90, 90, -20, 20, -20, 90, 20, -20, 20, 20, 20, -20, 90, 20, 90 }
local cross = display.newPolygon(768, 192, verticeCross)
local verticeHexagon = { -30, 80, 30, 80, -50, 50, 50, 50, -50, 0, 50, 0, -30, -30, 30, -30 }
local hexagon = display.newPolygon(500, 192, verticeHexagon)
-- PUT ONE MORE SHAPE HERE!!!!!
local areaText
local textSize = 30
local starText
local crossText
local hexagonText
local starName = "STAR"
local crossName = "CROSS"
local hexagonName = "HEXAGON"
local shapeTextSize = 30
local ombre = {
	type = "gradienst",
	color1 = {  255/255, 0/255, 166/255  }
	color2 = { 255/255, 41/255, 180/255 }
	color3 = { 255/255, 234/255, 80/255 }
	direction = "up"

local paint = {
	type = "gradient",
	color1 = { 255/255, 224/255, 0/255 }
	color2 = { 255/255, 229/255, 39/255 }
	color3 = { 255/255, 72/255, 191/255 }
	direction = "up"
}
local fade = {
	type = "gradient",
	color1 = { 0/255, 220/255, 255/255 }
	color2 = { 61/255, 229/255, 255/255 }
	color3 = { 102/255, 234/255, 255/255 } 
	direction = "up"
}
local gradient = {
	type = "gradient",
	color1 = { 255/255, 155/255, 0/255 }
	color2 = { 255/255, 184/255, 74/255 }
	color3 = { 255/255, 189/255, 86/255 }
	direction = "up"
}
