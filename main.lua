-----------------------------------------------------------------------------------------
--
-- main.lua
--
--Created by Ethan
--Created on March 2018
--
--This program will calculate the circumfrence of a circle
-----------------------------------------------------------------------------------------

display.setDefault("background", 1, 1, 1)
local button = display.newImageRect( "button.jpg", 1500, 1500 )
button.x = 870
button.y = 1200

local buttonC = display.newImageRect( "button.jpg", 1750, 1500 )
buttonC.x = 1970
buttonC.y = 1200

local radiusTextField = native.newTextField( display.contentCenterX, 530, 650, 75)

local instructions = display.newText( "Enter Radius digit", display.contentCenterX, 350, native.systemFont, 75 )
instructions:setFillColor( 0, 0, 0 )

local area = display.newText( "Area", 550, 850, native.systemFont, 75 )
instructions:setFillColor( 0, 0, 0 )

local circ = display.newText( "Cirumfrence", 1600, 850, native.systemFont, 75 )
instructions:setFillColor( 0, 0, 0 )

local function onAreaPressed( event )
    -- this function will calculate area of the circle
    local radius
    local areaOfCircle



    radius = radiusTextField.text 
    
    areaOfCircle = 3.14 * (radius*radius)
    
    local areaOfCircleText = display.newText( "Area Of Circle " .. areaOfCircle, 500, 1200, native.systemFont, 75)
    areaOfCircleText:setTextColor(0, 0, 0)

    return true 
end

local function onCirPressed( event )
    -- this function will calculate circumfrence of the circle
    local radius
    local circumfrence



    radius = radiusTextField.text 
    
    
    circumfrence = 2 * 3.14 * radius
    local circumfrenceText = display.newText( "Circumfrence Of Circle " .. circumfrence, 1500, 1200, native.systemFont, 75)
    circumfrenceText:setTextColor(0, 0, 0)

    return true 

end

button:addEventListener( "touch", onAreaPressed)
buttonC:addEventListener( "touch", onCirPressed)
