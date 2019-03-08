-----------------------------------------------------------------------------------------
--
-- main.lua
--
-----------------------------------------------------------------------------------------
local mytext = display.newText ("diameter",160, 380, native.systemFont,20)
local diameterOfCircleTextField = native.newTextField( display.contentCenterX, display.contentCenterY + 200, 300, 75 )
diameterOfCircleTextField.id = "length textField"

local areaOfCircleTextField = display.newText( "Answer", display.contentCenterX, display.contentCenterY - 200, native.systemFont, 20 )
areaOfCircleTextField.id = "area textField"
areaOfCircleTextField:setFillColor( 1, 1, 1 )

local circumferenceOfCircleTextField = display.newText( "", display.contentCenterX, display.contentCenterY - 250, native.systemFont, 20 )
circumferenceOfCircleTextField.id = "area textField"
circumferenceOfCircleTextField:setFillColor( 1, 1, 1 )

local calculateButton = display.newImageRect( "calculate.png", 300, 100 )
calculateButton.x = display.contentCenterX
calculateButton.y = display.contentCenterY
calculateButton.id = "calculate button"
 function round(num, numDecimalPlaces)
 	local mult = 10^(numDecimalPlaces or 0)
 	return math.floor(num * mult + 0.5)/mult
 end
local function calculateButtonTouch( event )
    -- this function calculates the area of a square given the length of one of its sides
 
    local diameterOfCircle
    local areaOfCircle
    local circumferenceOfCircle
 
    diameterOfCircle = diameterOfCircleTextField.text
    areaOfCircle = 1/4 * math.pi * diameterOfCircle^2
    circumferenceOfCircle = math.pi * diameterOfCircle
    circumferenceOfCircle = round(circumferenceOfCircle, 2)
    areaOfCircle = round(areaOfCircle, 2)
    -- print( areaOfSquare )
    areaOfCircleTextField.text = "The area is " .. areaOfCircle
    circumferenceOfCircleTextField.text = "The circumference is " .. circumferenceOfCircle

    return true
end

calculateButton:addEventListener( "touch", calculateButtonTouch )