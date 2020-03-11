-----------------------------------------------------------------------------------------
-- Andrea Shiraz
-- This program displays four different shapes and calculates their areas.
-----------------------------------------------------------------------------------------

-- set the background colour of my screen. 
display.setDefault("background", 155/255, 255/255, 0/255)

--remove status bar
display.setStatusBar(display.HiddenStatusBar)

local verticeTriangle = { -150, 50, 100, -100, 160, 30 }
local triangle = display.newPolygon(256, 192, verticeTriangle)

local verticePolygon = { -150, 100, 40, 46, 60, 130, 100, -25, -100, 30 }
local polygon = display.newPolygon(768, 192, verticePolygon)


local verticePolygon2 = { -150, 50, 60, 125, 40, 70, 140, -90, 46, -15, -50, 0, 20, -90 }
local polygon2 = display.newPolygon(258, 502, verticePolygon2)

local verticePolygon3 = { -60, 60, -20, 130, 80, 130, 130, 62, -60, -40, -120, -40 }
local polygon3 = display.newPolygon(700, 502, verticePolygon3)

local baseOfTriangle = 25
local heightOfTriangle = 40
local areaOfTriangle
local areaText
local textSize = 30
local triangleText
local polygonText
local polygon2Text
local polygon3Text
local shapeTextSize = 30

local ombre = {
	type = "gradient",
	color1 = {  255/255, 0/255, 166/255 },
	color2 = { 255/255, 41/255, 180/255 },
	color3 = { 255/255, 234/255, 80/255 },
	direction = "up"
}
local paint = {
	type = "gradient",
	color1 = { 255/255, 224/255, 0/255  },
	color2 = { 255/255, 229/255, 39/255 },
	color3 = { 255/255, 72/255, 191/255 },
	direction = "up"
}
local fade = {
	type = "gradient",
	color1 = { 0/255, 220/255, 255/255   },
	color2 = { 61/255, 229/255, 255/255  },
	color3 = { 102/255, 234/255, 255/255 }, 
	direction = "up"
}
local gradient = {
	type = "gradient",
	color1 = { 255/255, 155/255, 0/255  },
	color2 = { 255/255, 184/255, 74/255 },
	color3 = { 255/255, 189/255, 86/255 },
	direction = "up"
}

--Triangle

--set width of border
triangle.strokeWidth = 20

--set color of triangle
triangle:setFillColor(paint)

--Set color of border
triangle:setStrokeColor(1, 1, 1)

-- POLYGON1
--set width of border
polygon.strokeWidth = 20

--set color of triangle
polygon:setFillColor(fade)

--Set color of border
polygon:setStrokeColor(1, 1, 1)

--Polygon2
--set width of border
polygon2.strokeWidth = 20

--set color of polygon2
polygon2:setFillColor(ombre)

--Set color of border
polygon2:setStrokeColor(1, 1, 1)

--POLYGON3
--set width of border
polygon3.strokeWidth = 20

--set color of polygon3
polygon3:setFillColor(gradient)

--Set color of border
polygon3:setStrokeColor(1, 1, 1)

--calculate the area
areaOfTriangle = baseOfTriangle * heightOfTriangle / 2

-- write the area on the screen
areaText = display.newText("The area of this triange, with a base of \n" ..
	baseOfTriangle .. " and a height of " .. heightOfTriangle .. " is " ..
	areaOfTriangle .. " pixels². ", 0, 0, Arial, textSize)

--anchor the text and set its (x,y) position 
areaText.anchorX = 0
areaText.anchorY = 0
areaText.x = 50
areaText.y = 290

--write the name of the triangle on the screen
triangleText = display.newText("Triangle", 0, 0, Arial, shapeTextSize)

--anchor the text and set its (x,y) position 
triangleText.anchorX = 0
triangleText.anchorY = 0
triangleText.x = 50
triangleText.y = 70

--write the name of the polygon on the screen

polygonText = display.newText("Polygon 1", 0, 0, Arial, shapeTextSize)

--anchor the text and set its (x,y) position 
polygonText.anchorX = 0
polygonText.anchorY = 0
polygonText.x = 600
polygonText.y = 70

--write the name of the polygon on the screen

polygonText = display.newText("Polygon 2", 0, 0, Arial, shapeTextSize)

--anchor the text and set its (x,y) position 
polygonText.anchorX = 0
polygonText.anchorY = 0
polygonText.x = 50
polygonText.y = 400

--write the name of the polygon on the screen

polygonText = display.newText("Polygon 3", 0, 0, Arial, shapeTextSize)

--anchor the text and set its (x,y) position 
polygonText.anchorX = 0
polygonText.anchorY = 0
polygonText.x = 750
polygonText.y = 400

