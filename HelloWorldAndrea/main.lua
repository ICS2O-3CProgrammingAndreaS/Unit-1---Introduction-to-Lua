-----------------------------------------------------------------------------------------
--
-- main.lua
-- Name: Andrea Shirazi
-- Course: ICS20/3c
-- This program displays Hello, World on the ipad simulator and 
-- "Helloooooooo!" to the command terminal
-----------------------------------------------------------------------------------------

-- Your code here
-- print "Hello, World" to the command terminal
print ("***Helloooooooo!")

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

--sets the background colour
display.setDefault("background", 124/255, 249/255, 199/255)

--create a local variable
local textObject

--displays text on the screen at position x = 500 and y =500 ith
-- a default font style and font size of 50
textObject=display.newText("What's Poppin Ms Raffin!", 500, 300, nil, 80)

--displays text on the screen at position x = 500 and y =600 ith
-- a default font style and font size of 50
textObject=display.newText("By Andrea Shirazi", 500, 500, nil, 50)

--sets the color of the text
textObject:setTextColor(155/255, 42/255, 198/255)