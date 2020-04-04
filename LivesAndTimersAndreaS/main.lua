

-- Title: NumericTextFields

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
local totalSeconds = 10
local secondsLeft = 10
local clockText
local countDownTimer
local Gameover = display.newImageRect("images/GameOver.png", 100, 150)

local lives = 4
local heart1 = display.newImageRect("images/heart.png", 100, 100)
local heart2 = display.newImageRect("images/heart.png", 100, 100)
local heart3 = display.newImageRect("images/heart.png", 100, 100)
local heart4 = display.newImageRect("images/heart.png", 100, 100)

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

--
--local functions
--

local function askQuestion()
	--generate a random number between 1 and 4
	randomOp = math.random(1,4)

	randomNumber1 = math.random(0,10)
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

local function UpdateTime()

	secondsLeft = secondsLeft - 1

	clockText.text = secondsLeft .. ""

	if (secondsLeft == 0 ) then
		secondsLeft = totalSeconds
		lives = lives - 1
	elseif (lives == 2) then			heart2.isvisible = false
			elseif (lives == 1) then
			heart1.isvisible = false
	elseif (lives == 0) then
		Gameover.isvisible = true
		incorrectSoundChannel = audio.play(IncorrectSoundChannel)
end

	local  function AskQuestion()
	--generate a random number between 1 and 4
	randomOp = math.random(1,4)

	randomNumber1 = math.random(0,10)
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

local function StartTimer()
	countDownTimer = timer.performWithdelay( 1000, UpdateTime, 5)
end

--object creation
-- 

qobject = display.newText ( "", display.contentWdith/2, display.contentHeight/2, nil, 70)
qobject:setTextColor(214/255, 185/255, 15/255)

cobject = display.newText ( "correct!", display.contentWdith/2, display.contentHeight*1/3, nil, 50)
cobject:setTextColor(214/255, 185/255, 15/255)
cobject.isVisible = false


incobject = display.newText ( "Incorrect!", display.contentWdith/2, display.contentHeight*1/3, nil, 50)
incobject:setTextColor(214/255, 185/255, 15/255)
incobject.isVisible = false

numericField = native.newTextField (display.contentHeight*2/3, display.contentWdith/2, 200, 100)
numericField,inputType = "number"


Gameover.x = display.contentWidth *1 / 2
Gameover.y = display.contentHeight *1 / 2

heart1.x = display.contentWidth * 7 / 8
heart1.y = display.contentHeight * 1 / 7

heart2.x = display.contentWidth * 6 / 8
heart2.y = display.contentHeight * 1 / 7

heart3.x = display.contentWidth * 5 / 8
heart3.y = display.contentHeight * 1 / 7

heart4.x = display.contentWidth * 4 / 8
heart4.y = display.contentHeight * 1 / 7

end

askQuestion()