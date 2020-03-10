-- Title: NumericTextFields
-- Name: Andrea Shirazi
-- Course: ICS2O/3C
-- This program

----

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- sets the background colour
display.setDefault("background", 124/255, 249/255, 199,255)

----
--local variables
----

--create local variables
local questionObject
local correctObject
local numberField 
local randomNumber1
local randomNumber2
local userAnswer
local correctAnswer

-----
--local functions
-----

local function AskQuestion()
	-- generate 2 random numbers between a max. and a min. number
	randomNumber1 = math.random(0, 10)
	randomNumber2 = math.random(0, 10)

	correctAnswer = randomNumber1 + randomNumber2

	correctAnswer = randomNumber1 .. " + " .. randomNumber2 .. " = "

end

local function HideCorrect()
	correctObject.isVisible = false
	AskQuestion()
end

local function NumbericFieldListener( event )

	-- User beings editing "numbericField"
	if ( event.phase == "began" ) then

		-- clear text field
		event.target.text = ""

	elseif event.phase == "submitted" then

		-- when the answer is submitted (enter key is pressed) set user's input to users answer
		userAnswer = tonumber(event.target.text)

		--if the users answer and the correct answer are ths same:
		if (userAnswer == correctAnswer) then
			correctObject.isVisible = true
			timer. performWithDelay(2000, HideCorrect)

		end
	end
end

---- 
-- Object Creation
----

-- displays a question and sets the colour 
questionObject = display.newText( "", display.contentWidth/3, display.contentHeight/2, nil, 50 )
questionObject:setTextColor(155/255, 42/255, 198/255)

-- create the correct text Object and make it invisible
correctObject = display.newText( "Correct!", display.contentWidth/2, display.contentHeight*2/3, nil, 50)
correctObject:setTextColor(155/255, 42/255, 198/255)
correctObject.isVisible = false

-- create numeric field
numbericField = native.newTextField( display.contentWidth/2, display.contentHeight/2, 150, 80)
numbericField.inputType = "number"

-- add the event listener for the number field
numbericField:addEventListener(" userInput", NumbericFieldListener )

----
--function calls
----

-- call the function to ask the question
AskQuestion()

