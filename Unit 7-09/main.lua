-----------------------------------------------------------------------------------------
--
-- Created By: Wajd Mariam
-- Created On: April 7, 2019
-----------------------------------------------------------------------------------------

display.setStatusBar(display.HiddenStatusBar)

centerX = 160
centerY = 100

local sheetOptionsIdle  =

{

width = 587,
height = 707,
numFrames = 10, }

local sheetIdleKnight = graphics.newImageSheet ("assets/spriteSheets/knightIdle.png", sheetOptionsIdle)



local sheetOptionsWalk =

{

width = 587,
height = 707,
numFrames = 10
 
}

local sheetWalkingKnight = graphics.newImageSheet ("assets/spriteSheets/knightWalking.png", sheetOptionsWalk )


local sequence_data = {

 
   {
 
	name = "idle", 
	start = 1, 
	count = 10,
	time = 800,
	loopCount = 1,
	sheet = sheetIdleKnight

},

    {
    name = "walk",
    start = 1,
    count = 10,
    time = 800,
    loopCount = 1,
    sheet = sheetWalkingKnight,

    }
}


local knight = display.newSprite( sheetIdleKnight , sequence_data )
knight.x = centerX
knight.y = centerY
knight.xScale = 117.4/587
knight.yScale = 141.4/707

knight:play()

local function swapSheet()
knight:setSequence ("walk")
knight:play()
print("walk")

end


timer.performWithDelay ( 2000, swapSheet )

display.setStatusBar(display.HiddenStatusBar)

centerX = 160
centerY = 400

local sheetOptionsIdle =

 {

 width = 232,
 height = 439,
 numFrames = 10
}

local sheetIdleNinja = graphics.newImageSheet ("assets/spriteSheets/ninjaBoyIdle.png", sheetOptionsIdle )

local sheetOptionsWalk = 
{
    width = 363,
    height = 458,
    numFrames = 10
}

local sheetWalkingNinja  = graphics.newImageSheet ("assets/spriteSheets/ninjaBoyRun.png", sheetOptionsWalk )

local sequence_data = {

{
	name = "idle",
	start = 1,
	count = 10,
	time = 800,
	loopCount = 0,
	sheet = sheetIdleNinja
	 },



    {
    name = "walk",
    sheet = 1,
    count = 10,
    time = 800,
    loopCount = 0,
    sheet = sheetWalkingNinja

    }
}

local Ninja = display.newSprite (sheetIdleNinja, sequence_data)
Ninja.x = centerX
Ninja.y = centerY
Ninja.xScale = 117.4/363
Ninja.yScale = 141.4/458

Ninja:play()

local function swapSheet()
Ninja:setSequence("walk")
Ninja:play()
print ("walk")

end
timer.performWithDelay ( 2000, swapSheet )
