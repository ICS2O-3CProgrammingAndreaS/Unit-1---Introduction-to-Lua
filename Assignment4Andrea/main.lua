
local bg1
local bg2
local runtime = 0
local scrollSpeed = 1.4

local function addScrollableBg()
    local bgImage = { type="image", filename="background.jpg" }

    -- Add First bg image
    bg1 = display.newRect(0, 0, display.contentWidth, display.actualContentHeight)
    bg1.fill = bgImage
    bg1.x = display.contentCenterX
    bg1.y = display.contentCenterY

    -- Add Second bg image
    bg2 = display.newRect(0, 0, display.contentWidth, display.actualContentHeight)
    bg2.fill = bgImage
    bg2.x = display.contentCenterX
    bg2.y = display.contentCenterY - display.actualContentHeight
end

local function moveBg(dt)
    bg1.y = bg1.y + scrollSpeed * dt
    bg2.y = bg2.y + scrollSpeed * dt

    if (bg1.y - display.contentHeight/2) > display.actualContentHeight then
        bg1:translate(0, -bg1.contentHeight * 2)
    end
    if (bg2.y - display.contentHeight/2) > display.actualContentHeight then
        bg2:translate(0, -bg2.contentHeight * 2)
    end
end

local function getDeltaTime()
   local temp = system.getTimer()
   local dt = (temp-runtime) / (1000/60)
   runtime = temp
   return dt
end

local function enterFrame()
    local dt = getDeltaTime()
    moveBg(dt)
end

function init()
    addScrollableBg()
    Runtime:addEventListener("enterFrame", enterFrame)
end

init()


bg1.fill.effect = "filter.saturate"
 
bg1.fill.effect.intensity = 1.5

bg2.fill.effect = "filter.saturate"
 
bg2.fill.effect.intensity = 1.5


-- head variables
local kanye1 = display.newImageRect("Images/kanye1.png", 120, 120)
local kanye2 = display.newImageRect("Images/kanye4.png", 250, 250)
local kanye3 = display.newImageRect("Images/kanye5.png", 120, 120)

-- set the inital x and y positon of myImage 

kanye2.x = 600
kanye2.y = 160

kanye3.x = 250
kanye3.y = 160

kanye1.x = -100
kanye1.y = 160

--set image to be transparent


transition.to(kanye1, {x=100, rotation = kanye1.rotation-360,time=2000,} )

transition.to(kanye2, {x=400, rotation = kanye1.rotation-360,time=2000,} )

transition.to(kanye3, {x=250, rotation = kanye1.rotation-360,time=2000,} )
   


kanye2.fill.effect = "filter.wobble"
 
kanye2.fill.effect.amplitude = 70

kanye1.fill.effect = "filter.wobble"
 
kanye1.fill.effect.amplitude = 50

kanye3.fill.effect = "filter.wobble"
 
kanye3.fill.effect.amplitude = 70

local myText = display.newText( "hi ms raffin sorry this is so late i hope you like kanye", 0, 0, native.systemFont, 12 )
myText.x = 50 ; myText.y = 50
myText:setFillColor( 1, 1, 1 )
myText.anchorX = 0

kanye3.alpha = 0

local fo

local fi = function() transition.to( kanye3, { time=1000, alpha=1, onComplete = fo } ) end
local fo = function() transition.to( kanye3, { time=1000, alpha=0, onComplete = fi } ) end

fo()



