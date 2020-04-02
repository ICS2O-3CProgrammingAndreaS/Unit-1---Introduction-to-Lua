-- Title: MovingObjects
-- Name: Andrea Shirazi
-- Course: ICS2O/3C
-- This program moves a beetleship across the screen and
-- then makes it fade out. I added a second object that 
-- moves in a different direction, fades in and grows in size.

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed = 3 

-- background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 3000, 1732)

-- character image with width and height
local beetleship = display.newImageRect("Images/beetleship.png", 200, 200)

local musicSound = audio.loadSound( "Sounds/backmusic" )
local musicSoundChannel

musicSoundChannel = audio.play(musicSoundChannel)

-- set the image to be transparent 
beetleship.alpha = 0

-- set the intial x and y position of beetleship
beetleship.x = 0 
beetleship.y = display.contentHeight/3

-- Function: MoveShip
-- Input: This function accepts an event listener 
-- Output: none
-- Description: This function adds the scroll speed to the x-value 
-- of the ship
local function MoveShip(event)
	--add the scroll speed to the x-value of the ship
	beetleship.x = beetleship.x + scrollSpeed
	-- change the transparency of the ship every time it moves
	-- so that it fades out 
	beetleship.alpha = beetleship.alpha + 0.01
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)

-- character image with width and height
local rocketship = display.newImageRect("Images/rocketship.png", 200, 200)

-- set the image to be transparent
rocketship.alpha = 1

-- set the inital x and y position of rocketship
rocketship.x = 1024
rocketship.y = display.contentHeight/2

-- flip the image horizontally
rocketship:scale (-1, 1)

-- function: MoveRocketShip
-- Input; This function accepts an event lister
-- Output: none
-- Description: This function adds the scroll speed to the x-value 
-- of the rocketshio

local function MoveRocketShip(event)
	--add the scroll speed to the x-value of the ship
	rocketship.x = rocketship.x - scrollSpeed
	-- change the transparency of the ship every time it moves
	-- so that it fades out 
	rocketship.alpha = rocketship.alpha - 0.01
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveShip)
	rocketship.alpha = rocketship.alpha - 0.00000000001

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveRocketShip)
