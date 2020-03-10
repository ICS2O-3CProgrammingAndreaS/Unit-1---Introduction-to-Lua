-- Title: TouchAndDrag
-- Name: Ms Raffin
-- Course: ICS20/3C
-- This program displays images that react to a person's finger.

-- hide the status ba
display.setStatusBar(display.HiddenStatusBar)

-- local variables. I am still trying to get the x-value to be set properly. 
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)
local octopus = display.newImageRect("Images/octopus.png", 200, 175)
local octopusWidth = octopus.width
local octopusLength = octopus.length 

local rocketship = display.newImageRect("Images/rocketship.png", 200, 200)
local rocketshipWidth = rocketship.width
local rocketshipHeight = rocketship.cicleHeight

local circle = display.newImageRect("Images/collisioncircle.png", 300, 300)
local circleWidth = circle.width
local cicleHeight = circle.cicleHeight

-- my boolean variables to keep track of which object i touched first
local alreadyTouchedOctopus = false
local alreadyTouchedRocketship = false

-- set the initial x and y position of myImage
octopus.x = 400
octopus.y = 500

rocketship.x = 300
rocketship.y = 200

--Function: octupusListener
-- Input: touch listener
-- Output: none 
-- Descripion: when octopus is touched, move her.
local function octupusListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedRocketship) then
			alreadyTouchedOctopus = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedOctopus == true) ) then
		octopus.x = touch.x
		octopus.y = touch.y
	end

	if (touch.phase == "ended") then
		alreadyTouchedOctopus = false
		alreadyTouchedRocketship = false
	end
end

-- add the respecive listeners to each object
octopus:addEventListener("touch", octupusListener)

--Function: rocketshipListener
-- Input: touch listener
-- Output: none 
-- Descripion: when rocketship is touched, move it.
local function rocketshipListener(touch)

	if (touch.phase == "began") then
		if (alreadyTouchedOctopus == false) then
			alreadyTouchedRocketship = true
		end
	end

	if ( (touch.phase == "moved") and (alreadyTouchedRocketship == true) ) then
		rocketship.x = touch.x
		rocketship.y = touch.y
	end

	if (touch.phase == "ended") then
		alreadyTouchedRocketship = false
		alreadyTouchedOctopus = false
	end
end

-- add the respecive listeners to each object
rocketship:addEventListener("touch", octupusListener)