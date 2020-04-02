-- Title: MATHFUN›
-- Name: Andrea Shirazi
-- Course: ICS2O/3C
-- This program

----

-- hide the statu bar
display.setStatusBar(display.HiddenStatusBar)

-- set the default background
display.setDefault("background", 230/255, 145/255, 243/255)


-- 
--local variables
--
local qobject
local cobject
local NumericTextFields
local randomnumber1
local randomnumber2
local userAns
local cAns
local incAns
local randomOp
local incobject

-- correct sound
local correctSound = audio.loadSound( "Sounds/Ding" )
local correctSoundChannel
local incorrectSound = audio.loadSound( "Sounds/Wrong" )
local incorrectSoundChannel

--
--local functions
--

local function askQuestion()
	--generate a random number between 1 and 4
	randomOp = math.random(1,4)

	randomnumber1 = math.random(0,10)
	randomnumber2 = math.random(0,10)

	if (randomOp == 1) then
		cAns = randomnumber1 + randomnumber2

		qobject.text = randomnumber1 .. " + " .. randomnumber2 .. " = "

	elseif(randomOp == 2) then
		cAns = randomnumber1 * randomnumber2

		qobject.text = randomnumber1 .. " - " .. randomnumber2 .. " = "

	elseif (randomOp == 3) then
		cAns = randomnumber1 * randomnumber2

		qobject.text = randomnumber1 .. " * " .. randomnumber2 .. " = "

	elseif (rendomOp == 4) then
		cAns = randomnumber1/randomnumber2

		cAns = cans * 100
		math.round(cAns)

		qobject.text = randomnumber1 .. "/" .. randomnumber2 .. " = "
	end
end

local function HideCorrect ()
	cobject.isVisible = false
	askQuestion()
end

local function HideIncorrect ()
	incobject.isVisible = false
	askQuestion()
end

local function NumericFieldListener( event )
	if (event.phase == "began" ) then

		event.target.text = ""

	elseif (event.phase == "submitted") then

		userAns = tonumber(event.target.text)

		if (userAns == cAns) then 
			cobject.isVisible = true
			timer.performWithdelay(3000, HideCorrect)
			correctSoundChannel = audio.play(correctSoundChannel)

		else
			incobject.isVisible = trie
			timer.performWithdelay(3000, HideIncorrect)
			incorrectSoundChannel = audio.play(IncorrectSoundChannel)
		end

		event.target.text = ""
	end
end

-- 
--object creation
-- 

qobject = display.newText ( "" , display.contentWidth/2, display.contentHeight/2, nil, 70)
qobject:setTextColor(214/255, 185/255, 15/255)

cobject = display.newText ( "correct!", display.contentWidth/2, display.contentHeight*1/3, nil, 50)
cobject:setTextColor(214/255, 185/255, 15/255)
cobject.isVisible = false


incobject = display.newText ( "Incorrect!", display.contentWidth/2, display.contentHeight*1/3, nil, 50)
incobject:setTextColor(214/255, 185/255, 15/255)
incobject.isVisible = false

numericField = native.newTextField (display.contentHeight*2/3, display.contentWidth/2, 200, 100)
numericField,inputType = "number"

askQuestion()